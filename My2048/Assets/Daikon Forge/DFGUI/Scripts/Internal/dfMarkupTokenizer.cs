using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;

/// <summary>
/// Used to indicate the lexical meaning of a dfMarkupToken instance
/// </summary>
public enum dfMarkupTokenType
{
	/// <summary>
	/// The type of token has not been assigned.
	/// </summary>
	Invalid = 0,
	/// <summary>
	/// A section of plain text
	/// </summary>
	Text,
	/// <summary>
	/// One or more whitespace characters
	/// </summary>
	Whitespace,
	/// <summary>
	/// A newline ('\n') character
	/// </summary>
	Newline,
	/// <summary>
	/// A start tag
	/// </summary>
	StartTag,
	/// <summary>
	/// And end tag
	/// </summary>
	EndTag
}

/// <summary>
/// Represents a discrete set of characters that is significant
/// as a group.
/// </summary>
public class dfMarkupToken
{

	#region Object pooling

	private static List<dfMarkupToken> pool = new List<dfMarkupToken>();
	private static int poolIndex = 0;

	protected dfMarkupToken()
	{
		// Prevents the use of the default constructor
		// outside of this class, encouraging the use
		// of object pooling
	}

	public static void Reset()
	{
		poolIndex = 0;
	}

	public static dfMarkupToken Obtain( string source, dfMarkupTokenType type, int startIndex, int endIndex )
	{

		if( poolIndex >= pool.Count - 1 )
		{
			pool.Add( new dfMarkupToken() );
		}

		var instance = pool[ poolIndex++ ];

		instance.Source = source;
		instance.TokenType = type;
		instance.value = null;

		instance.StartOffset = startIndex;
		instance.EndOffset = endIndex;

		instance.AttributeCount = 0;
		instance.startAttributeIndex = 0;

		instance.Width = 0;
		instance.Height = 0;

		return instance;

	}

	#endregion

	#region Private fields

	private string value = null;
	private int startAttributeIndex = 0;

	#endregion

	#region Public properties

	/// <summary>
	/// Returns the number of dfMarkupTokenAttribute attributes 
	/// that were defined on this token (assumes that the token
	/// is of type dfMarkupTokenType.StartTag)
	/// </summary>
	public int AttributeCount { get; private set; }

	/// <summary>
	/// Indicates the type of token representedS
	/// </summary>
	public dfMarkupTokenType TokenType { get; private set; }

	/// <summary>
	/// Returns a reference to the original markup source
	/// </summary>
	public string Source { get; private set; }

	/// <summary>
	/// Indicates the index within the source markup where this token starts
	/// </summary>
	public int StartOffset { get; private set; }

	/// <summary>
	/// Indicates the index within the source markup where this token ends
	/// </summary>
	public int EndOffset { get; private set; }

	/// <summary>
	/// Gets the rendered width of the token 
	/// </summary>
	public int Width { get; internal set; }

	/// <summary>
	/// Gets the rendered height of the tokenS
	/// </summary>
	public int Height { get; set; }

	/// <summary>
	/// Returns the length of the token
	/// </summary>
	public int Length { get { return EndOffset - StartOffset + 1; } }

	/// <summary>
	/// Returns the string value of the token. 
	/// Use this property very sparingly, since
	/// it will result in a memory allocation.
	/// </summary>
	public string Value
	{
		get
		{

			if( value == null )
			{

				var length = Math.Min( EndOffset - StartOffset + 1, Source.Length - StartOffset );

				value = Source.Substring( StartOffset, length );

			}

			return value;

		}
	}

	#endregion

	#region Indexers 

	public char this[ int index ]
	{
		get
		{
			
			if( index < 0 || StartOffset + index > Source.Length - 1 )
				return '\0';

			return Source[ StartOffset + index ];

		}
	}

	#endregion

	#region Public methods

	public bool Matches( string text )
	{
		
		if( this.Length != text.Length )
			return false;

		var length = text.Length;
		for( int i = 0; i < length; i++ )
		{
			if( char.ToLowerInvariant( text[ i ] ) != char.ToLowerInvariant( this[ i ] ) )
				return false;
		}

		return true;

	}

	internal void AddAttribute( dfMarkupToken key, dfMarkupToken value )
	{

		var attribute = dfMarkupTokenAttribute.Obtain( key, value );

		if( AttributeCount == 0 )
		{
			this.startAttributeIndex = attribute.Index;
		}

		this.AttributeCount += 1;

	}

	public dfMarkupTokenAttribute GetAttribute( int index )
	{

		if( index < AttributeCount )
		{
			return dfMarkupTokenAttribute.GetAttribute( startAttributeIndex + index );
		}

		return null;

	}

	#endregion

	#region System.Object overrides

	public override string ToString()
	{

		// This method is for debugging purposes only, and 
		// should never be relied on by runtime code.

#if true || !UNITY_EDITOR
		return base.ToString();
#else

		if( !Application.isEditor )
			return base.ToString();

		if( TokenType == dfMarkupTokenType.EndTag )
			return "</" + this.Value + ">";

		var result = TokenType == dfMarkupTokenType.StartTag ? "<" : "";

		result += this.Value;

		if( AttributeCount > 0 )
		{

			result += " [";

			for( int i = 0; i < AttributeCount; i++ )
			{

				if( i > 0 )
					result += ", ";

				var attribute = GetAttribute( i );
				result += attribute.Key.Value;
				result += "='";
				result += attribute.Value.Value;
				result += "'";

			}

			result += "]";

		}

		result += TokenType == dfMarkupTokenType.StartTag ? ">" : "";

		return result;

#endif

	}

	#endregion

}

public class dfMarkupTokenAttribute
{

	#region Public properties and fields

	public int Index;

	public dfMarkupToken Key;
	public dfMarkupToken Value;

	#endregion

	#region Public methods

	internal static dfMarkupTokenAttribute GetAttribute( int index )
	{
		return pool[ index ];
	}

	#endregion

	#region Object pooling

	private static List<dfMarkupTokenAttribute> pool = new List<dfMarkupTokenAttribute>();
	private static int poolIndex = 0;

	private dfMarkupTokenAttribute()
	{
		// Prevents the use of the default constructor
		// outside of this class, encouraging use of 
		// object pooling
	}

	public static void Reset()
	{
		poolIndex = 0;
	}

	public static dfMarkupTokenAttribute Obtain( dfMarkupToken key, dfMarkupToken value )
	{

		if( poolIndex >= pool.Count - 1 )
		{
			pool.Add( new dfMarkupTokenAttribute() );
		}

		var instance = pool[ poolIndex ];
		instance.Index = poolIndex;
		instance.Key = key;
		instance.Value = value;

		poolIndex += 1;

		return instance;

	}

	#endregion

}

public class dfRichTextTokenizer
{

	#region Singleton

	private static dfRichTextTokenizer singleton;

	public static List<dfMarkupToken> Tokenize( string source )
	{

		if( singleton == null )
			singleton = new dfRichTextTokenizer();

		return singleton.tokenize( source );

	}

	#endregion

	#region Private variables

	private List<dfMarkupToken> tokens = new List<dfMarkupToken>();

	private string source;
	private int index;

	#endregion

	#region Private utility methods

	private List<dfMarkupToken> tokenize( string source )
	{

		// Flush the object pools
		dfMarkupToken.Reset();
		dfMarkupTokenAttribute.Reset();
		tokens.Clear();

		this.source = source;
		this.index = 0;

		while( index < source.Length )
		{

			var next = Peek();

			if( AtTagPosition() )
			{

				var tagToken = parseTag();
				if( tagToken != null )
				{
					tokens.Add( tagToken );
				}

				continue;

			}

			dfMarkupToken token = null;

			if( char.IsWhiteSpace( next ) )
			{
				// Skip carriage return, parse all other whitespace
				if( next != '\r' )
				{
					token = parseWhitespace();
				}
			}
			else
			{
				token = parseNonWhitespace();
			}

			if( token == null )
			{
				Advance();
			}
			else
			{
				tokens.Add( token );
			}

		}

		return this.tokens;

	}

	private bool AtTagPosition()
	{

		if( Peek() != '<' )
			return false;

		var next = Peek( 1 );
		if( next == '/' )
		{

			if( char.IsLetter( Peek( 2 ) ) )
				return true;

			return false;

		}

		if( char.IsLetter( next ) )
			return true;

		return false;

	}

	private dfMarkupToken parseQuotedString()
	{

		var delim = Peek();
		if( delim != '"' && delim != '\'' )
		{
			return null;
		}

		Advance();

		var startOffset = index;
		var endoffset = index;

		while( index < source.Length && Advance() != delim )
		{
			endoffset += 1;
		}

		if( Peek() == delim )
			Advance();

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endoffset );
		return token;

	}

	private dfMarkupToken parseNonWhitespace()
	{

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length )
		{

			var next = Advance();
			if( char.IsWhiteSpace( next ) || AtTagPosition() )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseWhitespace()
	{

		var startOffset = index;
		var endOffset = index;

		// Newlines are always treated as a single token, even
		// when they are consecutive
		if( Peek() == '\n' )
		{

			Advance();

			return dfMarkupToken.Obtain(
				source,
				dfMarkupTokenType.Newline,
				startOffset,
				startOffset
			);

		}

		while( index < source.Length )
		{

			var next = Advance();
			if( next == '\n' || next == '\r' || !char.IsWhiteSpace( next ) )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Whitespace, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseWord()
	{

		if( !char.IsLetter( Peek() ) )
			return null;

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length && char.IsLetter( Advance() ) )
		{
			endOffset += 1;
		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseTag()
	{

		if( Peek() != '<' )
			return null;

		var next = Peek( 1 );

		if( next == '/' )
		{
			return parseEndTag();
		}

		Advance();

		next = Peek();
		if( !char.IsLetterOrDigit( next ) )
		{
			return null;
		}

		var startOffset = index;
		var endOffset = index;
		while( index < source.Length && char.IsLetterOrDigit( Advance() ) )
		{
			endOffset += 1;
		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.StartTag, startOffset, endOffset );

		while( index < source.Length && Peek() != '>' )
		{

			next = Peek();
			if( char.IsWhiteSpace( next ) )
			{
				parseWhitespace();
			}
			else
			{

				var key = parseWord();
				if( key == null )
				{
					Advance();
					continue;
				}

				next = Peek();

				if( next != '=' )
				{
					token.AddAttribute( key, key );
					continue;
				}

				next = Advance();

				dfMarkupToken value = null;

				if( next == '"' || next == '\'' )
					value = parseQuotedString();
				else
					value = parseAttributeValue();

				token.AddAttribute( key, value ?? key );

			}

		}

		if( Peek() == '>' )
			Advance();

		return token;

	}

	private dfMarkupToken parseAttributeValue()
	{

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length )
		{

			var next = Advance();
			if( next == '>' || char.IsWhiteSpace( next ) )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseEndTag()
	{

		// Advance past </
		Advance( 2 );

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length && char.IsLetterOrDigit( Advance() ) )
		{
			endOffset += 1;
		}

		if( Peek() == '>' )
			Advance();

		var token = dfMarkupToken.Obtain(
			source,
			dfMarkupTokenType.EndTag,
			startOffset,
			endOffset
		);

		return token;

	}

	private char Peek()
	{
		return Peek( 0 );
	}

	private char Peek( int offset )
	{

		if( index + offset > source.Length - 1 )
		{
			return '\0';
		}

		return source[ index + offset ];

	}

	private char Advance()
	{
		return Advance( 1 );
	}

	private char Advance( int amount )
	{
		index += amount;
		return Peek();
	}

	#endregion

}

public class dfMarkupTokenizer
{

	#region Singleton

	private static dfMarkupTokenizer singleton;

	public static List<dfMarkupToken> Tokenize( string source )
	{

		if( singleton == null ) singleton = new dfMarkupTokenizer();

		return singleton.tokenize( source );

	}

	#endregion

	#region Private variables

	private static List<string> validTags = new List<string>() { "color", "sprite" };

	private List<dfMarkupToken> tokens = new List<dfMarkupToken>();

	private string source;
	private int index;

	#endregion

	#region Private utility methods

	private List<dfMarkupToken> tokenize( string source )
	{

		reset();

		this.source = source;
		this.index = 0;

		while( index < source.Length )
		{

			var next = Peek();

			if( AtTagPosition() )
			{

				var tagToken = parseTag();
				if( tagToken != null )
				{
					tokens.Add( tagToken );
				}

				continue;

			}

			dfMarkupToken token = null;

			if( char.IsWhiteSpace( next ) )
			{
				// Skip carriage return, parse all other whitespace
				if( next != '\r' )
				{
					token = parseWhitespace();
				}
			}
			else
			{
				token = parseNonWhitespace();
			}

			if( token == null )
			{
				Advance();
			}
			else
			{
				tokens.Add( token );
			}

		}

		return this.tokens;

	}

	private void reset()
	{

		// Flush the object pools
		dfMarkupToken.Reset();
		dfMarkupTokenAttribute.Reset();

		tokens.Clear();

	}

	private bool AtTagPosition()
	{

		if( Peek() != '[' )
			return false;

		var next = Peek( 1 );
		if( next == '/' )
		{

			if( char.IsLetter( Peek( 2 ) ) )
				return isValidTag( index + 2, true );

			return false;

		}

		if( char.IsLetter( next ) )
			return isValidTag( index + 1, false );

		return false;

	}

	private bool isValidTag( int index, bool endTag )
	{

		for( int i = 0; i < validTags.Count; i++ )
		{

			var tag = validTags[ i ];
			var isTagValid = true;

			for( int x = 0; x < tag.Length - 1 && x + index < source.Length - 1; x++ )
			{

				if( !endTag && source[ x + index ] == ' ' )
					break;

				if( source[ x + index ] == ']' )
					break;

				if( char.ToLowerInvariant( tag[ x ] ) != char.ToLowerInvariant( source[ x + index ] ) )
				{
					isTagValid = false;
					break;
				}
			}

			if( isTagValid )
				return true;

		}

		return false;

	}

	private dfMarkupToken parseQuotedString()
	{

		var delim = Peek();
		if( delim != '"' && delim != '\'' )
		{
			return null;
		}

		Advance();

		var startOffset = index;
		var endoffset = index;

		while( index < source.Length && Advance() != delim )
		{
			endoffset += 1;
		}

		if( Peek() == delim )
			Advance();

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endoffset );
		return token;

	}

	private dfMarkupToken parseNonWhitespace()
	{

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length )
		{

			var next = Advance();
			if( char.IsWhiteSpace( next ) || AtTagPosition() )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseWhitespace()
	{

		var startOffset = index;
		var endOffset = index;

		// Newlines are always treated as a single token, even
		// when they are consecutive
		if( Peek() == '\n' )
		{

			Advance();

			return dfMarkupToken.Obtain(
				source,
				dfMarkupTokenType.Newline,
				startOffset,
				startOffset
			);

		}

		while( index < source.Length )
		{

			var next = Advance();
			if( next == '\n' || next == '\r' || !char.IsWhiteSpace( next ) )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Whitespace, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseWord()
	{

		if( !char.IsLetter( Peek() ) )
			return null;

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length && char.IsLetter( Advance() ) )
		{
			endOffset += 1;
		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseTag()
	{

		if( Peek() != '[' )
			return null;

		var next = Peek( 1 );

		if( next == '/' )
		{
			return parseEndTag();
		}

		Advance();

		next = Peek();
		if( !char.IsLetterOrDigit( next ) )
		{
			return null;
		}

		var startOffset = index;
		var endOffset = index;
		while( index < source.Length && char.IsLetterOrDigit( Advance() ) )
		{
			endOffset += 1;
		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.StartTag, startOffset, endOffset );

		if( index < source.Length && Peek() != ']' )
		{

			next = Peek();
			if( char.IsWhiteSpace( next ) )
			{
				parseWhitespace();
			}

			var attributeStart = index;
			var attributeEnd = index;

			if( Peek() == '"' )
			{
				var attribute = parseQuotedString();
				token.AddAttribute( attribute, attribute );
			}
			else
			{

				while( index < source.Length && Advance() != ']' )
				{
					attributeEnd += 1;
				}

				var attribute = dfMarkupToken.Obtain(
					source,
					dfMarkupTokenType.Text,
					attributeStart,
					attributeEnd
				);

				token.AddAttribute( attribute, attribute );

			}

		}

		if( Peek() == ']' )
			Advance();

		return token;

	}

	private dfMarkupToken parseAttributeValue()
	{

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length )
		{

			var next = Advance();
			if( next == ']' || char.IsWhiteSpace( next ) )
			{
				break;
			}

			endOffset += 1;

		}

		var token = dfMarkupToken.Obtain( source, dfMarkupTokenType.Text, startOffset, endOffset );
		return token;

	}

	private dfMarkupToken parseEndTag()
	{

		// Advance past </
		Advance( 2 );

		var startOffset = index;
		var endOffset = index;

		while( index < source.Length && char.IsLetterOrDigit( Advance() ) )
		{
			endOffset += 1;
		}

		if( Peek() == ']' )
			Advance();

		var token = dfMarkupToken.Obtain(
			source,
			dfMarkupTokenType.EndTag,
			startOffset,
			endOffset
		);

		return token;

	}

	private char Peek()
	{
		return Peek( 0 );
	}

	private char Peek( int offset )
	{

		if( index + offset > source.Length - 1 )
		{
			return '\0';
		}

		return source[ index + offset ];

	}

	private char Advance()
	{
		return Advance( 1 );
	}

	private char Advance( int amount )
	{
		index += amount;
		return Peek();
	}

	#endregion

}

public class dfPlainTextTokenizer
{

	#region Singleton

	private static dfPlainTextTokenizer singleton;

	public static List<dfMarkupToken> Tokenize( string source )
	{

		if( singleton == null ) singleton = new dfPlainTextTokenizer();

		return singleton.tokenize( source );

	}

	#endregion

	#region Private variables

	private List<dfMarkupToken> tokens = new List<dfMarkupToken>();

	#endregion

	#region Private utility methods

	private List<dfMarkupToken> tokenize( string source )
	{

		// Flush the object pools
		dfMarkupToken.Reset();
		dfMarkupTokenAttribute.Reset();
		tokens.Clear();

		var i = 0;
		var x = 0;
		var length = source.Length;

		while( i < length )
		{

			// Skip carriage returns altogether
			if( source[ i ] == '\r' )
			{
				i += 1;
				x = i;
				continue;
			}

			#region Extract non-whitespace text

			while( i < length && !char.IsWhiteSpace( source[ i ] ) )
			{
				i += 1;
			}

			if( i > x )
			{

				tokens.Add( dfMarkupToken.Obtain(
					source,
					dfMarkupTokenType.Text,
					x,
					i - 1
				) );

				x = i;

			}

			#endregion

			#region Extract newlines seperately from other whitespace

			if( i < length && source[ i ] == '\n' )
			{

				tokens.Add( dfMarkupToken.Obtain(
					source,
					dfMarkupTokenType.Newline,
					i,
					i
				) );

				i += 1;
				x = i;

			}

			#endregion

			#region Extract whitespace

			while( i < length && source[ i ] != '\n' && source[ i ] != '\r' && char.IsWhiteSpace( source[ i ] ) )
			{
				i += 1;
			}

			if( i > x )
			{

				tokens.Add( dfMarkupToken.Obtain(
					source,
					dfMarkupTokenType.Whitespace,
					x,
					i - 1
				) );

				x = i;

			}

			#endregion

		}

		return this.tokens;

	}

	#endregion

}
