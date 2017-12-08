#region Imports

using Dopus.Interop.COM;

#endregion

namespace Dopus.Internals
{
	public class OutputConsole
	{
		public OutputConsole()
		{
			CDOpusScript_MainClass scriptMain = new CDOpusScript_MainClass();
			scriptMain.OpenOutputWindow();
			scriptMain.OutputString("Hello World");
		}
	}
}
