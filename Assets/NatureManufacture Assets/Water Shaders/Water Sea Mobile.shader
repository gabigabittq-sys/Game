Shader "NatureManufacture/Water/Sea Mobile"
{
	Properties
	{
		[Toggle(_USE_DISTORTION)] _Use_Distortion("Use_Distortion", Float) = 0
		[Toggle(_USE_VERTEX_OFFSET)] _Use_Vertex_Offset("Use_Vertex_Offset", Float) = 0
		[Toggle(_USE_TRANSLUCENCY)] _Use_Translucency("Use_Translucency", Float) = 0
		[Toggle(_USE_CAUSTIC)] _Use_Caustic("Use_Caustic", Float) = 0
		[NoScaleOffset]_WaterMobile("Noise (R) Sea Foam (G) Height (B) Side Foam (A)", 2D) = "white" {}
		_GlobalTiling("Global Tiling", Range( 0.001 , 100)) = 0.001
		[Toggle(_UVVDIRECTION1UDIRECTION0_ON)] _UVVDirection1UDirection0("UV Direction - V(T) U(F)", Float) = 0
		_SlowWaterSpeed("Main Water Speed", Vector) = (0.3,0.3,0,0)
		_SlowWaterMixSpeed("Wind Water Mix Speed", Vector) = (0,0,0,0)
		_WaterFlowUVRefresSpeed("Water Flow UV Refresh Speed", Range( 0 , 1)) = 0.15
		_Polar_Wave_Depth_Start_X_Flatten_Point_Y("Polar Wave Depth Start (X) Flatten Point (Y)", Vector) = (7,0.4,0,0)
		_GerstnerDirection_1("Polar Wave Height (X) Flatten (Y) Wave Scale (W)", Vector) = (0.7,0.1,0,7)
		_Polar_Wave_Silent_Area_Angle("Polar Wave Silent Area Angle", Range( 0 , 360)) = 77
		_Polar_Wave_Silent_Area_Angle_Hardness("Polar Wave Silent Area Angle Hardness", Float) = 1
		_Polar_Wave_Swash_Size("Polar Wave Swash Size", Float) = 0.8
		_Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y("Small Wave Shore Depth Start (X) Flatten Point (Y)", Vector) = (6,1.4,0,0)
		_Small_Wave_Shore_Height_Multiply("Small Wave Shore Height Multiply", Float) = 3
		_Gerstner_1("Small Wave Height (X) Flatten (Y) Direction (Z) Wave Scale (W)", Vector) = (0.3,0,30,13)
		_Small_Waves_Chaos("Small Waves Chaos", Range( 0 , 1)) = 1
		_Small_Wave_Silent_Area_Angle("Small Wave Silent Area Angle", Range( 0 , 360)) = 200
		_Small_Wave_Silent_Area_Angle_Hardness("Small Wave Silent Area Angle Hardness", Float) = 2
		_Small_Wave_Swash_Size("Small Wave Swash Size", Float) = 0.8
		_Sea_Wave_Depth_Flatten_Start_X_End_Y("Sea Wave Depth Flatten Start (X) End (Y)", Vector) = (7,5,0,0)
		_GerstnerDirection_4("Sea Wave Height (X) Flatten (Y) Direction (Z) Wave Scale (W)", Vector) = (0.33,0,60,37)
		_Sea_Waves_Chaos("Sea Waves Chaos", Range( 0 , 1)) = 0.4
		_Sea_Wave_Swash_Size("Sea Wave Swash Size", Float) = 0.8
		_Small_Wave_Noise_Tiling("Small Wave Noise Tiling", Vector) = (0.33,0.8,0,0)
		_Small_Wave_Noise_Multiply("Small Wave Noise Multiply", Range( 0 , 5)) = 1.68
		_Small_Wave_Noise_Power("Small Wave Noise Power", Range( 0 , 1)) = 1
		_Sea_Wave_Noise_Tiling("Sea Wave Noise Tiling", Vector) = (0.19,0.53,0,0)
		_Sea_Wave_Noise_Multiply("Sea Wave Noise Multiply", Range( 0 , 5)) = 1.68
		_Sea_Wave_Noise_Power("Sea Wave Noise Power", Range( 0 , 1)) = 1
		_EdgeFalloffMultiply("Alpha Edge Falloff Multiply", Float) = 5.19
		_EdgeFalloffPower("Alpha Edge Falloff Power", Float) = 0.74
		_WaterAlphaMultiply("Alpha Global Multiply", Float) = 0.66
		_WaterAlphaPower("Alpha Global Power", Float) = 1.39
		_BackfaceAlpha("Alpha Backface", Range( 0 , 1)) = 0
		_Clean_Water_Background_Brightness("Clean Water Background Brightness", Float) = 0.9
		_CleanFalloffMultiply("Clean Falloff Multiply", Float) = 1.29
		_CleanFalloffPower("Clean Falloff Power", Float) = 0.38
		_ShalowColor("Shalow Color", Color) = (0.4031684,0.5485649,0.5660378,0)
		_ShalowFalloffPower("Shalow Falloff Power", Float) = 3.9
		_ShalowFalloffMultiply("Shalow Falloff Multiply", Float) = 1.043
		_DeepColor("Deep Color", Color) = (0.05660379,0.05660379,0.05660379,0)
		[NoScaleOffset]_SlowWaterNormal("Water Normal", 2D) = "bump" {}
		WindMicroWaveTiling("Wind Micro Wave Tiling", Vector) = (0.1,0.1,0,0)
		_MicroWaveNormalScale("Wind Micro Wave Normal Scale", Range( 0 , 2)) = 0
		_MacroWaveTiling("Wind Macro Wave Tiling", Vector) = (0.02,0.02,0,0)
		_MacroWaveNormalScale("Wind Macro Wave Normal Scale", Range( 0 , 2)) = 0
		_SlowWaterTiling("Water Tiling", Vector) = (0,0,0,0)
		_SlowNormalScale("Water Normal Scale", Float) = 0
		_Water_Normal_Flatten_Multiply("Water Normal Flatten Multiply", Range( 0 , 1)) = 0.2
		_FarNormalPower("Far Normal Power", Range( 0 , 1)) = 0.5
		_FarNormalBlendStartDistance("Far Normal Blend Start Distance", Float) = 0
		_FarNormalBlendThreshold("Far Normal Blend Threshold", Float) = 10
		_NMWaterSmoothness("Water Smoothness", Range( 0 , 1)) = 0
		_NMFoamSmoothness("Foam Smoothness", Range( 0 , 1)) = 0
		_Distortion("Distortion", Range( 0 , 1)) = 0.03
		_AOPower("Water Ambient Occlusion", Float) = 1
		_WaterSpecularThreshold("Water Specular Threshold", Range( 0 , 10)) = 0
		_Water_Specular_Close("Water Specular Close", Range( 0 , 1)) = 0
		_Water_Specular_Far("Water Specular Far", Range( 0 , 1)) = 0
		_Foam_Specular("Foam Specular", Range( 0 , 1)) = 0
		_SeaFoamColor("Sea Foam Color", Vector) = (2,2,2,0)
		_Sea_Foam_Texture_Falloff("Sea Foam Texture Falloff", Range( 0 , 20)) = 4.11
		_Sea_Foam_Tiling("Sea Foam Tiling", Vector) = (0.3,0.3,0,0)
		_Sea_Foam_Slope_Influence("Sea Foam Slope Influence", Vector) = (0.3,0.3,0,0)
		[NoScaleOffset]_Sea_Foam_Texture_Normal("Sea Foam Texture Normal", 2D) = "bump" {}
		_Sea_Foam_Texture_Normal_Scale("Sea Foam Texture Normal Scale", Float) = 6
		_Sea_Waves_Foam_Multiply("Sea Waves Foam Multiply", Float) = 0.13
		_Sea_Waves_Foam_Mask_Offset("Sea Waves Foam Mask Offset", Float) = 0.48
		_Sea_Waves_Foam_Power("Sea Waves Foam Power", Float) = 4.49
		Sea_Waves_Foam_Mask_Hardness("Sea Foam Tesselation Mask Hardness", Range( 0 , 10)) = 0.95
		Sea_Waves_Foam_Mask_Power("Sea Foam Tesselation Mask Power", Range( 0 , 10)) = 5.2
		Sea_Waves_Foam_Mask_Multiply("Sea Foam Tesselation Mask Multiply", Range( 0 , 20)) = 20
		_Side_Foam_Depth_Multiply("Side Foam Depth Multiply", Range( 0 , 1)) = 0.121
		_Side_Foam_Depth_Falloff("Side Foam Depth Falloff", Range( 0.01 , 10)) = 0.68
		_Side_Foam_Mask_Power("Side Foam Mask Power", Float) = 4
		_Side_Foam_Speed("Side Foam Speed", Vector) = (0.3,0.3,0,0)
		_Side_Foam_Flow_UV_Refresh_Speed("Side Foam Flow UV Refresh Speed", Range( 0 , 1)) = 0.1
		_Side_Foam_Slope_Speed_Influence("Side Foam Slope Speed Influence", Vector) = (5,5,0,0)
		_Side_Foam_Tiling("Side Foam Tiling", Vector) = (10,10,0,0)
		[NoScaleOffset]_Side_Foam_Mask_Normal("Side Foam Mask Normal", 2D) = "bump" {}
		_Side_Foam_Mask_Normal_Scale("Side Foam Mask Normal Scale", Float) = 6
		_Side_Foam_Color("Side Foam Color", Vector) = (1.5,1.5,1.5,0)
		_Side_Foam_Wave_Backs_Multiply("Side Foam Wave Backs Multiply", Float) = 2
		_Side_Foam_Wave_Backs_Offset("Side Foam Wave Backs Offset", Float) = 0.1
		_Side_Foam_Waves_Multiply("Side Foam Waves  Multiply", Float) = 1
		_Side_Foam_Waves_Power("Side Foam Waves  Power", Range( 0.01 , 10)) = 3.46
		_Side_Foam_Waves_Offset("Side Foam Waves Offset", Float) = -0.13
		_Side_Foam_Crest_Color("Side Foam Crest Color", Vector) = (3,3,3,0)
		_Side_Foam_Crest_Mask_Offset("Side Foam Crest Mask Offset", Float) = -1.1
		_Side_Foam_Crest_Mask_Multiply("Side Foam Crest Mask Multiply", Float) = 1.22
		_Side_Foam_Perlin_Tiling("Side Foam Perlin Tiling", Float) = 1.09
		_Side_Foam_Perlin_Multiply("Side Foam Perlin Multiply", Float) = 3.13
		_Side_Foam_Perlin_Power("Side Foam Perlin Power", Float) = -3.23
		_SlowWaterTessScale("Water Tess Scale", Float) = 0
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		MacroWaveTessScale("Wind Macro Wave Tess Scale", Float) = 0
		_Translucency_Global_Power("Translucency Global Power", Range( 0 , 100)) = 10
		_Translucency_Direct_Sun_Power("Translucency Direct Sun Power", Range( 0 , 100)) = 10
		_SlowWaterTranslucencyMultiply("Water Translucency Multiply", Range( 0 , 10)) = 1
		_WaveTranslucencyFallOffDistance("Micro Wave Translucency FallOff Distance", Float) = 0
		_WaveTranslucencyPower("Micro Wave Translucency Power", Range( 0 , 10)) = 2.69
		_WaveTranslucencyHardness("Micro Wave Translucency Hardness", Range( 0 , 10)) = 1.89
		_WaveTranslucencyMultiply("Micro Wave Translucency Multiply", Range( 0 , 10)) = 0.03
		_Big_Waves_Translucency_Offset("Big Waves Translucency Offset", Float) = 0.05
		_Big_Waves_Translucency_Power("Big Waves Translucency Power", Range( 0.01 , 10)) = 2
		_Big_Waves_Translucency_Multiply("Big Waves Translucency Multiply", Float) = 20
		_Big_Front_Waves_Translucency_Multiply("Big Front Waves Translucency Multiply", Float) = 20
		_Big_Front_Waves_Translucency_Power("Big Front Waves Translucency Power", Range( 0.01 , 10)) = 2
		_Shore_Translucency_Power("Shore Translucency Power", Range( 0.01 , 100)) = 1.6
		_Shore_Translucency_Multiply("Shore Translucency Multiply", Range( 0.01 , 100)) = 0.3
		[NoScaleOffset]_Caustic("Caustic", 2D) = "white" {}
		[HDR]_Caustic_Color("Caustic Color", Color) = (1,1,1,0)
		_Caustic_Tiling("Caustic Tiling", Float) = 0.05
		_Caustic_Speed("Caustic Speed", Float) = 0.4
		_Caustic_Falloff("Caustic Falloff", Float) = 3.33
		_Caustic_Intensivity("Caustic Intensivity", Float) = 7.07
		_Caustic_Blend("Caustic Blend", Range( 0 , 1)) = 0.044
		_Time_Offset("Time Offset", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" }
		Cull Off
		Blend SrcAlpha OneMinusSrcAlpha
		
		GrabPass{ }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#pragma target 3.5
		#pragma multi_compile_instancing
		#pragma shader_feature_local _UVVDIRECTION1UDIRECTION0_ON
		#pragma shader_feature_local _USE_VERTEX_OFFSET
		#pragma shader_feature_local _USE_DISTORTION
		#pragma shader_feature_local _USE_TRANSLUCENCY
		#pragma multi_compile_local __ _USE_CAUSTIC
		#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
		#else
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
		#endif
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
		#endif//ASE Sampling Macros

		#pragma surface surf StandardSpecular keepalpha vertex:vertexDataFunc 
		#undef TRANSFORM_TEX
		#define TRANSFORM_TEX(tex,name) float4(tex.xy * name##_ST.xy + name##_ST.zw, tex.z, tex.w)
		struct Input
		{
			float3 worldPos;
			half3 worldNormal;
			INTERNAL_DATA
			float4 uv4_texcoord4;
			float4 uv_texcoord;
			half3 vertexToFrag1336;
			float4 screenPos;
			float eyeDepth;
			float4 vertexColor : COLOR;
			half ASEIsFrontFacing : VFACE;
		};

		UNITY_DECLARE_TEX2D_NOSAMPLER(_WaterMobile);
		SamplerState sampler_Linear_Repeat_Aniso4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SlowWaterNormal);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Side_Foam_Mask_Normal);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Sea_Foam_Texture_Normal);
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float4 _CameraDepthTexture_TexelSize;
		ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Caustic);

		UNITY_INSTANCING_BUFFER_START(Graph_NM_Sea_SS_Mobile)
			UNITY_DEFINE_INSTANCED_PROP(half4, _GerstnerDirection_4)
#define _GerstnerDirection_4_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half4, _Caustic_Color)
#define _Caustic_Color_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half4, _ShalowColor)
#define _ShalowColor_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half4, _DeepColor)
#define _DeepColor_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half4, _Gerstner_1)
#define _Gerstner_1_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half4, _GerstnerDirection_1)
#define _GerstnerDirection_1_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half3, _Side_Foam_Crest_Color)
#define _Side_Foam_Crest_Color_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half3, _Side_Foam_Color)
#define _Side_Foam_Color_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half3, _SeaFoamColor)
#define _SeaFoamColor_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _SlowWaterSpeed)
#define _SlowWaterSpeed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _SlowWaterTiling)
#define _SlowWaterTiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _SlowWaterMixSpeed)
#define _SlowWaterMixSpeed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Side_Foam_Slope_Speed_Influence)
#define _Side_Foam_Slope_Speed_Influence_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, WindMicroWaveTiling)
#define WindMicroWaveTiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Side_Foam_Speed)
#define _Side_Foam_Speed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Side_Foam_Tiling)
#define _Side_Foam_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _MacroWaveTiling)
#define _MacroWaveTiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Sea_Foam_Slope_Influence)
#define _Sea_Foam_Slope_Influence_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Sea_Foam_Tiling)
#define _Sea_Foam_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Polar_Wave_Depth_Start_X_Flatten_Point_Y)
#define _Polar_Wave_Depth_Start_X_Flatten_Point_Y_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y)
#define _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Sea_Wave_Noise_Tiling)
#define _Sea_Wave_Noise_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Sea_Wave_Depth_Flatten_Start_X_End_Y)
#define _Sea_Wave_Depth_Flatten_Start_X_End_Y_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half2, _Small_Wave_Noise_Tiling)
#define _Small_Wave_Noise_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Silent_Area_Angle)
#define _Small_Wave_Silent_Area_Angle_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Caustic_Intensivity)
#define _Caustic_Intensivity_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Clean_Water_Background_Brightness)
#define _Clean_Water_Background_Brightness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Translucency_Direct_Sun_Power)
#define _Translucency_Direct_Sun_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Translucency_Global_Power)
#define _Translucency_Global_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Shore_Translucency_Power)
#define _Shore_Translucency_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Shore_Translucency_Multiply)
#define _Shore_Translucency_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Big_Waves_Translucency_Power)
#define _Big_Waves_Translucency_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Big_Waves_Translucency_Offset)
#define _Big_Waves_Translucency_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Big_Waves_Translucency_Multiply)
#define _Big_Waves_Translucency_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Big_Front_Waves_Translucency_Power)
#define _Big_Front_Waves_Translucency_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Big_Front_Waves_Translucency_Multiply)
#define _Big_Front_Waves_Translucency_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaveTranslucencyFallOffDistance)
#define _WaveTranslucencyFallOffDistance_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaveTranslucencyMultiply)
#define _WaveTranslucencyMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaveTranslucencyPower)
#define _WaveTranslucencyPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaveTranslucencyHardness)
#define _WaveTranslucencyHardness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _SlowWaterTranslucencyMultiply)
#define _SlowWaterTranslucencyMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _ShalowFalloffPower)
#define _ShalowFalloffPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Time_Offset)
#define _Time_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Caustic_Falloff)
#define _Caustic_Falloff_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Caustic_Blend)
#define _Caustic_Blend_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Caustic_Tiling)
#define _Caustic_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _NMWaterSmoothness)
#define _NMWaterSmoothness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Foam_Specular)
#define _Foam_Specular_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaterSpecularThreshold)
#define _WaterSpecularThreshold_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Water_Specular_Close)
#define _Water_Specular_Close_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Water_Specular_Far)
#define _Water_Specular_Far_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _BackfaceAlpha)
#define _BackfaceAlpha_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _EdgeFalloffPower)
#define _EdgeFalloffPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _EdgeFalloffMultiply)
#define _EdgeFalloffMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Mask_Power)
#define _Side_Foam_Mask_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Crest_Mask_Offset)
#define _Side_Foam_Crest_Mask_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Crest_Mask_Multiply)
#define _Side_Foam_Crest_Mask_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Waves_Chaos)
#define _Sea_Waves_Chaos_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _CleanFalloffPower)
#define _CleanFalloffPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _CleanFalloffMultiply)
#define _CleanFalloffMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaterAlphaPower)
#define _WaterAlphaPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaterAlphaMultiply)
#define _WaterAlphaMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _ShalowFalloffMultiply)
#define _ShalowFalloffMultiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Caustic_Speed)
#define _Caustic_Speed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Distortion)
#define _Distortion_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Wave_Noise_Power)
#define _Sea_Wave_Noise_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Waves_Chaos)
#define _Small_Waves_Chaos_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Polar_Wave_Silent_Area_Angle)
#define _Polar_Wave_Silent_Area_Angle_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _FarNormalBlendThreshold)
#define _FarNormalBlendThreshold_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _FarNormalBlendStartDistance)
#define _FarNormalBlendStartDistance_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _FarNormalPower)
#define _FarNormalPower_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _MacroWaveNormalScale)
#define _MacroWaveNormalScale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _MicroWaveNormalScale)
#define _MicroWaveNormalScale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Polar_Wave_Silent_Area_Angle_Hardness)
#define _Polar_Wave_Silent_Area_Angle_Hardness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _SlowWaterTessScale)
#define _SlowWaterTessScale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Wave_Noise_Multiply)
#define _Sea_Wave_Noise_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, MacroWaveTessScale)
#define MacroWaveTessScale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _SlowNormalScale)
#define _SlowNormalScale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _WaterFlowUVRefresSpeed)
#define _WaterFlowUVRefresSpeed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Noise_Multiply)
#define _Small_Wave_Noise_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Shore_Height_Multiply)
#define _Small_Wave_Shore_Height_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Swash_Size)
#define _Small_Wave_Swash_Size_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Polar_Wave_Swash_Size)
#define _Polar_Wave_Swash_Size_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Wave_Swash_Size)
#define _Sea_Wave_Swash_Size_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Silent_Area_Angle_Hardness)
#define _Small_Wave_Silent_Area_Angle_Hardness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Small_Wave_Noise_Power)
#define _Small_Wave_Noise_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Flow_UV_Refresh_Speed)
#define _Side_Foam_Flow_UV_Refresh_Speed_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Mask_Normal_Scale)
#define _Side_Foam_Mask_Normal_Scale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Wave_Backs_Offset)
#define _Side_Foam_Wave_Backs_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Water_Normal_Flatten_Multiply)
#define _Water_Normal_Flatten_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Foam_Texture_Falloff)
#define _Sea_Foam_Texture_Falloff_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Waves_Foam_Power)
#define _Sea_Waves_Foam_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Waves_Foam_Mask_Offset)
#define _Sea_Waves_Foam_Mask_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Waves_Foam_Multiply)
#define _Sea_Waves_Foam_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, Sea_Waves_Foam_Mask_Multiply)
#define Sea_Waves_Foam_Mask_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, Sea_Waves_Foam_Mask_Power)
#define Sea_Waves_Foam_Mask_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, Sea_Waves_Foam_Mask_Hardness)
#define Sea_Waves_Foam_Mask_Hardness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Sea_Foam_Texture_Normal_Scale)
#define _Sea_Foam_Texture_Normal_Scale_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _NMFoamSmoothness)
#define _NMFoamSmoothness_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Perlin_Power)
#define _Side_Foam_Perlin_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Perlin_Multiply)
#define _Side_Foam_Perlin_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Perlin_Tiling)
#define _Side_Foam_Perlin_Tiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Depth_Falloff)
#define _Side_Foam_Depth_Falloff_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Depth_Multiply)
#define _Side_Foam_Depth_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Waves_Power)
#define _Side_Foam_Waves_Power_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Waves_Offset)
#define _Side_Foam_Waves_Offset_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Waves_Multiply)
#define _Side_Foam_Waves_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _Side_Foam_Wave_Backs_Multiply)
#define _Side_Foam_Wave_Backs_Multiply_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _GlobalTiling)
#define _GlobalTiling_arr Graph_NM_Sea_SS_Mobile
			UNITY_DEFINE_INSTANCED_PROP(half, _AOPower)
#define _AOPower_arr Graph_NM_Sea_SS_Mobile
		UNITY_INSTANCING_BUFFER_END(Graph_NM_Sea_SS_Mobile)


		float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }

		float snoise( float2 v )
		{
			const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
			float2 i = floor( v + dot( v, C.yy ) );
			float2 x0 = v - i + dot( i, C.xx );
			float2 i1;
			i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
			float4 x12 = x0.xyxy + C.xxzz;
			x12.xy -= i1;
			i = mod2D289( i );
			float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
			float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
			m = m * m;
			m = m * m;
			float3 x = 2.0 * frac( p * C.www ) - 1.0;
			float3 h = abs( x ) - 0.5;
			float3 ox = floor( x + 0.5 );
			float3 a0 = x - ox;
			m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
			float3 g;
			g.x = a0.x * x0.x + h.x * x0.y;
			g.yz = a0.yz * x12.xz + h.yz * x12.yw;
			return 130.0 * dot( m, g );
		}


		half2 UnStereo( float2 UV )
		{
			#if UNITY_SINGLE_PASS_STEREO
			float4 scaleOffset = unity_StereoScaleOffset[ unity_StereoEyeIndex ];
			UV.xy = (UV.xy - scaleOffset.zw) / scaleOffset.xy;
			#endif
			return UV;
		}


		half3 InvertDepthDir72_g60( half3 In )
		{
			float3 result = In;
			#if !defined(ASE_SRP_VERSION) || ASE_SRP_VERSION <= 70301
			result *= float3(1,1,-1);
			#endif
			return result;
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			half2 appendResult861 = (half2(v.texcoord3.x , v.texcoord3.y));
			half4 _GerstnerDirection_4_Instance = UNITY_ACCESS_INSTANCED_PROP(_GerstnerDirection_4_arr, _GerstnerDirection_4);
			half _Sea_Waves_Chaos_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Waves_Chaos_arr, _Sea_Waves_Chaos);
			float cos862 = cos( ( ( ( _GerstnerDirection_4_Instance.z * _Sea_Waves_Chaos_Instance ) + 180.0 ) * 0.01745 ) );
			float sin862 = sin( ( ( ( _GerstnerDirection_4_Instance.z * _Sea_Waves_Chaos_Instance ) + 180.0 ) * 0.01745 ) );
			half2 rotator862 = mul( appendResult861 - float2( 0,0 ) , float2x2( cos862 , -sin862 , sin862 , cos862 )) + float2( 0,0 );
			half2 temp_output_73_0_g54 = rotator862;
			half2 ifLocalVar77_g54 = 0;
			if( length( temp_output_73_0_g54 ) == 0.0 )
				ifLocalVar77_g54 = half2( 0.001,0 );
			else
				ifLocalVar77_g54 = temp_output_73_0_g54;
			half2 normalizeResult79_g54 = normalize( ifLocalVar77_g54 );
			half2 break80_g54 = normalizeResult79_g54;
			half2 _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Depth_Flatten_Start_X_End_Y_arr, _Sea_Wave_Depth_Flatten_Start_X_End_Y);
			half temp_output_816_0 = (0.0 + (v.texcoord3.w - _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.y) * (1.0 - 0.0) / (_Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.x - _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.y));
			half clampResult823 = clamp( temp_output_816_0 , 0.0 , 1.0 );
			half clampResult824 = clamp( (_GerstnerDirection_4_Instance.y + (clampResult823 - 0.0) * (max( ( clampResult823 * _GerstnerDirection_4_Instance.x ) , _GerstnerDirection_4_Instance.y ) - _GerstnerDirection_4_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half3 ase_worldNormal = UnityObjectToWorldNormal( v.normal );
			half clampResult44_g45 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Sea_Wave_Noise_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Tiling_arr, _Sea_Wave_Noise_Tiling);
			half2 temp_output_801_0 = ( _Sea_Wave_Noise_Tiling_Instance / float2( 1,1 ) );
			half2 clampResult800 = clamp( temp_output_801_0 , float2( 0.001,0.001 ) , float2( 500,500 ) );
			half2 temp_output_66_0_g45 = temp_output_801_0;
			half2 temp_output_53_0_g45 = ( ( ( ( ( 1.0 - clampResult44_g45 ) * half2( 1,1 ) ) + ( ( float2( 1,1 ) / clampResult800 ) * float2( 1.8,1.8 ) ) ) * temp_output_66_0_g45 ) * v.texcoord3.xy );
			half2 break56_g45 = temp_output_53_0_g45;
			half2 appendResult57_g45 = (half2(break56_g45.y , break56_g45.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g45 = temp_output_53_0_g45;
			#else
				half2 staticSwitch59_g45 = appendResult57_g45;
			#endif
			half _Time_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Time_Offset_arr, _Time_Offset);
			half TimeOffset843 = _Time_Offset_Instance;
			half temp_output_68_0_g45 = ( ( _Time.y + TimeOffset843 ) * 0.07 );
			half temp_output_71_0_g45 = frac( ( temp_output_68_0_g45 + 0.0 ) );
			half2 temp_output_60_0_g45 = ( staticSwitch59_g45 * temp_output_71_0_g45 );
			half _GlobalTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlobalTiling_arr, _GlobalTiling);
			half GlobalTiling70 = _GlobalTiling_Instance;
			half2 temp_output_83_0_g45 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g45 * v.texcoord.xy ) );
			half2 temp_output_80_0_g45 = ( staticSwitch59_g45 * frac( ( temp_output_68_0_g45 + -0.5 ) ) );
			half clampResult90_g45 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g45 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half lerpResult791 = lerp( SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_60_0_g45 + temp_output_83_0_g45 ), 0.0 ).r , SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_83_0_g45 + temp_output_80_0_g45 ), 0.0 ).r , clampResult90_g45);
			half _Sea_Wave_Noise_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Power_arr, _Sea_Wave_Noise_Power);
			half _Sea_Wave_Noise_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Multiply_arr, _Sea_Wave_Noise_Multiply);
			half clampResult807 = clamp( ( pow( abs( lerpResult791 ) , _Sea_Wave_Noise_Power_Instance ) * _Sea_Wave_Noise_Multiply_Instance ) , 0.0 , 1.0 );
			half clampResult827 = clamp( ( 1.0 - (0.05 + (clampResult807 - 0.0) * (0.97 - 0.05) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			half temp_output_825_0 = ( clampResult824 * clampResult827 );
			half2 _Polar_Wave_Depth_Start_X_Flatten_Point_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Depth_Start_X_Flatten_Point_Y_arr, _Polar_Wave_Depth_Start_X_Flatten_Point_Y);
			half2 PolarWaveDepthStartXFlattenPointY732 = _Polar_Wave_Depth_Start_X_Flatten_Point_Y_Instance;
			half2 break1308 = PolarWaveDepthStartXFlattenPointY732;
			half clampResult884 = clamp( ( v.texcoord3.w - break1308.y ) , 0.0 , 1.0 );
			half4 _GerstnerDirection_1_Instance = UNITY_ACCESS_INSTANCED_PROP(_GerstnerDirection_1_arr, _GerstnerDirection_1);
			half clampResult886 = clamp( (1.0 + (v.texcoord3.w - break1308.y) * (0.0 - 1.0) / (break1308.x - break1308.y)) , 0.0 , 1.0 );
			half clampResult890 = clamp( (_GerstnerDirection_1_Instance.y + (clampResult884 - 0.0) * (( _GerstnerDirection_1_Instance.x * clampResult886 ) - _GerstnerDirection_1_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half2 appendResult1009 = (half2(v.texcoord3.x , v.texcoord3.y));
			half2 normalizeResult1014 = normalize( ( appendResult1009 * float2( 1,-1 ) ) );
			half2 appendResult1011 = (half2(v.texcoord.z , v.texcoord.w));
			half2 normalizeResult1015 = normalize( appendResult1011 );
			half dotResult1016 = dot( normalizeResult1014 , normalizeResult1015 );
			half _Polar_Wave_Silent_Area_Angle_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Silent_Area_Angle_arr, _Polar_Wave_Silent_Area_Angle);
			half clampResult1022 = clamp( ( (0.0 + (dotResult1016 - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) + ( ( _Polar_Wave_Silent_Area_Angle_Instance + -180.0 ) / 180.0 ) ) , 0.0 , 1.0 );
			half clampResult1024 = clamp( ( 1.0 - clampResult1022 ) , 0.0 , 1.0 );
			half _Polar_Wave_Silent_Area_Angle_Hardness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Silent_Area_Angle_Hardness_arr, _Polar_Wave_Silent_Area_Angle_Hardness);
			half clampResult1028 = clamp( pow( abs( clampResult1024 ) , _Polar_Wave_Silent_Area_Angle_Hardness_Instance ) , 0.0 , 1.0 );
			half clampResult44_g44 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Small_Wave_Noise_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Tiling_arr, _Small_Wave_Noise_Tiling);
			half2 temp_output_779_0 = ( _Small_Wave_Noise_Tiling_Instance / float2( 1,1 ) );
			half2 clampResult780 = clamp( temp_output_779_0 , float2( 0.001,0.001 ) , float2( 500,500 ) );
			half2 temp_output_66_0_g44 = temp_output_779_0;
			half2 temp_output_53_0_g44 = ( ( ( ( ( 1.0 - clampResult44_g44 ) * half2( 1,1 ) ) + ( ( float2( 1,1 ) / clampResult780 ) * float2( 2,2 ) ) ) * temp_output_66_0_g44 ) * v.texcoord3.xy );
			half2 break56_g44 = temp_output_53_0_g44;
			half2 appendResult57_g44 = (half2(break56_g44.y , break56_g44.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g44 = temp_output_53_0_g44;
			#else
				half2 staticSwitch59_g44 = appendResult57_g44;
			#endif
			half temp_output_68_0_g44 = ( ( _Time.y + TimeOffset843 ) * 0.05 );
			half temp_output_71_0_g44 = frac( ( temp_output_68_0_g44 + 0.0 ) );
			half2 temp_output_60_0_g44 = ( staticSwitch59_g44 * temp_output_71_0_g44 );
			half2 temp_output_83_0_g44 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g44 * v.texcoord.xy ) );
			half2 temp_output_80_0_g44 = ( staticSwitch59_g44 * frac( ( temp_output_68_0_g44 + -0.5 ) ) );
			half clampResult90_g44 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g44 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half lerpResult772 = lerp( SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_60_0_g44 + temp_output_83_0_g44 ), 0.0 ).r , SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_83_0_g44 + temp_output_80_0_g44 ), 0.0 ).r , clampResult90_g44);
			half _Small_Wave_Noise_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Power_arr, _Small_Wave_Noise_Power);
			half _Small_Wave_Noise_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Multiply_arr, _Small_Wave_Noise_Multiply);
			half clampResult787 = clamp( ( pow( abs( lerpResult772 ) , _Small_Wave_Noise_Power_Instance ) * _Small_Wave_Noise_Multiply_Instance ) , 0.0 , 1.0 );
			half temp_output_788_0 = (0.0 + (clampResult787 - 0.0) * (0.97 - 0.0) / (1.0 - 0.0));
			half clampResult897 = clamp( ( 1.0 - temp_output_788_0 ) , 0.0 , 1.0 );
			half temp_output_895_0 = ( ( clampResult890 * ( clampResult1028 * 1.0 ) ) * clampResult897 );
			half2 _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_arr, _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y);
			half2 SmallWaveShoreDepthStartXFlattenPointY733 = _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_Instance;
			half2 break953 = SmallWaveShoreDepthStartXFlattenPointY733;
			half clampResult968 = clamp( ( v.texcoord3.w - break953.y ) , 0.0 , 1.0 );
			half4 _Gerstner_1_Instance = UNITY_ACCESS_INSTANCED_PROP(_Gerstner_1_arr, _Gerstner_1);
			half _Small_Wave_Shore_Height_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Shore_Height_Multiply_arr, _Small_Wave_Shore_Height_Multiply);
			half clampResult950 = clamp( (1.0 + (v.texcoord3.w - break953.y) * (0.0 - 1.0) / (break953.x - break953.y)) , 0.0 , 1.0 );
			half clampResult983 = clamp( (_Gerstner_1_Instance.y + (clampResult968 - 0.0) * (( _Gerstner_1_Instance.x + ( ( _Small_Wave_Shore_Height_Multiply_Instance * _Gerstner_1_Instance.x ) * clampResult950 ) ) - _Gerstner_1_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half clampResult985 = clamp( ( 1.0 - temp_output_788_0 ) , 0.0 , 1.0 );
			half clampResult1007 = clamp( temp_output_816_0 , 0.0 , 1.0 );
			half _Small_Waves_Chaos_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Waves_Chaos_arr, _Small_Waves_Chaos);
			half temp_output_933_0 = ( _Gerstner_1_Instance.z * _Small_Waves_Chaos_Instance );
			float cos1034 = cos( ( temp_output_933_0 * 0.01745 ) );
			float sin1034 = sin( ( temp_output_933_0 * 0.01745 ) );
			half2 rotator1034 = mul( normalizeResult1014 - float2( 0,0 ) , float2x2( cos1034 , -sin1034 , sin1034 , cos1034 )) + float2( 0,0 );
			half2 normalizeResult1038 = normalize( rotator1034 );
			half dotResult1040 = dot( normalizeResult1038 , normalizeResult1015 );
			half _Small_Wave_Silent_Area_Angle_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Silent_Area_Angle_arr, _Small_Wave_Silent_Area_Angle);
			half clampResult1051 = clamp( ( ( 1.0 - clampResult1007 ) * ( (0.0 + (dotResult1040 - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) + ( ( _Small_Wave_Silent_Area_Angle_Instance + -180.0 ) / 180.0 ) ) ) , 0.0 , 1.0 );
			half clampResult1055 = clamp( ( 1.0 - clampResult1051 ) , 0.0 , 1.0 );
			half _Small_Wave_Silent_Area_Angle_Hardness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Silent_Area_Angle_Hardness_arr, _Small_Wave_Silent_Area_Angle_Hardness);
			half clampResult1062 = clamp( pow( abs( clampResult1055 ) , _Small_Wave_Silent_Area_Angle_Hardness_Instance ) , 0.0 , 1.0 );
			half temp_output_993_0 = ( ( clampResult983 * clampResult985 ) * clampResult1062 );
			half clampResult894 = clamp( ( temp_output_895_0 + ( temp_output_825_0 + temp_output_993_0 ) ) , 0.01 , 999.0 );
			half clampResult845 = clamp( temp_output_825_0 , 0.0 , ( temp_output_825_0 / clampResult894 ) );
			half clampResult847 = clamp( clampResult845 , 0.01 , 1.0 );
			half temp_output_83_0_g54 = clampResult847;
			half temp_output_61_0_g54 = ( ( UNITY_PI * 2.0 ) / _GerstnerDirection_4_Instance.w );
			half temp_output_82_0_g54 = ( temp_output_83_0_g54 / temp_output_61_0_g54 );
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			half3 break70_g54 = ase_worldPos;
			half3 appendResult71_g54 = (half3(break70_g54.x , break70_g54.z , 0.0));
			half dotResult72_g54 = dot( half3( normalizeResult79_g54 ,  0.0 ) , appendResult71_g54 );
			half temp_output_81_0_g54 = ( temp_output_61_0_g54 * ( dotResult72_g54 - ( sqrt( ( 9.8 / temp_output_61_0_g54 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_85_0_g54 = cos( temp_output_81_0_g54 );
			half temp_output_86_0_g54 = sin( temp_output_81_0_g54 );
			half clampResult852 = clamp( temp_output_825_0 , 0.0 , 1.0 );
			half _Sea_Wave_Swash_Size_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Swash_Size_arr, _Sea_Wave_Swash_Size);
			half temp_output_89_0_g54 = ( clampResult852 * ( v.texcoord3.z * _Sea_Wave_Swash_Size_Instance ) );
			half temp_output_90_0_g54 = ( ( temp_output_82_0_g54 * temp_output_85_0_g54 ) + ( temp_output_86_0_g54 * temp_output_89_0_g54 ) );
			half3 appendResult94_g54 = (half3(( break80_g54.x * temp_output_90_0_g54 ) , ( temp_output_82_0_g54 * temp_output_86_0_g54 ) , ( break80_g54.y * temp_output_90_0_g54 )));
			half2 appendResult908 = (half2(v.texcoord.z , v.texcoord.w));
			half2 temp_output_73_0_g55 = appendResult908;
			half2 ifLocalVar77_g55 = 0;
			if( length( temp_output_73_0_g55 ) == 0.0 )
				ifLocalVar77_g55 = half2( 0.001,0 );
			else
				ifLocalVar77_g55 = temp_output_73_0_g55;
			half2 normalizeResult79_g55 = normalize( ifLocalVar77_g55 );
			half2 break80_g55 = normalizeResult79_g55;
			half clampResult899 = clamp( temp_output_895_0 , 0.0 , ( temp_output_895_0 / clampResult894 ) );
			half clampResult901 = clamp( clampResult899 , 0.01 , 1.0 );
			half temp_output_83_0_g55 = clampResult901;
			half temp_output_61_0_g55 = ( ( UNITY_PI * 2.0 ) / _GerstnerDirection_1_Instance.w );
			half temp_output_82_0_g55 = ( temp_output_83_0_g55 / temp_output_61_0_g55 );
			half temp_output_126_0_g55 = length( ifLocalVar77_g55 );
			half temp_output_81_0_g55 = ( temp_output_61_0_g55 * ( ( -1.0 * temp_output_126_0_g55 ) - ( sqrt( ( 9.8 / temp_output_61_0_g55 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_85_0_g55 = cos( temp_output_81_0_g55 );
			half temp_output_86_0_g55 = sin( temp_output_81_0_g55 );
			half _Polar_Wave_Swash_Size_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Swash_Size_arr, _Polar_Wave_Swash_Size);
			half temp_output_909_0 = ( clampResult897 * ( ( _Polar_Wave_Swash_Size_Instance * v.texcoord3.z ) * clampResult1028 ) );
			half clampResult910 = clamp( temp_output_909_0 , 0.0 , ( temp_output_909_0 / clampResult894 ) );
			half clampResult913 = clamp( (1.0 + (v.texcoord3.w - break1308.y) * (0.0 - 1.0) / (break1308.x - break1308.y)) , 0.001 , 1.0 );
			half temp_output_89_0_g55 = ( clampResult910 * clampResult913 );
			half temp_output_90_0_g55 = ( ( temp_output_82_0_g55 * temp_output_85_0_g55 ) + ( temp_output_86_0_g55 * temp_output_89_0_g55 ) );
			half3 appendResult94_g55 = (half3(( ( break80_g55.x * -1.0 ) * temp_output_90_0_g55 ) , ( temp_output_82_0_g55 * temp_output_86_0_g55 ) , ( ( break80_g55.y * -1.0 ) * temp_output_90_0_g55 )));
			half2 appendResult967 = (half2(v.texcoord3.x , v.texcoord3.y));
			float cos932 = cos( ( ( temp_output_933_0 + 180.0 ) * 0.01745 ) );
			float sin932 = sin( ( ( temp_output_933_0 + 180.0 ) * 0.01745 ) );
			half2 rotator932 = mul( appendResult967 - float2( 0,0 ) , float2x2( cos932 , -sin932 , sin932 , cos932 )) + float2( 0,0 );
			half2 temp_output_73_0_g52 = rotator932;
			half2 ifLocalVar77_g52 = 0;
			if( length( temp_output_73_0_g52 ) == 0.0 )
				ifLocalVar77_g52 = half2( 0.001,0 );
			else
				ifLocalVar77_g52 = temp_output_73_0_g52;
			half2 normalizeResult79_g52 = normalize( ifLocalVar77_g52 );
			half2 break80_g52 = normalizeResult79_g52;
			half clampResult998 = clamp( temp_output_993_0 , 0.0 , ( temp_output_993_0 / clampResult894 ) );
			half clampResult1000 = clamp( clampResult998 , 0.01 , 1.0 );
			half temp_output_83_0_g52 = clampResult1000;
			half temp_output_61_0_g52 = ( ( UNITY_PI * 2.0 ) / _Gerstner_1_Instance.w );
			half temp_output_82_0_g52 = ( temp_output_83_0_g52 / temp_output_61_0_g52 );
			half3 break70_g52 = ase_worldPos;
			half3 appendResult71_g52 = (half3(break70_g52.x , break70_g52.z , 0.0));
			half dotResult72_g52 = dot( half3( normalizeResult79_g52 ,  0.0 ) , appendResult71_g52 );
			half temp_output_81_0_g52 = ( temp_output_61_0_g52 * ( dotResult72_g52 - ( sqrt( ( 9.8 / temp_output_61_0_g52 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_85_0_g52 = cos( temp_output_81_0_g52 );
			half temp_output_86_0_g52 = sin( temp_output_81_0_g52 );
			half _Small_Wave_Swash_Size_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Swash_Size_arr, _Small_Wave_Swash_Size);
			half temp_output_991_0 = ( clampResult985 * ( clampResult1062 * ( _Small_Wave_Swash_Size_Instance * v.texcoord3.z ) ) );
			half clampResult996 = clamp( temp_output_991_0 , 0.0 , ( temp_output_991_0 / clampResult894 ) );
			half temp_output_89_0_g52 = clampResult996;
			half temp_output_90_0_g52 = ( ( temp_output_82_0_g52 * temp_output_85_0_g52 ) + ( temp_output_86_0_g52 * temp_output_89_0_g52 ) );
			half3 appendResult94_g52 = (half3(( break80_g52.x * temp_output_90_0_g52 ) , ( temp_output_82_0_g52 * temp_output_86_0_g52 ) , ( break80_g52.y * temp_output_90_0_g52 )));
			half3 temp_output_1075_0 = ( ( appendResult94_g54 + appendResult94_g55 ) + appendResult94_g52 );
			half clampResult44_g57 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Sea_Foam_Slope_Influence_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Foam_Slope_Influence_arr, _Sea_Foam_Slope_Influence);
			half2 SeaFoamSlopeInfluence701 = _Sea_Foam_Slope_Influence_Instance;
			half2 _SlowWaterSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterSpeed_arr, _SlowWaterSpeed);
			half2 MainWaterSpeed692 = _SlowWaterSpeed_Instance;
			half2 _SlowWaterTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterTiling_arr, _SlowWaterTiling);
			half2 WaterTiling693 = _SlowWaterTiling_Instance;
			half2 temp_output_66_0_g57 = WaterTiling693;
			half2 temp_output_53_0_g57 = ( ( ( ( ( 1.0 - clampResult44_g57 ) * SeaFoamSlopeInfluence701 ) + MainWaterSpeed692 ) * temp_output_66_0_g57 ) * v.texcoord3.xy );
			half2 break56_g57 = temp_output_53_0_g57;
			half2 appendResult57_g57 = (half2(break56_g57.y , break56_g57.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g57 = temp_output_53_0_g57;
			#else
				half2 staticSwitch59_g57 = appendResult57_g57;
			#endif
			half _WaterFlowUVRefresSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaterFlowUVRefresSpeed_arr, _WaterFlowUVRefresSpeed);
			half WaterFlowUVRefreshSpeed695 = _WaterFlowUVRefresSpeed_Instance;
			half temp_output_68_0_g57 = ( ( _Time.y + 0.0 ) * WaterFlowUVRefreshSpeed695 );
			half temp_output_71_0_g57 = frac( ( temp_output_68_0_g57 + 0.0 ) );
			half2 temp_output_60_0_g57 = ( staticSwitch59_g57 * temp_output_71_0_g57 );
			half2 temp_output_83_0_g57 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g57 * v.texcoord.xy ) );
			half2 temp_output_69_91 = ( temp_output_60_0_g57 + temp_output_83_0_g57 );
			half _SlowNormalScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowNormalScale_arr, _SlowNormalScale);
			half2 temp_output_80_0_g57 = ( staticSwitch59_g57 * frac( ( temp_output_68_0_g57 + -0.5 ) ) );
			half2 temp_output_69_93 = ( temp_output_83_0_g57 + temp_output_80_0_g57 );
			half clampResult90_g57 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g57 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half temp_output_69_96 = clampResult90_g57;
			half3 lerpResult80 = lerp( UnpackScaleNormal( SAMPLE_TEXTURE2D_LOD( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, temp_output_69_91, 0.0 ), _SlowNormalScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D_LOD( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, temp_output_69_93, 0.0 ), _SlowNormalScale_Instance ) , temp_output_69_96);
			half2 temp_output_145_0 = ( (lerpResult80).xy * float2( 0.05,0.05 ) );
			half2 _SlowWaterMixSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterMixSpeed_arr, _SlowWaterMixSpeed);
			half2 _MacroWaveTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_MacroWaveTiling_arr, _MacroWaveTiling);
			half2 appendResult136 = (half2(ase_worldPos.x , ase_worldPos.z));
			half2 temp_output_147_0 = ( temp_output_145_0 + ( ( _Time.y * ( ( _SlowWaterMixSpeed_Instance * float2( 1.2,1.2 ) ) * _MacroWaveTiling_Instance ) ) + ( ( 1.0 / GlobalTiling70 ) * ( _MacroWaveTiling_Instance * appendResult136 ) ) ) );
			half4 tex2DNode184 = SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_147_0, 0.0 );
			half MacroWaveTessScale_Instance = UNITY_ACCESS_INSTANCED_PROP(MacroWaveTessScale_arr, MacroWaveTessScale);
			half lerpResult81 = lerp( SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_69_91, 0.0 ).b , SAMPLE_TEXTURE2D_LOD( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_69_93, 0.0 ).b , temp_output_69_96);
			half _SlowWaterTessScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterTessScale_arr, _SlowWaterTessScale);
			half temp_output_1124_0 = min( PolarWaveDepthStartXFlattenPointY732.y , SmallWaveShoreDepthStartXFlattenPointY733.y );
			half clampResult1126 = clamp( ( temp_output_1124_0 / 3.0 ) , 0.0 , 9999.0 );
			half clampResult1132 = clamp( ( temp_output_1124_0 * 2.0 ) , 0.0 , 9999.0 );
			half clampResult1129 = clamp( (1.0 + (v.texcoord3.w - clampResult1126) * (0.0 - 1.0) / (clampResult1132 - clampResult1126)) , 0.0 , 1.0 );
			half lerpResult1133 = lerp( ( ( ( tex2DNode184.b + -0.25 ) * MacroWaveTessScale_Instance ) + ( lerpResult81 * _SlowWaterTessScale_Instance ) ) , 0.0 , clampResult1129);
			half3 ase_vertexNormal = v.normal.xyz;
			half3 clampResult559 = clamp( ase_vertexNormal , float3( 0,0,0 ) , float3( 1,1,1 ) );
			#ifdef _USE_VERTEX_OFFSET
				half3 staticSwitch1309 = ( lerpResult1133 * clampResult559 );
			#else
				half3 staticSwitch1309 = half3(0,0,0);
			#endif
			v.vertex.xyz += ( temp_output_1075_0 + staticSwitch1309 );
			v.vertex.w = 1;
			half4 ase_vertexTangent = v.tangent;
			half3 ase_vertexBitangent = cross( ase_vertexNormal, ase_vertexTangent) * v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
			half temp_output_95_0_g54 = ( temp_output_86_0_g54 * temp_output_83_0_g54 );
			half temp_output_104_0_g54 = ( ( temp_output_85_0_g54 * temp_output_61_0_g54 ) * temp_output_89_0_g54 );
			half temp_output_114_0_g54 = ( ( ( break80_g54.y * -1.0 ) * temp_output_95_0_g54 ) + ( break80_g54.y * temp_output_104_0_g54 ) );
			half temp_output_96_0_g54 = ( temp_output_85_0_g54 * temp_output_83_0_g54 );
			half3 appendResult120_g54 = (half3(( break80_g54.x * temp_output_114_0_g54 ) , ( break80_g54.y * temp_output_96_0_g54 ) , ( break80_g54.y * temp_output_114_0_g54 )));
			half temp_output_127_0_g55 = ( -1.0 / temp_output_126_0_g55 );
			half temp_output_136_0_g55 = ( ( ( ( temp_output_83_0_g55 * -1.0 ) * temp_output_86_0_g55 ) + ( ( temp_output_61_0_g55 * temp_output_85_0_g55 ) * temp_output_89_0_g55 ) ) * temp_output_127_0_g55 );
			half temp_output_138_0_g55 = ( break80_g55.y * temp_output_136_0_g55 );
			half temp_output_131_0_g55 = ( ( temp_output_85_0_g55 * temp_output_83_0_g55 ) * temp_output_127_0_g55 );
			half3 appendResult120_g55 = (half3(( break80_g55.x * temp_output_138_0_g55 ) , ( break80_g55.y * temp_output_131_0_g55 ) , ( break80_g55.y * temp_output_138_0_g55 )));
			half temp_output_95_0_g52 = ( temp_output_86_0_g52 * temp_output_83_0_g52 );
			half temp_output_104_0_g52 = ( ( temp_output_85_0_g52 * temp_output_61_0_g52 ) * temp_output_89_0_g52 );
			half temp_output_114_0_g52 = ( ( ( break80_g52.y * -1.0 ) * temp_output_95_0_g52 ) + ( break80_g52.y * temp_output_104_0_g52 ) );
			half temp_output_96_0_g52 = ( temp_output_85_0_g52 * temp_output_83_0_g52 );
			half3 appendResult120_g52 = (half3(( break80_g52.x * temp_output_114_0_g52 ) , ( break80_g52.y * temp_output_96_0_g52 ) , ( break80_g52.y * temp_output_114_0_g52 )));
			half temp_output_101_0_g54 = ( ( ( break80_g54.x * -1.0 ) * temp_output_95_0_g54 ) + ( break80_g54.x * temp_output_104_0_g54 ) );
			half3 appendResult110_g54 = (half3(( break80_g54.x * temp_output_101_0_g54 ) , ( break80_g54.x * temp_output_96_0_g54 ) , ( break80_g54.y * temp_output_101_0_g54 )));
			half temp_output_137_0_g55 = ( break80_g55.x * temp_output_136_0_g55 );
			half3 appendResult110_g55 = (half3(( break80_g55.x * temp_output_137_0_g55 ) , ( break80_g55.x * temp_output_131_0_g55 ) , ( break80_g55.y * temp_output_137_0_g55 )));
			half temp_output_101_0_g52 = ( ( ( break80_g52.x * -1.0 ) * temp_output_95_0_g52 ) + ( break80_g52.x * temp_output_104_0_g52 ) );
			half3 appendResult110_g52 = (half3(( break80_g52.x * temp_output_101_0_g52 ) , ( break80_g52.x * temp_output_96_0_g52 ) , ( break80_g52.y * temp_output_101_0_g52 )));
			half3 normalizeResult1099 = normalize( cross( ( half3(0,0,1) + ( ase_vertexBitangent + ( ( ( appendResult120_g54 + float3( 0,0,0 ) ) + ( appendResult120_g55 + float3( 0,0,0 ) ) ) + ( appendResult120_g52 + float3( 0,0,0 ) ) ) ) ) , ( half3(1,0,0) + ( ase_vertexTangent.xyz + ( ( ( appendResult110_g54 + float3( 0,0,0 ) ) + ( appendResult110_g55 + float3( 0,0,0 ) ) ) + ( appendResult110_g52 + float3( 0,0,0 ) ) ) ) ) ) );
			v.normal = normalizeResult1099;
			o.vertexToFrag1336 = temp_output_1075_0;
			o.eyeDepth = -UnityObjectToViewPos( v.vertex.xyz ).z;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			half3 ase_worldNormal = WorldNormalVector( i, half3( 0, 0, 1 ) );
			half clampResult44_g57 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Sea_Foam_Slope_Influence_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Foam_Slope_Influence_arr, _Sea_Foam_Slope_Influence);
			half2 SeaFoamSlopeInfluence701 = _Sea_Foam_Slope_Influence_Instance;
			half2 _SlowWaterSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterSpeed_arr, _SlowWaterSpeed);
			half2 MainWaterSpeed692 = _SlowWaterSpeed_Instance;
			half2 _SlowWaterTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterTiling_arr, _SlowWaterTiling);
			half2 WaterTiling693 = _SlowWaterTiling_Instance;
			half2 temp_output_66_0_g57 = WaterTiling693;
			half2 temp_output_53_0_g57 = ( ( ( ( ( 1.0 - clampResult44_g57 ) * SeaFoamSlopeInfluence701 ) + MainWaterSpeed692 ) * temp_output_66_0_g57 ) * i.uv4_texcoord4.xy );
			half2 break56_g57 = temp_output_53_0_g57;
			half2 appendResult57_g57 = (half2(break56_g57.y , break56_g57.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g57 = temp_output_53_0_g57;
			#else
				half2 staticSwitch59_g57 = appendResult57_g57;
			#endif
			half _WaterFlowUVRefresSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaterFlowUVRefresSpeed_arr, _WaterFlowUVRefresSpeed);
			half WaterFlowUVRefreshSpeed695 = _WaterFlowUVRefresSpeed_Instance;
			half temp_output_68_0_g57 = ( ( _Time.y + 0.0 ) * WaterFlowUVRefreshSpeed695 );
			half temp_output_71_0_g57 = frac( ( temp_output_68_0_g57 + 0.0 ) );
			half2 temp_output_60_0_g57 = ( staticSwitch59_g57 * temp_output_71_0_g57 );
			half _GlobalTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlobalTiling_arr, _GlobalTiling);
			half GlobalTiling70 = _GlobalTiling_Instance;
			half2 temp_output_83_0_g57 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g57 * i.uv_texcoord.xy ) );
			half2 temp_output_69_91 = ( temp_output_60_0_g57 + temp_output_83_0_g57 );
			half _SlowNormalScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowNormalScale_arr, _SlowNormalScale);
			half2 temp_output_80_0_g57 = ( staticSwitch59_g57 * frac( ( temp_output_68_0_g57 + -0.5 ) ) );
			half2 temp_output_69_93 = ( temp_output_83_0_g57 + temp_output_80_0_g57 );
			half clampResult90_g57 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g57 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half temp_output_69_96 = clampResult90_g57;
			half3 lerpResult80 = lerp( UnpackScaleNormal( SAMPLE_TEXTURE2D( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, temp_output_69_91 ), _SlowNormalScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, temp_output_69_93 ), _SlowNormalScale_Instance ) , temp_output_69_96);
			half2 _SlowWaterMixSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterMixSpeed_arr, _SlowWaterMixSpeed);
			half2 WindMicroWaveTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(WindMicroWaveTiling_arr, WindMicroWaveTiling);
			float3 ase_worldPos = i.worldPos;
			half2 appendResult124 = (half2(ase_worldPos.x , ase_worldPos.z));
			half2 temp_output_145_0 = ( (lerpResult80).xy * float2( 0.05,0.05 ) );
			half3 tex2DNode149 = UnpackNormal( SAMPLE_TEXTURE2D( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, ( ( ( _Time.y * ( ( _SlowWaterMixSpeed_Instance * float2( 1.2,1.2 ) ) * WindMicroWaveTiling_Instance ) ) + ( ( 1.0 / GlobalTiling70 ) * ( WindMicroWaveTiling_Instance * appendResult124 ) ) ) + temp_output_145_0 ) ) );
			half2 appendResult152 = (half2(tex2DNode149.r , tex2DNode149.g));
			half2 appendResult168 = (half2(sign( ase_worldNormal.y ) , 1.0));
			half2 appendResult169 = (half2(ase_worldNormal.x , ase_worldNormal.z));
			half2 break174 = ( ( appendResult152 * appendResult168 ) + appendResult169 );
			half3 appendResult172 = (half3(break174.x , ( ase_worldNormal.y * tex2DNode149.b ) , break174.y));
			half3 ase_worldTangent = WorldNormalVector( i, half3( 1, 0, 0 ) );
			half3 ase_worldBitangent = WorldNormalVector( i, half3( 0, 1, 0 ) );
			half3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			half3 worldToTangentDir178 = mul( ase_worldToTangent, appendResult172);
			half3 break31_g41 = worldToTangentDir178;
			half2 appendResult35_g41 = (half2(break31_g41.x , break31_g41.y));
			half _MicroWaveNormalScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_MicroWaveNormalScale_arr, _MicroWaveNormalScale);
			half temp_output_38_0_g41 = _MicroWaveNormalScale_Instance;
			half lerpResult36_g41 = lerp( 1.0 , break31_g41.z , saturate( temp_output_38_0_g41 ));
			half3 appendResult34_g41 = (half3(( appendResult35_g41 * temp_output_38_0_g41 ) , lerpResult36_g41));
			half2 _MacroWaveTiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_MacroWaveTiling_arr, _MacroWaveTiling);
			half2 appendResult136 = (half2(ase_worldPos.x , ase_worldPos.z));
			half2 temp_output_147_0 = ( temp_output_145_0 + ( ( _Time.y * ( ( _SlowWaterMixSpeed_Instance * float2( 1.2,1.2 ) ) * _MacroWaveTiling_Instance ) ) + ( ( 1.0 / GlobalTiling70 ) * ( _MacroWaveTiling_Instance * appendResult136 ) ) ) );
			half3 tex2DNode150 = UnpackNormal( SAMPLE_TEXTURE2D( _SlowWaterNormal, sampler_Linear_Repeat_Aniso4, temp_output_147_0 ) );
			half2 appendResult153 = (half2(tex2DNode150.r , tex2DNode150.g));
			half2 break175 = ( ( appendResult153 * appendResult168 ) + appendResult169 );
			half3 appendResult173 = (half3(break175.x , ( ase_worldNormal.y * tex2DNode150.b ) , break175.y));
			half3 worldToTangentDir179 = mul( ase_worldToTangent, appendResult173);
			half3 break31_g42 = worldToTangentDir179;
			half2 appendResult35_g42 = (half2(break31_g42.x , break31_g42.y));
			half _MacroWaveNormalScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_MacroWaveNormalScale_arr, _MacroWaveNormalScale);
			half temp_output_38_0_g42 = _MacroWaveNormalScale_Instance;
			half lerpResult36_g42 = lerp( 1.0 , break31_g42.z , saturate( temp_output_38_0_g42 ));
			half3 appendResult34_g42 = (half3(( appendResult35_g42 * temp_output_38_0_g42 ) , lerpResult36_g42));
			half3 temp_output_116_0 = BlendNormals( lerpResult80 , BlendNormals( appendResult34_g41 , appendResult34_g42 ) );
			half _FarNormalPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_FarNormalPower_arr, _FarNormalPower);
			half3 appendResult483 = (half3(_FarNormalPower_Instance , _FarNormalPower_Instance , 1.0));
			half temp_output_470_0 = distance( ase_worldPos , _WorldSpaceCameraPos );
			half _FarNormalBlendStartDistance_Instance = UNITY_ACCESS_INSTANCED_PROP(_FarNormalBlendStartDistance_arr, _FarNormalBlendStartDistance);
			half _FarNormalBlendThreshold_Instance = UNITY_ACCESS_INSTANCED_PROP(_FarNormalBlendThreshold_arr, _FarNormalBlendThreshold);
			half clampResult480 = clamp( pow( abs( ( temp_output_470_0 / _FarNormalBlendStartDistance_Instance ) ) , _FarNormalBlendThreshold_Instance ) , 0.0 , 1.0 );
			half3 lerpResult481 = lerp( temp_output_116_0 , ( temp_output_116_0 * appendResult483 ) , clampResult480);
			half2 _Side_Foam_Speed_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Speed_arr, _Side_Foam_Speed);
			half2 temp_output_65_0_g56 = _Side_Foam_Speed_Instance;
			half4 _Vector0 = half4(-1,1,0,1);
			half2 _Side_Foam_Slope_Speed_Influence_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Slope_Speed_Influence_arr, _Side_Foam_Slope_Speed_Influence);
			half2 _Side_Foam_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Tiling_arr, _Side_Foam_Tiling);
			half2 temp_output_66_0_g56 = _Side_Foam_Tiling_Instance;
			half2 temp_output_53_0_g56 = ( ( ( temp_output_65_0_g56 + ( temp_output_65_0_g56 * ( abs( pow( abs( (_Vector0.z + (ase_worldNormal.y - _Vector0.x) * (_Vector0.w - _Vector0.z) / (_Vector0.y - _Vector0.x)) ) , 0.5 ) ) * ( _Side_Foam_Slope_Speed_Influence_Instance * half2( -1,-1 ) ) ) ) ) * temp_output_66_0_g56 ) * i.uv4_texcoord4.xy );
			half2 break56_g56 = temp_output_53_0_g56;
			half2 appendResult57_g56 = (half2(break56_g56.y , break56_g56.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g56 = temp_output_53_0_g56;
			#else
				half2 staticSwitch59_g56 = appendResult57_g56;
			#endif
			half _Side_Foam_Flow_UV_Refresh_Speed_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Flow_UV_Refresh_Speed_arr, _Side_Foam_Flow_UV_Refresh_Speed);
			half temp_output_68_0_g56 = ( _Time.y * _Side_Foam_Flow_UV_Refresh_Speed_Instance );
			half temp_output_71_0_g56 = frac( ( temp_output_68_0_g56 + 0.0 ) );
			half2 temp_output_60_0_g56 = ( staticSwitch59_g56 * temp_output_71_0_g56 );
			half2 temp_output_83_0_g56 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g56 * i.uv_texcoord.xy ) );
			half2 temp_output_94_91 = ( temp_output_60_0_g56 + temp_output_83_0_g56 );
			half _Side_Foam_Mask_Normal_Scale_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Mask_Normal_Scale_arr, _Side_Foam_Mask_Normal_Scale);
			half2 temp_output_80_0_g56 = ( staticSwitch59_g56 * frac( ( temp_output_68_0_g56 + -0.5 ) ) );
			half2 temp_output_94_93 = ( temp_output_83_0_g56 + temp_output_80_0_g56 );
			half clampResult90_g56 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g56 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half temp_output_94_96 = clampResult90_g56;
			half3 lerpResult110 = lerp( UnpackScaleNormal( SAMPLE_TEXTURE2D( _Side_Foam_Mask_Normal, sampler_Linear_Repeat_Aniso4, temp_output_94_91 ), _Side_Foam_Mask_Normal_Scale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _Side_Foam_Mask_Normal, sampler_Linear_Repeat_Aniso4, temp_output_94_93 ), _Side_Foam_Mask_Normal_Scale_Instance ) , temp_output_94_96);
			half4 _GerstnerDirection_4_Instance = UNITY_ACCESS_INSTANCED_PROP(_GerstnerDirection_4_arr, _GerstnerDirection_4);
			half temp_output_61_0_g54 = ( ( UNITY_PI * 2.0 ) / _GerstnerDirection_4_Instance.w );
			half2 appendResult861 = (half2(i.uv4_texcoord4.x , i.uv4_texcoord4.y));
			half _Sea_Waves_Chaos_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Waves_Chaos_arr, _Sea_Waves_Chaos);
			float cos862 = cos( ( ( ( _GerstnerDirection_4_Instance.z * _Sea_Waves_Chaos_Instance ) + 180.0 ) * 0.01745 ) );
			float sin862 = sin( ( ( ( _GerstnerDirection_4_Instance.z * _Sea_Waves_Chaos_Instance ) + 180.0 ) * 0.01745 ) );
			half2 rotator862 = mul( appendResult861 - float2( 0,0 ) , float2x2( cos862 , -sin862 , sin862 , cos862 )) + float2( 0,0 );
			half2 temp_output_73_0_g54 = rotator862;
			half2 ifLocalVar77_g54 = 0;
			if( length( temp_output_73_0_g54 ) == 0.0 )
				ifLocalVar77_g54 = half2( 0.001,0 );
			else
				ifLocalVar77_g54 = temp_output_73_0_g54;
			half2 normalizeResult79_g54 = normalize( ifLocalVar77_g54 );
			half3 break70_g54 = ase_worldPos;
			half3 appendResult71_g54 = (half3(break70_g54.x , break70_g54.z , 0.0));
			half dotResult72_g54 = dot( half3( normalizeResult79_g54 ,  0.0 ) , appendResult71_g54 );
			half _Time_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Time_Offset_arr, _Time_Offset);
			half TimeOffset843 = _Time_Offset_Instance;
			half temp_output_81_0_g54 = ( temp_output_61_0_g54 * ( dotResult72_g54 - ( sqrt( ( 9.8 / temp_output_61_0_g54 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_839_56 = ( ( ( ( ( UNITY_PI * 0.5 ) - ( temp_output_81_0_g54 + -3.8 ) ) % ( UNITY_PI * 2.0 ) ) / UNITY_PI ) + -1.0 );
			half clampResult1184 = clamp( temp_output_839_56 , 0.0 , 1.0 );
			half clampResult1185 = clamp( temp_output_839_56 , -1.0 , 1.0 );
			half2 appendResult908 = (half2(i.uv_texcoord.z , i.uv_texcoord.w));
			half2 temp_output_73_0_g55 = appendResult908;
			half2 ifLocalVar77_g55 = 0;
			if( length( temp_output_73_0_g55 ) == 0.0 )
				ifLocalVar77_g55 = half2( 0.001,0 );
			else
				ifLocalVar77_g55 = temp_output_73_0_g55;
			half2 normalizeResult79_g55 = normalize( ifLocalVar77_g55 );
			half2 break80_g55 = normalizeResult79_g55;
			half2 _Polar_Wave_Depth_Start_X_Flatten_Point_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Depth_Start_X_Flatten_Point_Y_arr, _Polar_Wave_Depth_Start_X_Flatten_Point_Y);
			half2 PolarWaveDepthStartXFlattenPointY732 = _Polar_Wave_Depth_Start_X_Flatten_Point_Y_Instance;
			half2 break1308 = PolarWaveDepthStartXFlattenPointY732;
			half clampResult884 = clamp( ( i.uv4_texcoord4.w - break1308.y ) , 0.0 , 1.0 );
			half4 _GerstnerDirection_1_Instance = UNITY_ACCESS_INSTANCED_PROP(_GerstnerDirection_1_arr, _GerstnerDirection_1);
			half clampResult886 = clamp( (1.0 + (i.uv4_texcoord4.w - break1308.y) * (0.0 - 1.0) / (break1308.x - break1308.y)) , 0.0 , 1.0 );
			half clampResult890 = clamp( (_GerstnerDirection_1_Instance.y + (clampResult884 - 0.0) * (( _GerstnerDirection_1_Instance.x * clampResult886 ) - _GerstnerDirection_1_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half2 appendResult1009 = (half2(i.uv4_texcoord4.x , i.uv4_texcoord4.y));
			half2 normalizeResult1014 = normalize( ( appendResult1009 * float2( 1,-1 ) ) );
			half2 appendResult1011 = (half2(i.uv_texcoord.z , i.uv_texcoord.w));
			half2 normalizeResult1015 = normalize( appendResult1011 );
			half dotResult1016 = dot( normalizeResult1014 , normalizeResult1015 );
			half _Polar_Wave_Silent_Area_Angle_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Silent_Area_Angle_arr, _Polar_Wave_Silent_Area_Angle);
			half clampResult1022 = clamp( ( (0.0 + (dotResult1016 - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) + ( ( _Polar_Wave_Silent_Area_Angle_Instance + -180.0 ) / 180.0 ) ) , 0.0 , 1.0 );
			half clampResult1024 = clamp( ( 1.0 - clampResult1022 ) , 0.0 , 1.0 );
			half _Polar_Wave_Silent_Area_Angle_Hardness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Silent_Area_Angle_Hardness_arr, _Polar_Wave_Silent_Area_Angle_Hardness);
			half clampResult1028 = clamp( pow( abs( clampResult1024 ) , _Polar_Wave_Silent_Area_Angle_Hardness_Instance ) , 0.0 , 1.0 );
			half clampResult44_g44 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Small_Wave_Noise_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Tiling_arr, _Small_Wave_Noise_Tiling);
			half2 temp_output_779_0 = ( _Small_Wave_Noise_Tiling_Instance / float2( 1,1 ) );
			half2 clampResult780 = clamp( temp_output_779_0 , float2( 0.001,0.001 ) , float2( 500,500 ) );
			half2 temp_output_66_0_g44 = temp_output_779_0;
			half2 temp_output_53_0_g44 = ( ( ( ( ( 1.0 - clampResult44_g44 ) * half2( 1,1 ) ) + ( ( float2( 1,1 ) / clampResult780 ) * float2( 2,2 ) ) ) * temp_output_66_0_g44 ) * i.uv4_texcoord4.xy );
			half2 break56_g44 = temp_output_53_0_g44;
			half2 appendResult57_g44 = (half2(break56_g44.y , break56_g44.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g44 = temp_output_53_0_g44;
			#else
				half2 staticSwitch59_g44 = appendResult57_g44;
			#endif
			half temp_output_68_0_g44 = ( ( _Time.y + TimeOffset843 ) * 0.05 );
			half temp_output_71_0_g44 = frac( ( temp_output_68_0_g44 + 0.0 ) );
			half2 temp_output_60_0_g44 = ( staticSwitch59_g44 * temp_output_71_0_g44 );
			half2 temp_output_83_0_g44 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g44 * i.uv_texcoord.xy ) );
			half2 temp_output_80_0_g44 = ( staticSwitch59_g44 * frac( ( temp_output_68_0_g44 + -0.5 ) ) );
			half clampResult90_g44 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g44 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half lerpResult772 = lerp( SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_60_0_g44 + temp_output_83_0_g44 ) ).r , SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_83_0_g44 + temp_output_80_0_g44 ) ).r , clampResult90_g44);
			half _Small_Wave_Noise_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Power_arr, _Small_Wave_Noise_Power);
			half _Small_Wave_Noise_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Noise_Multiply_arr, _Small_Wave_Noise_Multiply);
			half clampResult787 = clamp( ( pow( abs( lerpResult772 ) , _Small_Wave_Noise_Power_Instance ) * _Small_Wave_Noise_Multiply_Instance ) , 0.0 , 1.0 );
			half temp_output_788_0 = (0.0 + (clampResult787 - 0.0) * (0.97 - 0.0) / (1.0 - 0.0));
			half clampResult897 = clamp( ( 1.0 - temp_output_788_0 ) , 0.0 , 1.0 );
			half temp_output_895_0 = ( ( clampResult890 * ( clampResult1028 * 1.0 ) ) * clampResult897 );
			half2 _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Depth_Flatten_Start_X_End_Y_arr, _Sea_Wave_Depth_Flatten_Start_X_End_Y);
			half temp_output_816_0 = (0.0 + (i.uv4_texcoord4.w - _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.y) * (1.0 - 0.0) / (_Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.x - _Sea_Wave_Depth_Flatten_Start_X_End_Y_Instance.y));
			half clampResult823 = clamp( temp_output_816_0 , 0.0 , 1.0 );
			half clampResult824 = clamp( (_GerstnerDirection_4_Instance.y + (clampResult823 - 0.0) * (max( ( clampResult823 * _GerstnerDirection_4_Instance.x ) , _GerstnerDirection_4_Instance.y ) - _GerstnerDirection_4_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half clampResult44_g45 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Sea_Wave_Noise_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Tiling_arr, _Sea_Wave_Noise_Tiling);
			half2 temp_output_801_0 = ( _Sea_Wave_Noise_Tiling_Instance / float2( 1,1 ) );
			half2 clampResult800 = clamp( temp_output_801_0 , float2( 0.001,0.001 ) , float2( 500,500 ) );
			half2 temp_output_66_0_g45 = temp_output_801_0;
			half2 temp_output_53_0_g45 = ( ( ( ( ( 1.0 - clampResult44_g45 ) * half2( 1,1 ) ) + ( ( float2( 1,1 ) / clampResult800 ) * float2( 1.8,1.8 ) ) ) * temp_output_66_0_g45 ) * i.uv4_texcoord4.xy );
			half2 break56_g45 = temp_output_53_0_g45;
			half2 appendResult57_g45 = (half2(break56_g45.y , break56_g45.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g45 = temp_output_53_0_g45;
			#else
				half2 staticSwitch59_g45 = appendResult57_g45;
			#endif
			half temp_output_68_0_g45 = ( ( _Time.y + TimeOffset843 ) * 0.07 );
			half temp_output_71_0_g45 = frac( ( temp_output_68_0_g45 + 0.0 ) );
			half2 temp_output_60_0_g45 = ( staticSwitch59_g45 * temp_output_71_0_g45 );
			half2 temp_output_83_0_g45 = ( ( 1.0 / GlobalTiling70 ) * ( temp_output_66_0_g45 * i.uv_texcoord.xy ) );
			half2 temp_output_80_0_g45 = ( staticSwitch59_g45 * frac( ( temp_output_68_0_g45 + -0.5 ) ) );
			half clampResult90_g45 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g45 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half lerpResult791 = lerp( SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_60_0_g45 + temp_output_83_0_g45 ) ).r , SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, ( temp_output_83_0_g45 + temp_output_80_0_g45 ) ).r , clampResult90_g45);
			half _Sea_Wave_Noise_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Power_arr, _Sea_Wave_Noise_Power);
			half _Sea_Wave_Noise_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Wave_Noise_Multiply_arr, _Sea_Wave_Noise_Multiply);
			half clampResult807 = clamp( ( pow( abs( lerpResult791 ) , _Sea_Wave_Noise_Power_Instance ) * _Sea_Wave_Noise_Multiply_Instance ) , 0.0 , 1.0 );
			half clampResult827 = clamp( ( 1.0 - (0.05 + (clampResult807 - 0.0) * (0.97 - 0.05) / (1.0 - 0.0)) ) , 0.0 , 1.0 );
			half temp_output_825_0 = ( clampResult824 * clampResult827 );
			half2 _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_arr, _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y);
			half2 SmallWaveShoreDepthStartXFlattenPointY733 = _Small_Wave_Shore_Depth_Start_X_Flatten_Point_Y_Instance;
			half2 break953 = SmallWaveShoreDepthStartXFlattenPointY733;
			half clampResult968 = clamp( ( i.uv4_texcoord4.w - break953.y ) , 0.0 , 1.0 );
			half4 _Gerstner_1_Instance = UNITY_ACCESS_INSTANCED_PROP(_Gerstner_1_arr, _Gerstner_1);
			half _Small_Wave_Shore_Height_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Shore_Height_Multiply_arr, _Small_Wave_Shore_Height_Multiply);
			half clampResult950 = clamp( (1.0 + (i.uv4_texcoord4.w - break953.y) * (0.0 - 1.0) / (break953.x - break953.y)) , 0.0 , 1.0 );
			half clampResult983 = clamp( (_Gerstner_1_Instance.y + (clampResult968 - 0.0) * (( _Gerstner_1_Instance.x + ( ( _Small_Wave_Shore_Height_Multiply_Instance * _Gerstner_1_Instance.x ) * clampResult950 ) ) - _Gerstner_1_Instance.y) / (1.0 - 0.0)) , 0.0 , 1.0 );
			half clampResult985 = clamp( ( 1.0 - temp_output_788_0 ) , 0.0 , 1.0 );
			half clampResult1007 = clamp( temp_output_816_0 , 0.0 , 1.0 );
			half _Small_Waves_Chaos_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Waves_Chaos_arr, _Small_Waves_Chaos);
			half temp_output_933_0 = ( _Gerstner_1_Instance.z * _Small_Waves_Chaos_Instance );
			float cos1034 = cos( ( temp_output_933_0 * 0.01745 ) );
			float sin1034 = sin( ( temp_output_933_0 * 0.01745 ) );
			half2 rotator1034 = mul( normalizeResult1014 - float2( 0,0 ) , float2x2( cos1034 , -sin1034 , sin1034 , cos1034 )) + float2( 0,0 );
			half2 normalizeResult1038 = normalize( rotator1034 );
			half dotResult1040 = dot( normalizeResult1038 , normalizeResult1015 );
			half _Small_Wave_Silent_Area_Angle_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Silent_Area_Angle_arr, _Small_Wave_Silent_Area_Angle);
			half clampResult1051 = clamp( ( ( 1.0 - clampResult1007 ) * ( (0.0 + (dotResult1040 - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) + ( ( _Small_Wave_Silent_Area_Angle_Instance + -180.0 ) / 180.0 ) ) ) , 0.0 , 1.0 );
			half clampResult1055 = clamp( ( 1.0 - clampResult1051 ) , 0.0 , 1.0 );
			half _Small_Wave_Silent_Area_Angle_Hardness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Small_Wave_Silent_Area_Angle_Hardness_arr, _Small_Wave_Silent_Area_Angle_Hardness);
			half clampResult1062 = clamp( pow( abs( clampResult1055 ) , _Small_Wave_Silent_Area_Angle_Hardness_Instance ) , 0.0 , 1.0 );
			half temp_output_993_0 = ( ( clampResult983 * clampResult985 ) * clampResult1062 );
			half clampResult894 = clamp( ( temp_output_895_0 + ( temp_output_825_0 + temp_output_993_0 ) ) , 0.01 , 999.0 );
			half clampResult899 = clamp( temp_output_895_0 , 0.0 , ( temp_output_895_0 / clampResult894 ) );
			half clampResult901 = clamp( clampResult899 , 0.01 , 1.0 );
			half temp_output_83_0_g55 = clampResult901;
			half temp_output_61_0_g55 = ( ( UNITY_PI * 2.0 ) / _GerstnerDirection_1_Instance.w );
			half temp_output_82_0_g55 = ( temp_output_83_0_g55 / temp_output_61_0_g55 );
			half temp_output_126_0_g55 = length( ifLocalVar77_g55 );
			half temp_output_81_0_g55 = ( temp_output_61_0_g55 * ( ( -1.0 * temp_output_126_0_g55 ) - ( sqrt( ( 9.8 / temp_output_61_0_g55 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_85_0_g55 = cos( temp_output_81_0_g55 );
			half temp_output_86_0_g55 = sin( temp_output_81_0_g55 );
			half _Polar_Wave_Swash_Size_Instance = UNITY_ACCESS_INSTANCED_PROP(_Polar_Wave_Swash_Size_arr, _Polar_Wave_Swash_Size);
			half temp_output_909_0 = ( clampResult897 * ( ( _Polar_Wave_Swash_Size_Instance * i.uv4_texcoord4.z ) * clampResult1028 ) );
			half clampResult910 = clamp( temp_output_909_0 , 0.0 , ( temp_output_909_0 / clampResult894 ) );
			half clampResult913 = clamp( (1.0 + (i.uv4_texcoord4.w - break1308.y) * (0.0 - 1.0) / (break1308.x - break1308.y)) , 0.001 , 1.0 );
			half temp_output_89_0_g55 = ( clampResult910 * clampResult913 );
			half temp_output_90_0_g55 = ( ( temp_output_82_0_g55 * temp_output_85_0_g55 ) + ( temp_output_86_0_g55 * temp_output_89_0_g55 ) );
			half3 appendResult94_g55 = (half3(( ( break80_g55.x * -1.0 ) * temp_output_90_0_g55 ) , ( temp_output_82_0_g55 * temp_output_86_0_g55 ) , ( ( break80_g55.y * -1.0 ) * temp_output_90_0_g55 )));
			half clampResult124_g55 = clamp( appendResult94_g55.y , 0.0 , 10.0 );
			half temp_output_1120_56 = ( clampResult124_g55 * ( ( ( ( ( UNITY_PI * 0.5 ) - ( temp_output_81_0_g55 + -3.8 ) ) % ( UNITY_PI * 2.0 ) ) / UNITY_PI ) + -1.0 ) );
			half clampResult1194 = clamp( temp_output_1120_56 , 0.0 , 1.0 );
			half clampResult1195 = clamp( temp_output_1120_56 , -1.0 , 1.0 );
			half temp_output_61_0_g52 = ( ( UNITY_PI * 2.0 ) / _Gerstner_1_Instance.w );
			half2 appendResult967 = (half2(i.uv4_texcoord4.x , i.uv4_texcoord4.y));
			float cos932 = cos( ( ( temp_output_933_0 + 180.0 ) * 0.01745 ) );
			float sin932 = sin( ( ( temp_output_933_0 + 180.0 ) * 0.01745 ) );
			half2 rotator932 = mul( appendResult967 - float2( 0,0 ) , float2x2( cos932 , -sin932 , sin932 , cos932 )) + float2( 0,0 );
			half2 temp_output_73_0_g52 = rotator932;
			half2 ifLocalVar77_g52 = 0;
			if( length( temp_output_73_0_g52 ) == 0.0 )
				ifLocalVar77_g52 = half2( 0.001,0 );
			else
				ifLocalVar77_g52 = temp_output_73_0_g52;
			half2 normalizeResult79_g52 = normalize( ifLocalVar77_g52 );
			half3 break70_g52 = ase_worldPos;
			half3 appendResult71_g52 = (half3(break70_g52.x , break70_g52.z , 0.0));
			half dotResult72_g52 = dot( half3( normalizeResult79_g52 ,  0.0 ) , appendResult71_g52 );
			half temp_output_81_0_g52 = ( temp_output_61_0_g52 * ( dotResult72_g52 - ( sqrt( ( 9.8 / temp_output_61_0_g52 ) ) * ( _Time.y + TimeOffset843 ) ) ) );
			half temp_output_919_56 = ( ( ( ( ( UNITY_PI * 0.5 ) - ( temp_output_81_0_g52 + -3.8 ) ) % ( UNITY_PI * 2.0 ) ) / UNITY_PI ) + -1.0 );
			half clampResult1199 = clamp( temp_output_919_56 , 0.0 , 1.0 );
			half clampResult1200 = clamp( temp_output_919_56 , -1.0 , 1.0 );
			half clampResult1210 = clamp( ( ( clampResult1184 * ( 1.0 - abs( clampResult1185 ) ) ) + ( clampResult1194 * ( 1.0 - abs( clampResult1195 ) ) ) + ( clampResult1199 * ( 1.0 - abs( clampResult1200 ) ) ) ) , 0.25 , 1.0 );
			half3 Waves1317 = i.vertexToFrag1336;
			half clampResult1171 = clamp( Waves1317.y , 0.0 , 10.0 );
			half _Side_Foam_Wave_Backs_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Wave_Backs_Offset_arr, _Side_Foam_Wave_Backs_Offset);
			half _Side_Foam_Wave_Backs_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Wave_Backs_Multiply_arr, _Side_Foam_Wave_Backs_Multiply);
			half clampResult1215 = clamp( ( ( ( (0.0 + (clampResult1210 - 0.25) * (1.0 - 0.0) / (1.0 - 0.25)) * clampResult1171 ) + _Side_Foam_Wave_Backs_Offset_Instance ) * _Side_Foam_Wave_Backs_Multiply_Instance ) , 0.0 , 1.0 );
			half clampResult1138 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half _Side_Foam_Waves_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Waves_Multiply_arr, _Side_Foam_Waves_Multiply);
			half _Side_Foam_Waves_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Waves_Offset_arr, _Side_Foam_Waves_Offset);
			half clampResult1178 = clamp( ( ( ( pow( clampResult1138 , 10.0 ) * clampResult1171 ) * _Side_Foam_Waves_Multiply_Instance ) + _Side_Foam_Waves_Offset_Instance ) , 0.0 , 1.0 );
			half _Side_Foam_Waves_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Waves_Power_arr, _Side_Foam_Waves_Power);
			half _Side_Foam_Depth_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Depth_Multiply_arr, _Side_Foam_Depth_Multiply);
			half clampResult572 = clamp( ( abs( i.uv4_texcoord4.w ) * _Side_Foam_Depth_Multiply_Instance ) , 0.0 , 1.0 );
			half _Side_Foam_Depth_Falloff_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Depth_Falloff_arr, _Side_Foam_Depth_Falloff);
			half clampResult1217 = clamp( pow( abs( ( 1.0 - clampResult572 ) ) , _Side_Foam_Depth_Falloff_Instance ) , 0.0 , 1.0 );
			half2 appendResult1224 = (half2(ase_worldPos.x , ase_worldPos.z));
			half _Side_Foam_Perlin_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Perlin_Tiling_arr, _Side_Foam_Perlin_Tiling);
			half simplePerlin2D1222 = snoise( appendResult1224*_Side_Foam_Perlin_Tiling_Instance );
			simplePerlin2D1222 = simplePerlin2D1222*0.5 + 0.5;
			half _Side_Foam_Perlin_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Perlin_Multiply_arr, _Side_Foam_Perlin_Multiply);
			half _Side_Foam_Perlin_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Perlin_Power_arr, _Side_Foam_Perlin_Power);
			half clampResult1232 = clamp( pow( abs( ( simplePerlin2D1222 * _Side_Foam_Perlin_Multiply_Instance ) ) , _Side_Foam_Perlin_Power_Instance ) , 0.0 , 1.0 );
			half clampResult1234 = clamp( ( 1.0 - clampResult1232 ) , 0.0 , 1.0 );
			half temp_output_1220_0 = ( ( ( clampResult1215 + pow( clampResult1178 , _Side_Foam_Waves_Power_Instance ) ) * clampResult1217 ) * clampResult1234 );
			half clampResult1221 = clamp( temp_output_1220_0 , 0.0 , 1.0 );
			half3 lerpResult723 = lerp( lerpResult481 , BlendNormals( lerpResult481 , lerpResult110 ) , clampResult1221);
			half clampResult44_g58 = clamp( abs( ase_worldNormal.y ) , 0.0 , 1.0 );
			half2 _Sea_Foam_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Foam_Tiling_arr, _Sea_Foam_Tiling);
			half2 temp_output_66_0_g58 = WaterTiling693;
			half2 temp_output_53_0_g58 = ( ( ( ( ( 1.0 - clampResult44_g58 ) * SeaFoamSlopeInfluence701 ) + ( MainWaterSpeed692 / _Sea_Foam_Tiling_Instance ) ) * temp_output_66_0_g58 ) * i.uv4_texcoord4.xy );
			half2 break56_g58 = temp_output_53_0_g58;
			half2 appendResult57_g58 = (half2(break56_g58.y , break56_g58.x));
			#ifdef _UVVDIRECTION1UDIRECTION0_ON
				half2 staticSwitch59_g58 = temp_output_53_0_g58;
			#else
				half2 staticSwitch59_g58 = appendResult57_g58;
			#endif
			half temp_output_68_0_g58 = ( ( _Time.y + 0.0 ) * WaterFlowUVRefreshSpeed695 );
			half temp_output_71_0_g58 = frac( ( temp_output_68_0_g58 + 0.0 ) );
			half2 temp_output_60_0_g58 = ( staticSwitch59_g58 * temp_output_71_0_g58 );
			half2 temp_output_83_0_g58 = ( ( 1.0 / _Sea_Foam_Tiling_Instance.x ) * ( temp_output_66_0_g58 * i.uv_texcoord.xy ) );
			half2 temp_output_1313_91 = ( temp_output_60_0_g58 + temp_output_83_0_g58 );
			half _Sea_Foam_Texture_Normal_Scale_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Foam_Texture_Normal_Scale_arr, _Sea_Foam_Texture_Normal_Scale);
			half2 temp_output_80_0_g58 = ( staticSwitch59_g58 * frac( ( temp_output_68_0_g58 + -0.5 ) ) );
			half2 temp_output_1313_93 = ( temp_output_83_0_g58 + temp_output_80_0_g58 );
			half clampResult90_g58 = clamp( abs( sin( ( ( UNITY_PI * 1.5 ) + ( temp_output_71_0_g58 * UNITY_PI ) ) ) ) , 0.0 , 1.0 );
			half temp_output_1313_96 = clampResult90_g58;
			half3 lerpResult673 = lerp( UnpackScaleNormal( SAMPLE_TEXTURE2D( _Sea_Foam_Texture_Normal, sampler_Linear_Repeat_Aniso4, temp_output_1313_91 ), _Sea_Foam_Texture_Normal_Scale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _Side_Foam_Mask_Normal, sampler_Linear_Repeat_Aniso4, temp_output_1313_93 ), _Sea_Foam_Texture_Normal_Scale_Instance ) , temp_output_1313_96);
			half lerpResult81 = lerp( SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_69_91 ).b , SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_69_93 ).b , temp_output_69_96);
			half Sea_Waves_Foam_Mask_Hardness_Instance = UNITY_ACCESS_INSTANCED_PROP(Sea_Waves_Foam_Mask_Hardness_arr, Sea_Waves_Foam_Mask_Hardness);
			half Sea_Waves_Foam_Mask_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(Sea_Waves_Foam_Mask_Power_arr, Sea_Waves_Foam_Mask_Power);
			half Sea_Waves_Foam_Mask_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(Sea_Waves_Foam_Mask_Multiply_arr, Sea_Waves_Foam_Mask_Multiply);
			half clampResult1253 = clamp( ( pow( abs( ( lerpResult81 * Sea_Waves_Foam_Mask_Hardness_Instance ) ) , Sea_Waves_Foam_Mask_Power_Instance ) * Sea_Waves_Foam_Mask_Multiply_Instance ) , 0.0 , 1.0 );
			half _Sea_Waves_Foam_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Waves_Foam_Multiply_arr, _Sea_Waves_Foam_Multiply);
			half _Sea_Waves_Foam_Mask_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Waves_Foam_Mask_Offset_arr, _Sea_Waves_Foam_Mask_Offset);
			half clampResult1251 = clamp( ( ( Waves1317.y * _Sea_Waves_Foam_Multiply_Instance ) + _Sea_Waves_Foam_Mask_Offset_Instance ) , 0.0 , 1.0 );
			half _Sea_Waves_Foam_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Waves_Foam_Power_arr, _Sea_Waves_Foam_Power);
			half clampResult1257 = clamp( pow( abs( clampResult1251 ) , _Sea_Waves_Foam_Power_Instance ) , 0.0 , 1.0 );
			half lerpResult678 = lerp( SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_1313_91 ).g , SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_1313_93 ).g , temp_output_1313_96);
			half _Sea_Foam_Texture_Falloff_Instance = UNITY_ACCESS_INSTANCED_PROP(_Sea_Foam_Texture_Falloff_arr, _Sea_Foam_Texture_Falloff);
			half clampResult1263 = clamp( pow( abs( lerpResult678 ) , _Sea_Foam_Texture_Falloff_Instance ) , 0.0 , 1.0 );
			half clampResult1264 = clamp( ( ( clampResult1253 * clampResult1257 ) * clampResult1263 ) , 0.0 , 1.0 );
			half clampResult1268 = clamp( distance( i.uv4_texcoord4.w , 0.0 ) , 0.0 , 1.0 );
			half clampResult1292 = clamp( ( clampResult1264 * clampResult1268 ) , 0.0 , 1.0 );
			half3 lerpResult725 = lerp( lerpResult723 , BlendNormals( lerpResult723 , lerpResult673 ) , clampResult1292);
			half _Water_Normal_Flatten_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Water_Normal_Flatten_Multiply_arr, _Water_Normal_Flatten_Multiply);
			half3 appendResult727 = (half3(_Water_Normal_Flatten_Multiply_Instance , _Water_Normal_Flatten_Multiply_Instance , 1.0));
			half temp_output_738_0 = min( PolarWaveDepthStartXFlattenPointY732.y , SmallWaveShoreDepthStartXFlattenPointY733.y );
			half clampResult741 = clamp( ( temp_output_738_0 / 2.0 ) , 0.0 , 9999.0 );
			half clampResult742 = clamp( ( temp_output_738_0 * 2.0 ) , 0.0 , 9999.0 );
			half clampResult750 = clamp( (1.0 + (i.uv4_texcoord4.w - clampResult741) * (0.0 - 1.0) / (clampResult742 - clampResult741)) , 0.0 , 1.0 );
			half3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			half clampResult756 = clamp( abs( ase_vertexNormal.y ) , 0.0 , 1.0 );
			half clampResult761 = clamp( ( clampResult750 + ( pow( abs( ( 1.0 - clampResult756 ) ) , 2.0 ) * 600.0 ) ) , 0.0 , 1.0 );
			half3 lerpResult729 = lerp( lerpResult725 , ( lerpResult725 * appendResult727 ) , clampResult761);
			o.Normal = lerpResult729;
			half4 _DeepColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_DeepColor_arr, _DeepColor);
			half4 _ShalowColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_ShalowColor_arr, _ShalowColor);
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			half clampDepth53_g68 = SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPos.xy );
			half temp_output_52_0_g68 = ( _ProjectionParams.x < 0.0 ? clampDepth53_g68 : ( 1.0 - clampDepth53_g68 ) );
			half temp_output_49_0_g68 = saturate( ( (_ProjectionParams.z + (temp_output_52_0_g68 - 0.0) * (_ProjectionParams.y - _ProjectionParams.z) / (1.0 - 0.0)) - i.eyeDepth ) );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			half eyeDepth44_g68 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			half ifLocalVar46_g68 = 0;
			UNITY_BRANCH 
			if( unity_OrthoParams.w >= 1.0 )
				ifLocalVar46_g68 = temp_output_49_0_g68;
			else
				ifLocalVar46_g68 = ( eyeDepth44_g68 - i.eyeDepth );
			half temp_output_1340_45 = ifLocalVar46_g68;
			half3 normalizeResult1329 = normalize( lerpResult481 );
			half3 break42_g65 = normalizeResult1329;
			half3 appendResult14_g65 = (half3(break42_g65.x , break42_g65.y , break42_g65.z));
			half _Distortion_Instance = UNITY_ACCESS_INSTANCED_PROP(_Distortion_arr, _Distortion);
			half temp_output_45_0_g65 = _Distortion_Instance;
			half3 temp_output_38_0_g65 = ( appendResult14_g65 * temp_output_45_0_g65 );
			half2 appendResult20_g65 = (half2(_ScreenParams.x , _ScreenParams.y));
			half2 temp_output_23_0_g65 = ( half2( 1,1 ) / appendResult20_g65 );
			half eyeDepth18_g65 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ( ( floor( ( ( ase_screenPosNorm + half4( temp_output_38_0_g65 , 0.0 ) ) * half4( appendResult20_g65, 0.0 , 0.0 ) ) ) + float4( 0.5,0.5,0,0 ) ) * half4( abs( temp_output_23_0_g65 ), 0.0 , 0.0 ) ).xy ));
			half temp_output_16_0_g65 = ( eyeDepth18_g65 - i.eyeDepth );
			half4 temp_output_35_0_g65 = ( ( floor( ( ase_screenPosNorm * half4( appendResult20_g65, 0.0 , 0.0 ) ) ) + float4( 0.5,0.5,0,0 ) ) * half4( abs( temp_output_23_0_g65 ), 0.0 , 0.0 ) );
			half4 temp_output_22_0_g65 = ( temp_output_35_0_g65 + half4( ( saturate( temp_output_16_0_g65 ) * ( temp_output_38_0_g65 / ase_screenPos.w ) ) , 0.0 ) );
			half4 ifLocalVar30_g65 = 0;
			if( temp_output_16_0_g65 >= 0.0 )
				ifLocalVar30_g65 = temp_output_22_0_g65;
			else
				ifLocalVar30_g65 = temp_output_35_0_g65;
			half4 temp_output_1328_0 = ifLocalVar30_g65;
			half3 temp_output_41_0_g68 = temp_output_1328_0.xyz;
			half clampDepth36_g68 = SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, half4( temp_output_41_0_g68 , 0.0 ).xy );
			half temp_output_16_0_g68 = ( _ProjectionParams.x < 0.0 ? clampDepth36_g68 : ( 1.0 - clampDepth36_g68 ) );
			half temp_output_31_0_g68 = saturate( ( (_ProjectionParams.z + (temp_output_16_0_g68 - 0.0) * (_ProjectionParams.y - _ProjectionParams.z) / (1.0 - 0.0)) - i.eyeDepth ) );
			half eyeDepth39_g68 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, half4( temp_output_41_0_g68 , 0.0 ).xy ));
			half ifLocalVar40_g68 = 0;
			UNITY_BRANCH 
			if( unity_OrthoParams.w >= 1.0 )
				ifLocalVar40_g68 = temp_output_31_0_g68;
			else
				ifLocalVar40_g68 = ( eyeDepth39_g68 - i.eyeDepth );
			#ifdef _USE_DISTORTION
				half staticSwitch1324 = ifLocalVar40_g68;
			#else
				half staticSwitch1324 = temp_output_1340_45;
			#endif
			half _ShalowFalloffMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_ShalowFalloffMultiply_arr, _ShalowFalloffMultiply);
			half _ShalowFalloffPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_ShalowFalloffPower_arr, _ShalowFalloffPower);
			half clampResult16 = clamp( saturate( pow( abs( ( staticSwitch1324 * _ShalowFalloffMultiply_Instance ) ) , ( _ShalowFalloffPower_Instance * -1.0 ) ) ) , 0.0 , 1.0 );
			half4 lerpResult23 = lerp( _DeepColor_Instance , _ShalowColor_Instance , clampResult16);
			half4 tex2DNode184 = SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_147_0 );
			half _SlowWaterTranslucencyMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_SlowWaterTranslucencyMultiply_arr, _SlowWaterTranslucencyMultiply);
			half _WaveTranslucencyHardness_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaveTranslucencyHardness_arr, _WaveTranslucencyHardness);
			half _WaveTranslucencyPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaveTranslucencyPower_arr, _WaveTranslucencyPower);
			half _WaveTranslucencyMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaveTranslucencyMultiply_arr, _WaveTranslucencyMultiply);
			half _WaveTranslucencyFallOffDistance_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaveTranslucencyFallOffDistance_arr, _WaveTranslucencyFallOffDistance);
			half lerpResult508 = lerp( ( pow( abs( ( ( ( tex2DNode184.b * _SlowWaterTranslucencyMultiply_Instance ) + ( lerpResult81 * _SlowWaterTranslucencyMultiply_Instance ) ) * _WaveTranslucencyHardness_Instance ) ) , _WaveTranslucencyPower_Instance ) * _WaveTranslucencyMultiply_Instance ) , 0.0 , ( temp_output_470_0 / _WaveTranslucencyFallOffDistance_Instance ));
			half _Big_Front_Waves_Translucency_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Big_Front_Waves_Translucency_Multiply_arr, _Big_Front_Waves_Translucency_Multiply);
			half clampResult1289 = clamp( abs( ( ( 1.0 - ase_vertexNormal.y ) * _Big_Front_Waves_Translucency_Multiply_Instance ) ) , 0.0 , 1.0 );
			half _Big_Front_Waves_Translucency_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Big_Front_Waves_Translucency_Power_arr, _Big_Front_Waves_Translucency_Power);
			half _Big_Waves_Translucency_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Big_Waves_Translucency_Multiply_arr, _Big_Waves_Translucency_Multiply);
			half _Big_Waves_Translucency_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Big_Waves_Translucency_Offset_arr, _Big_Waves_Translucency_Offset);
			half clampResult1279 = clamp( ( ( Waves1317.y * _Big_Waves_Translucency_Multiply_Instance ) + ( clampResult1268 * _Big_Waves_Translucency_Offset_Instance ) ) , 0.0 , 1.0 );
			half _Big_Waves_Translucency_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Big_Waves_Translucency_Power_arr, _Big_Waves_Translucency_Power);
			half clampResult1271 = clamp( ( lerpResult508 + ( pow( clampResult1289 , _Big_Front_Waves_Translucency_Power_Instance ) + pow( clampResult1279 , _Big_Waves_Translucency_Power_Instance ) ) ) , 0.0 , 1.0 );
			half _Shore_Translucency_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Shore_Translucency_Multiply_arr, _Shore_Translucency_Multiply);
			half clampResult515 = clamp( ( _Shore_Translucency_Multiply_Instance * staticSwitch1324 ) , 0.0 , 1.0 );
			half _Shore_Translucency_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Shore_Translucency_Power_arr, _Shore_Translucency_Power);
			half clampResult514 = clamp( pow( abs( clampResult515 ) , _Shore_Translucency_Power_Instance ) , 0.0 , 1.0 );
			half clampResult520 = clamp( ( clampResult1271 + ( 1.0 - clampResult514 ) ) , 0.0 , 1.0 );
			half _Translucency_Global_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Translucency_Global_Power_arr, _Translucency_Global_Power);
			half3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			half3 ase_worldlightDir = 0;
			#else //aseld
			half3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			half dotResult525 = dot( ase_worldViewDir , ase_worldlightDir );
			half clampResult527 = clamp( ( dotResult525 * -1.0 ) , 0.0 , 1.0 );
			half _Translucency_Direct_Sun_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Translucency_Direct_Sun_Power_arr, _Translucency_Direct_Sun_Power);
			half clampResult534 = clamp( ( ( clampResult520 * _Translucency_Global_Power_Instance ) + ( ( clampResult527 * _Translucency_Direct_Sun_Power_Instance ) * clampResult520 ) ) , 0.0 , 1.0 );
			half4 lerpResult26 = lerp( lerpResult23 , _ShalowColor_Instance , clampResult534);
			#ifdef _USE_TRANSLUCENCY
				half4 staticSwitch1312 = lerpResult26;
			#else
				half4 staticSwitch1312 = lerpResult23;
			#endif
			half4 screenColor352 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,temp_output_1328_0.xy);
			half _Clean_Water_Background_Brightness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Clean_Water_Background_Brightness_arr, _Clean_Water_Background_Brightness);
			half4 temp_output_415_0 = ( screenColor352 * _Clean_Water_Background_Brightness_Instance );
			half _Caustic_Intensivity_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Intensivity_arr, _Caustic_Intensivity);
			half4 _Caustic_Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Color_arr, _Caustic_Color);
			half _Caustic_Falloff_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Falloff_arr, _Caustic_Falloff);
			half temp_output_44_0_g59 = _Caustic_Falloff_Instance;
			half3 appendResult34_g59 = (half3(temp_output_44_0_g59 , temp_output_44_0_g59 , temp_output_44_0_g59));
			half _Caustic_Speed_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Speed_arr, _Caustic_Speed);
			half temp_output_14_0_g59 = ( ( _Caustic_Speed_Instance * 0.05 ) * _Time.y );
			half3 appendResult16_g59 = (half3(temp_output_14_0_g59 , temp_output_14_0_g59 , temp_output_14_0_g59));
			half _Caustic_Tiling_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Tiling_arr, _Caustic_Tiling);
			half4 temp_output_76_0_g60 = temp_output_1328_0;
			half2 UV22_g61 = temp_output_76_0_g60.xy;
			half2 localUnStereo22_g61 = UnStereo( UV22_g61 );
			half2 break64_g60 = localUnStereo22_g61;
			half clampDepth69_g60 = SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, temp_output_76_0_g60.xy );
			#ifdef UNITY_REVERSED_Z
				float staticSwitch38_g60 = ( 1.0 - clampDepth69_g60 );
			#else
				float staticSwitch38_g60 = clampDepth69_g60;
			#endif
			half3 appendResult39_g60 = (half3(break64_g60.x , break64_g60.y , staticSwitch38_g60));
			half4 appendResult42_g60 = (half4((appendResult39_g60*2.0 + -1.0) , 1.0));
			half4 temp_output_43_0_g60 = mul( unity_CameraInvProjection, appendResult42_g60 );
			half3 temp_output_46_0_g60 = ( (temp_output_43_0_g60).xyz / (temp_output_43_0_g60).w );
			half3 In72_g60 = temp_output_46_0_g60;
			half3 localInvertDepthDir72_g60 = InvertDepthDir72_g60( In72_g60 );
			half4 appendResult49_g60 = (half4(localInvertDepthDir72_g60 , 1.0));
			half4 break61_g59 = mul( unity_CameraToWorld, appendResult49_g60 );
			half2 appendResult62_g59 = (half2(break61_g59.x , break61_g59.z));
			half2 temp_output_60_0_g59 = ( _Caustic_Tiling_Instance * appendResult62_g59 );
			half4 tex2DNode58_g59 = SAMPLE_TEXTURE2D( _Caustic, sampler_Linear_Repeat_Aniso4, ( ( appendResult16_g59 * float3( 0.76,0.73,0.79 ) ) + half3( temp_output_60_0_g59 ,  0.0 ) ).xy );
			half3 appendResult63_g59 = (half3(tex2DNode58_g59.r , tex2DNode58_g59.g , tex2DNode58_g59.b));
			half temp_output_17_0_g59 = ( temp_output_14_0_g59 * -1.07 );
			half3 appendResult21_g59 = (half3(temp_output_17_0_g59 , temp_output_17_0_g59 , temp_output_17_0_g59));
			half4 tex2DNode59_g59 = SAMPLE_TEXTURE2D( _Caustic, sampler_Linear_Repeat_Aniso4, ( appendResult21_g59 + half3( temp_output_60_0_g59 ,  0.0 ) ).xy );
			half3 appendResult64_g59 = (half3(tex2DNode59_g59.r , tex2DNode59_g59.g , tex2DNode59_g59.b));
			half3 clampResult37_g59 = clamp( ( appendResult34_g59 * min( appendResult63_g59 , appendResult64_g59 ) ) , float3( 0,0,0 ) , float3( 1,1,1 ) );
			half4 temp_cast_22 = (_Caustic_Intensivity_Instance).xxxx;
			half _Caustic_Blend_Instance = UNITY_ACCESS_INSTANCED_PROP(_Caustic_Blend_arr, _Caustic_Blend);
			half4 lerpResult425 = lerp( temp_output_415_0 , ( ( temp_output_415_0 / _Caustic_Intensivity_Instance ) + ( pow( abs( ( _Caustic_Color_Instance * half4( clampResult37_g59 , 0.0 ) ) ) , temp_cast_22 ) * _Caustic_Intensivity_Instance ) ) , _Caustic_Blend_Instance);
			#ifdef _USE_CAUSTIC
				half4 staticSwitch666 = lerpResult425;
			#else
				half4 staticSwitch666 = temp_output_415_0;
			#endif
			half _WaterAlphaMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaterAlphaMultiply_arr, _WaterAlphaMultiply);
			half clampResult43 = clamp( ( staticSwitch1324 * _WaterAlphaMultiply_Instance ) , 0.0 , 1.0 );
			half _WaterAlphaPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaterAlphaPower_arr, _WaterAlphaPower);
			half clampResult42 = clamp( pow( abs( clampResult43 ) , _WaterAlphaPower_Instance ) , 0.0 , 1.0 );
			half4 lerpResult28 = lerp( ( staticSwitch1312 * staticSwitch666 ) , staticSwitch1312 , clampResult42);
			half _CleanFalloffMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_CleanFalloffMultiply_arr, _CleanFalloffMultiply);
			half clampResult35 = clamp( ( staticSwitch1324 * _CleanFalloffMultiply_Instance ) , 0.0 , 1.0 );
			half _CleanFalloffPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_CleanFalloffPower_arr, _CleanFalloffPower);
			half clampResult34 = clamp( pow( abs( clampResult35 ) , _CleanFalloffPower_Instance ) , 0.0 , 1.0 );
			half4 lerpResult30 = lerp( staticSwitch666 , lerpResult28 , clampResult34);
			#ifdef _USE_DISTORTION
				half4 staticSwitch1311 = lerpResult30;
			#else
				half4 staticSwitch1311 = staticSwitch1312;
			#endif
			half3 _SeaFoamColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_SeaFoamColor_arr, _SeaFoamColor);
			half4 lerpResult589 = lerp( staticSwitch1311 , half4( _SeaFoamColor_Instance , 0.0 ) , clampResult1292);
			half3 _Side_Foam_Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Color_arr, _Side_Foam_Color);
			half3 _Side_Foam_Crest_Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Crest_Color_arr, _Side_Foam_Crest_Color);
			half _Side_Foam_Crest_Mask_Multiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Crest_Mask_Multiply_arr, _Side_Foam_Crest_Mask_Multiply);
			half _Side_Foam_Crest_Mask_Offset_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Crest_Mask_Offset_arr, _Side_Foam_Crest_Mask_Offset);
			half temp_output_712_0 = ( _Side_Foam_Crest_Mask_Multiply_Instance * ( _Side_Foam_Crest_Mask_Offset_Instance + ( Waves1317.y * pow( ase_worldNormal.y , 2.0 ) ) ) );
			half clampResult1302 = clamp( temp_output_712_0 , 0.0 , 1.0 );
			half3 lerpResult1299 = lerp( _Side_Foam_Color_Instance , _Side_Foam_Crest_Color_Instance , clampResult1302);
			half lerpResult100 = lerp( SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_94_91 ).a , SAMPLE_TEXTURE2D( _WaterMobile, sampler_Linear_Repeat_Aniso4, temp_output_94_93 ).a , temp_output_94_96);
			half _Side_Foam_Mask_Power_Instance = UNITY_ACCESS_INSTANCED_PROP(_Side_Foam_Mask_Power_arr, _Side_Foam_Mask_Power);
			half clampResult711 = clamp( temp_output_712_0 , 0.0 , 1.0 );
			half clampResult708 = clamp( ( _Side_Foam_Mask_Power_Instance * clampResult711 ) , 0.0 , ( _Side_Foam_Mask_Power_Instance * 0.9 ) );
			half clampResult1135 = clamp( pow( abs( lerpResult100 ) , ( _Side_Foam_Mask_Power_Instance - clampResult708 ) ) , 0.0 , 1.0 );
			half temp_output_1235_0 = ( temp_output_1220_0 * clampResult1135 );
			half clampResult1294 = clamp( temp_output_1235_0 , 0.0 , 1.0 );
			half4 lerpResult1298 = lerp( lerpResult589 , half4( lerpResult1299 , 0.0 ) , clampResult1294);
			half _EdgeFalloffMultiply_Instance = UNITY_ACCESS_INSTANCED_PROP(_EdgeFalloffMultiply_arr, _EdgeFalloffMultiply);
			half clampResult4 = clamp( ( temp_output_1340_45 * _EdgeFalloffMultiply_Instance ) , 0.0 , 1.0 );
			half _EdgeFalloffPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_EdgeFalloffPower_arr, _EdgeFalloffPower);
			half clampResult8 = clamp( pow( abs( clampResult4 ) , _EdgeFalloffPower_Instance ) , 0.0 , 1.0 );
			half temp_output_660_0 = ( clampResult8 * i.vertexColor.a );
			half _BackfaceAlpha_Instance = UNITY_ACCESS_INSTANCED_PROP(_BackfaceAlpha_arr, _BackfaceAlpha);
			half switchResult661 = (((i.ASEIsFrontFacing>0)?(temp_output_660_0):(( temp_output_660_0 * _BackfaceAlpha_Instance ))));
			half clampResult1296 = clamp( temp_output_1235_0 , 0.0 , 1.0 );
			half lerpResult1297 = lerp( switchResult661 , 1.0 , clampResult1296);
			half clampResult1335 = clamp( lerpResult1297 , 0.0 , 1.0 );
			#ifdef DIRECTIONAL_COOKIE
				half staticSwitch1331 = clampResult1335;
			#else
				half staticSwitch1331 = 1.0;
			#endif
			o.Albedo = ( lerpResult1298 * staticSwitch1331 ).rgb;
			half _Water_Specular_Far_Instance = UNITY_ACCESS_INSTANCED_PROP(_Water_Specular_Far_arr, _Water_Specular_Far);
			half _Water_Specular_Close_Instance = UNITY_ACCESS_INSTANCED_PROP(_Water_Specular_Close_arr, _Water_Specular_Close);
			half _WaterSpecularThreshold_Instance = UNITY_ACCESS_INSTANCED_PROP(_WaterSpecularThreshold_arr, _WaterSpecularThreshold);
			half clampResult621 = clamp( pow( abs( clampResult16 ) , _WaterSpecularThreshold_Instance ) , 0.0 , 1.0 );
			half lerpResult616 = lerp( _Water_Specular_Far_Instance , _Water_Specular_Close_Instance , clampResult621);
			half _Foam_Specular_Instance = UNITY_ACCESS_INSTANCED_PROP(_Foam_Specular_arr, _Foam_Specular);
			half temp_output_1304_0 = max( clampResult1292 , clampResult1294 );
			half lerpResult613 = lerp( lerpResult616 , _Foam_Specular_Instance , temp_output_1304_0);
			half3 temp_cast_26 = (( lerpResult613 * staticSwitch1331 )).xxx;
			o.Specular = temp_cast_26;
			half _NMWaterSmoothness_Instance = UNITY_ACCESS_INSTANCED_PROP(_NMWaterSmoothness_arr, _NMWaterSmoothness);
			half _NMFoamSmoothness_Instance = UNITY_ACCESS_INSTANCED_PROP(_NMFoamSmoothness_arr, _NMFoamSmoothness);
			half lerpResult592 = lerp( _NMWaterSmoothness_Instance , _NMFoamSmoothness_Instance , temp_output_1304_0);
			o.Smoothness = lerpResult592;
			half _AOPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_AOPower_arr, _AOPower);
			o.Occlusion = ( _AOPower_Instance * staticSwitch1331 );
			o.Alpha = clampResult1335;
		}

		ENDCG
	}
	Fallback "Diffuse"
}