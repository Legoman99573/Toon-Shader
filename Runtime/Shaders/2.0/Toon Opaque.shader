// Upgrade NOTE: upgraded instancing buffer 'Legoman9957320ToonOpaque' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/2.0/Toon Opaque"
{
	Properties
	{
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Regular and Fallback Setup)]_MainTex("Albedo", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Normal Map Setup)]_BumpMap("Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Float) = 1
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Metallic Setup)]_MetallicGlossMap("Metalic (R) and Smoothness (A)", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_Glossiness("Smoothness", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Occlusion Culling Setup)]_OcclusionMap("Occlusion", 2D) = "white" {}
		_OcclusionStrength("Occlusion Strength", Float) = 1
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Height Map Setup (Only Works for Fallbacks))]_ParallaxMap("Height Map (G)", 2D) = "white" {}
		_Parallax("Height Scale", Range( 0.005 , 0.08)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Mask Setup)]_DetailMask("Detail Mask (A)", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Emission Setup)]_EmissionMap("Emission", 2D) = "white" {}
		_EmissionColor("Color", Color) = (1,1,1,0)
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Albedo Setup)]_DetailAlbedoMap("Detail Albedo x2", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Normal Map Setup)][Normal]_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Toon Settings)]_Ramp("Toon Ramp", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(MatCap Setup)][ToggleUI]_EnableMatCap("Enable MatCap", Float) = 0
		[Header()][Tooltip(Multiplied with the texture for the albedo channel)]_MatCapMask("MatCap Mask", 2D) = "white" {}
		[HDR][Header()][Header(MatCap 1 Setup)]_MatCap("MatCap 1", 2D) = "white" {}
		[HDR][Gamma]_MatCapColor("MatCap 1 Color", Color) = (1,1,1,1)
		_AddMatCap("Add MatCap", Range( 0 , 1)) = 1
		[Header(MatCap 2 Setup)][ToggleUI]_EnableMatCap2("Enable MatCap 2", Float) = 0
		_MatCapAdditive("MatCap 2", 2D) = "white" {}
		[HDR][Gamma]_MatCapColorAdditive("MatCap 2 Color", Color) = (1,1,1,1)
		_AddMatCapAdditive("Add MatCap 2", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(AudioLink Setup)][ToggleUI]_EnableAudioLink("Enable AudioLink", Float) = 0
		_EmissionMapAudioLink0("Emission Map", 2D) = "gray" {}
		[HDR]_EmissionColorAudioLink0("Emission Color", Color) = (0,0,0,1)
		_EmissionScale("Emission Scale", Float) = 1
		[Header(Audio Section)][IntRange][Enum(Bass,0,Low Mid,1,High Mid,2,Treble,3)]_Band("Band", Range( 0 , 3)) = 0
		_DetailNormalMapScale("Detail Normal Scale", Float) = 1
		_Delay("Delay", Range( 0 , 1)) = 0
		[Header(Pulse Across UVs)]_Pulse("Pulse", Range( 0 , 1)) = 0
		_PulseRotation("Pulse Rotation", Range( 0 , 360)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Culling and Render Settings)][Enum(Off,0,Front,1,Back,2)]_CullMode("Cull Mode", Range( 0 , 2)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#pragma multi_compile_instancing
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif

		struct appdata_full_custom
		{
			float4 vertex : POSITION;
			float4 tangent : TANGENT;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
			float4 texcoord1 : TEXCOORD1;
			float4 texcoord2 : TEXCOORD2;
			float4 texcoord3 : TEXCOORD3;
			float4 color : COLOR;
			UNITY_VERTEX_INPUT_INSTANCE_ID
			float4 ase_texcoord4 : TEXCOORD4;
		};
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldRefl;
			float2 uv3_texcoord3;
			float2 ase_texcoord5;
			float3 worldPos;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform sampler2D _ParallaxMap;
		uniform sampler2D _DetailAlbedoMap;
		uniform sampler2D _DetailMask;
		uniform sampler2D _OcclusionMap;
		uniform sampler2D _MetallicGlossMap;
		uniform sampler2D _EmissionMap;
		uniform sampler2D _MainTex;
		uniform sampler2D _MatCap;
		uniform sampler2D _BumpMap;
		uniform sampler2D _DetailNormalMap;
		uniform sampler2D _MatCapMask;
		uniform sampler2D _MatCapAdditive;
		uniform sampler2D _EmissionMapAudioLink0;
		uniform sampler2D _Ramp;

		UNITY_INSTANCING_BUFFER_START(Legoman9957320ToonOpaque)
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _CullMode)
#define _CullMode_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman9957320ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman9957320ToonOpaque
		UNITY_INSTANCING_BUFFER_END(Legoman9957320ToonOpaque)


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		float3 RGBToHSV(float3 c)
		{
			float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
			float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
			float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
			float d = q.x - min( q.w, q.y );
			float e = 1.0e-10;
			return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
		}

		inline float AudioLinkLerp3_g177( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float IfAudioLinkv2Exists1_g180(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		void vertexDataFunc( inout appdata_full_custom v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			o.ase_texcoord5 = v.ase_texcoord4;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 color52 = IsGammaSpace() ? float4(0.8301887,0.8301887,0.8301887,0) : float4(0.6562665,0.6562665,0.6562665,0);
			float4 albedo19 = ( tex2D( _MainTex, uv_MainTex ) * _Color_Instance * color52.r );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 normal22 = ( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale_Instance ) * UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult2 = dot( (WorldNormalVector( i , normal22 )) , ase_worldlightDir );
			float normall_lightdir7 = dotResult2;
			float2 temp_cast_13 = ((normall_lightdir7*0.5 + 0.5)).xx;
			float4 shadow12 = ( albedo19 * ( tex2D( _Ramp, temp_cast_13 ) + float4( 0.1960784,0.1960784,0.1960784,1 ) ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult6 = dot( (WorldNormalVector( i , normal22 )) , ase_worldViewDir );
			float normal_viewdir8 = dotResult6;
			float3 temp_cast_14 = (normal_viewdir8).xxx;
			UnityGI gi36 = gi;
			float3 diffNorm36 = temp_cast_14;
			gi36 = UnityGI_Base( data, 1, diffNorm36 );
			float3 indirectDiffuse36 = gi36.indirect.diffuse + diffNorm36 * 0.0001;
			float4 lighting33 = ( shadow12 * ( ase_lightColor * float4( ( indirectDiffuse36 + ase_lightAtten ) , 0.0 ) ) );
			c.rgb = lighting33.rgb;
			c.a = 1;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float _CullMode_Instance = UNITY_ACCESS_INSTANCED_PROP(_CullMode_arr, _CullMode);
			float _Parallax_Instance = UNITY_ACCESS_INSTANCED_PROP(_Parallax_arr, _Parallax);
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 color52 = IsGammaSpace() ? float4(0.8301887,0.8301887,0.8301887,0) : float4(0.6562665,0.6562665,0.6562665,0);
			float4 albedo19 = ( tex2D( _MainTex, uv_MainTex ) * _Color_Instance * color52.r );
			float4 color55 = IsGammaSpace() ? float4(0.3921569,0.3921569,0.3921569,0) : float4(0.1274377,0.1274377,0.1274377,0);
			float4 temp_cast_0 = (0.0).xxxx;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 normal22 = ( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale_Instance ) * UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 lerpResult7_g171 = lerp( ( ( mul( float4( (WorldNormalVector( i , normal22 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , normal22 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_83_0 = lerpResult7_g171;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode71 = tex2D( _MatCapMask, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_6 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g170 = lerp( temp_cast_6 , ( ( tex2D( _MatCapAdditive, temp_output_83_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode71 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g176 = lerp( temp_cast_0 , ( ( ( tex2D( _MatCap, temp_output_83_0.xy ) * _MatCapColor_Instance * tex2DNode71 ) * _AddMatCap_Instance ) + lerpResult7_g170 ) , _EnableMatCap_Instance);
			float4 MatCap91 = lerpResult7_g176;
			float3 temp_cast_8 = (0.0).xxx;
			float4 _EmissionMapAudioLink0_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMapAudioLink0_ST_arr, _EmissionMapAudioLink0_ST);
			float2 uv4_EmissionMapAudioLink0 = i.ase_texcoord5.xy * _EmissionMapAudioLink0_ST_Instance.xy + _EmissionMapAudioLink0_ST_Instance.zw;
			float4 _EmissionColorAudioLink0_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColorAudioLink0_arr, _EmissionColorAudioLink0);
			float _Band_Instance = UNITY_ACCESS_INSTANCED_PROP(_Band_arr, _Band);
			int Band3_g177 = (int)_Band_Instance;
			float2 break6_g179 = i.uv_texcoord;
			float temp_output_5_0_g179 = ( break6_g179.x - 0.5 );
			float _PulseRotation_Instance = UNITY_ACCESS_INSTANCED_PROP(_PulseRotation_arr, _PulseRotation);
			float temp_output_2_0_g179 = radians( _PulseRotation_Instance );
			float temp_output_3_0_g179 = cos( temp_output_2_0_g179 );
			float temp_output_8_0_g179 = sin( temp_output_2_0_g179 );
			float temp_output_20_0_g179 = ( 1.0 / ( abs( temp_output_3_0_g179 ) + abs( temp_output_8_0_g179 ) ) );
			float temp_output_7_0_g179 = ( break6_g179.y - 0.5 );
			float2 appendResult16_g179 = (float2(( ( ( temp_output_5_0_g179 * temp_output_3_0_g179 * temp_output_20_0_g179 ) + ( temp_output_7_0_g179 * temp_output_8_0_g179 * temp_output_20_0_g179 ) ) + 0.5 ) , ( ( ( temp_output_7_0_g179 * temp_output_3_0_g179 * temp_output_20_0_g179 ) - ( temp_output_5_0_g179 * temp_output_8_0_g179 * temp_output_20_0_g179 ) ) + 0.5 )));
			float _Pulse_Instance = UNITY_ACCESS_INSTANCED_PROP(_Pulse_arr, _Pulse);
			float _Delay_Instance = UNITY_ACCESS_INSTANCED_PROP(_Delay_arr, _Delay);
			float Delay3_g177 = ( ( (_Delay_Instance + (( appendResult16_g179.x * _Pulse_Instance ) - 0.0) * (1.0 - _Delay_Instance) / (1.0 - 0.0)) % 1.0 ) * 128.0 );
			float localAudioLinkLerp3_g177 = AudioLinkLerp3_g177( Band3_g177 , Delay3_g177 );
			float temp_output_103_0 = localAudioLinkLerp3_g177;
			float3 hsvTorgb101 = RGBToHSV( ( tex2D( _EmissionMapAudioLink0, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_103_0 ).rgb );
			float amplitude97 = temp_output_103_0;
			float3 hsvTorgb98 = HSVToRGB( float3(( hsvTorgb101.x + ( (0) * amplitude97 ) ),hsvTorgb101.y,hsvTorgb101.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g180 = IfAudioLinkv2Exists1_g180();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g181 = lerp( temp_cast_8 , ( ( hsvTorgb98 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g180 ) , _EnableAudioLink_Instance);
			float3 AudioLink93 = lerpResult7_g181;
			o.Emission = ( ( tex2D( _EmissionMap, uv_EmissionMap ) * _EmissionColor_Instance ) + ( albedo19 * color55 ) + MatCap91 + float4( AudioLink93 , 0.0 ) ).rgb;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float4 customPack1 : TEXCOORD1;
				float2 customPack2 : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full_custom v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.customPack1.zw = customInputData.uv3_texcoord3;
				o.customPack1.zw = v.texcoord2;
				o.customPack2.xy = customInputData.ase_texcoord5;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				surfIN.uv3_texcoord3 = IN.customPack1.zw;
				surfIN.ase_texcoord5 = IN.customPack2.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.worldRefl = -worldViewDir;
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.SamplerNode;125;-10031.59,-2201.062;Inherit;True;Property;_ParallaxMap;Height Map (G);9;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;126;-9535.318,-1804.285;Inherit;False;InstancedProperty;_Parallax;Height Scale;10;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/2.0/Toon Opaque;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_CullMode;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;44;-554.2742,-363.129;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;45;-846.848,-287.626;Inherit;False;InstancedProperty;_EmissionColor;Color;13;0;Create;False;0;0;0;False;0;False;1,1,1,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;53;-310.4818,-190.3796;Inherit;False;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;54;-774.4597,-78.20652;Inherit;False;19;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;55;-816.1813,8.785267;Inherit;False;Constant;_Color1;Color 1;6;0;Create;True;0;0;0;False;0;False;0.3921569,0.3921569,0.3921569,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldNormalVector;1;-3337.917,-161.5607;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;3;-3364.231,110.5151;Inherit;True;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;2;-3077.479,-23.40669;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;4;-3342.172,441.3807;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;6;-3086.932,526.4604;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;5;-3341.167,658.6315;Inherit;True;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-2837.011,-27.35169;Inherit;False;normall_lightdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8;-2838.342,520.3815;Inherit;False;normal_viewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19;-1229.513,-319.8158;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;22;-2650.356,-405.4687;Inherit;False;normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;23;-3618.529,-173.8564;Inherit;False;22;normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24;-3611.336,426.0341;Inherit;False;22;normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;12;-1111.447,204.5273;Inherit;False;shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;20;-1629.408,37.37586;Inherit;True;19;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;35;-2275.947,766.6957;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;13;-2354.196,239.8116;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;14;-2616.37,347.9891;Inherit;False;Constant;_Float0;Float 0;1;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9;-2632.742,233.2483;Inherit;False;7;normall_lightdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;32;-1641.784,636.5827;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;33;-1134.347,629.3171;Inherit;False;lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;-1963.612,647.8751;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;36;-2515.725,605.872;Inherit;True;World;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;39;-2699.302,600.8426;Inherit;False;8;normal_viewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;31;-2281.502,534.2049;Inherit;True;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;30;-1942.394,430.1995;Inherit;True;12;shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;-1345.536,205.1931;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;27;-1630.826,228.9834;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0.1960784,0.1960784,0.1960784,1;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;37;-2526.613,842.0579;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;17;-1921.511,-205.7492;Inherit;False;InstancedProperty;_Color;Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-1497.568,-359.7388;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;52;-1942.801,-21.39953;Inherit;False;Constant;_Color0;Color 0;6;0;Create;True;0;0;0;False;0;False;0.8301887,0.8301887,0.8301887,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;58;-2012.228,1412.76;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;59;-1586.261,1575.67;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;60;-2298.662,1817.469;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;61;-3077.362,1874.671;Inherit;True;Property;_MatCapAdditive;MatCap 2;23;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;62;-3050.482,1270.38;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;20;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;63;-2987.663,2089.169;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;24;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;64;-2688.659,1829.171;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;65;-2563.859,2098.27;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;25;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;66;-2556.88,1279.544;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;67;-2725.062,1521.072;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;70;-3331.192,1020.976;Inherit;False;-1;;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;71;-3122.174,1022.068;Inherit;True;Property;_MatCapMask;MatCap Mask;18;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;74;-3514.525,1510.632;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;75;-3910.021,1349.101;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;76;-3964.495,1533.611;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;77;-3701.011,1083.945;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;-3540.759,1149.39;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;79;-3503.451,1265.467;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;80;-4015.309,1147.75;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;81;-3465.092,1628.056;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;82;-1944.646,1721.912;Inherit;True;Switch;-1;;170;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;83;-3329.542,1376.318;Inherit;True;Switch;-1;;171;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;84;-3674.777,1445.187;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;86;-2539.783,1651.143;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;21;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-3991.254,1724.617;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;88;-3836.553,1822.417;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;89;-1301.018,1611.138;Inherit;True;Switch;-1;;176;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;91;-1040.858,1549.575;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-4230.735,1399.363;Inherit;False;22;normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;25;-269.8756,234.3452;Inherit;False;33;lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;72;-2188.646,2060.346;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;22;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;73;-1573.018,1851.139;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;16;-1946.752,-525.6213;Inherit;True;Property;_MainTex;Albedo;0;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Regular and Fallback Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-541.2006,-155.9101;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;93;-940.9774,2539.964;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;94;-2308.205,2398.884;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;95;-1843.586,2652.083;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;96;-2469.683,2647.146;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;97;-2978.348,2837.992;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;98;-2125.683,2553.147;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;99;-2683.206,2578.885;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;100;-2907.392,2553.274;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;101;-2689.206,2347.884;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;102;-2689.684,2684.146;Inherit;False;97;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;103;-3340.233,2738.521;Inherit;False;4BandAmplitudeLerp;-1;;177;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;104;-3788.748,2789.777;Inherit;False;BandPulse;-1;;178;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;105;-3516.437,2798.823;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;106;-3368.392,2215.274;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;27;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;107;-3813.203,2559.417;Inherit;False;InstancedProperty;_Band;Band;30;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;108;-3314.317,2497.553;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;28;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;109;-2122.986,2716.983;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;29;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;110;-3688.253,2230.64;Inherit;False;-1;;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;111;-3766.025,2383.433;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;112;-5138.02,2295.21;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;113;-4670.249,2300.186;Inherit;False;RotateUVFill;-1;;179;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;114;-4836.328,2423.043;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;115;-4264.885,2559.053;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;116;-5134.673,2434.251;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;35;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;117;-4110.372,2381.393;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;34;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;118;-4130.532,2842.269;Inherit;False;InstancedProperty;_Pulse;Pulse;33;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;119;-4129.609,2944.107;Inherit;False;InstancedProperty;_Delay;Delay;32;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;-1534.287,2582.89;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;121;-1814.287,2850.892;Inherit;False;IsAudioLink;-1;;180;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;122;-1265.287,2552.98;Inherit;True;Switch;-1;;181;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;123;-1537.287,2792.981;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;26;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;92;-750.5328,195.3;Inherit;False;91;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;124;-737.3879,288.0324;Inherit;False;93;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;11;-1972.013,203.7315;Inherit;True;Property;_Ramp;Toon Ramp;16;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Settings;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;127;-3148.338,-1112.813;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;14;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;131;-3171.017,-1677.475;Inherit;True;Property;_OcclusionMap;Occlusion;7;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;132;-3112.734,-1463.625;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;8;0;Create;False;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-3369.603,-428.1479;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;3;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;129;-2811.251,-1097.238;Inherit;True;Property;_DetailMask;Detail Mask (A);11;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;138;-2788.109,-1283.764;Inherit;False;InstancedProperty;_Glossiness;Smoothness;6;0;Create;False;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;137;-2807.022,-1502.788;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);4;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;136;-2823.002,-1678.073;Inherit;False;InstancedProperty;_Metallic;Metallic;5;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;133;-3362.974,-659.9493;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;31;0;Create;False;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;140;-2785.628,-559.244;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;130;-3135.303,-707.9259;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;15;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;True;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;21;-3125.24,-473.082;Inherit;True;Property;_BumpMap;Normal Map;2;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;57;-751.6394,373.2552;Inherit;False;InstancedProperty;_CullMode;Cull Mode;36;2;[Header];[Enum];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Culling and Render Settings;3;Off;0;Front;1;Back;2;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;43;-952.8391,-512.4266;Inherit;True;Property;_EmissionMap;Emission;12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;68;-3070.511,1500.466;Inherit;True;Property;_MatCap;MatCap 1;19;2;[HDR];[Header];Create;False;2;;MatCap 1 Setup;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
WireConnection;0;2;53;0
WireConnection;0;13;25;0
WireConnection;44;0;43;0
WireConnection;44;1;45;0
WireConnection;53;0;44;0
WireConnection;53;1;56;0
WireConnection;53;2;92;0
WireConnection;53;3;124;0
WireConnection;1;0;23;0
WireConnection;2;0;1;0
WireConnection;2;1;3;0
WireConnection;4;0;24;0
WireConnection;6;0;4;0
WireConnection;6;1;5;0
WireConnection;7;0;2;0
WireConnection;8;0;6;0
WireConnection;19;0;18;0
WireConnection;22;0;140;0
WireConnection;12;0;15;0
WireConnection;35;0;36;0
WireConnection;35;1;37;0
WireConnection;13;0;9;0
WireConnection;13;1;14;0
WireConnection;13;2;14;0
WireConnection;32;0;30;0
WireConnection;32;1;34;0
WireConnection;33;0;32;0
WireConnection;34;0;31;0
WireConnection;34;1;35;0
WireConnection;36;0;39;0
WireConnection;15;0;20;0
WireConnection;15;1;27;0
WireConnection;27;0;11;0
WireConnection;18;0;16;0
WireConnection;18;1;17;0
WireConnection;18;2;52;1
WireConnection;58;0;66;0
WireConnection;58;1;86;0
WireConnection;59;0;58;0
WireConnection;59;1;82;0
WireConnection;60;0;64;0
WireConnection;60;1;65;0
WireConnection;61;1;83;0
WireConnection;64;0;61;0
WireConnection;64;1;63;0
WireConnection;64;2;67;0
WireConnection;66;0;68;0
WireConnection;66;1;62;0
WireConnection;66;2;71;0
WireConnection;67;0;71;0
WireConnection;71;7;70;0
WireConnection;74;0;84;0
WireConnection;74;1;87;0
WireConnection;76;0;85;0
WireConnection;77;0;80;0
WireConnection;77;1;75;0
WireConnection;78;0;77;0
WireConnection;78;1;87;0
WireConnection;79;0;78;0
WireConnection;79;1;87;0
WireConnection;80;0;85;0
WireConnection;81;0;74;0
WireConnection;81;1;87;0
WireConnection;82;3;60;0
WireConnection;82;8;72;0
WireConnection;83;2;79;0
WireConnection;83;3;81;0
WireConnection;83;8;88;0
WireConnection;84;0;76;0
WireConnection;84;1;75;0
WireConnection;89;3;59;0
WireConnection;89;8;73;0
WireConnection;91;0;89;0
WireConnection;56;0;54;0
WireConnection;56;1;55;0
WireConnection;93;0;122;0
WireConnection;94;0;101;1
WireConnection;94;1;96;0
WireConnection;95;0;98;0
WireConnection;95;1;109;0
WireConnection;96;0;99;0
WireConnection;96;1;102;0
WireConnection;97;0;103;0
WireConnection;98;0;94;0
WireConnection;98;1;101;2
WireConnection;98;2;101;3
WireConnection;100;0;106;0
WireConnection;100;1;108;0
WireConnection;100;2;103;0
WireConnection;101;0;100;0
WireConnection;103;2;107;0
WireConnection;103;4;105;0
WireConnection;104;1;115;0
WireConnection;104;2;118;0
WireConnection;104;3;119;0
WireConnection;105;0;104;0
WireConnection;106;7;110;0
WireConnection;111;0;117;0
WireConnection;113;1;112;0
WireConnection;113;2;114;0
WireConnection;114;0;116;0
WireConnection;115;0;113;0
WireConnection;120;0;95;0
WireConnection;120;1;121;0
WireConnection;122;3;120;0
WireConnection;122;8;123;0
WireConnection;11;1;13;0
WireConnection;140;0;21;0
WireConnection;140;1;130;0
WireConnection;130;5;133;0
WireConnection;21;5;134;0
WireConnection;68;1;83;0
ASEEND*/
//CHKSM=3CCF93EB39608DA58E77AFB7519AE26CA3F709A8