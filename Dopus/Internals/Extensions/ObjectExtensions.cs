#region Imports

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

using JetBrains.Annotations;

#endregion

namespace Dopus.Internals.Extensions
{
	public static class ObjectExtensions
	{
		#region IsNotNull

		/// <summary>
		/// Determines if the object is not null
		/// </summary>
		/// <param name="self">The object to check</param>
		/// <returns> False if it is null, true otherwise</returns>
		[ContractAnnotation("null => false")]
		public static bool IsNotNull([CanBeNull] this object self)
		{
			return !IsNull(self);
		}

		#endregion

		#region IsNull

		/// <summary>
		/// Determines if the object is null
		/// </summary>
		/// <param name="self">The object to check</param>
		/// <returns> True if it is null, false otherwise</returns>
		[ContractAnnotation("null => true")]
		public static bool IsNull([CanBeNull] this object self)
		{
			return self == null || Convert.IsDBNull(self);
		}

		#endregion

		#region IsNullOrEmpty

		/// <summary>
		/// Determines if a list is null or empty
		/// </summary>
		/// <typeparam name="T">Data type</typeparam>
		/// <param name="self">List to check</param>
		/// <returns> True if it is null or empty, false otherwise</returns>
		[ContractAnnotation("null => true")]
		public static bool IsNullOrEmpty<T>([CanBeNull] this IEnumerable<T> self)
		{
			return IsNull(self) || !self.Any();
		}

		#endregion

		#region NullCheck

		/// <summary>
		/// Does a null check and either returns the default value (if it is null) or the object
		/// </summary>
		/// <typeparam name="T">Object type</typeparam>
		/// <param name="self">Object to check</param>
		/// <param name="defaultvalue">Default value to return in case it is null</param>
		/// <returns> The default value if it is null, the object otherwise</returns>
		[ContractAnnotation("self:notnull=>notnull; =>notnull,defaultvalue:notnull; =>null,defaultvalue:null")]
		public static T NullCheck<T>([CanBeNull] this T self, T defaultvalue = default(T))
		{
			return IsNull(self) ? defaultvalue : self;
		}

		#endregion

		#region ThrowIfNullRef

		/// <summary>
		/// Determines if the object is null and throws an NullReferenceException if it is
		/// </summary>
		/// <param name="self">The object to check</param>
		/// <param name="message">Message to show with our exception.</param>
		/// <returns> Returns Item</returns>
		[ContractAnnotation("self:null => halt; self:notnull => notnull")]
		public static TItem ThrowIfNullRef<TItem>(this TItem self, [NotNull] string message)
		where TItem : class
		{
			if(IsNull(self))
				throw new NullReferenceException(message);
			return self;
		}

		/// <summary>
		/// Determines if the object is null and throws the exception passed in if it is
		/// </summary>
		/// <param name="self">The object to check</param>
		/// <param name="exception">Exception to throw</param>
		/// <returns> Returns Item</returns>
		[ContractAnnotation("self:null => halt; self:notnull => notnull")]
		public static TItem ThrowIfNullRef<TItem>([CanBeNull] this TItem self, [NotNull] Exception exception)
		where TItem : class
		{
			if(IsNull(self))
				throw exception;
			return self;
		}

		#endregion

		#region ThrowIfNullArg

		/// <summary>
		/// Determines if the object is null and throws an NullReferenceException if it is
		/// </summary>
		/// <param name="self">The object to check</param>
		/// <param name="name">Name of the param</param>
		/// <returns> Returns Item</returns>
		[ContractAnnotation("self:null => halt; self:notnull => notnull")]
		public static TItem ThrowIfNullArg<TItem>(this TItem self, [NotNull] string name)
		where TItem : class
		{
			if(IsNull(self))
				throw new ArgumentNullException(name);
			return self;
		}

		#endregion

		#region ThrowIfNullOrEmpty

		/// <summary>
		/// Determines if the IEnumerable is null or empty and throws an ArgumentNullException if it is
		/// </summary>
		/// <typeparam name="TItem">Item type</typeparam>
		/// <param name="self">The object to check</param>
		/// <param name="name">Name of the param</param>
		/// <returns> Returns Item</returns>
		[ContractAnnotation("self:null => halt; self:notnull => notnull")]
		public static IEnumerable<TItem> ThrowIfNullOrEmpty<TItem>([CanBeNull] this IEnumerable<TItem> self, [NotNull] string name)
		{
			if(self.IsNullOrEmpty())
				throw new ArgumentNullException(name);
			return self;
		}

		/// <summary>
		/// Determines if the IEnumerable is null or empty and throws the exception passed in if it is
		/// </summary>
		/// <typeparam name="TItem">Item type</typeparam>
		/// <param name="self">The object to check</param>
		/// <param name="exception">Exception to throw</param>
		/// <returns> Returns Item</returns>
		[ContractAnnotation("self:null => halt; self:notnull => notnull")]
		public static IEnumerable<TItem> ThrowIfNullOrEmpty<TItem>([CanBeNull] this IEnumerable<TItem> self, [NotNull] Exception exception)
		{
			if(self.IsNullOrEmpty())
				throw exception;
			return self;
		}

		#endregion
	
		/// <summary>
		/// Given a non-null class instance, build a dictionary containing all public properties and fields.
		/// </summary>
		/// <param name="self">The object to enumerate</param>
		/// <returns></returns>
		public static IDictionary<String, Object> AsDictionary([NotNull] this object self)
		{
			IDictionary<String, Object> dictResult = self as IDictionary<String, Object>;
			// ReSharper disable once InvertIf
			if(dictResult == null){
				dictResult = new Dictionary<String, Object>();
				foreach(PropertyInfo prop in self.GetType().GetProperties(BindingFlags.Instance | BindingFlags.Public))
					dictResult.Add(prop.Name, prop.GetValue(self, null));
				foreach(FieldInfo field in self.GetType().GetFields(BindingFlags.Instance | BindingFlags.Public))
					dictResult.Add(field.Name, field.GetValue(self));
			}
			return dictResult;
		}

		/// <summary>
		/// Perform a deep Copy of the object.
		/// Reference Article http://www.codeproject.com/KB/tips/SerializedObjectCloner.aspx
		/// Provides a method for performing a deep copy of an object.
		/// Binary Serialization is used to perform the copy.
		/// </summary>
		/// <typeparam name="TItem"> The type of object being copied. </typeparam>
		/// <param name="source"> The object instance to copy. </param>
		/// <returns> The copied object. </returns>
		public static TItem Clone<TItem>(this TItem source)
		{
			if(!typeof(TItem).IsSerializable){
				throw new ArgumentException("The type must be serializable.", "source");
			}

			// Don't serialize a null object, simply return the default for that object
			if(ReferenceEquals(source, null)){
				return default(TItem);
			}

			IFormatter formatter = new BinaryFormatter();
			Stream stream = new MemoryStream();
			using(stream){
				formatter.Serialize(stream, source);
				stream.Seek(0, SeekOrigin.Begin);
				return (TItem)formatter.Deserialize(stream);
			}
		}
	}
}
