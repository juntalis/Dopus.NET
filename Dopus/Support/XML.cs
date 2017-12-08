#region Imports

using System;
using System.Runtime.InteropServices;
using System.Text;

using Dopus.Interop.Types;

#endregion

namespace Dopus.Support
{
	/// <summary>
	/// Given that it'd probably be easier to handle this functionality with built-in .NET API, this class is
	/// currently being excluded.
	/// </summary>
	public class XML
	{
		public static extern HANDLE XMLLoadFile([In] [MarshalAs(UnmanagedType.LPTStr)] string pszFile);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSaveFile(
			HANDLE hXML,
			[In] [MarshalAs(UnmanagedType.LPTStr)] string pszFile
			);

		public static extern HANDLE XMLCreateFile();
		public static extern void XMLFreeFile(HANDLE hXML);
		public static extern HANDLE XMLAddChildNode(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszName);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLDeleteChild(HANDLE hXML, HANDLE hChild);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLDeleteAllChildNodes(HANDLE hXML);

		public static extern HANDLE XMLFirstChildNode(HANDLE hXML);
		public static extern HANDLE XMLNextNode(HANDLE hXML);
		public static extern HANDLE XMLFindChildNode(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszName);
		public static extern HANDLE XMLEnumChildNodes(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszName, HANDLE hPrev);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeName(HANDLE hXML, [MarshalAs(UnmanagedType.LPTStr)] StringBuilder pszName, ref int pcchMax);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeName(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszName);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeValue(HANDLE hXML, [MarshalAs(UnmanagedType.LPTStr)] StringBuilder pszValue, ref int pcchMax);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeValue(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeBoolValue(
			HANDLE hXML,
			[MarshalAs(UnmanagedType.Bool)] ref bool pfValue
			);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeBoolValue(
			HANDLE hXML,
			[MarshalAs(UnmanagedType.Bool)] bool fValue
			);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeIntValue(HANDLE hXML, ref int piValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeIntValue(HANDLE hXML, int iValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeDWORDValue(HANDLE hXML, ref UInt32 pdwValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeDWORDValue(HANDLE hXML, UInt32 dwValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeDWORDLONGValue(HANDLE hXML, ref ulong pdwlValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeDWORDLONGValue(HANDLE hXML, ulong dwlValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeLOGFONTValue(HANDLE hXML, ref LOGFONT plfValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeLOGFONTValue(HANDLE hXML, ref LOGFONT plfValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeBinaryValue(HANDLE hXML, HANDLE pValue, ref uint pdwSize);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeBinaryValue(HANDLE hXML, HANDLE pValue, uint dwSize);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, [MarshalAs(UnmanagedType.LPTStr)] StringBuilder pszAttrValue, ref int pcchMax);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeBoolAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, ref int pfAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeBoolAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, [MarshalAs(UnmanagedType.Bool)] bool fAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeIntAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, ref int piAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeIntAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, int iAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeDWORDAttribute(HANDLE hXML, [MarshalAs(UnmanagedType.LPTStr)] StringBuilder pszAttrName, ref uint pdwAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeDWORDAttribute(HANDLE hXML, [MarshalAs(UnmanagedType.LPTStr)] StringBuilder pszAttrName, uint dwAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLGetNodeDWORDLONGAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, ref ulong pdwlAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLSetNodeDWORDLONGAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName, ulong dwlAttrValue);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLDeleteNodeAttribute(HANDLE hXML, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszAttrName);

		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool XMLDeleteAllNodeAttributes(HANDLE hXML);
	}
}
