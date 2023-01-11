/*
 * http://wiki.unity3d.com/index.php?title=HSBColor
 */

using System;
using UnityEngine;

[Serializable]
public struct HSBColor
{

	#region Public fields 

	public float h;
	public float s;
	public float b;
	public float a;

	#endregion

	#region Constructor 

	public HSBColor( float h, float s, float b, float a )
	{
		this.h = h;
		this.s = s;
		this.b = b;
		this.a = a;
	}

	public HSBColor( float h, float s, float b )
	{
		this.h = h;
		this.s = s;
		this.b = b;
		this.a = 1f;
	}

	public HSBColor( Color col )
	{

		HSBColor temp = FromColor( col );

		h = temp.h;
		s = temp.s;
		b = temp.b;
		a = temp.a;

	}

	#endregion

	#region Static methods 

	public static Color GetHue( Color color )
	{

		var hsb = HSBColor.FromColor( color );
		hsb.s = hsb.b = 1f;

		return hsb;

	}

	public static HSBColor FromColor( Color color )
	{

		HSBColor result = new HSBColor( 0f, 0f, 0f, color.a );
		RGBToHSV( color, out result.h, out result.s, out result.b );

		return result;

	}

	public static Color ToColor( HSBColor hsbColor )
	{

		float r = hsbColor.b;
		float g = hsbColor.b;
		float b = hsbColor.b;

		if( hsbColor.s != 0 )
		{

			float max = hsbColor.b;
			float dif = hsbColor.b * hsbColor.s;
			float min = hsbColor.b - dif;

			float h = hsbColor.h * 360f;

			if( h < 60f )
			{
				r = max;
				g = h * dif / 60f + min;
				b = min;
			}
			else if( h < 120f )
			{
				r = -( h - 120f ) * dif / 60f + min;
				g = max;
				b = min;
			}
			else if( h < 180f )
			{
				r = min;
				g = max;
				b = ( h - 120f ) * dif / 60f + min;
			}
			else if( h < 240f )
			{
				r = min;
				g = -( h - 240f ) * dif / 60f + min;
				b = max;
			}
			else if( h < 300f )
			{
				r = ( h - 240f ) * dif / 60f + min;
				g = min;
				b = max;
			}
			else if( h <= 360f )
			{
				r = max;
				g = min;
				b = -( h - 360f ) * dif / 60 + min;
			}
			else
			{
				r = 0;
				g = 0;
				b = 0;
			}

		}

		return new Color( 
			Mathf.Clamp01( r ), 
			Mathf.Clamp01( g ), 
			Mathf.Clamp01( b ), 
			hsbColor.a 
		);

	}

	public Color ToColor()
	{
		return ToColor( this );
	}

	public static HSBColor Lerp( HSBColor a, HSBColor b, float t )
	{

		float h, s;

		//check special case black (color.b==0): interpolate neither hue nor saturation!
		//check special case grey (color.s==0): don't interpolate hue!
		if( a.b == 0 )
		{
			h = b.h;
			s = b.s;
		}
		else if( b.b == 0 )
		{
			h = a.h;
			s = a.s;
		}
		else
		{

			if( a.s == 0 )
			{
				h = b.h;
			}
			else if( b.s == 0 )
			{
				h = a.h;
			}
			else
			{

				// works around bug with LerpAngle
				float angle = Mathf.LerpAngle( a.h * 360f, b.h * 360f, t );
				while( angle < 0f )
					angle += 360f;
				while( angle > 360f )
					angle -= 360f;
				h = 
					angle / 360f;
			}
			s = Mathf.Lerp( a.s, b.s, t );

		}

		return new HSBColor( h, s, Mathf.Lerp( a.b, b.b, t ), Mathf.Lerp( a.a, b.a, t ) );

	}

	#endregion

	#region Private utility methods 

	private static void RGBToHSV( Color rgbColor, out float H, out float S, out float V )
	{

		if( rgbColor.b > rgbColor.g && rgbColor.b > rgbColor.r )
		{
			RGBToHSVHelper( 4f, rgbColor.b, rgbColor.r, rgbColor.g, out H, out S, out V );
		}
		else
		{
			if( rgbColor.g > rgbColor.r )
			{
				RGBToHSVHelper( 2f, rgbColor.g, rgbColor.b, rgbColor.r, out H, out S, out V );
			}
			else
			{
				RGBToHSVHelper( 0f, rgbColor.r, rgbColor.g, rgbColor.b, out H, out S, out V );
			}
		}

	}

	private static void RGBToHSVHelper( float offset, float dominantcolor, float colorone, float colortwo, out float H, out float S, out float V )
	{

		V = dominantcolor;

		if( V != 0f )
		{
			float num;
			if( colorone > colortwo )
			{
				num = colortwo;
			}
			else
			{
				num = colorone;
			}
			float num2 = V - num;
			if( num2 != 0f )
			{
				S = num2 / V;
				H = offset + ( colorone - colortwo ) / num2;
			}
			else
			{
				S = 0f;
				H = offset + ( colorone - colortwo );
			}
			H /= 6f;
			if( H < 0f )
			{
				H += 1f;
			}
		}
		else
		{
			S = 0f;
			H = 0f;
		}

	}

	#endregion

	#region Type conversion operators

	public static implicit operator HSBColor( Color color )
	{
		return HSBColor.FromColor( color );
	}

	public static implicit operator HSBColor( Color32 color )
	{
		return HSBColor.FromColor( color );
	}

	public static implicit operator Color( HSBColor hsb )
	{
		return hsb.ToColor();
	}

	public static implicit operator Color32( HSBColor hsb )
	{
		return hsb.ToColor();
	}

	#endregion

	#region System.Object overrides

	public override string ToString()
	{
		return string.Format( "H:{0}, S:{1}, B:{2}", this.h, this.s, this.b );
	}

	#endregion

}
