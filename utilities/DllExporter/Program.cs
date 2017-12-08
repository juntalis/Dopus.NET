#region Imports

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;

using Microsoft.Win32;

#endregion

namespace DllExporter
{
	internal class Program
	{
		private static void Main(string[] args)
		{
			if(args.Length != 1 || !File.Exists(args[0])) {
				Console.WriteLine("Usage:");
				Console.WriteLine("1. Add reference to DllExporter.exe to your project;");
				Console.WriteLine("2. Add DllExporter.DllExport attribute to static methods that will be exported;");
				Console.WriteLine("3. Add following post-build command to project properties:");
				Console.WriteLine("    DllExporter.exe $(TargetFileName)");
				Console.WriteLine("    move $(TargetName).Exports$(TargetExt) $(TargetFileName)");
				Console.WriteLine("4. Build project;");
				Console.WriteLine("5. ???");
				Console.WriteLine("6. PROFIT!");

				return;
			}

			try {
				DirectoryInfo workDir = GetWorkingDirectory();
				string assemblerPath = GetAssemblerPath();
				string disassemblerPath = GetDisassemblerPath();

				List<string> methods = GetMethods(args[0]);
				string sourcePath = Disassemble(disassemblerPath, args[0], workDir.FullName);
				string sourceOutPath = workDir + @"\output.il";
				ProcessSource(sourcePath, sourceOutPath, methods);
				string outPath = Assemble(assemblerPath, args[0], workDir.FullName);

				// ReSharper disable once AssignNullToNotNullAttribute
				string newPath = Path.Combine(Path.GetDirectoryName(args[0]), Path.GetFileNameWithoutExtension(outPath) + ".Exports" + Path.GetExtension(outPath));
				File.Delete(newPath);
				File.Move(outPath, newPath);

				workDir.Delete(true);
			} catch(Exception ex) {
				Console.Error.WriteLine(ex.Message);
				Environment.Exit(1);
			}
		}

		private static DirectoryInfo GetWorkingDirectory()
		{
			string path = Environment.ExpandEnvironmentVariables(@"%TEMP%\DllExporter");

			DirectoryInfo directory = new DirectoryInfo(path);

			if(!directory.Exists)
				directory.Create();

			return directory;
		}

		private static string GetDisassemblerPath()
		{
			const string registryPath = @"SOFTWARE\Microsoft\Microsoft SDKs\Windows";
			const string registryValue = "CurrentInstallFolder";
			Exception exception = new Exception("Cannot locate ildasm.exe.");
			RegistryKey key = Registry.LocalMachine.OpenSubKey(registryPath) ?? Registry.CurrentUser.OpenSubKey(registryPath);
			if(key == null)
				throw exception;

			string path = (string)key.GetValue(registryValue);
			if(path == null)
				throw exception;

			path += @"Bin\ildasm.exe";
			if(!File.Exists(path))
				throw exception;

			return path;
		}

		private static string GetAssemblerPath()
		{
			
			string path = Path.Combine(RuntimeEnvironment.GetRuntimeDirectory(), "ilasm.exe");
			if(!File.Exists(path))
				throw new Exception("Cannot locate ilasm.exe.");

			return path;
		}

		private static string Disassemble(string disassemblerPath, string assemblyPath, string workDir)
		{
			string sourcePath = string.Format(@"{0}\input.il", workDir);
			ProcessStartInfo startInfo = new ProcessStartInfo(disassemblerPath, string.Format(@"""{0}"" /out:""{1}""", assemblyPath, sourcePath)) { WindowStyle = ProcessWindowStyle.Hidden };
			Process process = Process.Start(startInfo);

			process.WaitForExit();

			if(process.ExitCode != 0)
				throw new Exception(string.Format("ildasm.exe has failed disassembling {0}.", assemblyPath));

			return sourcePath;
		}

		private static string Assemble(string assemblerPath, string assemblyPath, string workDir)
		{
			string outPath = string.Format(@"{0}\{1}", workDir, Path.GetFileName(assemblyPath));
			string resourcePath = string.Format(@"{0}\{1}", workDir, "input.res");

			StringBuilder args = new StringBuilder();
			args.AppendFormat(@"""{0}\output.il"" /out:""{1}""", workDir, outPath);
			if(Path.GetExtension(assemblyPath) == ".dll")
				args.Append(" /dll");
			if(File.Exists(resourcePath))
				args.AppendFormat(@" /res:""{0}""", resourcePath);

			ProcessStartInfo startInfo = new ProcessStartInfo(assemblerPath, args.ToString()) { WindowStyle = ProcessWindowStyle.Hidden };
			Process process = Process.Start(startInfo);

			process.WaitForExit();

			if(process.ExitCode != 0)
				throw new Exception("ilasm.exe has failed assembling generated source.");

			return outPath;
		}

		private static List<string> GetMethods(string assemblyPath)
		{
			List<string> methods = new List<string>();

			Assembly assembly = Assembly.LoadFrom(assemblyPath);

			foreach(Type type in assembly.GetTypes()) {
				foreach(MethodInfo method in type.GetMethods(BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic)) {
					object[] attributes = method.GetCustomAttributes(typeof(DllExportAttribute), false);
					if(attributes.Length != 1)
						continue;

					DllExportAttribute attribute = (DllExportAttribute)attributes[0];

					methods.Add(attribute.EntryPoint ?? method.Name);
				}
			}

			return methods;
		}

		private static void ProcessSource(string sourcePath, string outPath, List<string> methods)
		{
			using(StreamWriter output = new StreamWriter(outPath, false, Encoding.Default)) {
				int methodIndex = 0;
				int skipLines = 0;
				int openBraces = 0;
				bool isMethodStatic = false;

				foreach(string line in File.ReadAllLines(sourcePath, Encoding.Default)) {
					if(skipLines > 0) {
						skipLines--;
						continue;
					}

					if(line.TrimStart(' ').StartsWith(".assembly extern DllExporter")) {
						skipLines = 3;
						continue;
					}

					if(line.TrimStart(' ').StartsWith(".corflags")) {
						output.WriteLine(".corflags 0x00000002");

						for(int i = 1; i <= methods.Count; i++)
							output.WriteLine(".vtfixup [1] int32 fromunmanaged at VT_{0}", i);

						for(int i = 1; i <= methods.Count; i++)
							output.WriteLine(".data VT_{0} = int32(0)", i);

						continue;
					}

					if(line.TrimStart(' ').StartsWith(".method"))
						isMethodStatic = line.Contains(" static ");

					if(line.TrimStart(' ').StartsWith(".custom instance void [DllExporter]DllExporter.DllExportAttribute")) {
						foreach(char ch in line) {
							if(ch == '(')
								openBraces++;
							if(ch == ')')
								openBraces--;
						}

						if(isMethodStatic) {
							output.WriteLine(".vtentry {0} : 1", methodIndex + 1);
							output.WriteLine(".export [{0}] as {1}", methodIndex + 1, methods[methodIndex]);

							methodIndex++;
						}

						continue;
					}

					if(openBraces > 0) {
						foreach(char ch in line) {
							if(ch == '(')
								openBraces++;
							if(ch == ')')
								openBraces--;
						}

						continue;
					}

					output.WriteLine(line);
				}
			}
		}
	}
}
