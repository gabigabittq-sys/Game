// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "NatureManufacture/Water/Water Mask"
{
	Properties
	{
		_Mask("Mask (A)", 2D) = "white" {}
		_MaskMultiply("Mask Multiply", Range( 0 , 1)) = 1
		_Cutoff( "Mask Clip Value", Float ) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Geometry+990" "IgnoreProjector" = "True" }
		Cull Back
		ZWrite On
		ZTest LEqual
		Blend One Zero , SrcAlpha OneMinusSrcAlpha
		
		ColorMask A
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float _MaskMultiply;
		uniform sampler2D _Mask;
		uniform float4 _Mask_ST;
		uniform float _Cutoff = 0;

		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			o.Alpha = 1;
			float2 uv_Mask = i.uv_texcoord * _Mask_ST.xy + _Mask_ST.zw;
			float clampResult355 = clamp( ( _MaskMultiply * tex2D( _Mask, uv_Mask ).a ) , 0.0 , 1.0 );
			clip( clampResult355 - _Cutoff );
		}

		ENDCG
	}
}