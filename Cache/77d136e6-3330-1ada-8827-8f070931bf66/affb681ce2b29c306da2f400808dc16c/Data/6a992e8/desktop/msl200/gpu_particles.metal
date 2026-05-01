#pragma clang diagnostic ignored "-Wmissing-prototypes"
#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#define SC_ENABLE_INSTANCED_RENDERING
#ifdef ALIGNTOX
#undef ALIGNTOX
#endif
#ifdef ALIGNTOY
#undef ALIGNTOY
#endif
#ifdef ALIGNTOZ
#undef ALIGNTOZ
#endif
#ifdef CENTER_BBOX
#undef CENTER_BBOX
#endif
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// SCC_BACKEND_SHADER_FLAG_DISABLE_FRUSTUM_CULLING
// NGS_FLAG_IS_NORMAL_MAP normalTex
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 sc_FragData0 0
//output uvec4 sc_RayTracingPositionAndMask 0
//output uvec4 sc_RayTracingNormalAndMore 1
//sampler sampler colorRampTextureSmpSC 0:27
//sampler sampler intensityTextureSmpSC 0:28
//sampler sampler mainTextureSmpSC 0:29
//sampler sampler normalTexSmpSC 0:30
//sampler sampler sc_EnvmapDiffuseSmpSC 0:31
//sampler sampler sc_EnvmapSpecularSmpSC 0:32
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:34
//sampler sampler sc_RayTracingReflectionsSmpSC 0:35
//sampler sampler sc_RayTracingShadowsSmpSC 0:36
//sampler sampler sc_SSAOTextureSmpSC 0:37
//sampler sampler sc_ScreenTextureSmpSC 0:38
//sampler sampler sc_ShadowTextureSmpSC 0:39
//sampler sampler sizeRampTextureSmpSC 0:41
//sampler sampler trailColorRampTexSmpSC 0:42
//sampler sampler trailSizeRampTexSmpSC 0:43
//sampler sampler trailTexSmpSC 0:44
//sampler sampler velRampTextureSmpSC 0:45
//texture texture2D colorRampTexture 0:1:0:27
//texture texture2D intensityTexture 0:2:0:28
//texture texture2D mainTexture 0:3:0:29
//texture texture2D normalTex 0:4:0:30
//texture texture2D sc_EnvmapDiffuse 0:5:0:31
//texture texture2D sc_EnvmapSpecular 0:6:0:32
//texture texture2D sc_RayTracingGlobalIllumination 0:15:0:34
//texture texture2D sc_RayTracingReflections 0:16:0:35
//texture texture2D sc_RayTracingShadows 0:17:0:36
//texture texture2D sc_SSAOTexture 0:18:0:37
//texture texture2D sc_ScreenTexture 0:19:0:38
//texture texture2D sc_ShadowTexture 0:20:0:39
//texture texture2D sizeRampTexture 0:22:0:41
//texture texture2D trailColorRampTex 0:23:0:42
//texture texture2D trailSizeRampTex 0:24:0:43
//texture texture2D trailTex 0:25:0:44
//texture texture2D velRampTexture 0:26:0:45
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:46:6384 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_ViewMatrixInverseArray 2768:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float3 sc_LocalAabbMin 3376
//float3 sc_LocalAabbMax 3392
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//int sc_RayTracingReceiverEffectsMask 3824
//float3 sc_RayTracingOriginScale 3984
//uint sc_RayTracingReceiverMask 4000
//float3 sc_RayTracingOriginOffset 4032
//uint sc_RayTracingReceiverId 4048
//float4 voxelization_params_0 4064
//float4 voxelization_params_frustum_lrbt 4080
//float4 voxelization_params_frustum_nf 4096
//float3 voxelization_params_camera_pos 4112
//float4x4 sc_ModelMatrixVoxelization 4128
//float correctedIntensity 4192
//float3x3 intensityTextureTransform 4256
//float4 intensityTextureUvMinMax 4304
//float4 intensityTextureBorderColor 4320
//int PreviewEnabled 4484
//float alphaTestThreshold 4492
//float timeGlobal 4496
//float externalTimeInput 4500
//float externalSeed 4504
//float lifeTimeConstant 4508
//float2 lifeTimeMinMax 4512
//float spawnDuration 4520
//float trailLength 4524
//float2 trailTaper 4528
//float trailWidth 4536
//float3x3 trailSizeRampTexTransform 4592
//float4 trailSizeRampTexUvMinMax 4640
//float4 trailSizeRampTexBorderColor 4656
//float3 spawnLocation 4672
//float3 spawnBox 4688
//float3 spawnSphere 4704
//float3 noiseMult 4720
//float3 noiseFrequency 4736
//float3 sNoiseMult 4752
//float3 sNoiseFrequency 4768
//float3 velocityMin 4784
//float3 velocityMax 4800
//float3 velocityDrag 4816
//float3x3 velRampTextureTransform 4880
//float4 velRampTextureUvMinMax 4928
//float4 velRampTextureBorderColor 4944
//float2 sizeStart 4960
//float3 sizeStart3D 4976
//float2 sizeEnd 4992
//float3 sizeEnd3D 5008
//float2 sizeStartMin 5024
//float3 sizeStartMin3D 5040
//float2 sizeStartMax 5056
//float3 sizeStartMax3D 5072
//float2 sizeEndMin 5088
//float3 sizeEndMin3D 5104
//float2 sizeEndMax 5120
//float3 sizeEndMax3D 5136
//float sizeSpeed 5152
//float3x3 sizeRampTextureTransform 5216
//float4 sizeRampTextureUvMinMax 5264
//float4 sizeRampTextureBorderColor 5280
//float gravity 5296
//float3 localForce 5312
//float sizeVelScale 5328
//bool ALIGNTOX 5332
//bool ALIGNTOY 5336
//bool ALIGNTOZ 5340
//float2 rotationRandomX 5344
//float2 rotationRateX 5352
//float2 randomRotationY 5360
//float2 rotationRateY 5368
//float2 rotationRandom 5376
//float2 randomRotationZ 5384
//float2 rotationRate 5392
//float2 rotationRateZ 5400
//float rotationDrag 5408
//bool CENTER_BBOX 5412
//float fadeDistanceVisible 5416
//float fadeDistanceInvisible 5420
//float3x3 trailTexTransform 5472
//float4 trailTexUvMinMax 5520
//float4 trailTexBorderColor 5536
//float4 trailColorRampTexSize 5552
//float3x3 trailColorRampTexTransform 5600
//float4 trailColorRampTexUvMinMax 5648
//float4 trailColorRampTexBorderColor 5664
//float2 trailFadeStartEnd 5680
//float2 trailFadeInOut 5688
//float3 colorStart 5696
//float3 colorEnd 5712
//float3 colorMinStart 5728
//float3 colorMinEnd 5744
//float3 colorMaxStart 5760
//float3 colorMaxEnd 5776
//float alphaStart 5792
//float alphaEnd 5796
//float alphaMinStart 5800
//float alphaMinEnd 5804
//float alphaMaxStart 5808
//float alphaMaxEnd 5812
//float alphaDissolveMult 5816
//float numValidFrames 5820
//float2 gridSize 5824
//float flipBookSpeedMult 5832
//float flipBookRandomStart 5836
//float4 colorRampTextureSize 5840
//float3x3 colorRampTextureTransform 5888
//float4 colorRampTextureUvMinMax 5936
//float4 colorRampTextureBorderColor 5952
//float4 colorRampMult 5968
//float3x3 mainTextureTransform 6032
//float4 mainTextureUvMinMax 6080
//float4 mainTextureBorderColor 6096
//float3x3 normalTexTransform 6160
//float4 normalTexUvMinMax 6208
//float4 normalTexBorderColor 6224
//float metallic 6240
//float roughness 6244
//float2 Port_Input1_N138 6256
//float2 Port_Input1_N139 6264
//float2 Port_Input1_N140 6272
//float2 Port_Input1_N144 6280
//float Port_Input1_N110 6296
//float Port_Input1_N216 6304
//float3 Port_Default_N182 6320
//float3 Port_Emissive_N014 6336
//float3 Port_AO_N014 6352
//float3 Port_SpecularAO_N014 6368
//}
//spec_const bool ALIGNTOCAMERAUP 0 0
//spec_const bool ALPHADISSOLVE 1 0
//spec_const bool ALPHAMINMAX 2 0
//spec_const bool BASETEXTURE 3 0
//spec_const bool BLACKASALPHA 4 0
//spec_const bool BLEND_MODE_AVERAGE 5 0
//spec_const bool BLEND_MODE_BRIGHT 6 0
//spec_const bool BLEND_MODE_COLOR_BURN 7 0
//spec_const bool BLEND_MODE_COLOR_DODGE 8 0
//spec_const bool BLEND_MODE_COLOR 9 0
//spec_const bool BLEND_MODE_DARKEN 10 0
//spec_const bool BLEND_MODE_DIFFERENCE 11 0
//spec_const bool BLEND_MODE_DIVIDE 12 0
//spec_const bool BLEND_MODE_DIVISION 13 0
//spec_const bool BLEND_MODE_EXCLUSION 14 0
//spec_const bool BLEND_MODE_FORGRAY 15 0
//spec_const bool BLEND_MODE_HARD_GLOW 16 0
//spec_const bool BLEND_MODE_HARD_LIGHT 17 0
//spec_const bool BLEND_MODE_HARD_MIX 18 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 19 0
//spec_const bool BLEND_MODE_HARD_REFLECT 20 0
//spec_const bool BLEND_MODE_HUE 21 0
//spec_const bool BLEND_MODE_INTENSE 22 0
//spec_const bool BLEND_MODE_LIGHTEN 23 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 24 0
//spec_const bool BLEND_MODE_LUMINOSITY 25 0
//spec_const bool BLEND_MODE_NEGATION 26 0
//spec_const bool BLEND_MODE_NOTBRIGHT 27 0
//spec_const bool BLEND_MODE_OVERLAY 28 0
//spec_const bool BLEND_MODE_PIN_LIGHT 29 0
//spec_const bool BLEND_MODE_REALISTIC 30 0
//spec_const bool BLEND_MODE_SATURATION 31 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 32 0
//spec_const bool BLEND_MODE_SUBTRACT 33 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 34 0
//spec_const bool BOXSPAWN 35 0
//spec_const bool COLORMINMAX 36 0
//spec_const bool COLORMONOMIN 37 0
//spec_const bool COLORRAMP 38 0
//spec_const bool ENABLE_SIZERAMPSTARTENDASBOUNDS 39 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 40 0
//spec_const bool EXTERNALTIME 41 0
//spec_const bool FLIPBOOKBLEND 42 0
//spec_const bool FLIPBOOKBYLIFE 43 0
//spec_const bool FLIPBOOK 44 0
//spec_const bool FORCE 45 0
//spec_const bool IGNORETRANSFORMSCALE 46 0
//spec_const bool IGNOREVEL 47 0
//spec_const bool INILOCATION 48 0
//spec_const bool INSTANTSPAWN 49 0
//spec_const bool LIFETIMEMINMAX 50 0
//spec_const bool NOISE 51 0
//spec_const bool NORANDOFFSET 52 0
//spec_const bool PBRNORMALTEX 53 0
//spec_const bool PBR 54 0
//spec_const bool PREMULTIPLIEDCOLOR 55 0
//spec_const bool SCREENFADE 56 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_colorRampTexture 57 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 58 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_mainTexture 59 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 60 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture 61 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_trailColorRampTex 62 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_trailSizeRampTex 63 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_trailTex 64 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_velRampTexture 65 0
//spec_const bool SC_USE_UV_MIN_MAX_colorRampTexture 66 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 67 0
//spec_const bool SC_USE_UV_MIN_MAX_mainTexture 68 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 69 0
//spec_const bool SC_USE_UV_MIN_MAX_sizeRampTexture 70 0
//spec_const bool SC_USE_UV_MIN_MAX_trailColorRampTex 71 0
//spec_const bool SC_USE_UV_MIN_MAX_trailSizeRampTex 72 0
//spec_const bool SC_USE_UV_MIN_MAX_trailTex 73 0
//spec_const bool SC_USE_UV_MIN_MAX_velRampTexture 74 0
//spec_const bool SC_USE_UV_TRANSFORM_colorRampTexture 75 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 76 0
//spec_const bool SC_USE_UV_TRANSFORM_mainTexture 77 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 78 0
//spec_const bool SC_USE_UV_TRANSFORM_sizeRampTexture 79 0
//spec_const bool SC_USE_UV_TRANSFORM_trailColorRampTex 80 0
//spec_const bool SC_USE_UV_TRANSFORM_trailSizeRampTex 81 0
//spec_const bool SC_USE_UV_TRANSFORM_trailTex 82 0
//spec_const bool SC_USE_UV_TRANSFORM_velRampTexture 83 0
//spec_const bool SIZEMINMAX 84 0
//spec_const bool SIZERAMP 85 0
//spec_const bool SNOISE 86 0
//spec_const bool SPHERESPAWN 87 0
//spec_const bool TRAILCOLORRAMP 88 0
//spec_const bool TRAILSIZERAMPSTARTENDASBOUNDS 89 0
//spec_const bool TRAILSIZERAMP 90 0
//spec_const bool TRAILS 91 0
//spec_const bool TRAILTEXTURE 92 0
//spec_const bool TRAILTWIST 93 0
//spec_const bool UseViewSpaceDepthVariant 94 1
//spec_const bool VELOCITYDIR 95 0
//spec_const bool VELRAMP 96 0
//spec_const bool WORLDPOSSEED 97 0
//spec_const bool colorRampTextureHasSwappedViews 98 0
//spec_const bool intensityTextureHasSwappedViews 99 0
//spec_const bool mainTextureHasSwappedViews 100 0
//spec_const bool normalTexHasSwappedViews 101 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 102 0
//spec_const bool sc_BlendMode_Add 103 0
//spec_const bool sc_BlendMode_AlphaTest 104 0
//spec_const bool sc_BlendMode_AlphaToCoverage 105 0
//spec_const bool sc_BlendMode_ColoredGlass 106 0
//spec_const bool sc_BlendMode_Custom 107 0
//spec_const bool sc_BlendMode_Max 108 0
//spec_const bool sc_BlendMode_Min 109 0
//spec_const bool sc_BlendMode_MultiplyOriginal 110 0
//spec_const bool sc_BlendMode_Multiply 111 0
//spec_const bool sc_BlendMode_Normal 112 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 113 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 114 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 115 0
//spec_const bool sc_BlendMode_Screen 116 0
//spec_const bool sc_DepthOnly 117 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 118 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 119 0
//spec_const bool sc_FramebufferFetch 120 0
//spec_const bool sc_HasDiffuseEnvmap 121 0
//spec_const bool sc_IsEditor 122 0
//spec_const bool sc_LightEstimation 123 0
//spec_const bool sc_MotionVectorsPass 124 0
//spec_const bool sc_OITCompositingPass 125 0
//spec_const bool sc_OITDepthBoundsPass 126 0
//spec_const bool sc_OITDepthGatherPass 127 0
//spec_const bool sc_OutputBounds 128 0
//spec_const bool sc_ProjectiveShadowsCaster 129 0
//spec_const bool sc_ProjectiveShadowsReceiver 130 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 131 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 132 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 133 0
//spec_const bool sc_RenderAlphaToColor 134 0
//spec_const bool sc_SSAOEnabled 135 0
//spec_const bool sc_ScreenTextureHasSwappedViews 136 0
//spec_const bool sc_TAAEnabled 137 0
//spec_const bool sc_VertexBlendingUseNormals 138 0
//spec_const bool sc_VertexBlending 139 0
//spec_const bool sc_Voxelization 140 0
//spec_const bool sizeRampTextureHasSwappedViews 141 0
//spec_const bool trailColorRampTexHasSwappedViews 142 0
//spec_const bool trailSizeRampTexHasSwappedViews 143 0
//spec_const bool trailTexHasSwappedViews 144 0
//spec_const bool velRampTextureHasSwappedViews 145 0
//spec_const int MESHTYPE 146 0
//spec_const int SC_DEVICE_CLASS 147 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture 148 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 149 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_mainTexture 150 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_trailTex 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_velRampTexture 156 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture 157 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_mainTexture 159 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 160 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture 161 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex 162 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex 163 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_trailTex 164 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_velRampTexture 165 -1
//spec_const int TRAILBEHAVIOR 166 0
//spec_const int colorRampTextureLayout 167 0
//spec_const int intensityTextureLayout 168 0
//spec_const int mainTextureLayout 169 0
//spec_const int normalTexLayout 170 0
//spec_const int rotationSpace 171 0
//spec_const int sc_AmbientLightMode0 172 0
//spec_const int sc_AmbientLightMode1 173 0
//spec_const int sc_AmbientLightMode2 174 0
//spec_const int sc_AmbientLightMode_Constant 175 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 176 0
//spec_const int sc_AmbientLightMode_FromCamera 177 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 178 0
//spec_const int sc_AmbientLightsCount 179 0
//spec_const int sc_DepthBufferMode 180 0
//spec_const int sc_DirectionalLightsCount 181 0
//spec_const int sc_EnvLightMode 182 0
//spec_const int sc_EnvmapDiffuseLayout 183 0
//spec_const int sc_EnvmapSpecularLayout 184 0
//spec_const int sc_LightEstimationSGCount 185 0
//spec_const int sc_PointLightsCount 186 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 187 0
//spec_const int sc_RayTracingReflectionsLayout 188 0
//spec_const int sc_RayTracingShadowsLayout 189 0
//spec_const int sc_RenderingSpace 190 -1
//spec_const int sc_ScreenTextureLayout 191 0
//spec_const int sc_ShaderCacheConstant 192 0
//spec_const int sc_SkinBonesCount 193 0
//spec_const int sc_StereoRenderingMode 194 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 195 0
//spec_const int sizeRampTextureLayout 196 0
//spec_const int trailColorRampTexLayout 197 0
//spec_const int trailSizeRampTexLayout 198 0
//spec_const int trailTexLayout 199 0
//spec_const int velRampTextureLayout 200 0
//SG_REFLECTION_END
constant bool ALIGNTOCAMERAUP [[function_constant(0)]];
constant bool ALIGNTOCAMERAUP_tmp = is_function_constant_defined(ALIGNTOCAMERAUP) ? ALIGNTOCAMERAUP : false;
constant bool ALPHADISSOLVE [[function_constant(1)]];
constant bool ALPHADISSOLVE_tmp = is_function_constant_defined(ALPHADISSOLVE) ? ALPHADISSOLVE : false;
constant bool ALPHAMINMAX [[function_constant(2)]];
constant bool ALPHAMINMAX_tmp = is_function_constant_defined(ALPHAMINMAX) ? ALPHAMINMAX : false;
constant bool BASETEXTURE [[function_constant(3)]];
constant bool BASETEXTURE_tmp = is_function_constant_defined(BASETEXTURE) ? BASETEXTURE : false;
constant bool BLACKASALPHA [[function_constant(4)]];
constant bool BLACKASALPHA_tmp = is_function_constant_defined(BLACKASALPHA) ? BLACKASALPHA : false;
constant bool BLEND_MODE_AVERAGE [[function_constant(5)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(6)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(7)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(8)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(9)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(10)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(11)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(12)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(13)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(14)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(15)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(16)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(17)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(18)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(19)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(20)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(21)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(22)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(23)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(25)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(26)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(27)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(28)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(30)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(31)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(32)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(33)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(34)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool BOXSPAWN [[function_constant(35)]];
constant bool BOXSPAWN_tmp = is_function_constant_defined(BOXSPAWN) ? BOXSPAWN : false;
constant bool COLORMINMAX [[function_constant(36)]];
constant bool COLORMINMAX_tmp = is_function_constant_defined(COLORMINMAX) ? COLORMINMAX : false;
constant bool COLORMONOMIN [[function_constant(37)]];
constant bool COLORMONOMIN_tmp = is_function_constant_defined(COLORMONOMIN) ? COLORMONOMIN : false;
constant bool COLORRAMP [[function_constant(38)]];
constant bool COLORRAMP_tmp = is_function_constant_defined(COLORRAMP) ? COLORRAMP : false;
constant bool ENABLE_SIZERAMPSTARTENDASBOUNDS [[function_constant(39)]];
constant bool ENABLE_SIZERAMPSTARTENDASBOUNDS_tmp = is_function_constant_defined(ENABLE_SIZERAMPSTARTENDASBOUNDS) ? ENABLE_SIZERAMPSTARTENDASBOUNDS : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(40)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool EXTERNALTIME [[function_constant(41)]];
constant bool EXTERNALTIME_tmp = is_function_constant_defined(EXTERNALTIME) ? EXTERNALTIME : false;
constant bool FLIPBOOKBLEND [[function_constant(42)]];
constant bool FLIPBOOKBLEND_tmp = is_function_constant_defined(FLIPBOOKBLEND) ? FLIPBOOKBLEND : false;
constant bool FLIPBOOKBYLIFE [[function_constant(43)]];
constant bool FLIPBOOKBYLIFE_tmp = is_function_constant_defined(FLIPBOOKBYLIFE) ? FLIPBOOKBYLIFE : false;
constant bool FLIPBOOK [[function_constant(44)]];
constant bool FLIPBOOK_tmp = is_function_constant_defined(FLIPBOOK) ? FLIPBOOK : false;
constant bool FORCE [[function_constant(45)]];
constant bool FORCE_tmp = is_function_constant_defined(FORCE) ? FORCE : false;
constant bool IGNORETRANSFORMSCALE [[function_constant(46)]];
constant bool IGNORETRANSFORMSCALE_tmp = is_function_constant_defined(IGNORETRANSFORMSCALE) ? IGNORETRANSFORMSCALE : false;
constant bool IGNOREVEL [[function_constant(47)]];
constant bool IGNOREVEL_tmp = is_function_constant_defined(IGNOREVEL) ? IGNOREVEL : false;
constant bool INILOCATION [[function_constant(48)]];
constant bool INILOCATION_tmp = is_function_constant_defined(INILOCATION) ? INILOCATION : false;
constant bool INSTANTSPAWN [[function_constant(49)]];
constant bool INSTANTSPAWN_tmp = is_function_constant_defined(INSTANTSPAWN) ? INSTANTSPAWN : false;
constant bool LIFETIMEMINMAX [[function_constant(50)]];
constant bool LIFETIMEMINMAX_tmp = is_function_constant_defined(LIFETIMEMINMAX) ? LIFETIMEMINMAX : false;
constant bool NOISE [[function_constant(51)]];
constant bool NOISE_tmp = is_function_constant_defined(NOISE) ? NOISE : false;
constant bool NORANDOFFSET [[function_constant(52)]];
constant bool NORANDOFFSET_tmp = is_function_constant_defined(NORANDOFFSET) ? NORANDOFFSET : false;
constant bool PBRNORMALTEX [[function_constant(53)]];
constant bool PBRNORMALTEX_tmp = is_function_constant_defined(PBRNORMALTEX) ? PBRNORMALTEX : false;
constant bool PBR [[function_constant(54)]];
constant bool PBR_tmp = is_function_constant_defined(PBR) ? PBR : false;
constant bool PREMULTIPLIEDCOLOR [[function_constant(55)]];
constant bool PREMULTIPLIEDCOLOR_tmp = is_function_constant_defined(PREMULTIPLIEDCOLOR) ? PREMULTIPLIEDCOLOR : false;
constant bool SCREENFADE [[function_constant(56)]];
constant bool SCREENFADE_tmp = is_function_constant_defined(SCREENFADE) ? SCREENFADE : false;
constant bool SC_USE_CLAMP_TO_BORDER_colorRampTexture [[function_constant(57)]];
constant bool SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_colorRampTexture) ? SC_USE_CLAMP_TO_BORDER_colorRampTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(58)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_mainTexture [[function_constant(59)]];
constant bool SC_USE_CLAMP_TO_BORDER_mainTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_mainTexture) ? SC_USE_CLAMP_TO_BORDER_mainTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(60)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture [[function_constant(61)]];
constant bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sizeRampTexture) ? SC_USE_CLAMP_TO_BORDER_sizeRampTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_trailColorRampTex [[function_constant(62)]];
constant bool SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_trailColorRampTex) ? SC_USE_CLAMP_TO_BORDER_trailColorRampTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_trailSizeRampTex [[function_constant(63)]];
constant bool SC_USE_CLAMP_TO_BORDER_trailSizeRampTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_trailSizeRampTex) ? SC_USE_CLAMP_TO_BORDER_trailSizeRampTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_trailTex [[function_constant(64)]];
constant bool SC_USE_CLAMP_TO_BORDER_trailTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_trailTex) ? SC_USE_CLAMP_TO_BORDER_trailTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_velRampTexture [[function_constant(65)]];
constant bool SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_velRampTexture) ? SC_USE_CLAMP_TO_BORDER_velRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_colorRampTexture [[function_constant(66)]];
constant bool SC_USE_UV_MIN_MAX_colorRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_colorRampTexture) ? SC_USE_UV_MIN_MAX_colorRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(67)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_mainTexture [[function_constant(68)]];
constant bool SC_USE_UV_MIN_MAX_mainTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_mainTexture) ? SC_USE_UV_MIN_MAX_mainTexture : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(69)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_sizeRampTexture [[function_constant(70)]];
constant bool SC_USE_UV_MIN_MAX_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sizeRampTexture) ? SC_USE_UV_MIN_MAX_sizeRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_trailColorRampTex [[function_constant(71)]];
constant bool SC_USE_UV_MIN_MAX_trailColorRampTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_trailColorRampTex) ? SC_USE_UV_MIN_MAX_trailColorRampTex : false;
constant bool SC_USE_UV_MIN_MAX_trailSizeRampTex [[function_constant(72)]];
constant bool SC_USE_UV_MIN_MAX_trailSizeRampTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_trailSizeRampTex) ? SC_USE_UV_MIN_MAX_trailSizeRampTex : false;
constant bool SC_USE_UV_MIN_MAX_trailTex [[function_constant(73)]];
constant bool SC_USE_UV_MIN_MAX_trailTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_trailTex) ? SC_USE_UV_MIN_MAX_trailTex : false;
constant bool SC_USE_UV_MIN_MAX_velRampTexture [[function_constant(74)]];
constant bool SC_USE_UV_MIN_MAX_velRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_velRampTexture) ? SC_USE_UV_MIN_MAX_velRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_colorRampTexture [[function_constant(75)]];
constant bool SC_USE_UV_TRANSFORM_colorRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_colorRampTexture) ? SC_USE_UV_TRANSFORM_colorRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(76)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_mainTexture [[function_constant(77)]];
constant bool SC_USE_UV_TRANSFORM_mainTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_mainTexture) ? SC_USE_UV_TRANSFORM_mainTexture : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(78)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_sizeRampTexture [[function_constant(79)]];
constant bool SC_USE_UV_TRANSFORM_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sizeRampTexture) ? SC_USE_UV_TRANSFORM_sizeRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_trailColorRampTex [[function_constant(80)]];
constant bool SC_USE_UV_TRANSFORM_trailColorRampTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_trailColorRampTex) ? SC_USE_UV_TRANSFORM_trailColorRampTex : false;
constant bool SC_USE_UV_TRANSFORM_trailSizeRampTex [[function_constant(81)]];
constant bool SC_USE_UV_TRANSFORM_trailSizeRampTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_trailSizeRampTex) ? SC_USE_UV_TRANSFORM_trailSizeRampTex : false;
constant bool SC_USE_UV_TRANSFORM_trailTex [[function_constant(82)]];
constant bool SC_USE_UV_TRANSFORM_trailTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_trailTex) ? SC_USE_UV_TRANSFORM_trailTex : false;
constant bool SC_USE_UV_TRANSFORM_velRampTexture [[function_constant(83)]];
constant bool SC_USE_UV_TRANSFORM_velRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_velRampTexture) ? SC_USE_UV_TRANSFORM_velRampTexture : false;
constant bool SIZEMINMAX [[function_constant(84)]];
constant bool SIZEMINMAX_tmp = is_function_constant_defined(SIZEMINMAX) ? SIZEMINMAX : false;
constant bool SIZERAMP [[function_constant(85)]];
constant bool SIZERAMP_tmp = is_function_constant_defined(SIZERAMP) ? SIZERAMP : false;
constant bool SNOISE [[function_constant(86)]];
constant bool SNOISE_tmp = is_function_constant_defined(SNOISE) ? SNOISE : false;
constant bool SPHERESPAWN [[function_constant(87)]];
constant bool SPHERESPAWN_tmp = is_function_constant_defined(SPHERESPAWN) ? SPHERESPAWN : false;
constant bool TRAILCOLORRAMP [[function_constant(88)]];
constant bool TRAILCOLORRAMP_tmp = is_function_constant_defined(TRAILCOLORRAMP) ? TRAILCOLORRAMP : false;
constant bool TRAILSIZERAMPSTARTENDASBOUNDS [[function_constant(89)]];
constant bool TRAILSIZERAMPSTARTENDASBOUNDS_tmp = is_function_constant_defined(TRAILSIZERAMPSTARTENDASBOUNDS) ? TRAILSIZERAMPSTARTENDASBOUNDS : false;
constant bool TRAILSIZERAMP [[function_constant(90)]];
constant bool TRAILSIZERAMP_tmp = is_function_constant_defined(TRAILSIZERAMP) ? TRAILSIZERAMP : false;
constant bool TRAILS [[function_constant(91)]];
constant bool TRAILS_tmp = is_function_constant_defined(TRAILS) ? TRAILS : false;
constant bool TRAILTEXTURE [[function_constant(92)]];
constant bool TRAILTEXTURE_tmp = is_function_constant_defined(TRAILTEXTURE) ? TRAILTEXTURE : false;
constant bool TRAILTWIST [[function_constant(93)]];
constant bool TRAILTWIST_tmp = is_function_constant_defined(TRAILTWIST) ? TRAILTWIST : false;
constant bool UseViewSpaceDepthVariant [[function_constant(94)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool VELOCITYDIR [[function_constant(95)]];
constant bool VELOCITYDIR_tmp = is_function_constant_defined(VELOCITYDIR) ? VELOCITYDIR : false;
constant bool VELRAMP [[function_constant(96)]];
constant bool VELRAMP_tmp = is_function_constant_defined(VELRAMP) ? VELRAMP : false;
constant bool WORLDPOSSEED [[function_constant(97)]];
constant bool WORLDPOSSEED_tmp = is_function_constant_defined(WORLDPOSSEED) ? WORLDPOSSEED : false;
constant bool colorRampTextureHasSwappedViews [[function_constant(98)]];
constant bool colorRampTextureHasSwappedViews_tmp = is_function_constant_defined(colorRampTextureHasSwappedViews) ? colorRampTextureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(99)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool mainTextureHasSwappedViews [[function_constant(100)]];
constant bool mainTextureHasSwappedViews_tmp = is_function_constant_defined(mainTextureHasSwappedViews) ? mainTextureHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(101)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(102)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(103)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(104)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(105)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(106)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(107)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(108)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(109)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(110)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(111)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(112)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(113)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(114)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(115)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(116)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(117)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(118)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(119)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(120)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(121)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(122)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(123)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(124)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(125)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(126)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(127)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(128)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(129)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(130)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(131)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(132)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(133)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(134)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(135)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(136)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(137)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(138)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(139)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(140)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool sizeRampTextureHasSwappedViews [[function_constant(141)]];
constant bool sizeRampTextureHasSwappedViews_tmp = is_function_constant_defined(sizeRampTextureHasSwappedViews) ? sizeRampTextureHasSwappedViews : false;
constant bool trailColorRampTexHasSwappedViews [[function_constant(142)]];
constant bool trailColorRampTexHasSwappedViews_tmp = is_function_constant_defined(trailColorRampTexHasSwappedViews) ? trailColorRampTexHasSwappedViews : false;
constant bool trailSizeRampTexHasSwappedViews [[function_constant(143)]];
constant bool trailSizeRampTexHasSwappedViews_tmp = is_function_constant_defined(trailSizeRampTexHasSwappedViews) ? trailSizeRampTexHasSwappedViews : false;
constant bool trailTexHasSwappedViews [[function_constant(144)]];
constant bool trailTexHasSwappedViews_tmp = is_function_constant_defined(trailTexHasSwappedViews) ? trailTexHasSwappedViews : false;
constant bool velRampTextureHasSwappedViews [[function_constant(145)]];
constant bool velRampTextureHasSwappedViews_tmp = is_function_constant_defined(velRampTextureHasSwappedViews) ? velRampTextureHasSwappedViews : false;
constant int MESHTYPE [[function_constant(146)]];
constant int MESHTYPE_tmp = is_function_constant_defined(MESHTYPE) ? MESHTYPE : 0;
constant int SC_DEVICE_CLASS [[function_constant(147)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture [[function_constant(148)]];
constant int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_colorRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(149)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_mainTexture [[function_constant(150)]];
constant int SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_mainTexture) ? SC_SOFTWARE_WRAP_MODE_U_mainTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(151)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture [[function_constant(152)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex [[function_constant(153)]];
constant int SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex) ? SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex [[function_constant(154)]];
constant int SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex) ? SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_trailTex [[function_constant(155)]];
constant int SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_trailTex) ? SC_SOFTWARE_WRAP_MODE_U_trailTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_velRampTexture [[function_constant(156)]];
constant int SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_velRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_velRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture [[function_constant(157)]];
constant int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_colorRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_colorRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(158)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_mainTexture [[function_constant(159)]];
constant int SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_mainTexture) ? SC_SOFTWARE_WRAP_MODE_V_mainTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(160)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture [[function_constant(161)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex [[function_constant(162)]];
constant int SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex) ? SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex [[function_constant(163)]];
constant int SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex) ? SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_trailTex [[function_constant(164)]];
constant int SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_trailTex) ? SC_SOFTWARE_WRAP_MODE_V_trailTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_velRampTexture [[function_constant(165)]];
constant int SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_velRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_velRampTexture : -1;
constant int TRAILBEHAVIOR [[function_constant(166)]];
constant int TRAILBEHAVIOR_tmp = is_function_constant_defined(TRAILBEHAVIOR) ? TRAILBEHAVIOR : 0;
constant int colorRampTextureLayout [[function_constant(167)]];
constant int colorRampTextureLayout_tmp = is_function_constant_defined(colorRampTextureLayout) ? colorRampTextureLayout : 0;
constant int intensityTextureLayout [[function_constant(168)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int mainTextureLayout [[function_constant(169)]];
constant int mainTextureLayout_tmp = is_function_constant_defined(mainTextureLayout) ? mainTextureLayout : 0;
constant int normalTexLayout [[function_constant(170)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int rotationSpace [[function_constant(171)]];
constant int rotationSpace_tmp = is_function_constant_defined(rotationSpace) ? rotationSpace : 0;
constant int sc_AmbientLightMode0 [[function_constant(172)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(173)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(174)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(175)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(176)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(177)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(178)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(179)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(180)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(181)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(182)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(183)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(184)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(185)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(186)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(187)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(188)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(189)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(190)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(191)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(192)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(193)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(194)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(195)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int sizeRampTextureLayout [[function_constant(196)]];
constant int sizeRampTextureLayout_tmp = is_function_constant_defined(sizeRampTextureLayout) ? sizeRampTextureLayout : 0;
constant int trailColorRampTexLayout [[function_constant(197)]];
constant int trailColorRampTexLayout_tmp = is_function_constant_defined(trailColorRampTexLayout) ? trailColorRampTexLayout : 0;
constant int trailSizeRampTexLayout [[function_constant(198)]];
constant int trailSizeRampTexLayout_tmp = is_function_constant_defined(trailSizeRampTexLayout) ? trailSizeRampTexLayout : 0;
constant int trailTexLayout [[function_constant(199)]];
constant int trailTexLayout_tmp = is_function_constant_defined(trailTexLayout) ? trailTexLayout : 0;
constant int velRampTextureLayout [[function_constant(200)]];
constant int velRampTextureLayout_tmp = is_function_constant_defined(velRampTextureLayout) ? velRampTextureLayout : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
float4 VertexColor;
float3 SurfacePosition_ObjectSpace;
float3 VertexNormal_WorldSpace;
float3 VertexNormal_ObjectSpace;
float gInstanceID;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float timeGlobal;
float externalTimeInput;
float externalSeed;
float lifeTimeConstant;
float2 lifeTimeMinMax;
float spawnDuration;
float trailLength;
float2 trailTaper;
float trailWidth;
float4 trailSizeRampTexSize;
float4 trailSizeRampTexDims;
float4 trailSizeRampTexView;
float3x3 trailSizeRampTexTransform;
float4 trailSizeRampTexUvMinMax;
float4 trailSizeRampTexBorderColor;
float3 spawnLocation;
float3 spawnBox;
float3 spawnSphere;
float3 noiseMult;
float3 noiseFrequency;
float3 sNoiseMult;
float3 sNoiseFrequency;
float3 velocityMin;
float3 velocityMax;
float3 velocityDrag;
float4 velRampTextureSize;
float4 velRampTextureDims;
float4 velRampTextureView;
float3x3 velRampTextureTransform;
float4 velRampTextureUvMinMax;
float4 velRampTextureBorderColor;
float2 sizeStart;
float3 sizeStart3D;
float2 sizeEnd;
float3 sizeEnd3D;
float2 sizeStartMin;
float3 sizeStartMin3D;
float2 sizeStartMax;
float3 sizeStartMax3D;
float2 sizeEndMin;
float3 sizeEndMin3D;
float2 sizeEndMax;
float3 sizeEndMax3D;
float sizeSpeed;
float4 sizeRampTextureSize;
float4 sizeRampTextureDims;
float4 sizeRampTextureView;
float3x3 sizeRampTextureTransform;
float4 sizeRampTextureUvMinMax;
float4 sizeRampTextureBorderColor;
float gravity;
float3 localForce;
float sizeVelScale;
int ALIGNTOX;
int ALIGNTOY;
int ALIGNTOZ;
float2 rotationRandomX;
float2 rotationRateX;
float2 randomRotationY;
float2 rotationRateY;
float2 rotationRandom;
float2 randomRotationZ;
float2 rotationRate;
float2 rotationRateZ;
float rotationDrag;
int CENTER_BBOX;
float fadeDistanceVisible;
float fadeDistanceInvisible;
float4 trailTexSize;
float4 trailTexDims;
float4 trailTexView;
float3x3 trailTexTransform;
float4 trailTexUvMinMax;
float4 trailTexBorderColor;
float4 trailColorRampTexSize;
float4 trailColorRampTexDims;
float4 trailColorRampTexView;
float3x3 trailColorRampTexTransform;
float4 trailColorRampTexUvMinMax;
float4 trailColorRampTexBorderColor;
float2 trailFadeStartEnd;
float2 trailFadeInOut;
float3 colorStart;
float3 colorEnd;
float3 colorMinStart;
float3 colorMinEnd;
float3 colorMaxStart;
float3 colorMaxEnd;
float alphaStart;
float alphaEnd;
float alphaMinStart;
float alphaMinEnd;
float alphaMaxStart;
float alphaMaxEnd;
float alphaDissolveMult;
float numValidFrames;
float2 gridSize;
float flipBookSpeedMult;
float flipBookRandomStart;
float4 colorRampTextureSize;
float4 colorRampTextureDims;
float4 colorRampTextureView;
float3x3 colorRampTextureTransform;
float4 colorRampTextureUvMinMax;
float4 colorRampTextureBorderColor;
float4 colorRampMult;
float4 mainTextureSize;
float4 mainTextureDims;
float4 mainTextureView;
float3x3 mainTextureTransform;
float4 mainTextureUvMinMax;
float4 mainTextureBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float metallic;
float roughness;
float Port_Input1_N119;
float2 Port_Input1_N138;
float2 Port_Input1_N139;
float2 Port_Input1_N140;
float2 Port_Input1_N144;
float Port_Input1_N069;
float Port_Input1_N068;
float Port_Input1_N110;
float Port_Input1_N154;
float Port_Input1_N216;
float3 Port_Default_N182;
float3 Port_Emissive_N014;
float3 Port_AO_N014;
float3 Port_SpecularAO_N014;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRampTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> mainTexture [[id(3)]];
texture2d<float> normalTex [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(15)]];
texture2d<float> sc_RayTracingReflections [[id(16)]];
texture2d<float> sc_RayTracingShadows [[id(17)]];
texture2d<float> sc_SSAOTexture [[id(18)]];
texture2d<float> sc_ScreenTexture [[id(19)]];
texture2d<float> sc_ShadowTexture [[id(20)]];
texture2d<float> sizeRampTexture [[id(22)]];
texture2d<float> trailColorRampTex [[id(23)]];
texture2d<float> trailSizeRampTex [[id(24)]];
texture2d<float> trailTex [[id(25)]];
texture2d<float> velRampTexture [[id(26)]];
sampler colorRampTextureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler mainTextureSmpSC [[id(29)]];
sampler normalTexSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler sizeRampTextureSmpSC [[id(41)]];
sampler trailColorRampTexSmpSC [[id(42)]];
sampler trailSizeRampTexSmpSC [[id(43)]];
sampler trailTexSmpSC [[id(44)]];
sampler velRampTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(46)]];
};
struct main_vert_out
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float Interpolator_gInstanceID [[user(locn13)]];
float4 Interpolator0 [[user(locn14)]];
float4 Interpolator1 [[user(locn15)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float2 N111_pSize(thread const float& random1,thread const float& random2,thread const float& timeIn,thread const float& N111_sizeSpeed,thread bool& N111_isTrail,thread bool& N111_ENABLE_TRAILS,thread float2& N111_trailHeadTime,thread bool& N111_ENABLE_INDEPENDENTTRAIL,thread float& N111_trailSizeMult,thread bool& N111_ENABLE_TRAILSIZERAMP,thread bool& N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS,thread float3& N111_sizeStart,thread float3& N111_sizeEnd,thread bool& N111_ENABLE_SIZEMINMAX,thread float3& N111_sizeStartMin,thread float3& N111_sizeStartMax,thread float3& N111_sizeEndMin,thread float3& N111_sizeEndMax,thread bool& N111_ENABLE_SIZERAMP,thread bool& N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,thread uint& gl_InstanceIndex,constant userUniformsObj& UserUniforms,thread texture2d<float> trailSizeRampTex,thread sampler trailSizeRampTexSmpSC,thread texture2d<float> sizeRampTexture,thread sampler sizeRampTextureSmpSC,thread ssGlobals& tempGlobals)
{
float2 psizeStart=float2(0.0);
float2 psizeEnd=float2(0.0);
float normTime=timeIn;
if (N111_ENABLE_TRAILS)
{
if (!N111_ENABLE_INDEPENDENTTRAIL)
{
normTime=N111_trailHeadTime.y;
}
}
float param=normTime;
float param_1=N111_sizeSpeed;
float l9_0;
if (param<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(param,param_1);
}
float l9_1=l9_0;
float sizePow=l9_1;
if (N111_ENABLE_SIZEMINMAX)
{
psizeStart=mix(N111_sizeStartMin.xy,N111_sizeStartMax.xy,float2(random1));
psizeEnd=mix(N111_sizeEndMin.xy,N111_sizeEndMax.xy,float2(random2));
}
else
{
psizeStart=N111_sizeStart.xy;
psizeEnd=N111_sizeEnd.xy;
}
float2 sizeLife=mix(psizeStart,psizeEnd,float2(sizePow));
if (!(SC_DEVICE_CLASS_tmp>=2))
{
return sizeLife;
}
if (N111_ENABLE_SIZERAMP)
{
float sizeRampPanning=ceil(normTime*10000.0)/10000.0;
float2 l9_2=tempGlobals.Surface_UVCoord0;
float2 sizeRampUV=(l9_2/float2(10000.0,1.0))+float2(sizeRampPanning,0.0);
float2 param_2=sizeRampUV;
float4 l9_3=float4(0.0);
int l9_4;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=gl_InstanceIndex%2;
}
int l9_6=l9_5;
l9_4=1-l9_6;
}
else
{
int l9_7=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7=0;
}
else
{
l9_7=gl_InstanceIndex%2;
}
int l9_8=l9_7;
l9_4=l9_8;
}
int l9_9=l9_4;
int l9_10=sizeRampTextureLayout_tmp;
int l9_11=l9_9;
float2 l9_12=param_2;
bool l9_13=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_14=UserUniforms.sizeRampTextureTransform;
int2 l9_15=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_16=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_17=UserUniforms.sizeRampTextureUvMinMax;
bool l9_18=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_19=UserUniforms.sizeRampTextureBorderColor;
float l9_20=0.0;
bool l9_21=l9_18&&(!l9_16);
float l9_22=1.0;
float l9_23=l9_12.x;
int l9_24=l9_15.x;
if (l9_24==1)
{
l9_23=fract(l9_23);
}
else
{
if (l9_24==2)
{
float l9_25=fract(l9_23);
float l9_26=l9_23-l9_25;
float l9_27=step(0.25,fract(l9_26*0.5));
l9_23=mix(l9_25,1.0-l9_25,fast::clamp(l9_27,0.0,1.0));
}
}
l9_12.x=l9_23;
float l9_28=l9_12.y;
int l9_29=l9_15.y;
if (l9_29==1)
{
l9_28=fract(l9_28);
}
else
{
if (l9_29==2)
{
float l9_30=fract(l9_28);
float l9_31=l9_28-l9_30;
float l9_32=step(0.25,fract(l9_31*0.5));
l9_28=mix(l9_30,1.0-l9_30,fast::clamp(l9_32,0.0,1.0));
}
}
l9_12.y=l9_28;
if (l9_16)
{
bool l9_33=l9_18;
bool l9_34;
if (l9_33)
{
l9_34=l9_15.x==3;
}
else
{
l9_34=l9_33;
}
float l9_35=l9_12.x;
float l9_36=l9_17.x;
float l9_37=l9_17.z;
bool l9_38=l9_34;
float l9_39=l9_22;
float l9_40=fast::clamp(l9_35,l9_36,l9_37);
float l9_41=step(abs(l9_35-l9_40),9.9999997e-06);
l9_39*=(l9_41+((1.0-float(l9_38))*(1.0-l9_41)));
l9_35=l9_40;
l9_12.x=l9_35;
l9_22=l9_39;
bool l9_42=l9_18;
bool l9_43;
if (l9_42)
{
l9_43=l9_15.y==3;
}
else
{
l9_43=l9_42;
}
float l9_44=l9_12.y;
float l9_45=l9_17.y;
float l9_46=l9_17.w;
bool l9_47=l9_43;
float l9_48=l9_22;
float l9_49=fast::clamp(l9_44,l9_45,l9_46);
float l9_50=step(abs(l9_44-l9_49),9.9999997e-06);
l9_48*=(l9_50+((1.0-float(l9_47))*(1.0-l9_50)));
l9_44=l9_49;
l9_12.y=l9_44;
l9_22=l9_48;
}
float2 l9_51=l9_12;
bool l9_52=l9_13;
float3x3 l9_53=l9_14;
if (l9_52)
{
l9_51=float2((l9_53*float3(l9_51,1.0)).xy);
}
float2 l9_54=l9_51;
l9_12=l9_54;
float l9_55=l9_12.x;
int l9_56=l9_15.x;
bool l9_57=l9_21;
float l9_58=l9_22;
if ((l9_56==0)||(l9_56==3))
{
float l9_59=l9_55;
float l9_60=0.0;
float l9_61=1.0;
bool l9_62=l9_57;
float l9_63=l9_58;
float l9_64=fast::clamp(l9_59,l9_60,l9_61);
float l9_65=step(abs(l9_59-l9_64),9.9999997e-06);
l9_63*=(l9_65+((1.0-float(l9_62))*(1.0-l9_65)));
l9_59=l9_64;
l9_55=l9_59;
l9_58=l9_63;
}
l9_12.x=l9_55;
l9_22=l9_58;
float l9_66=l9_12.y;
int l9_67=l9_15.y;
bool l9_68=l9_21;
float l9_69=l9_22;
if ((l9_67==0)||(l9_67==3))
{
float l9_70=l9_66;
float l9_71=0.0;
float l9_72=1.0;
bool l9_73=l9_68;
float l9_74=l9_69;
float l9_75=fast::clamp(l9_70,l9_71,l9_72);
float l9_76=step(abs(l9_70-l9_75),9.9999997e-06);
l9_74*=(l9_76+((1.0-float(l9_73))*(1.0-l9_76)));
l9_70=l9_75;
l9_66=l9_70;
l9_69=l9_74;
}
l9_12.y=l9_66;
l9_22=l9_69;
float2 l9_77=l9_12;
int l9_78=l9_10;
int l9_79=l9_11;
float l9_80=l9_20;
float2 l9_81=l9_77;
int l9_82=l9_78;
int l9_83=l9_79;
float3 l9_84=float3(0.0);
if (l9_82==0)
{
l9_84=float3(l9_81,0.0);
}
else
{
if (l9_82==1)
{
l9_84=float3(l9_81.x,(l9_81.y*0.5)+(0.5-(float(l9_83)*0.5)),0.0);
}
else
{
l9_84=float3(l9_81,float(l9_83));
}
}
float3 l9_85=l9_84;
float3 l9_86=l9_85;
float4 l9_87=sizeRampTexture.sample(sizeRampTextureSmpSC,l9_86.xy,level(l9_80));
float4 l9_88=l9_87;
if (l9_18)
{
l9_88=mix(l9_19,l9_88,float4(l9_22));
}
float4 l9_89=l9_88;
l9_3=l9_89;
float4 l9_90=l9_3;
float2 sizeRampTex=l9_90.xy;
sizeLife=sizeRampTex*psizeStart;
if (N111_ENABLE_SIZERAMPSTARTENDASBOUNDS)
{
sizeLife=mix(psizeStart,psizeEnd,sizeRampTex);
}
}
if (N111_ENABLE_TRAILS)
{
if (N111_isTrail)
{
if (N111_ENABLE_TRAILSIZERAMP)
{
normTime=timeIn;
float sizeRampPanning_1=ceil(normTime*10000.0)/10000.0;
float2 l9_91=tempGlobals.Surface_UVCoord0;
float2 sizeRampUV_1=(l9_91/float2(10000.0,1.0))+float2(sizeRampPanning_1,0.0);
float2 param_3=sizeRampUV_1;
float4 l9_92=float4(0.0);
int l9_93;
if ((int(trailSizeRampTexHasSwappedViews_tmp)!=0))
{
int l9_94=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_94=0;
}
else
{
l9_94=gl_InstanceIndex%2;
}
int l9_95=l9_94;
l9_93=1-l9_95;
}
else
{
int l9_96=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_96=0;
}
else
{
l9_96=gl_InstanceIndex%2;
}
int l9_97=l9_96;
l9_93=l9_97;
}
int l9_98=l9_93;
int l9_99=trailSizeRampTexLayout_tmp;
int l9_100=l9_98;
float2 l9_101=param_3;
bool l9_102=(int(SC_USE_UV_TRANSFORM_trailSizeRampTex_tmp)!=0);
float3x3 l9_103=UserUniforms.trailSizeRampTexTransform;
int2 l9_104=int2(SC_SOFTWARE_WRAP_MODE_U_trailSizeRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailSizeRampTex_tmp);
bool l9_105=(int(SC_USE_UV_MIN_MAX_trailSizeRampTex_tmp)!=0);
float4 l9_106=UserUniforms.trailSizeRampTexUvMinMax;
bool l9_107=(int(SC_USE_CLAMP_TO_BORDER_trailSizeRampTex_tmp)!=0);
float4 l9_108=UserUniforms.trailSizeRampTexBorderColor;
float l9_109=0.0;
bool l9_110=l9_107&&(!l9_105);
float l9_111=1.0;
float l9_112=l9_101.x;
int l9_113=l9_104.x;
if (l9_113==1)
{
l9_112=fract(l9_112);
}
else
{
if (l9_113==2)
{
float l9_114=fract(l9_112);
float l9_115=l9_112-l9_114;
float l9_116=step(0.25,fract(l9_115*0.5));
l9_112=mix(l9_114,1.0-l9_114,fast::clamp(l9_116,0.0,1.0));
}
}
l9_101.x=l9_112;
float l9_117=l9_101.y;
int l9_118=l9_104.y;
if (l9_118==1)
{
l9_117=fract(l9_117);
}
else
{
if (l9_118==2)
{
float l9_119=fract(l9_117);
float l9_120=l9_117-l9_119;
float l9_121=step(0.25,fract(l9_120*0.5));
l9_117=mix(l9_119,1.0-l9_119,fast::clamp(l9_121,0.0,1.0));
}
}
l9_101.y=l9_117;
if (l9_105)
{
bool l9_122=l9_107;
bool l9_123;
if (l9_122)
{
l9_123=l9_104.x==3;
}
else
{
l9_123=l9_122;
}
float l9_124=l9_101.x;
float l9_125=l9_106.x;
float l9_126=l9_106.z;
bool l9_127=l9_123;
float l9_128=l9_111;
float l9_129=fast::clamp(l9_124,l9_125,l9_126);
float l9_130=step(abs(l9_124-l9_129),9.9999997e-06);
l9_128*=(l9_130+((1.0-float(l9_127))*(1.0-l9_130)));
l9_124=l9_129;
l9_101.x=l9_124;
l9_111=l9_128;
bool l9_131=l9_107;
bool l9_132;
if (l9_131)
{
l9_132=l9_104.y==3;
}
else
{
l9_132=l9_131;
}
float l9_133=l9_101.y;
float l9_134=l9_106.y;
float l9_135=l9_106.w;
bool l9_136=l9_132;
float l9_137=l9_111;
float l9_138=fast::clamp(l9_133,l9_134,l9_135);
float l9_139=step(abs(l9_133-l9_138),9.9999997e-06);
l9_137*=(l9_139+((1.0-float(l9_136))*(1.0-l9_139)));
l9_133=l9_138;
l9_101.y=l9_133;
l9_111=l9_137;
}
float2 l9_140=l9_101;
bool l9_141=l9_102;
float3x3 l9_142=l9_103;
if (l9_141)
{
l9_140=float2((l9_142*float3(l9_140,1.0)).xy);
}
float2 l9_143=l9_140;
l9_101=l9_143;
float l9_144=l9_101.x;
int l9_145=l9_104.x;
bool l9_146=l9_110;
float l9_147=l9_111;
if ((l9_145==0)||(l9_145==3))
{
float l9_148=l9_144;
float l9_149=0.0;
float l9_150=1.0;
bool l9_151=l9_146;
float l9_152=l9_147;
float l9_153=fast::clamp(l9_148,l9_149,l9_150);
float l9_154=step(abs(l9_148-l9_153),9.9999997e-06);
l9_152*=(l9_154+((1.0-float(l9_151))*(1.0-l9_154)));
l9_148=l9_153;
l9_144=l9_148;
l9_147=l9_152;
}
l9_101.x=l9_144;
l9_111=l9_147;
float l9_155=l9_101.y;
int l9_156=l9_104.y;
bool l9_157=l9_110;
float l9_158=l9_111;
if ((l9_156==0)||(l9_156==3))
{
float l9_159=l9_155;
float l9_160=0.0;
float l9_161=1.0;
bool l9_162=l9_157;
float l9_163=l9_158;
float l9_164=fast::clamp(l9_159,l9_160,l9_161);
float l9_165=step(abs(l9_159-l9_164),9.9999997e-06);
l9_163*=(l9_165+((1.0-float(l9_162))*(1.0-l9_165)));
l9_159=l9_164;
l9_155=l9_159;
l9_158=l9_163;
}
l9_101.y=l9_155;
l9_111=l9_158;
float2 l9_166=l9_101;
int l9_167=l9_99;
int l9_168=l9_100;
float l9_169=l9_109;
float2 l9_170=l9_166;
int l9_171=l9_167;
int l9_172=l9_168;
float3 l9_173=float3(0.0);
if (l9_171==0)
{
l9_173=float3(l9_170,0.0);
}
else
{
if (l9_171==1)
{
l9_173=float3(l9_170.x,(l9_170.y*0.5)+(0.5-(float(l9_172)*0.5)),0.0);
}
else
{
l9_173=float3(l9_170,float(l9_172));
}
}
float3 l9_174=l9_173;
float3 l9_175=l9_174;
float4 l9_176=trailSizeRampTex.sample(trailSizeRampTexSmpSC,l9_175.xy,level(l9_169));
float4 l9_177=l9_176;
if (l9_107)
{
l9_177=mix(l9_108,l9_177,float4(l9_111));
}
float4 l9_178=l9_177;
l9_92=l9_178;
float4 l9_179=l9_92;
float sizeRampTex_1=l9_179.x;
sizeLife.x=sizeRampTex_1*psizeStart.x;
if (N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS)
{
sizeLife.x=mix(psizeStart.x,psizeEnd.x,sizeRampTex_1);
}
}
sizeLife.x*=N111_trailSizeMult;
sizeLife.y=0.0;
}
}
return sizeLife;
}
float3 N111_pSize3D(thread const float& random1,thread const float& random2,thread const float& normTime,thread const float& N111_sizeSpeed,thread float3& N111_sizeStart,thread float3& N111_sizeEnd,thread bool& N111_ENABLE_SIZEMINMAX,thread float3& N111_sizeStartMin,thread float3& N111_sizeStartMax,thread float3& N111_sizeEndMin,thread float3& N111_sizeEndMax,thread bool& N111_ENABLE_SIZERAMP,thread bool& N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,thread uint& gl_InstanceIndex,constant userUniformsObj& UserUniforms,thread texture2d<float> sizeRampTexture,thread sampler sizeRampTextureSmpSC,thread ssGlobals& tempGlobals)
{
float3 psizeStart=float3(0.0);
float3 psizeEnd=float3(0.0);
float param=normTime;
float param_1=N111_sizeSpeed;
float l9_0;
if (param<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(param,param_1);
}
float l9_1=l9_0;
float sizePow=l9_1;
if (N111_ENABLE_SIZEMINMAX)
{
psizeStart=mix(N111_sizeStartMin,N111_sizeStartMax,float3(random1));
psizeEnd=mix(N111_sizeEndMin,N111_sizeEndMax,float3(random2));
}
else
{
psizeStart=N111_sizeStart;
psizeEnd=N111_sizeEnd;
}
float3 sizeLife=mix(psizeStart,psizeEnd,float3(sizePow));
if (!(SC_DEVICE_CLASS_tmp>=2))
{
return sizeLife;
}
if (N111_ENABLE_SIZERAMP)
{
float sizeRampPanning=ceil(normTime*10000.0)/10000.0;
float2 l9_2=tempGlobals.Surface_UVCoord0;
float2 sizeRampUV=(l9_2/float2(10000.0,1.0))+float2(sizeRampPanning,0.0);
float2 param_2=sizeRampUV;
float4 l9_3=float4(0.0);
int l9_4;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=gl_InstanceIndex%2;
}
int l9_6=l9_5;
l9_4=1-l9_6;
}
else
{
int l9_7=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7=0;
}
else
{
l9_7=gl_InstanceIndex%2;
}
int l9_8=l9_7;
l9_4=l9_8;
}
int l9_9=l9_4;
int l9_10=sizeRampTextureLayout_tmp;
int l9_11=l9_9;
float2 l9_12=param_2;
bool l9_13=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_14=UserUniforms.sizeRampTextureTransform;
int2 l9_15=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_16=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_17=UserUniforms.sizeRampTextureUvMinMax;
bool l9_18=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_19=UserUniforms.sizeRampTextureBorderColor;
float l9_20=0.0;
bool l9_21=l9_18&&(!l9_16);
float l9_22=1.0;
float l9_23=l9_12.x;
int l9_24=l9_15.x;
if (l9_24==1)
{
l9_23=fract(l9_23);
}
else
{
if (l9_24==2)
{
float l9_25=fract(l9_23);
float l9_26=l9_23-l9_25;
float l9_27=step(0.25,fract(l9_26*0.5));
l9_23=mix(l9_25,1.0-l9_25,fast::clamp(l9_27,0.0,1.0));
}
}
l9_12.x=l9_23;
float l9_28=l9_12.y;
int l9_29=l9_15.y;
if (l9_29==1)
{
l9_28=fract(l9_28);
}
else
{
if (l9_29==2)
{
float l9_30=fract(l9_28);
float l9_31=l9_28-l9_30;
float l9_32=step(0.25,fract(l9_31*0.5));
l9_28=mix(l9_30,1.0-l9_30,fast::clamp(l9_32,0.0,1.0));
}
}
l9_12.y=l9_28;
if (l9_16)
{
bool l9_33=l9_18;
bool l9_34;
if (l9_33)
{
l9_34=l9_15.x==3;
}
else
{
l9_34=l9_33;
}
float l9_35=l9_12.x;
float l9_36=l9_17.x;
float l9_37=l9_17.z;
bool l9_38=l9_34;
float l9_39=l9_22;
float l9_40=fast::clamp(l9_35,l9_36,l9_37);
float l9_41=step(abs(l9_35-l9_40),9.9999997e-06);
l9_39*=(l9_41+((1.0-float(l9_38))*(1.0-l9_41)));
l9_35=l9_40;
l9_12.x=l9_35;
l9_22=l9_39;
bool l9_42=l9_18;
bool l9_43;
if (l9_42)
{
l9_43=l9_15.y==3;
}
else
{
l9_43=l9_42;
}
float l9_44=l9_12.y;
float l9_45=l9_17.y;
float l9_46=l9_17.w;
bool l9_47=l9_43;
float l9_48=l9_22;
float l9_49=fast::clamp(l9_44,l9_45,l9_46);
float l9_50=step(abs(l9_44-l9_49),9.9999997e-06);
l9_48*=(l9_50+((1.0-float(l9_47))*(1.0-l9_50)));
l9_44=l9_49;
l9_12.y=l9_44;
l9_22=l9_48;
}
float2 l9_51=l9_12;
bool l9_52=l9_13;
float3x3 l9_53=l9_14;
if (l9_52)
{
l9_51=float2((l9_53*float3(l9_51,1.0)).xy);
}
float2 l9_54=l9_51;
l9_12=l9_54;
float l9_55=l9_12.x;
int l9_56=l9_15.x;
bool l9_57=l9_21;
float l9_58=l9_22;
if ((l9_56==0)||(l9_56==3))
{
float l9_59=l9_55;
float l9_60=0.0;
float l9_61=1.0;
bool l9_62=l9_57;
float l9_63=l9_58;
float l9_64=fast::clamp(l9_59,l9_60,l9_61);
float l9_65=step(abs(l9_59-l9_64),9.9999997e-06);
l9_63*=(l9_65+((1.0-float(l9_62))*(1.0-l9_65)));
l9_59=l9_64;
l9_55=l9_59;
l9_58=l9_63;
}
l9_12.x=l9_55;
l9_22=l9_58;
float l9_66=l9_12.y;
int l9_67=l9_15.y;
bool l9_68=l9_21;
float l9_69=l9_22;
if ((l9_67==0)||(l9_67==3))
{
float l9_70=l9_66;
float l9_71=0.0;
float l9_72=1.0;
bool l9_73=l9_68;
float l9_74=l9_69;
float l9_75=fast::clamp(l9_70,l9_71,l9_72);
float l9_76=step(abs(l9_70-l9_75),9.9999997e-06);
l9_74*=(l9_76+((1.0-float(l9_73))*(1.0-l9_76)));
l9_70=l9_75;
l9_66=l9_70;
l9_69=l9_74;
}
l9_12.y=l9_66;
l9_22=l9_69;
float2 l9_77=l9_12;
int l9_78=l9_10;
int l9_79=l9_11;
float l9_80=l9_20;
float2 l9_81=l9_77;
int l9_82=l9_78;
int l9_83=l9_79;
float3 l9_84=float3(0.0);
if (l9_82==0)
{
l9_84=float3(l9_81,0.0);
}
else
{
if (l9_82==1)
{
l9_84=float3(l9_81.x,(l9_81.y*0.5)+(0.5-(float(l9_83)*0.5)),0.0);
}
else
{
l9_84=float3(l9_81,float(l9_83));
}
}
float3 l9_85=l9_84;
float3 l9_86=l9_85;
float4 l9_87=sizeRampTexture.sample(sizeRampTextureSmpSC,l9_86.xy,level(l9_80));
float4 l9_88=l9_87;
if (l9_18)
{
l9_88=mix(l9_19,l9_88,float4(l9_22));
}
float4 l9_89=l9_88;
l9_3=l9_89;
float4 l9_90=l9_3;
float3 sizeRampTex=l9_90.xyz;
sizeLife=sizeRampTex*psizeStart;
if (N111_ENABLE_SIZERAMPSTARTENDASBOUNDS)
{
sizeLife=mix(psizeStart,psizeEnd,sizeRampTex);
}
}
return sizeLife;
}
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
int ssInstanceID=0;
bool N111_isTrail=false;
bool N111_ENABLE_ALIGNTOX=false;
bool N111_ENABLE_ALIGNTOY=false;
bool N111_ENABLE_ALIGNTOZ=false;
bool N111_ENABLE_CENTER_IN_BBOX=false;
bool N111_MESHTYPE_QUAD=false;
float3 N111_particleSeedIn=float3(0.0);
float N111_globalSeedIn=0.0;
float N111_particleAlive=0.0;
float4 N111_timeValuesIn=float4(0.0);
bool N111_ENABLE_TRAILS=false;
float2 N111_trailHeadTime=float2(0.0);
bool N111_ENABLE_INDEPENDENTTRAIL=false;
float2 N111_taper=float2(0.0);
bool N111_ENABLE_TRAILSPIN=false;
float N111_trailSizeMult=0.0;
bool N111_ENABLE_TRAILSIZERAMP=false;
bool N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS=false;
float3 N111_positionObjectSpace=float3(0.0);
float3 N111_normalObjectSpace=float3(0.0);
bool N111_ENABLE_INILOCATION=false;
float3 N111_spawnLocation=float3(0.0);
bool N111_ENABLE_BOXSPAWN=false;
float3 N111_spawnBox=float3(0.0);
bool N111_ENABLE_SPHERESPAWN=false;
float3 N111_spawnSphere=float3(0.0);
bool N111_ENABLE_NOISE=false;
float3 N111_noiseMult=float3(0.0);
float3 N111_noiseFrequency=float3(0.0);
bool N111_ENABLE_SNOISE=false;
float3 N111_sNoiseMult=float3(0.0);
float3 N111_sNoiseFrequency=float3(0.0);
bool N111_ENABLE_VELRAMP=false;
float3 N111_velocityMin=float3(0.0);
float3 N111_velocityMax=float3(0.0);
float3 N111_velocityDrag=float3(0.0);
float3 N111_sizeStart=float3(0.0);
float3 N111_sizeEnd=float3(0.0);
bool N111_ENABLE_SIZEMINMAX=false;
float3 N111_sizeStartMin=float3(0.0);
float3 N111_sizeStartMax=float3(0.0);
float3 N111_sizeEndMin=float3(0.0);
float3 N111_sizeEndMax=float3(0.0);
float N111_sizeSpeed=0.0;
bool N111_ENABLE_SIZERAMP=false;
bool N111_ENABLE_SIZERAMPSTARTENDASBOUNDS=false;
float N111_gravity=0.0;
bool N111_ENABLE_FORCE=false;
float3 N111_localForce=float3(0.0);
bool N111_ENABLE_ALIGNQUADTOCAMERAUP=false;
bool N111_ENABLE_ALIGNTOVEL=false;
float N111_sizeVelScale=0.0;
bool N111_ENABLE_IGNOREVEL=false;
bool N111_ENABLE_IGNORETRANSFORMSCALE=false;
float2 N111_rotationRandomX=float2(0.0);
float2 N111_rotationRateX=float2(0.0);
float2 N111_rotationRandomY=float2(0.0);
float2 N111_rotationRateY=float2(0.0);
float2 N111_rotationRandomZ=float2(0.0);
float2 N111_rotationRateZ=float2(0.0);
float N111_rotationDrag=0.0;
bool N111_WORLDSPACE=false;
bool N111_WORLDFORCE=false;
bool N111_ENABLE_SCREENFADE=false;
float N111_fadeDistanceVisible=0.0;
float N111_fadeDistanceInvisible=0.0;
float3 N111_particleSeed=float3(0.0);
float N111_globalSeed=0.0;
float4 N111_timeValues=float4(0.0);
float4 N111_cameraFade_trailHeadTime_taper=float4(0.0);
float3 N111_position=float3(0.0);
float3 N111_normal=float3(0.0);
float N111_EPSILON=1e-06;
float N111_PI=3.1415927;
bool N181_isTrailCondition=false;
float N181_timeGlobal=0.0;
bool N181_ENABLE_EXTERNALTIME=false;
float N181_externalTime=0.0;
bool N181_ENABLE_WORLDPOSSEED=false;
float N181_externalSeed=0.0;
bool N181_ENABLE_LIFETIMEMINMAX=false;
float N181_lifeTimeConstant=0.0;
float2 N181_lifeTimeMinMax=float2(0.0);
bool N181_ENABLE_INSTANTSPAWN=false;
float N181_spawnDuration=0.0;
bool N181_ENABLE_TRAILS=false;
float N181_trailLength=0.0;
bool N181_ENABLE_INDEPENDENTTRAIL=false;
float3 N181_particleSeed=float3(0.0);
float N181_globalSeed=0.0;
float N181_particleAlive=0.0;
float4 N181_timeValues=float4(0.0);
float N181_isTrail=0.0;
float2 N181_trailHeadTime=float2(0.0);
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
ssGlobals tempGlobals;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_2=param;
param=l9_2;
}
int l9_3=gl_InstanceIndex;
ssInstanceID=l9_3;
sc_Vertex_t l9_4=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_5=l9_4;
float3 l9_6=in.blendShape0Pos;
float3 l9_7=in.blendShape0Normal;
float l9_8=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_9=l9_5;
float3 l9_10=l9_6;
float l9_11=l9_8;
float3 l9_12=l9_9.position.xyz+(l9_10*l9_11);
l9_9.position=float4(l9_12.x,l9_12.y,l9_12.z,l9_9.position.w);
l9_5=l9_9;
l9_5.normal+=(l9_7*l9_8);
l9_4=l9_5;
sc_Vertex_t l9_13=l9_4;
float3 l9_14=in.blendShape1Pos;
float3 l9_15=in.blendShape1Normal;
float l9_16=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_17=l9_13;
float3 l9_18=l9_14;
float l9_19=l9_16;
float3 l9_20=l9_17.position.xyz+(l9_18*l9_19);
l9_17.position=float4(l9_20.x,l9_20.y,l9_20.z,l9_17.position.w);
l9_13=l9_17;
l9_13.normal+=(l9_15*l9_16);
l9_4=l9_13;
sc_Vertex_t l9_21=l9_4;
float3 l9_22=in.blendShape2Pos;
float3 l9_23=in.blendShape2Normal;
float l9_24=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_25=l9_21;
float3 l9_26=l9_22;
float l9_27=l9_24;
float3 l9_28=l9_25.position.xyz+(l9_26*l9_27);
l9_25.position=float4(l9_28.x,l9_28.y,l9_28.z,l9_25.position.w);
l9_21=l9_25;
l9_21.normal+=(l9_23*l9_24);
l9_4=l9_21;
}
else
{
sc_Vertex_t l9_29=l9_4;
float3 l9_30=in.blendShape0Pos;
float l9_31=(*sc_set0.UserUniforms).weights0.x;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_4=l9_29;
sc_Vertex_t l9_33=l9_4;
float3 l9_34=in.blendShape1Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.y;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_4=l9_33;
sc_Vertex_t l9_37=l9_4;
float3 l9_38=in.blendShape2Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.z;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_4=l9_37;
sc_Vertex_t l9_41=l9_4;
float3 l9_42=in.blendShape3Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.w;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_4=l9_41;
sc_Vertex_t l9_45=l9_4;
float3 l9_46=in.blendShape4Pos;
float l9_47=(*sc_set0.UserUniforms).weights1.x;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_4=l9_45;
sc_Vertex_t l9_49=l9_4;
float3 l9_50=in.blendShape5Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.y;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_4=l9_49;
}
}
param=l9_4;
sc_Vertex_t l9_53=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_54=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_54=float4(1.0,fract(in.boneData.yzw));
l9_54.x-=dot(l9_54.yzw,float3(1.0));
}
float4 l9_55=l9_54;
float4 l9_56=l9_55;
int l9_57=int(in.boneData.x);
int l9_58=int(in.boneData.y);
int l9_59=int(in.boneData.z);
int l9_60=int(in.boneData.w);
int l9_61=l9_57;
float4 l9_62=l9_53.position;
float3 l9_63=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_64=l9_61;
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_64].boneMatrix[0];
float4 l9_66=(*sc_set0.sc_BonesUBO).sc_Bones[l9_64].boneMatrix[1];
float4 l9_67=(*sc_set0.sc_BonesUBO).sc_Bones[l9_64].boneMatrix[2];
float4 l9_68[3];
l9_68[0]=l9_65;
l9_68[1]=l9_66;
l9_68[2]=l9_67;
l9_63=float3(dot(l9_62,l9_68[0]),dot(l9_62,l9_68[1]),dot(l9_62,l9_68[2]));
}
else
{
l9_63=l9_62.xyz;
}
float3 l9_69=l9_63;
float3 l9_70=l9_69;
float l9_71=l9_56.x;
int l9_72=l9_58;
float4 l9_73=l9_53.position;
float3 l9_74=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_75=l9_72;
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_75].boneMatrix[0];
float4 l9_77=(*sc_set0.sc_BonesUBO).sc_Bones[l9_75].boneMatrix[1];
float4 l9_78=(*sc_set0.sc_BonesUBO).sc_Bones[l9_75].boneMatrix[2];
float4 l9_79[3];
l9_79[0]=l9_76;
l9_79[1]=l9_77;
l9_79[2]=l9_78;
l9_74=float3(dot(l9_73,l9_79[0]),dot(l9_73,l9_79[1]),dot(l9_73,l9_79[2]));
}
else
{
l9_74=l9_73.xyz;
}
float3 l9_80=l9_74;
float3 l9_81=l9_80;
float l9_82=l9_56.y;
int l9_83=l9_59;
float4 l9_84=l9_53.position;
float3 l9_85=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_86=l9_83;
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_86].boneMatrix[0];
float4 l9_88=(*sc_set0.sc_BonesUBO).sc_Bones[l9_86].boneMatrix[1];
float4 l9_89=(*sc_set0.sc_BonesUBO).sc_Bones[l9_86].boneMatrix[2];
float4 l9_90[3];
l9_90[0]=l9_87;
l9_90[1]=l9_88;
l9_90[2]=l9_89;
l9_85=float3(dot(l9_84,l9_90[0]),dot(l9_84,l9_90[1]),dot(l9_84,l9_90[2]));
}
else
{
l9_85=l9_84.xyz;
}
float3 l9_91=l9_85;
float3 l9_92=l9_91;
float l9_93=l9_56.z;
int l9_94=l9_60;
float4 l9_95=l9_53.position;
float3 l9_96=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_97=l9_94;
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_97].boneMatrix[0];
float4 l9_99=(*sc_set0.sc_BonesUBO).sc_Bones[l9_97].boneMatrix[1];
float4 l9_100=(*sc_set0.sc_BonesUBO).sc_Bones[l9_97].boneMatrix[2];
float4 l9_101[3];
l9_101[0]=l9_98;
l9_101[1]=l9_99;
l9_101[2]=l9_100;
l9_96=float3(dot(l9_95,l9_101[0]),dot(l9_95,l9_101[1]),dot(l9_95,l9_101[2]));
}
else
{
l9_96=l9_95.xyz;
}
float3 l9_102=l9_96;
float3 l9_103=(((l9_70*l9_71)+(l9_81*l9_82))+(l9_92*l9_93))+(l9_102*l9_56.w);
l9_53.position=float4(l9_103.x,l9_103.y,l9_103.z,l9_53.position.w);
int l9_104=l9_57;
float3x3 l9_105=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_104].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_104].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_104].normalMatrix[2].xyz));
float3x3 l9_106=l9_105;
float3x3 l9_107=l9_106;
int l9_108=l9_58;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_59;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_60;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
l9_53.normal=((((l9_107*l9_53.normal)*l9_56.x)+((l9_111*l9_53.normal)*l9_56.y))+((l9_115*l9_53.normal)*l9_56.z))+((l9_119*l9_53.normal)*l9_56.w);
l9_53.tangent=((((l9_107*l9_53.tangent)*l9_56.x)+((l9_111*l9_53.tangent)*l9_56.y))+((l9_115*l9_53.tangent)*l9_56.z))+((l9_119*l9_53.tangent)*l9_56.w);
}
param=l9_53;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param.position.xyz.x,param.position.xyz.y,param.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_120=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varPosAndMotion=float4(l9_120.x,l9_120.y,l9_120.z,out.varPosAndMotion.w);
float3 l9_121=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
out.varNormalAndMotion=float4(l9_121.x,l9_121.y,l9_121.z,out.varNormalAndMotion.w);
float3 l9_122=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_122.x,l9_122.y,l9_122.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.Surface_UVCoord0=v.texture0;
Globals.VertexColor=out.varColor;
Globals.SurfacePosition_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(out.varPosAndMotion.xyz,1.0)).xyz;
Globals.VertexNormal_WorldSpace=out.varNormalAndMotion.xyz;
Globals.VertexNormal_ObjectSpace=normalize(((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(Globals.VertexNormal_WorldSpace,0.0)).xyz);
Globals.gInstanceID=float(ssInstanceID);
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
float Output_N3=0.0;
float param_1=(*sc_set0.UserUniforms).timeGlobal;
Output_N3=param_1;
float Output_N5=0.0;
float param_2=(*sc_set0.UserUniforms).externalTimeInput;
Output_N5=param_2;
float Output_N7=0.0;
float param_3=(*sc_set0.UserUniforms).externalSeed;
Output_N7=param_3;
float Output_N9=0.0;
float param_4=(*sc_set0.UserUniforms).lifeTimeConstant;
Output_N9=param_4;
float2 Output_N10=float2(0.0);
float2 param_5=(*sc_set0.UserUniforms).lifeTimeMinMax;
Output_N10=param_5;
float Output_N12=0.0;
float param_6=(*sc_set0.UserUniforms).spawnDuration;
Output_N12=param_6;
float Output_N192=0.0;
float param_7;
if ((int(TRAILS_tmp)!=0))
{
param_7=1.001;
}
else
{
param_7=0.001;
}
param_7-=0.001;
Output_N192=param_7;
float Output_N180=0.0;
float param_8=(*sc_set0.UserUniforms).trailLength;
Output_N180=param_8;
float4 Color_N168=float4(0.0);
Color_N168=Globals.VertexColor;
float Output_N217=0.0;
Output_N217=Color_N168.x;
float Result_N218=0.0;
float l9_123=Output_N192;
bool l9_124=(l9_123*1.0)!=0.0;
bool l9_125;
if (l9_124)
{
l9_125=(Output_N217*1.0)!=0.0;
}
else
{
l9_125=l9_124;
}
Result_N218=float(l9_125);
float3 particleSeed_N181=float3(0.0);
float globalSeed_N181=0.0;
float particleAlive_N181=0.0;
float4 timeValues_N181=float4(0.0);
float isTrail_N181=0.0;
float2 trailHeadTime_N181=float2(0.0);
float param_9=Output_N3;
float param_10=Output_N5;
float param_11=Output_N7;
float param_12=Output_N9;
float2 param_13=Output_N10;
float param_14=Output_N12;
float param_15=Output_N180;
float param_16=Result_N218;
ssGlobals param_23=Globals;
tempGlobals=param_23;
float3 param_17=float3(0.0);
float param_18=0.0;
float param_19=0.0;
float4 param_20=float4(0.0);
float param_21=0.0;
float2 param_22=float2(0.0);
N181_timeGlobal=param_9;
N181_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N181_externalTime=param_10;
N181_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N181_externalSeed=param_11;
N181_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N181_lifeTimeConstant=param_12;
N181_lifeTimeMinMax=param_13;
N181_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N181_spawnDuration=param_14;
N181_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N181_trailLength=param_15;
N181_isTrailCondition=param_16!=0.0;
N181_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
float l9_126=0.0;
if (N181_ENABLE_WORLDPOSSEED)
{
float4x4 l9_127=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_126=length(float4(1.0)*l9_127);
}
N181_globalSeed=N181_externalSeed+l9_126;
int l9_128=0;
l9_128=ssInstanceID;
int l9_129=l9_128;
float l9_130=float(l9_129);
int l9_131=int(l9_130);
int l9_132=l9_131^(l9_131*15299);
int l9_133=l9_132;
int l9_134=l9_133;
int l9_135=((l9_134*((l9_134*1471343)+101146501))+1559861749)&2147483647;
int l9_136=l9_135;
int l9_137=l9_133*1399;
int l9_138=((l9_137*((l9_137*1471343)+101146501))+1559861749)&2147483647;
int l9_139=l9_138;
int l9_140=l9_133*7177;
int l9_141=((l9_140*((l9_140*1471343)+101146501))+1559861749)&2147483647;
int l9_142=l9_141;
int l9_143=l9_136;
float l9_144=float(l9_143)*4.6566129e-10;
int l9_145=l9_139;
float l9_146=float(l9_145)*4.6566129e-10;
int l9_147=l9_142;
float l9_148=float(l9_147)*4.6566129e-10;
float3 l9_149=float3(l9_144,l9_146,l9_148);
float3 l9_150=l9_149;
N181_particleSeed=l9_150;
float l9_151=fract((N181_particleSeed.y*12.12358)+N181_globalSeed);
float l9_152=fract((N181_particleSeed.z*3.5358)+N181_globalSeed);
float2 l9_153;
if (N181_ENABLE_LIFETIMEMINMAX)
{
l9_153=N181_lifeTimeMinMax;
}
else
{
l9_153=float2(N181_lifeTimeConstant);
}
float2 l9_154=l9_153;
float l9_155=fast::max(l9_154.x,0.0099999998);
float l9_156=fast::max(l9_154.y,0.0099999998);
float l9_157=tempGlobals.gTimeElapsed;
float l9_158=l9_157;
if (N181_ENABLE_EXTERNALTIME)
{
l9_158=N181_externalTime;
}
float l9_159=l9_158;
if (N181_ENABLE_INSTANTSPAWN)
{
l9_159=N181_timeGlobal*l9_158;
}
else
{
float l9_160=0.0;
if (N181_ENABLE_TRAILS)
{
if (N181_ENABLE_INDEPENDENTTRAIL)
{
l9_160=N181_trailLength;
}
}
float l9_161=fract(((l9_158*N181_timeGlobal)*(1.0/(l9_154.y+l9_160)))+l9_151);
l9_159=l9_161*(l9_154.y+l9_160);
}
float l9_162=mix(l9_159/l9_155,l9_159/l9_156,l9_152);
float l9_163=fast::clamp(l9_162,0.0,1.0);
N181_isTrail=0.0;
N181_trailHeadTime=float2(l9_159,l9_163);
if (N181_ENABLE_TRAILS)
{
if (N181_isTrailCondition)
{
N181_isTrail=1.0;
float2 l9_164=tempGlobals.Surface_UVCoord0;
l9_159-=(l9_164.y*N181_trailLength);
l9_162=mix(l9_159/l9_155,l9_159/l9_156,l9_152);
l9_163=fast::clamp(l9_162,0.0,1.0);
}
}
float l9_165=0.0;
if (!N181_ENABLE_INSTANTSPAWN)
{
if (N181_spawnDuration>0.0)
{
if ((l9_158-N181_spawnDuration)>=l9_159)
{
l9_165=1.0;
}
}
}
float l9_166=l9_162+l9_165;
N181_particleAlive=1.0;
if ((l9_166>0.99989998)||(l9_159<=0.0))
{
N181_particleAlive=0.0;
}
N181_timeValues=float4(l9_154,l9_159,l9_163);
param_17=N181_particleSeed;
param_18=N181_globalSeed;
param_19=N181_particleAlive;
param_20=N181_timeValues;
param_21=N181_isTrail;
param_22=N181_trailHeadTime;
particleSeed_N181=param_17;
globalSeed_N181=param_18;
particleAlive_N181=param_19;
timeValues_N181=param_20;
isTrail_N181=param_21;
trailHeadTime_N181=param_22;
float2 Output_N183=float2(0.0);
float2 param_24=(*sc_set0.UserUniforms).trailTaper;
Output_N183=param_24;
float Output_N188=0.0;
float param_25=(*sc_set0.UserUniforms).trailWidth;
Output_N188=param_25;
float3 Position_N114=float3(0.0);
Position_N114=Globals.SurfacePosition_ObjectSpace;
float3 Normal_N172=float3(0.0);
Normal_N172=Globals.VertexNormal_ObjectSpace;
float3 Output_N16=float3(0.0);
float3 param_26=(*sc_set0.UserUniforms).spawnLocation;
Output_N16=param_26;
float3 Output_N18=float3(0.0);
float3 param_27=(*sc_set0.UserUniforms).spawnBox;
Output_N18=param_27;
float3 Output_N20=float3(0.0);
float3 param_28=(*sc_set0.UserUniforms).spawnSphere;
Output_N20=param_28;
float3 Output_N39=float3(0.0);
float3 param_29=(*sc_set0.UserUniforms).noiseMult;
Output_N39=param_29;
float3 Output_N40=float3(0.0);
float3 param_30=(*sc_set0.UserUniforms).noiseFrequency;
Output_N40=param_30;
float3 Output_N41=float3(0.0);
float3 param_31=(*sc_set0.UserUniforms).sNoiseMult;
Output_N41=param_31;
float3 Output_N42=float3(0.0);
float3 param_32=(*sc_set0.UserUniforms).sNoiseFrequency;
Output_N42=param_32;
float3 Output_N34=float3(0.0);
float3 param_33=(*sc_set0.UserUniforms).velocityMin;
Output_N34=param_33;
float3 Output_N35=float3(0.0);
float3 param_34=(*sc_set0.UserUniforms).velocityMax;
Output_N35=param_34;
float3 Output_N36=float3(0.0);
float3 param_35=(*sc_set0.UserUniforms).velocityDrag;
Output_N36=param_35;
float3 Result_N70=float3(0.0);
float3 param_36=float3(0.0);
float3 param_37=float3(0.0);
float3 param_38;
if (MESHTYPE_tmp==0)
{
float2 l9_167=float2(0.0);
float2 l9_168=(*sc_set0.UserUniforms).sizeStart;
l9_167=l9_168;
param_36=float3(l9_167,0.0);
param_38=param_36;
}
else
{
float3 l9_169=float3(0.0);
float3 l9_170=(*sc_set0.UserUniforms).sizeStart3D;
l9_169=l9_170;
param_37=l9_169;
param_38=param_37;
}
Result_N70=param_38;
float3 Result_N121=float3(0.0);
float3 param_39=float3(0.0);
float3 param_40=float3(0.0);
float3 param_41;
if (MESHTYPE_tmp==0)
{
float2 l9_171=float2(0.0);
float2 l9_172=(*sc_set0.UserUniforms).sizeEnd;
l9_171=l9_172;
param_39=float3(l9_171,0.0);
param_41=param_39;
}
else
{
float3 l9_173=float3(0.0);
float3 l9_174=(*sc_set0.UserUniforms).sizeEnd3D;
l9_173=l9_174;
param_40=l9_173;
param_41=param_40;
}
Result_N121=param_41;
float3 Result_N124=float3(0.0);
float3 param_42=float3(0.0);
float3 param_43=float3(0.0);
float3 param_44;
if (MESHTYPE_tmp==0)
{
float2 l9_175=float2(0.0);
float2 l9_176=(*sc_set0.UserUniforms).sizeStartMin;
l9_175=l9_176;
param_42=float3(l9_175,0.0);
param_44=param_42;
}
else
{
float3 l9_177=float3(0.0);
float3 l9_178=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_177=l9_178;
param_43=l9_177;
param_44=param_43;
}
Result_N124=param_44;
float3 Result_N123=float3(0.0);
float3 param_45=float3(0.0);
float3 param_46=float3(0.0);
float3 param_47;
if (MESHTYPE_tmp==0)
{
float2 l9_179=float2(0.0);
float2 l9_180=(*sc_set0.UserUniforms).sizeStartMax;
l9_179=l9_180;
param_45=float3(l9_179,0.0);
param_47=param_45;
}
else
{
float3 l9_181=float3(0.0);
float3 l9_182=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_181=l9_182;
param_46=l9_181;
param_47=param_46;
}
Result_N123=param_47;
float3 Result_N125=float3(0.0);
float3 param_48=float3(0.0);
float3 param_49=float3(0.0);
float3 param_50;
if (MESHTYPE_tmp==0)
{
float2 l9_183=float2(0.0);
float2 l9_184=(*sc_set0.UserUniforms).sizeEndMin;
l9_183=l9_184;
param_48=float3(l9_183,0.0);
param_50=param_48;
}
else
{
float3 l9_185=float3(0.0);
float3 l9_186=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_185=l9_186;
param_49=l9_185;
param_50=param_49;
}
Result_N125=param_50;
float3 Result_N126=float3(0.0);
float3 param_51=float3(0.0);
float3 param_52=float3(0.0);
float3 param_53;
if (MESHTYPE_tmp==0)
{
float2 l9_187=float2(0.0);
float2 l9_188=(*sc_set0.UserUniforms).sizeEndMax;
l9_187=l9_188;
param_51=float3(l9_187,0.0);
param_53=param_51;
}
else
{
float3 l9_189=float3(0.0);
float3 l9_190=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_189=l9_190;
param_52=l9_189;
param_53=param_52;
}
Result_N126=param_53;
float Output_N27=0.0;
float param_54=(*sc_set0.UserUniforms).sizeSpeed;
Output_N27=param_54;
float Output_N195=0.0;
float param_55;
if ((int(ENABLE_SIZERAMPSTARTENDASBOUNDS_tmp)!=0))
{
param_55=1.001;
}
else
{
param_55=0.001;
}
param_55-=0.001;
Output_N195=param_55;
float Output_N55=0.0;
float param_56=(*sc_set0.UserUniforms).gravity;
Output_N55=param_56;
float3 Output_N46=float3(0.0);
float3 param_57=(*sc_set0.UserUniforms).localForce;
Output_N46=param_57;
float Output_N51=0.0;
float param_58=(*sc_set0.UserUniforms).sizeVelScale;
Output_N51=param_58;
float Output_N48=0.0;
float param_59=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
Output_N48=param_59;
float Output_N49=0.0;
float param_60=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
Output_N49=param_60;
float Output_N50=0.0;
float param_61=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
Output_N50=param_61;
float2 Output_N138=float2(0.0);
float2 param_62=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 param_63=float2(0.0);
float2 param_64;
if (MESHTYPE_tmp==0)
{
param_64=param_62;
}
else
{
float2 l9_191=float2(0.0);
float2 l9_192=(*sc_set0.UserUniforms).rotationRandomX;
l9_191=l9_192;
param_63=l9_191;
param_64=param_63;
}
Output_N138=param_64;
float2 Output_N139=float2(0.0);
float2 param_65=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 param_66=float2(0.0);
float2 param_67;
if (MESHTYPE_tmp==0)
{
param_67=param_65;
}
else
{
float2 l9_193=float2(0.0);
float2 l9_194=(*sc_set0.UserUniforms).rotationRateX;
l9_193=l9_194;
param_66=l9_193;
param_67=param_66;
}
Output_N139=param_67;
float2 Output_N140=float2(0.0);
float2 param_68=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 param_69=float2(0.0);
float2 param_70;
if (MESHTYPE_tmp==0)
{
param_70=param_68;
}
else
{
float2 l9_195=float2(0.0);
float2 l9_196=(*sc_set0.UserUniforms).randomRotationY;
l9_195=l9_196;
param_69=l9_195;
param_70=param_69;
}
Output_N140=param_70;
float2 Output_N144=float2(0.0);
float2 param_71=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 param_72=float2(0.0);
float2 param_73;
if (MESHTYPE_tmp==0)
{
param_73=param_71;
}
else
{
float2 l9_197=float2(0.0);
float2 l9_198=(*sc_set0.UserUniforms).rotationRateY;
l9_197=l9_198;
param_72=l9_197;
param_73=param_72;
}
Output_N144=param_73;
float2 Output_N135=float2(0.0);
float2 param_74=float2(1.0);
float2 param_75=float2(0.0);
float2 param_76;
if (MESHTYPE_tmp==0)
{
float2 l9_199=float2(0.0);
float2 l9_200=(*sc_set0.UserUniforms).rotationRandom;
l9_199=l9_200;
param_74=l9_199;
param_76=param_74;
}
else
{
float2 l9_201=float2(0.0);
float2 l9_202=(*sc_set0.UserUniforms).randomRotationZ;
l9_201=l9_202;
param_75=l9_201;
param_76=param_75;
}
Output_N135=param_76;
float2 Output_N137=float2(0.0);
float2 param_77=float2(1.0);
float2 param_78=float2(0.0);
float2 param_79;
if (MESHTYPE_tmp==0)
{
float2 l9_203=float2(0.0);
float2 l9_204=(*sc_set0.UserUniforms).rotationRate;
l9_203=l9_204;
param_77=l9_203;
param_79=param_77;
}
else
{
float2 l9_205=float2(0.0);
float2 l9_206=(*sc_set0.UserUniforms).rotationRateZ;
l9_205=l9_206;
param_78=l9_205;
param_79=param_78;
}
Output_N137=param_79;
float Output_N54=0.0;
float param_80=(*sc_set0.UserUniforms).rotationDrag;
Output_N54=param_80;
float Output_N110=0.0;
float param_81=(*sc_set0.UserUniforms).Port_Input1_N110;
float param_82=0.0;
float param_83;
if (MESHTYPE_tmp==0)
{
param_83=param_81;
}
else
{
float l9_207=0.0;
float l9_208=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_207=l9_208;
param_82=l9_207;
param_83=param_82;
}
Output_N110=param_83;
float Output_N176=0.0;
float param_84=(*sc_set0.UserUniforms).fadeDistanceVisible;
Output_N176=param_84;
float Output_N178=0.0;
float param_85=(*sc_set0.UserUniforms).fadeDistanceInvisible;
Output_N178=param_85;
float3 position_N111=float3(0.0);
float3 param_86=particleSeed_N181;
float param_87=globalSeed_N181;
float param_88=particleAlive_N181;
float4 param_89=timeValues_N181;
float param_90=isTrail_N181;
float2 param_91=trailHeadTime_N181;
float2 param_92=Output_N183;
float param_93=Output_N188;
float3 param_94=Position_N114;
float3 param_95=Normal_N172;
float3 param_96=Output_N16;
float3 param_97=Output_N18;
float3 param_98=Output_N20;
float3 param_99=Output_N39;
float3 param_100=Output_N40;
float3 param_101=Output_N41;
float3 param_102=Output_N42;
float3 param_103=Output_N34;
float3 param_104=Output_N35;
float3 param_105=Output_N36;
float3 param_106=Result_N70;
float3 param_107=Result_N121;
float3 param_108=Result_N124;
float3 param_109=Result_N123;
float3 param_110=Result_N125;
float3 param_111=Result_N126;
float param_112=Output_N27;
float param_113=Output_N195;
float param_114=Output_N55;
float3 param_115=Output_N46;
float param_116=Output_N51;
float param_117=Output_N48;
float param_118=Output_N49;
float param_119=Output_N50;
float2 param_120=Output_N138;
float2 param_121=Output_N139;
float2 param_122=Output_N140;
float2 param_123=Output_N144;
float2 param_124=Output_N135;
float2 param_125=Output_N137;
float param_126=Output_N54;
float param_127=Output_N110;
float param_128=Output_N176;
float param_129=Output_N178;
ssGlobals param_131=Globals;
tempGlobals=param_131;
float3 param_130=float3(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=param_86;
N111_globalSeedIn=param_87;
N111_particleAlive=param_88;
N111_timeValuesIn=param_89;
N111_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N111_isTrail=param_90!=0.0;
N111_trailHeadTime=param_91;
N111_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N111_taper=param_92;
N111_ENABLE_TRAILSPIN=(int(TRAILTWIST_tmp)!=0);
N111_trailSizeMult=param_93;
N111_ENABLE_TRAILSIZERAMP=(int(TRAILSIZERAMP_tmp)!=0);
N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS=(int(TRAILSIZERAMPSTARTENDASBOUNDS_tmp)!=0);
N111_positionObjectSpace=param_94;
N111_normalObjectSpace=param_95;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=param_96;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=param_97;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=param_98;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=param_99;
N111_noiseFrequency=param_100;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=param_101;
N111_sNoiseFrequency=param_102;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=param_103;
N111_velocityMax=param_104;
N111_velocityDrag=param_105;
N111_sizeStart=param_106;
N111_sizeEnd=param_107;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=param_108;
N111_sizeStartMax=param_109;
N111_sizeEndMin=param_110;
N111_sizeEndMax=param_111;
N111_sizeSpeed=param_112;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_ENABLE_SIZERAMPSTARTENDASBOUNDS=param_113!=0.0;
N111_gravity=param_114;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=param_115;
N111_ENABLE_ALIGNQUADTOCAMERAUP=(int(ALIGNTOCAMERAUP_tmp)!=0);
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=param_116;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=param_117!=0.0;
N111_ENABLE_ALIGNTOY=param_118!=0.0;
N111_ENABLE_ALIGNTOZ=param_119!=0.0;
N111_rotationRandomX=param_120;
N111_rotationRateX=param_121;
N111_rotationRandomY=param_122;
N111_rotationRateY=param_123;
N111_rotationRandomZ=param_124;
N111_rotationRateZ=param_125;
N111_rotationDrag=param_126;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=param_127!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=param_128;
N111_fadeDistanceInvisible=param_129;
float3 l9_209=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_210=N111_particleSeed.x;
float l9_211=N111_particleSeed.y;
float l9_212=N111_particleSeed.z;
float3 l9_213=fract((float3(l9_210,l9_211,l9_212)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_214=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_215=normalize(l9_214+float3(N111_EPSILON));
float l9_216=fract(N111_particleSeed.x+N111_globalSeed);
float l9_217=l9_216;
float l9_218=0.33333334;
float l9_219;
if (l9_217<=0.0)
{
l9_219=0.0;
}
else
{
l9_219=pow(l9_217,l9_218);
}
float l9_220=l9_219;
float l9_221=l9_220;
l9_215*=l9_221;
l9_215/=float3(2.0);
float l9_222=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_223=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_224=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_225=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_226=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_227=(float3(l9_225,l9_226,l9_224)-float3(0.5))*2.0;
float3 l9_228=float3(l9_225,l9_226,l9_224);
float l9_229=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_230=N111_timeValuesIn.xy;
float l9_231=N111_timeValuesIn.z;
float l9_232=N111_timeValuesIn.w;
N111_cameraFade_trailHeadTime_taper=float4(0.0);
float3 l9_233=l9_209;
float3 l9_234=l9_209;
float3 l9_235=l9_209;
if (N111_ENABLE_INILOCATION)
{
l9_235=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_233=N111_spawnBox*l9_213;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_234=N111_spawnSphere*l9_215;
}
float3 l9_236=(l9_235+l9_234)+l9_233;
float3 l9_237=l9_209;
if (N111_ENABLE_NOISE)
{
float3 l9_238=N111_noiseFrequency;
float3 l9_239=N111_noiseMult;
float3 l9_240=l9_227;
float l9_241=l9_232;
float l9_242=sin(l9_241*l9_238.x);
float l9_243=sin(l9_241*l9_238.y);
float l9_244=sin(l9_241*l9_238.z);
float3 l9_245=(float3(l9_242,l9_243,l9_244)*l9_239)*l9_240;
float3 l9_246=l9_245;
l9_237+=l9_246;
}
if (N111_ENABLE_SNOISE)
{
float l9_247=l9_224;
float l9_248=l9_225;
float l9_249=l9_226;
float3 l9_250=N111_sNoiseFrequency;
float3 l9_251=N111_sNoiseMult;
float3 l9_252=l9_227;
float l9_253=l9_231;
float2 l9_254=float2(l9_247*l9_253,l9_250.x);
float2 l9_255=floor(l9_254+float2(dot(l9_254,float2(0.36602542))));
float2 l9_256=(l9_254-l9_255)+float2(dot(l9_255,float2(0.21132487)));
float2 l9_257=float2(0.0);
bool2 l9_258=bool2(l9_256.x>l9_256.y);
l9_257=float2(l9_258.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_258.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_259=l9_256.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_260=l9_259.xy-l9_257;
l9_259=float4(l9_260.x,l9_260.y,l9_259.z,l9_259.w);
l9_255=mod(l9_255,float2(289.0));
float3 l9_261=float3(l9_255.y)+float3(0.0,l9_257.y,1.0);
float3 l9_262=mod(((l9_261*34.0)+float3(1.0))*l9_261,float3(289.0));
float3 l9_263=(l9_262+float3(l9_255.x))+float3(0.0,l9_257.x,1.0);
float3 l9_264=mod(((l9_263*34.0)+float3(1.0))*l9_263,float3(289.0));
float3 l9_265=l9_264;
float3 l9_266=fast::max(float3(0.5)-float3(dot(l9_256,l9_256),dot(l9_259.xy,l9_259.xy),dot(l9_259.zw,l9_259.zw)),float3(0.0));
l9_266*=l9_266;
l9_266*=l9_266;
float3 l9_267=(fract(l9_265*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_268=abs(l9_267)-float3(0.5);
float3 l9_269=floor(l9_267+float3(0.5));
float3 l9_270=l9_267-l9_269;
l9_266*=(float3(1.7928429)-(((l9_270*l9_270)+(l9_268*l9_268))*0.85373473));
float3 l9_271=float3(0.0);
l9_271.x=(l9_270.x*l9_256.x)+(l9_268.x*l9_256.y);
float2 l9_272=(l9_270.yz*l9_259.xz)+(l9_268.yz*l9_259.yw);
l9_271=float3(l9_271.x,l9_272.x,l9_272.y);
float l9_273=130.0*dot(l9_266,l9_271);
float l9_274=l9_273;
float2 l9_275=float2(l9_248*l9_253,l9_250.y);
float2 l9_276=floor(l9_275+float2(dot(l9_275,float2(0.36602542))));
float2 l9_277=(l9_275-l9_276)+float2(dot(l9_276,float2(0.21132487)));
float2 l9_278=float2(0.0);
bool2 l9_279=bool2(l9_277.x>l9_277.y);
l9_278=float2(l9_279.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_279.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_280=l9_277.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_281=l9_280.xy-l9_278;
l9_280=float4(l9_281.x,l9_281.y,l9_280.z,l9_280.w);
l9_276=mod(l9_276,float2(289.0));
float3 l9_282=float3(l9_276.y)+float3(0.0,l9_278.y,1.0);
float3 l9_283=mod(((l9_282*34.0)+float3(1.0))*l9_282,float3(289.0));
float3 l9_284=(l9_283+float3(l9_276.x))+float3(0.0,l9_278.x,1.0);
float3 l9_285=mod(((l9_284*34.0)+float3(1.0))*l9_284,float3(289.0));
float3 l9_286=l9_285;
float3 l9_287=fast::max(float3(0.5)-float3(dot(l9_277,l9_277),dot(l9_280.xy,l9_280.xy),dot(l9_280.zw,l9_280.zw)),float3(0.0));
l9_287*=l9_287;
l9_287*=l9_287;
float3 l9_288=(fract(l9_286*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_289=abs(l9_288)-float3(0.5);
float3 l9_290=floor(l9_288+float3(0.5));
float3 l9_291=l9_288-l9_290;
l9_287*=(float3(1.7928429)-(((l9_291*l9_291)+(l9_289*l9_289))*0.85373473));
float3 l9_292=float3(0.0);
l9_292.x=(l9_291.x*l9_277.x)+(l9_289.x*l9_277.y);
float2 l9_293=(l9_291.yz*l9_280.xz)+(l9_289.yz*l9_280.yw);
l9_292=float3(l9_292.x,l9_293.x,l9_293.y);
float l9_294=130.0*dot(l9_287,l9_292);
float l9_295=l9_294;
float2 l9_296=float2(l9_249*l9_253,l9_250.z);
float2 l9_297=floor(l9_296+float2(dot(l9_296,float2(0.36602542))));
float2 l9_298=(l9_296-l9_297)+float2(dot(l9_297,float2(0.21132487)));
float2 l9_299=float2(0.0);
bool2 l9_300=bool2(l9_298.x>l9_298.y);
l9_299=float2(l9_300.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_300.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_301=l9_298.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_302=l9_301.xy-l9_299;
l9_301=float4(l9_302.x,l9_302.y,l9_301.z,l9_301.w);
l9_297=mod(l9_297,float2(289.0));
float3 l9_303=float3(l9_297.y)+float3(0.0,l9_299.y,1.0);
float3 l9_304=mod(((l9_303*34.0)+float3(1.0))*l9_303,float3(289.0));
float3 l9_305=(l9_304+float3(l9_297.x))+float3(0.0,l9_299.x,1.0);
float3 l9_306=mod(((l9_305*34.0)+float3(1.0))*l9_305,float3(289.0));
float3 l9_307=l9_306;
float3 l9_308=fast::max(float3(0.5)-float3(dot(l9_298,l9_298),dot(l9_301.xy,l9_301.xy),dot(l9_301.zw,l9_301.zw)),float3(0.0));
l9_308*=l9_308;
l9_308*=l9_308;
float3 l9_309=(fract(l9_307*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_310=abs(l9_309)-float3(0.5);
float3 l9_311=floor(l9_309+float3(0.5));
float3 l9_312=l9_309-l9_311;
l9_308*=(float3(1.7928429)-(((l9_312*l9_312)+(l9_310*l9_310))*0.85373473));
float3 l9_313=float3(0.0);
l9_313.x=(l9_312.x*l9_298.x)+(l9_310.x*l9_298.y);
float2 l9_314=(l9_312.yz*l9_301.xz)+(l9_310.yz*l9_301.yw);
l9_313=float3(l9_313.x,l9_314.x,l9_314.y);
float l9_315=130.0*dot(l9_308,l9_313);
float l9_316=l9_315;
float3 l9_317=(float3(l9_274,l9_295,l9_316)*l9_251)*l9_252;
l9_237+=l9_317;
}
float3 l9_318=float3(0.0,((N111_gravity/2.0)*l9_231)*l9_231,0.0);
float3 l9_319=l9_209;
if (N111_ENABLE_FORCE)
{
l9_319=((N111_localForce/float3(2.0))*l9_231)*l9_231;
}
float3 l9_320=l9_209;
float3 l9_321=N111_velocityMin+(((l9_227+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_321=mix(N111_velocityMin,N111_velocityMax,l9_228);
}
float3 l9_322=l9_321;
float l9_323=l9_231;
float3 l9_324=N111_velocityDrag;
float3 l9_325=l9_237;
float l9_326=l9_232;
float3 l9_327=float3(l9_323,l9_323,l9_323);
float3 l9_328=l9_324;
float l9_329;
if (l9_327.x<=0.0)
{
l9_329=0.0;
}
else
{
l9_329=pow(l9_327.x,l9_328.x);
}
float l9_330=l9_329;
float l9_331;
if (l9_327.y<=0.0)
{
l9_331=0.0;
}
else
{
l9_331=pow(l9_327.y,l9_328.y);
}
float l9_332=l9_331;
float l9_333;
if (l9_327.z<=0.0)
{
l9_333=0.0;
}
else
{
l9_333=pow(l9_327.z,l9_328.z);
}
float3 l9_334=float3(l9_330,l9_332,l9_333);
float3 l9_335=l9_334;
float3 l9_336=(l9_322+l9_325)*l9_335;
if (N111_ENABLE_VELRAMP)
{
float l9_337=floor(l9_326*10000.0)/10000.0;
float2 l9_338=tempGlobals.Surface_UVCoord0;
float2 l9_339=(l9_338/float2(10000.0,1.0))+float2(l9_337,0.0);
float2 l9_340=l9_339;
float4 l9_341=float4(0.0);
int l9_342;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_343=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_343=0;
}
else
{
l9_343=gl_InstanceIndex%2;
}
int l9_344=l9_343;
l9_342=1-l9_344;
}
else
{
int l9_345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_345=0;
}
else
{
l9_345=gl_InstanceIndex%2;
}
int l9_346=l9_345;
l9_342=l9_346;
}
int l9_347=l9_342;
int l9_348=velRampTextureLayout_tmp;
int l9_349=l9_347;
float2 l9_350=l9_340;
bool l9_351=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_352=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_353=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_354=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_355=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_356=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_357=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_358=0.0;
bool l9_359=l9_356&&(!l9_354);
float l9_360=1.0;
float l9_361=l9_350.x;
int l9_362=l9_353.x;
if (l9_362==1)
{
l9_361=fract(l9_361);
}
else
{
if (l9_362==2)
{
float l9_363=fract(l9_361);
float l9_364=l9_361-l9_363;
float l9_365=step(0.25,fract(l9_364*0.5));
l9_361=mix(l9_363,1.0-l9_363,fast::clamp(l9_365,0.0,1.0));
}
}
l9_350.x=l9_361;
float l9_366=l9_350.y;
int l9_367=l9_353.y;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_350.y=l9_366;
if (l9_354)
{
bool l9_371=l9_356;
bool l9_372;
if (l9_371)
{
l9_372=l9_353.x==3;
}
else
{
l9_372=l9_371;
}
float l9_373=l9_350.x;
float l9_374=l9_355.x;
float l9_375=l9_355.z;
bool l9_376=l9_372;
float l9_377=l9_360;
float l9_378=fast::clamp(l9_373,l9_374,l9_375);
float l9_379=step(abs(l9_373-l9_378),9.9999997e-06);
l9_377*=(l9_379+((1.0-float(l9_376))*(1.0-l9_379)));
l9_373=l9_378;
l9_350.x=l9_373;
l9_360=l9_377;
bool l9_380=l9_356;
bool l9_381;
if (l9_380)
{
l9_381=l9_353.y==3;
}
else
{
l9_381=l9_380;
}
float l9_382=l9_350.y;
float l9_383=l9_355.y;
float l9_384=l9_355.w;
bool l9_385=l9_381;
float l9_386=l9_360;
float l9_387=fast::clamp(l9_382,l9_383,l9_384);
float l9_388=step(abs(l9_382-l9_387),9.9999997e-06);
l9_386*=(l9_388+((1.0-float(l9_385))*(1.0-l9_388)));
l9_382=l9_387;
l9_350.y=l9_382;
l9_360=l9_386;
}
float2 l9_389=l9_350;
bool l9_390=l9_351;
float3x3 l9_391=l9_352;
if (l9_390)
{
l9_389=float2((l9_391*float3(l9_389,1.0)).xy);
}
float2 l9_392=l9_389;
l9_350=l9_392;
float l9_393=l9_350.x;
int l9_394=l9_353.x;
bool l9_395=l9_359;
float l9_396=l9_360;
if ((l9_394==0)||(l9_394==3))
{
float l9_397=l9_393;
float l9_398=0.0;
float l9_399=1.0;
bool l9_400=l9_395;
float l9_401=l9_396;
float l9_402=fast::clamp(l9_397,l9_398,l9_399);
float l9_403=step(abs(l9_397-l9_402),9.9999997e-06);
l9_401*=(l9_403+((1.0-float(l9_400))*(1.0-l9_403)));
l9_397=l9_402;
l9_393=l9_397;
l9_396=l9_401;
}
l9_350.x=l9_393;
l9_360=l9_396;
float l9_404=l9_350.y;
int l9_405=l9_353.y;
bool l9_406=l9_359;
float l9_407=l9_360;
if ((l9_405==0)||(l9_405==3))
{
float l9_408=l9_404;
float l9_409=0.0;
float l9_410=1.0;
bool l9_411=l9_406;
float l9_412=l9_407;
float l9_413=fast::clamp(l9_408,l9_409,l9_410);
float l9_414=step(abs(l9_408-l9_413),9.9999997e-06);
l9_412*=(l9_414+((1.0-float(l9_411))*(1.0-l9_414)));
l9_408=l9_413;
l9_404=l9_408;
l9_407=l9_412;
}
l9_350.y=l9_404;
l9_360=l9_407;
float2 l9_415=l9_350;
int l9_416=l9_348;
int l9_417=l9_349;
float l9_418=l9_358;
float2 l9_419=l9_415;
int l9_420=l9_416;
int l9_421=l9_417;
float3 l9_422=float3(0.0);
if (l9_420==0)
{
l9_422=float3(l9_419,0.0);
}
else
{
if (l9_420==1)
{
l9_422=float3(l9_419.x,(l9_419.y*0.5)+(0.5-(float(l9_421)*0.5)),0.0);
}
else
{
l9_422=float3(l9_419,float(l9_421));
}
}
float3 l9_423=l9_422;
float3 l9_424=l9_423;
float4 l9_425=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_424.xy,level(l9_418));
float4 l9_426=l9_425;
if (l9_356)
{
l9_426=mix(l9_357,l9_426,float4(l9_360));
}
float4 l9_427=l9_426;
l9_341=l9_427;
float4 l9_428=l9_341;
float3 l9_429=l9_428.xyz;
l9_336=(l9_322+l9_325)*l9_429;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_336=l9_322*l9_335;
}
}
float3 l9_430=l9_336;
l9_320=l9_430;
if (N111_ENABLE_TRAILS)
{
if (N111_isTrail)
{
float2 l9_431=tempGlobals.Surface_UVCoord0;
float2 l9_432=l9_431;
float l9_433=mix(1.0,l9_432.y,1.0-N111_taper.x);
l9_433*=mix(1.0,1.0-l9_432.y,1.0-N111_taper.y);
N111_cameraFade_trailHeadTime_taper=float4(N111_cameraFade_trailHeadTime_taper.x,N111_trailHeadTime.x,N111_trailHeadTime.y,N111_cameraFade_trailHeadTime_taper.w);
N111_cameraFade_trailHeadTime_taper.w=l9_433;
}
}
float4x4 l9_434=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_435=length(l9_434[0].xyz);
float4x4 l9_436=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_437=length(l9_436[1].xyz);
float4x4 l9_438=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_439=length(l9_438[2].xyz);
float3 l9_440=float3(l9_435,l9_437,l9_439);
float4x4 l9_441=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_442=l9_441;
float4 l9_443=l9_442[0];
float4 l9_444=l9_442[1];
float4 l9_445=l9_442[2];
float3x3 l9_446=float3x3(float3(float3(l9_443.x,l9_444.x,l9_445.x)),float3(float3(l9_443.y,l9_444.y,l9_445.y)),float3(float3(l9_443.z,l9_444.z,l9_445.z)));
float3x3 l9_447=l9_446;
float3 l9_448=((l9_320+l9_318)+l9_319)*l9_447;
if (N111_WORLDFORCE)
{
float4x4 l9_449=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_450=l9_449;
float4 l9_451=l9_450[0];
float4 l9_452=l9_450[1];
float4 l9_453=l9_450[2];
float3x3 l9_454=float3x3(float3(float3(l9_451.x,l9_452.x,l9_453.x)),float3(float3(l9_451.y,l9_452.y,l9_453.y)),float3(float3(l9_451.z,l9_452.z,l9_453.z)));
float3x3 l9_455=l9_454;
l9_448=((l9_320*l9_455)+l9_318)+l9_319;
}
if (N111_WORLDSPACE)
{
l9_448=((l9_320*l9_440)+l9_318)+l9_319;
}
float4x4 l9_456=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_457=(l9_456*float4(l9_236,1.0)).xyz+l9_448;
float l9_458=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_229);
float l9_459=1.0-l9_232;
float l9_460=N111_rotationDrag;
float l9_461;
if (l9_459<=0.0)
{
l9_461=0.0;
}
else
{
l9_461=pow(l9_459,l9_460);
}
float l9_462=l9_461;
float l9_463=l9_462;
float l9_464=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_229);
float l9_465=((l9_464*l9_463)*l9_232)*2.0;
float l9_466=N111_PI*((l9_465+l9_458)-0.5);
float l9_467=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_468=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_469=l9_468-l9_457;
float l9_470=dot(l9_469,l9_469);
float l9_471=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_472=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_473=fast::min(l9_471,l9_472);
float l9_474=fast::max(l9_471,l9_472);
float l9_475=smoothstep(l9_473,l9_474,l9_470);
float l9_476;
if (l9_471>l9_472)
{
l9_476=1.0-l9_475;
}
else
{
l9_476=l9_475;
}
l9_475=l9_476;
if (l9_475<=N111_EPSILON)
{
l9_467=0.0;
}
N111_cameraFade_trailHeadTime_taper.x=l9_475;
}
if (N111_MESHTYPE_QUAD||N111_ENABLE_TRAILS)
{
if (N111_MESHTYPE_QUAD||N111_isTrail)
{
int l9_477=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_477=0;
}
else
{
l9_477=gl_InstanceIndex%2;
}
int l9_478=l9_477;
float4x4 l9_479=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_478];
float3 l9_480=normalize(l9_479[2].xyz);
if (N111_isTrail)
{
l9_480*=float3(-1.0);
}
float3 l9_481=float3(0.0,1.0,0.0);
if (N111_ENABLE_ALIGNQUADTOCAMERAUP)
{
int l9_482=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_482=0;
}
else
{
l9_482=gl_InstanceIndex%2;
}
int l9_483=l9_482;
float3 l9_484=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_483][1].xyz;
l9_481=l9_484;
}
float3 l9_485=-normalize(cross(l9_480,l9_481));
float3 l9_486=normalize(cross(l9_485,l9_480));
float l9_487=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_485=float3(0.0,0.0,1.0);
l9_486=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_485=float3(1.0,0.0,0.0);
l9_486=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_485=float3(1.0,0.0,0.0);
l9_486=float3(0.0,1.0,0.0);
}
float2 l9_488=float2(cos(l9_466),sin(l9_466));
float2 l9_489=float2(-sin(l9_466),cos(l9_466));
float3 l9_490=float3((l9_485*l9_488.x)+(l9_486*l9_488.y));
float3 l9_491=float3((l9_485*l9_489.x)+(l9_486*l9_489.y));
if (N111_ENABLE_ALIGNTOVEL||N111_ENABLE_TRAILS)
{
if (N111_ENABLE_ALIGNTOVEL||N111_isTrail)
{
float3 l9_492=normalize(((l9_448+l9_318)+l9_319)+float3(N111_EPSILON));
float3 l9_493=l9_448*(l9_231-0.0099999998);
float3 l9_494=l9_448*(l9_231+0.0099999998);
l9_490=l9_492;
l9_491=normalize(cross(l9_490,l9_480));
if (N111_ENABLE_TRAILSPIN)
{
if (N111_isTrail)
{
l9_491=float3((l9_490*l9_488.x)+(l9_491*l9_488.y));
}
}
if (!N111_isTrail)
{
if (N111_ENABLE_IGNOREVEL)
{
l9_487=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_487=length(l9_494-l9_493)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_495=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_487=(length(l9_494-l9_493)/length(l9_495[0].xyz))*N111_sizeVelScale;
}
}
}
}
}
float4x4 l9_496=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_497=length(l9_496[0].xyz);
float2 l9_498=tempGlobals.Surface_UVCoord0;
float l9_499=l9_222;
float l9_500=l9_223;
float l9_501=l9_232;
float l9_502=N111_sizeSpeed;
float2 l9_503=(((l9_498-float2(0.5))*l9_467)*N111_pSize(l9_499,l9_500,l9_501,l9_502,N111_isTrail,N111_ENABLE_TRAILS,N111_trailHeadTime,N111_ENABLE_INDEPENDENTTRAIL,N111_trailSizeMult,N111_ENABLE_TRAILSIZERAMP,N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.trailSizeRampTex,sc_set0.trailSizeRampTexSmpSC,sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals))*l9_497;
float3 l9_504=(l9_457+(l9_491*l9_503.x))+(l9_490*(l9_503.y*l9_487));
N111_position=l9_504;
if ((N111_particleAlive<0.5)||(l9_467<0.5))
{
N111_position/=float3(0.0);
}
N111_normal=l9_480;
}
}
if (!N111_MESHTYPE_QUAD)
{
if (!N111_isTrail)
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_505=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_506=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_507=(l9_505+l9_506)/float3(2.0);
N111_position-=l9_507;
}
float l9_508=l9_222;
float l9_509=l9_223;
float l9_510=l9_232;
float l9_511=N111_sizeSpeed;
N111_position=(N111_position*l9_440)*N111_pSize3D(l9_508,l9_509,l9_510,l9_511,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals);
if ((N111_particleAlive<0.5)||(l9_467<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_512;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_512=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_513=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_513=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_513=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_514=0.001;
float3 l9_515=l9_321;
float l9_516=l9_231-l9_514;
float3 l9_517=N111_velocityDrag;
float3 l9_518=l9_237;
float l9_519=l9_232-l9_514;
float3 l9_520=float3(l9_516,l9_516,l9_516);
float3 l9_521=l9_517;
float l9_522;
if (l9_520.x<=0.0)
{
l9_522=0.0;
}
else
{
l9_522=pow(l9_520.x,l9_521.x);
}
float l9_523=l9_522;
float l9_524;
if (l9_520.y<=0.0)
{
l9_524=0.0;
}
else
{
l9_524=pow(l9_520.y,l9_521.y);
}
float l9_525=l9_524;
float l9_526;
if (l9_520.z<=0.0)
{
l9_526=0.0;
}
else
{
l9_526=pow(l9_520.z,l9_521.z);
}
float3 l9_527=float3(l9_523,l9_525,l9_526);
float3 l9_528=l9_527;
float3 l9_529=(l9_515+l9_518)*l9_528;
if (N111_ENABLE_VELRAMP)
{
float l9_530=floor(l9_519*10000.0)/10000.0;
float2 l9_531=tempGlobals.Surface_UVCoord0;
float2 l9_532=(l9_531/float2(10000.0,1.0))+float2(l9_530,0.0);
float2 l9_533=l9_532;
float4 l9_534=float4(0.0);
int l9_535;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_536=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_536=0;
}
else
{
l9_536=gl_InstanceIndex%2;
}
int l9_537=l9_536;
l9_535=1-l9_537;
}
else
{
int l9_538=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_538=0;
}
else
{
l9_538=gl_InstanceIndex%2;
}
int l9_539=l9_538;
l9_535=l9_539;
}
int l9_540=l9_535;
int l9_541=velRampTextureLayout_tmp;
int l9_542=l9_540;
float2 l9_543=l9_533;
bool l9_544=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_545=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_546=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_547=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_548=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_549=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_550=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_551=0.0;
bool l9_552=l9_549&&(!l9_547);
float l9_553=1.0;
float l9_554=l9_543.x;
int l9_555=l9_546.x;
if (l9_555==1)
{
l9_554=fract(l9_554);
}
else
{
if (l9_555==2)
{
float l9_556=fract(l9_554);
float l9_557=l9_554-l9_556;
float l9_558=step(0.25,fract(l9_557*0.5));
l9_554=mix(l9_556,1.0-l9_556,fast::clamp(l9_558,0.0,1.0));
}
}
l9_543.x=l9_554;
float l9_559=l9_543.y;
int l9_560=l9_546.y;
if (l9_560==1)
{
l9_559=fract(l9_559);
}
else
{
if (l9_560==2)
{
float l9_561=fract(l9_559);
float l9_562=l9_559-l9_561;
float l9_563=step(0.25,fract(l9_562*0.5));
l9_559=mix(l9_561,1.0-l9_561,fast::clamp(l9_563,0.0,1.0));
}
}
l9_543.y=l9_559;
if (l9_547)
{
bool l9_564=l9_549;
bool l9_565;
if (l9_564)
{
l9_565=l9_546.x==3;
}
else
{
l9_565=l9_564;
}
float l9_566=l9_543.x;
float l9_567=l9_548.x;
float l9_568=l9_548.z;
bool l9_569=l9_565;
float l9_570=l9_553;
float l9_571=fast::clamp(l9_566,l9_567,l9_568);
float l9_572=step(abs(l9_566-l9_571),9.9999997e-06);
l9_570*=(l9_572+((1.0-float(l9_569))*(1.0-l9_572)));
l9_566=l9_571;
l9_543.x=l9_566;
l9_553=l9_570;
bool l9_573=l9_549;
bool l9_574;
if (l9_573)
{
l9_574=l9_546.y==3;
}
else
{
l9_574=l9_573;
}
float l9_575=l9_543.y;
float l9_576=l9_548.y;
float l9_577=l9_548.w;
bool l9_578=l9_574;
float l9_579=l9_553;
float l9_580=fast::clamp(l9_575,l9_576,l9_577);
float l9_581=step(abs(l9_575-l9_580),9.9999997e-06);
l9_579*=(l9_581+((1.0-float(l9_578))*(1.0-l9_581)));
l9_575=l9_580;
l9_543.y=l9_575;
l9_553=l9_579;
}
float2 l9_582=l9_543;
bool l9_583=l9_544;
float3x3 l9_584=l9_545;
if (l9_583)
{
l9_582=float2((l9_584*float3(l9_582,1.0)).xy);
}
float2 l9_585=l9_582;
l9_543=l9_585;
float l9_586=l9_543.x;
int l9_587=l9_546.x;
bool l9_588=l9_552;
float l9_589=l9_553;
if ((l9_587==0)||(l9_587==3))
{
float l9_590=l9_586;
float l9_591=0.0;
float l9_592=1.0;
bool l9_593=l9_588;
float l9_594=l9_589;
float l9_595=fast::clamp(l9_590,l9_591,l9_592);
float l9_596=step(abs(l9_590-l9_595),9.9999997e-06);
l9_594*=(l9_596+((1.0-float(l9_593))*(1.0-l9_596)));
l9_590=l9_595;
l9_586=l9_590;
l9_589=l9_594;
}
l9_543.x=l9_586;
l9_553=l9_589;
float l9_597=l9_543.y;
int l9_598=l9_546.y;
bool l9_599=l9_552;
float l9_600=l9_553;
if ((l9_598==0)||(l9_598==3))
{
float l9_601=l9_597;
float l9_602=0.0;
float l9_603=1.0;
bool l9_604=l9_599;
float l9_605=l9_600;
float l9_606=fast::clamp(l9_601,l9_602,l9_603);
float l9_607=step(abs(l9_601-l9_606),9.9999997e-06);
l9_605*=(l9_607+((1.0-float(l9_604))*(1.0-l9_607)));
l9_601=l9_606;
l9_597=l9_601;
l9_600=l9_605;
}
l9_543.y=l9_597;
l9_553=l9_600;
float2 l9_608=l9_543;
int l9_609=l9_541;
int l9_610=l9_542;
float l9_611=l9_551;
float2 l9_612=l9_608;
int l9_613=l9_609;
int l9_614=l9_610;
float3 l9_615=float3(0.0);
if (l9_613==0)
{
l9_615=float3(l9_612,0.0);
}
else
{
if (l9_613==1)
{
l9_615=float3(l9_612.x,(l9_612.y*0.5)+(0.5-(float(l9_614)*0.5)),0.0);
}
else
{
l9_615=float3(l9_612,float(l9_614));
}
}
float3 l9_616=l9_615;
float3 l9_617=l9_616;
float4 l9_618=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_617.xy,level(l9_611));
float4 l9_619=l9_618;
if (l9_549)
{
l9_619=mix(l9_550,l9_619,float4(l9_553));
}
float4 l9_620=l9_619;
l9_534=l9_620;
float4 l9_621=l9_534;
float3 l9_622=l9_621.xyz;
l9_529=(l9_515+l9_518)*l9_622;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_529=l9_515*l9_528;
}
}
float3 l9_623=l9_529;
float3 l9_624=l9_623;
float l9_625=((N111_gravity/2.0)*(l9_231-l9_514))*(l9_231-l9_514);
l9_318.y-=l9_625;
if (N111_ENABLE_FORCE)
{
float3 l9_626=float3(((N111_localForce/float3(2.0))*(l9_231-l9_514))*(l9_231-l9_514));
l9_319-=l9_626;
}
if (N111_WORLDFORCE)
{
float4x4 l9_627=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_628=l9_627;
float4 l9_629=l9_628[0];
float4 l9_630=l9_628[1];
float4 l9_631=l9_628[2];
float3x3 l9_632=float3x3(float3(float3(l9_629.x,l9_630.x,l9_631.x)),float3(float3(l9_629.y,l9_630.y,l9_631.y)),float3(float3(l9_629.z,l9_630.z,l9_631.z)));
float3x3 l9_633=l9_632;
l9_513=(((l9_320-l9_624)*l9_633)+l9_318)+l9_319;
}
else
{
if (N111_WORLDSPACE)
{
l9_513=((l9_320-l9_624)+l9_318)+l9_319;
}
else
{
float4x4 l9_634=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_635=l9_634;
float4 l9_636=l9_635[0];
float4 l9_637=l9_635[1];
float4 l9_638=l9_635[2];
float3x3 l9_639=float3x3(float3(float3(l9_636.x,l9_637.x,l9_638.x)),float3(float3(l9_636.y,l9_637.y,l9_638.y)),float3(float3(l9_636.z,l9_637.z,l9_638.z)));
float3x3 l9_640=l9_639;
l9_513=(((l9_320-l9_624)+l9_319)+l9_318)*l9_640;
}
}
l9_513=normalize(l9_513+float3(N111_EPSILON));
}
float3 l9_641=float3(0.0,0.0,1.0);
float3 l9_642=cross(l9_513,l9_641);
float3 l9_643=normalize(l9_642);
float l9_644=length(l9_642);
float l9_645=dot(l9_641,l9_513);
float l9_646=1.0-l9_645;
l9_512=float3x3(float3(((l9_646*l9_643.x)*l9_643.x)+l9_645,((l9_646*l9_643.x)*l9_643.y)-(l9_643.z*l9_644),((l9_646*l9_643.z)*l9_643.x)+(l9_643.y*l9_644)),float3(((l9_646*l9_643.x)*l9_643.y)+(l9_643.z*l9_644),((l9_646*l9_643.y)*l9_643.y)+l9_645,((l9_646*l9_643.y)*l9_643.z)-(l9_643.x*l9_644)),float3(((l9_646*l9_643.z)*l9_643.x)-(l9_643.y*l9_644),((l9_646*l9_643.y)*l9_643.z)+(l9_643.x*l9_644),((l9_646*l9_643.z)*l9_643.z)+l9_645));
}
float3x3 l9_647=float3x3(float3(cos(l9_466),-sin(l9_466),0.0),float3(sin(l9_466),cos(l9_466),0.0),float3(0.0,0.0,1.0));
l9_512=l9_512*l9_647;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_648=l9_448*(l9_231-0.0099999998);
float3 l9_649=l9_448*(l9_231+0.0099999998);
N111_position.z*=(length(l9_649-l9_648)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_650=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_651=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_650);
float l9_652=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_650);
float l9_653=((l9_652*l9_463)*l9_232)*2.0;
float l9_654=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_655=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_654);
float l9_656=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_654);
float l9_657=((l9_656*l9_463)*l9_232)*2.0;
float l9_658=N111_PI*(l9_653+l9_651);
float l9_659=N111_PI*(l9_657+l9_655);
float l9_660=N111_PI*(l9_465+l9_458);
float3 l9_661=float3(l9_658,l9_659,l9_660);
float l9_662=cos(l9_661.x);
float l9_663=sin(l9_661.x);
float l9_664=cos(l9_661.y);
float l9_665=sin(l9_661.y);
float l9_666=cos(l9_661.z);
float l9_667=sin(l9_661.z);
l9_512=float3x3(float3(l9_664*l9_666,(l9_662*l9_667)+((l9_663*l9_665)*l9_666),(l9_663*l9_667)-((l9_662*l9_665)*l9_666)),float3((-l9_664)*l9_667,(l9_662*l9_666)-((l9_663*l9_665)*l9_667),(l9_663*l9_666)+((l9_662*l9_665)*l9_667)),float3(l9_665,(-l9_663)*l9_664,l9_662*l9_664));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_668=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_669=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_670=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_671=float3x3(float3(l9_668[0].xyz/float3(l9_440.x)),float3(l9_669[1].xyz/float3(l9_440.y)),float3(l9_670[2].xyz/float3(l9_440.z)));
l9_512=l9_671*l9_512;
}
N111_position=l9_512*N111_position;
N111_normal=normalize(l9_512*N111_normalObjectSpace);
N111_position+=l9_457;
}
}
N111_timeValues=float4(l9_230,l9_231,l9_232);
param_130=N111_position;
position_N111=param_130;
WorldPosition=position_N111;
float Output_N3_1=0.0;
float param_132=(*sc_set0.UserUniforms).timeGlobal;
Output_N3_1=param_132;
float Output_N5_1=0.0;
float param_133=(*sc_set0.UserUniforms).externalTimeInput;
Output_N5_1=param_133;
float Output_N7_1=0.0;
float param_134=(*sc_set0.UserUniforms).externalSeed;
Output_N7_1=param_134;
float Output_N9_1=0.0;
float param_135=(*sc_set0.UserUniforms).lifeTimeConstant;
Output_N9_1=param_135;
float2 Output_N10_1=float2(0.0);
float2 param_136=(*sc_set0.UserUniforms).lifeTimeMinMax;
Output_N10_1=param_136;
float Output_N12_1=0.0;
float param_137=(*sc_set0.UserUniforms).spawnDuration;
Output_N12_1=param_137;
float Output_N192_1=0.0;
float param_138;
if ((int(TRAILS_tmp)!=0))
{
param_138=1.001;
}
else
{
param_138=0.001;
}
param_138-=0.001;
Output_N192_1=param_138;
float Output_N180_1=0.0;
float param_139=(*sc_set0.UserUniforms).trailLength;
Output_N180_1=param_139;
float4 Color_N168_1=float4(0.0);
Color_N168_1=Globals.VertexColor;
float Output_N217_1=0.0;
Output_N217_1=Color_N168_1.x;
float Result_N218_1=0.0;
float l9_672=Output_N192_1;
bool l9_673=(l9_672*1.0)!=0.0;
bool l9_674;
if (l9_673)
{
l9_674=(Output_N217_1*1.0)!=0.0;
}
else
{
l9_674=l9_673;
}
Result_N218_1=float(l9_674);
float3 particleSeed_N181_1=float3(0.0);
float globalSeed_N181_1=0.0;
float particleAlive_N181_1=0.0;
float4 timeValues_N181_1=float4(0.0);
float isTrail_N181_1=0.0;
float2 trailHeadTime_N181_1=float2(0.0);
float param_140=Output_N3_1;
float param_141=Output_N5_1;
float param_142=Output_N7_1;
float param_143=Output_N9_1;
float2 param_144=Output_N10_1;
float param_145=Output_N12_1;
float param_146=Output_N180_1;
float param_147=Result_N218_1;
ssGlobals param_154=Globals;
tempGlobals=param_154;
float3 param_148=float3(0.0);
float param_149=0.0;
float param_150=0.0;
float4 param_151=float4(0.0);
float param_152=0.0;
float2 param_153=float2(0.0);
N181_timeGlobal=param_140;
N181_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N181_externalTime=param_141;
N181_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N181_externalSeed=param_142;
N181_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N181_lifeTimeConstant=param_143;
N181_lifeTimeMinMax=param_144;
N181_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N181_spawnDuration=param_145;
N181_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N181_trailLength=param_146;
N181_isTrailCondition=param_147!=0.0;
N181_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
float l9_675=0.0;
if (N181_ENABLE_WORLDPOSSEED)
{
float4x4 l9_676=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_675=length(float4(1.0)*l9_676);
}
N181_globalSeed=N181_externalSeed+l9_675;
int l9_677=0;
l9_677=ssInstanceID;
int l9_678=l9_677;
float l9_679=float(l9_678);
int l9_680=int(l9_679);
int l9_681=l9_680^(l9_680*15299);
int l9_682=l9_681;
int l9_683=l9_682;
int l9_684=((l9_683*((l9_683*1471343)+101146501))+1559861749)&2147483647;
int l9_685=l9_684;
int l9_686=l9_682*1399;
int l9_687=((l9_686*((l9_686*1471343)+101146501))+1559861749)&2147483647;
int l9_688=l9_687;
int l9_689=l9_682*7177;
int l9_690=((l9_689*((l9_689*1471343)+101146501))+1559861749)&2147483647;
int l9_691=l9_690;
int l9_692=l9_685;
float l9_693=float(l9_692)*4.6566129e-10;
int l9_694=l9_688;
float l9_695=float(l9_694)*4.6566129e-10;
int l9_696=l9_691;
float l9_697=float(l9_696)*4.6566129e-10;
float3 l9_698=float3(l9_693,l9_695,l9_697);
float3 l9_699=l9_698;
N181_particleSeed=l9_699;
float l9_700=fract((N181_particleSeed.y*12.12358)+N181_globalSeed);
float l9_701=fract((N181_particleSeed.z*3.5358)+N181_globalSeed);
float2 l9_702;
if (N181_ENABLE_LIFETIMEMINMAX)
{
l9_702=N181_lifeTimeMinMax;
}
else
{
l9_702=float2(N181_lifeTimeConstant);
}
float2 l9_703=l9_702;
float l9_704=fast::max(l9_703.x,0.0099999998);
float l9_705=fast::max(l9_703.y,0.0099999998);
float l9_706=tempGlobals.gTimeElapsed;
float l9_707=l9_706;
if (N181_ENABLE_EXTERNALTIME)
{
l9_707=N181_externalTime;
}
float l9_708=l9_707;
if (N181_ENABLE_INSTANTSPAWN)
{
l9_708=N181_timeGlobal*l9_707;
}
else
{
float l9_709=0.0;
if (N181_ENABLE_TRAILS)
{
if (N181_ENABLE_INDEPENDENTTRAIL)
{
l9_709=N181_trailLength;
}
}
float l9_710=fract(((l9_707*N181_timeGlobal)*(1.0/(l9_703.y+l9_709)))+l9_700);
l9_708=l9_710*(l9_703.y+l9_709);
}
float l9_711=mix(l9_708/l9_704,l9_708/l9_705,l9_701);
float l9_712=fast::clamp(l9_711,0.0,1.0);
N181_isTrail=0.0;
N181_trailHeadTime=float2(l9_708,l9_712);
if (N181_ENABLE_TRAILS)
{
if (N181_isTrailCondition)
{
N181_isTrail=1.0;
float2 l9_713=tempGlobals.Surface_UVCoord0;
l9_708-=(l9_713.y*N181_trailLength);
l9_711=mix(l9_708/l9_704,l9_708/l9_705,l9_701);
l9_712=fast::clamp(l9_711,0.0,1.0);
}
}
float l9_714=0.0;
if (!N181_ENABLE_INSTANTSPAWN)
{
if (N181_spawnDuration>0.0)
{
if ((l9_707-N181_spawnDuration)>=l9_708)
{
l9_714=1.0;
}
}
}
float l9_715=l9_711+l9_714;
N181_particleAlive=1.0;
if ((l9_715>0.99989998)||(l9_708<=0.0))
{
N181_particleAlive=0.0;
}
N181_timeValues=float4(l9_703,l9_708,l9_712);
param_148=N181_particleSeed;
param_149=N181_globalSeed;
param_150=N181_particleAlive;
param_151=N181_timeValues;
param_152=N181_isTrail;
param_153=N181_trailHeadTime;
particleSeed_N181_1=param_148;
globalSeed_N181_1=param_149;
particleAlive_N181_1=param_150;
timeValues_N181_1=param_151;
isTrail_N181_1=param_152;
trailHeadTime_N181_1=param_153;
float2 Output_N183_1=float2(0.0);
float2 param_155=(*sc_set0.UserUniforms).trailTaper;
Output_N183_1=param_155;
float Output_N188_1=0.0;
float param_156=(*sc_set0.UserUniforms).trailWidth;
Output_N188_1=param_156;
float3 Position_N114_1=float3(0.0);
Position_N114_1=Globals.SurfacePosition_ObjectSpace;
float3 Normal_N172_1=float3(0.0);
Normal_N172_1=Globals.VertexNormal_ObjectSpace;
float3 Output_N16_1=float3(0.0);
float3 param_157=(*sc_set0.UserUniforms).spawnLocation;
Output_N16_1=param_157;
float3 Output_N18_1=float3(0.0);
float3 param_158=(*sc_set0.UserUniforms).spawnBox;
Output_N18_1=param_158;
float3 Output_N20_1=float3(0.0);
float3 param_159=(*sc_set0.UserUniforms).spawnSphere;
Output_N20_1=param_159;
float3 Output_N39_1=float3(0.0);
float3 param_160=(*sc_set0.UserUniforms).noiseMult;
Output_N39_1=param_160;
float3 Output_N40_1=float3(0.0);
float3 param_161=(*sc_set0.UserUniforms).noiseFrequency;
Output_N40_1=param_161;
float3 Output_N41_1=float3(0.0);
float3 param_162=(*sc_set0.UserUniforms).sNoiseMult;
Output_N41_1=param_162;
float3 Output_N42_1=float3(0.0);
float3 param_163=(*sc_set0.UserUniforms).sNoiseFrequency;
Output_N42_1=param_163;
float3 Output_N34_1=float3(0.0);
float3 param_164=(*sc_set0.UserUniforms).velocityMin;
Output_N34_1=param_164;
float3 Output_N35_1=float3(0.0);
float3 param_165=(*sc_set0.UserUniforms).velocityMax;
Output_N35_1=param_165;
float3 Output_N36_1=float3(0.0);
float3 param_166=(*sc_set0.UserUniforms).velocityDrag;
Output_N36_1=param_166;
float3 Result_N70_1=float3(0.0);
float3 param_167=float3(0.0);
float3 param_168=float3(0.0);
float3 param_169;
if (MESHTYPE_tmp==0)
{
float2 l9_716=float2(0.0);
float2 l9_717=(*sc_set0.UserUniforms).sizeStart;
l9_716=l9_717;
param_167=float3(l9_716,0.0);
param_169=param_167;
}
else
{
float3 l9_718=float3(0.0);
float3 l9_719=(*sc_set0.UserUniforms).sizeStart3D;
l9_718=l9_719;
param_168=l9_718;
param_169=param_168;
}
Result_N70_1=param_169;
float3 Result_N121_1=float3(0.0);
float3 param_170=float3(0.0);
float3 param_171=float3(0.0);
float3 param_172;
if (MESHTYPE_tmp==0)
{
float2 l9_720=float2(0.0);
float2 l9_721=(*sc_set0.UserUniforms).sizeEnd;
l9_720=l9_721;
param_170=float3(l9_720,0.0);
param_172=param_170;
}
else
{
float3 l9_722=float3(0.0);
float3 l9_723=(*sc_set0.UserUniforms).sizeEnd3D;
l9_722=l9_723;
param_171=l9_722;
param_172=param_171;
}
Result_N121_1=param_172;
float3 Result_N124_1=float3(0.0);
float3 param_173=float3(0.0);
float3 param_174=float3(0.0);
float3 param_175;
if (MESHTYPE_tmp==0)
{
float2 l9_724=float2(0.0);
float2 l9_725=(*sc_set0.UserUniforms).sizeStartMin;
l9_724=l9_725;
param_173=float3(l9_724,0.0);
param_175=param_173;
}
else
{
float3 l9_726=float3(0.0);
float3 l9_727=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_726=l9_727;
param_174=l9_726;
param_175=param_174;
}
Result_N124_1=param_175;
float3 Result_N123_1=float3(0.0);
float3 param_176=float3(0.0);
float3 param_177=float3(0.0);
float3 param_178;
if (MESHTYPE_tmp==0)
{
float2 l9_728=float2(0.0);
float2 l9_729=(*sc_set0.UserUniforms).sizeStartMax;
l9_728=l9_729;
param_176=float3(l9_728,0.0);
param_178=param_176;
}
else
{
float3 l9_730=float3(0.0);
float3 l9_731=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_730=l9_731;
param_177=l9_730;
param_178=param_177;
}
Result_N123_1=param_178;
float3 Result_N125_1=float3(0.0);
float3 param_179=float3(0.0);
float3 param_180=float3(0.0);
float3 param_181;
if (MESHTYPE_tmp==0)
{
float2 l9_732=float2(0.0);
float2 l9_733=(*sc_set0.UserUniforms).sizeEndMin;
l9_732=l9_733;
param_179=float3(l9_732,0.0);
param_181=param_179;
}
else
{
float3 l9_734=float3(0.0);
float3 l9_735=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_734=l9_735;
param_180=l9_734;
param_181=param_180;
}
Result_N125_1=param_181;
float3 Result_N126_1=float3(0.0);
float3 param_182=float3(0.0);
float3 param_183=float3(0.0);
float3 param_184;
if (MESHTYPE_tmp==0)
{
float2 l9_736=float2(0.0);
float2 l9_737=(*sc_set0.UserUniforms).sizeEndMax;
l9_736=l9_737;
param_182=float3(l9_736,0.0);
param_184=param_182;
}
else
{
float3 l9_738=float3(0.0);
float3 l9_739=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_738=l9_739;
param_183=l9_738;
param_184=param_183;
}
Result_N126_1=param_184;
float Output_N27_1=0.0;
float param_185=(*sc_set0.UserUniforms).sizeSpeed;
Output_N27_1=param_185;
float Output_N195_1=0.0;
float param_186;
if ((int(ENABLE_SIZERAMPSTARTENDASBOUNDS_tmp)!=0))
{
param_186=1.001;
}
else
{
param_186=0.001;
}
param_186-=0.001;
Output_N195_1=param_186;
float Output_N55_1=0.0;
float param_187=(*sc_set0.UserUniforms).gravity;
Output_N55_1=param_187;
float3 Output_N46_1=float3(0.0);
float3 param_188=(*sc_set0.UserUniforms).localForce;
Output_N46_1=param_188;
float Output_N51_1=0.0;
float param_189=(*sc_set0.UserUniforms).sizeVelScale;
Output_N51_1=param_189;
float Output_N48_1=0.0;
float param_190=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
Output_N48_1=param_190;
float Output_N49_1=0.0;
float param_191=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
Output_N49_1=param_191;
float Output_N50_1=0.0;
float param_192=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
Output_N50_1=param_192;
float2 Output_N138_1=float2(0.0);
float2 param_193=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 param_194=float2(0.0);
float2 param_195;
if (MESHTYPE_tmp==0)
{
param_195=param_193;
}
else
{
float2 l9_740=float2(0.0);
float2 l9_741=(*sc_set0.UserUniforms).rotationRandomX;
l9_740=l9_741;
param_194=l9_740;
param_195=param_194;
}
Output_N138_1=param_195;
float2 Output_N139_1=float2(0.0);
float2 param_196=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 param_197=float2(0.0);
float2 param_198;
if (MESHTYPE_tmp==0)
{
param_198=param_196;
}
else
{
float2 l9_742=float2(0.0);
float2 l9_743=(*sc_set0.UserUniforms).rotationRateX;
l9_742=l9_743;
param_197=l9_742;
param_198=param_197;
}
Output_N139_1=param_198;
float2 Output_N140_1=float2(0.0);
float2 param_199=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 param_200=float2(0.0);
float2 param_201;
if (MESHTYPE_tmp==0)
{
param_201=param_199;
}
else
{
float2 l9_744=float2(0.0);
float2 l9_745=(*sc_set0.UserUniforms).randomRotationY;
l9_744=l9_745;
param_200=l9_744;
param_201=param_200;
}
Output_N140_1=param_201;
float2 Output_N144_1=float2(0.0);
float2 param_202=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 param_203=float2(0.0);
float2 param_204;
if (MESHTYPE_tmp==0)
{
param_204=param_202;
}
else
{
float2 l9_746=float2(0.0);
float2 l9_747=(*sc_set0.UserUniforms).rotationRateY;
l9_746=l9_747;
param_203=l9_746;
param_204=param_203;
}
Output_N144_1=param_204;
float2 Output_N135_1=float2(0.0);
float2 param_205=float2(1.0);
float2 param_206=float2(0.0);
float2 param_207;
if (MESHTYPE_tmp==0)
{
float2 l9_748=float2(0.0);
float2 l9_749=(*sc_set0.UserUniforms).rotationRandom;
l9_748=l9_749;
param_205=l9_748;
param_207=param_205;
}
else
{
float2 l9_750=float2(0.0);
float2 l9_751=(*sc_set0.UserUniforms).randomRotationZ;
l9_750=l9_751;
param_206=l9_750;
param_207=param_206;
}
Output_N135_1=param_207;
float2 Output_N137_1=float2(0.0);
float2 param_208=float2(1.0);
float2 param_209=float2(0.0);
float2 param_210;
if (MESHTYPE_tmp==0)
{
float2 l9_752=float2(0.0);
float2 l9_753=(*sc_set0.UserUniforms).rotationRate;
l9_752=l9_753;
param_208=l9_752;
param_210=param_208;
}
else
{
float2 l9_754=float2(0.0);
float2 l9_755=(*sc_set0.UserUniforms).rotationRateZ;
l9_754=l9_755;
param_209=l9_754;
param_210=param_209;
}
Output_N137_1=param_210;
float Output_N54_1=0.0;
float param_211=(*sc_set0.UserUniforms).rotationDrag;
Output_N54_1=param_211;
float Output_N110_1=0.0;
float param_212=(*sc_set0.UserUniforms).Port_Input1_N110;
float param_213=0.0;
float param_214;
if (MESHTYPE_tmp==0)
{
param_214=param_212;
}
else
{
float l9_756=0.0;
float l9_757=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_756=l9_757;
param_213=l9_756;
param_214=param_213;
}
Output_N110_1=param_214;
float Output_N176_1=0.0;
float param_215=(*sc_set0.UserUniforms).fadeDistanceVisible;
Output_N176_1=param_215;
float Output_N178_1=0.0;
float param_216=(*sc_set0.UserUniforms).fadeDistanceInvisible;
Output_N178_1=param_216;
float3 normal_N111=float3(0.0);
float3 param_217=particleSeed_N181_1;
float param_218=globalSeed_N181_1;
float param_219=particleAlive_N181_1;
float4 param_220=timeValues_N181_1;
float param_221=isTrail_N181_1;
float2 param_222=trailHeadTime_N181_1;
float2 param_223=Output_N183_1;
float param_224=Output_N188_1;
float3 param_225=Position_N114_1;
float3 param_226=Normal_N172_1;
float3 param_227=Output_N16_1;
float3 param_228=Output_N18_1;
float3 param_229=Output_N20_1;
float3 param_230=Output_N39_1;
float3 param_231=Output_N40_1;
float3 param_232=Output_N41_1;
float3 param_233=Output_N42_1;
float3 param_234=Output_N34_1;
float3 param_235=Output_N35_1;
float3 param_236=Output_N36_1;
float3 param_237=Result_N70_1;
float3 param_238=Result_N121_1;
float3 param_239=Result_N124_1;
float3 param_240=Result_N123_1;
float3 param_241=Result_N125_1;
float3 param_242=Result_N126_1;
float param_243=Output_N27_1;
float param_244=Output_N195_1;
float param_245=Output_N55_1;
float3 param_246=Output_N46_1;
float param_247=Output_N51_1;
float param_248=Output_N48_1;
float param_249=Output_N49_1;
float param_250=Output_N50_1;
float2 param_251=Output_N138_1;
float2 param_252=Output_N139_1;
float2 param_253=Output_N140_1;
float2 param_254=Output_N144_1;
float2 param_255=Output_N135_1;
float2 param_256=Output_N137_1;
float param_257=Output_N54_1;
float param_258=Output_N110_1;
float param_259=Output_N176_1;
float param_260=Output_N178_1;
ssGlobals param_262=Globals;
tempGlobals=param_262;
float3 param_261=float3(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=param_217;
N111_globalSeedIn=param_218;
N111_particleAlive=param_219;
N111_timeValuesIn=param_220;
N111_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N111_isTrail=param_221!=0.0;
N111_trailHeadTime=param_222;
N111_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N111_taper=param_223;
N111_ENABLE_TRAILSPIN=(int(TRAILTWIST_tmp)!=0);
N111_trailSizeMult=param_224;
N111_ENABLE_TRAILSIZERAMP=(int(TRAILSIZERAMP_tmp)!=0);
N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS=(int(TRAILSIZERAMPSTARTENDASBOUNDS_tmp)!=0);
N111_positionObjectSpace=param_225;
N111_normalObjectSpace=param_226;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=param_227;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=param_228;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=param_229;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=param_230;
N111_noiseFrequency=param_231;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=param_232;
N111_sNoiseFrequency=param_233;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=param_234;
N111_velocityMax=param_235;
N111_velocityDrag=param_236;
N111_sizeStart=param_237;
N111_sizeEnd=param_238;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=param_239;
N111_sizeStartMax=param_240;
N111_sizeEndMin=param_241;
N111_sizeEndMax=param_242;
N111_sizeSpeed=param_243;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_ENABLE_SIZERAMPSTARTENDASBOUNDS=param_244!=0.0;
N111_gravity=param_245;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=param_246;
N111_ENABLE_ALIGNQUADTOCAMERAUP=(int(ALIGNTOCAMERAUP_tmp)!=0);
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=param_247;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=param_248!=0.0;
N111_ENABLE_ALIGNTOY=param_249!=0.0;
N111_ENABLE_ALIGNTOZ=param_250!=0.0;
N111_rotationRandomX=param_251;
N111_rotationRateX=param_252;
N111_rotationRandomY=param_253;
N111_rotationRateY=param_254;
N111_rotationRandomZ=param_255;
N111_rotationRateZ=param_256;
N111_rotationDrag=param_257;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=param_258!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=param_259;
N111_fadeDistanceInvisible=param_260;
float3 l9_758=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_759=N111_particleSeed.x;
float l9_760=N111_particleSeed.y;
float l9_761=N111_particleSeed.z;
float3 l9_762=fract((float3(l9_759,l9_760,l9_761)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_763=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_764=normalize(l9_763+float3(N111_EPSILON));
float l9_765=fract(N111_particleSeed.x+N111_globalSeed);
float l9_766=l9_765;
float l9_767=0.33333334;
float l9_768;
if (l9_766<=0.0)
{
l9_768=0.0;
}
else
{
l9_768=pow(l9_766,l9_767);
}
float l9_769=l9_768;
float l9_770=l9_769;
l9_764*=l9_770;
l9_764/=float3(2.0);
float l9_771=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_772=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_773=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_774=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_775=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_776=(float3(l9_774,l9_775,l9_773)-float3(0.5))*2.0;
float3 l9_777=float3(l9_774,l9_775,l9_773);
float l9_778=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_779=N111_timeValuesIn.xy;
float l9_780=N111_timeValuesIn.z;
float l9_781=N111_timeValuesIn.w;
N111_cameraFade_trailHeadTime_taper=float4(0.0);
float3 l9_782=l9_758;
float3 l9_783=l9_758;
float3 l9_784=l9_758;
if (N111_ENABLE_INILOCATION)
{
l9_784=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_782=N111_spawnBox*l9_762;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_783=N111_spawnSphere*l9_764;
}
float3 l9_785=(l9_784+l9_783)+l9_782;
float3 l9_786=l9_758;
if (N111_ENABLE_NOISE)
{
float3 l9_787=N111_noiseFrequency;
float3 l9_788=N111_noiseMult;
float3 l9_789=l9_776;
float l9_790=l9_781;
float l9_791=sin(l9_790*l9_787.x);
float l9_792=sin(l9_790*l9_787.y);
float l9_793=sin(l9_790*l9_787.z);
float3 l9_794=(float3(l9_791,l9_792,l9_793)*l9_788)*l9_789;
float3 l9_795=l9_794;
l9_786+=l9_795;
}
if (N111_ENABLE_SNOISE)
{
float l9_796=l9_773;
float l9_797=l9_774;
float l9_798=l9_775;
float3 l9_799=N111_sNoiseFrequency;
float3 l9_800=N111_sNoiseMult;
float3 l9_801=l9_776;
float l9_802=l9_780;
float2 l9_803=float2(l9_796*l9_802,l9_799.x);
float2 l9_804=floor(l9_803+float2(dot(l9_803,float2(0.36602542))));
float2 l9_805=(l9_803-l9_804)+float2(dot(l9_804,float2(0.21132487)));
float2 l9_806=float2(0.0);
bool2 l9_807=bool2(l9_805.x>l9_805.y);
l9_806=float2(l9_807.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_807.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_808=l9_805.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_809=l9_808.xy-l9_806;
l9_808=float4(l9_809.x,l9_809.y,l9_808.z,l9_808.w);
l9_804=mod(l9_804,float2(289.0));
float3 l9_810=float3(l9_804.y)+float3(0.0,l9_806.y,1.0);
float3 l9_811=mod(((l9_810*34.0)+float3(1.0))*l9_810,float3(289.0));
float3 l9_812=(l9_811+float3(l9_804.x))+float3(0.0,l9_806.x,1.0);
float3 l9_813=mod(((l9_812*34.0)+float3(1.0))*l9_812,float3(289.0));
float3 l9_814=l9_813;
float3 l9_815=fast::max(float3(0.5)-float3(dot(l9_805,l9_805),dot(l9_808.xy,l9_808.xy),dot(l9_808.zw,l9_808.zw)),float3(0.0));
l9_815*=l9_815;
l9_815*=l9_815;
float3 l9_816=(fract(l9_814*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_817=abs(l9_816)-float3(0.5);
float3 l9_818=floor(l9_816+float3(0.5));
float3 l9_819=l9_816-l9_818;
l9_815*=(float3(1.7928429)-(((l9_819*l9_819)+(l9_817*l9_817))*0.85373473));
float3 l9_820=float3(0.0);
l9_820.x=(l9_819.x*l9_805.x)+(l9_817.x*l9_805.y);
float2 l9_821=(l9_819.yz*l9_808.xz)+(l9_817.yz*l9_808.yw);
l9_820=float3(l9_820.x,l9_821.x,l9_821.y);
float l9_822=130.0*dot(l9_815,l9_820);
float l9_823=l9_822;
float2 l9_824=float2(l9_797*l9_802,l9_799.y);
float2 l9_825=floor(l9_824+float2(dot(l9_824,float2(0.36602542))));
float2 l9_826=(l9_824-l9_825)+float2(dot(l9_825,float2(0.21132487)));
float2 l9_827=float2(0.0);
bool2 l9_828=bool2(l9_826.x>l9_826.y);
l9_827=float2(l9_828.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_828.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_829=l9_826.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_830=l9_829.xy-l9_827;
l9_829=float4(l9_830.x,l9_830.y,l9_829.z,l9_829.w);
l9_825=mod(l9_825,float2(289.0));
float3 l9_831=float3(l9_825.y)+float3(0.0,l9_827.y,1.0);
float3 l9_832=mod(((l9_831*34.0)+float3(1.0))*l9_831,float3(289.0));
float3 l9_833=(l9_832+float3(l9_825.x))+float3(0.0,l9_827.x,1.0);
float3 l9_834=mod(((l9_833*34.0)+float3(1.0))*l9_833,float3(289.0));
float3 l9_835=l9_834;
float3 l9_836=fast::max(float3(0.5)-float3(dot(l9_826,l9_826),dot(l9_829.xy,l9_829.xy),dot(l9_829.zw,l9_829.zw)),float3(0.0));
l9_836*=l9_836;
l9_836*=l9_836;
float3 l9_837=(fract(l9_835*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_838=abs(l9_837)-float3(0.5);
float3 l9_839=floor(l9_837+float3(0.5));
float3 l9_840=l9_837-l9_839;
l9_836*=(float3(1.7928429)-(((l9_840*l9_840)+(l9_838*l9_838))*0.85373473));
float3 l9_841=float3(0.0);
l9_841.x=(l9_840.x*l9_826.x)+(l9_838.x*l9_826.y);
float2 l9_842=(l9_840.yz*l9_829.xz)+(l9_838.yz*l9_829.yw);
l9_841=float3(l9_841.x,l9_842.x,l9_842.y);
float l9_843=130.0*dot(l9_836,l9_841);
float l9_844=l9_843;
float2 l9_845=float2(l9_798*l9_802,l9_799.z);
float2 l9_846=floor(l9_845+float2(dot(l9_845,float2(0.36602542))));
float2 l9_847=(l9_845-l9_846)+float2(dot(l9_846,float2(0.21132487)));
float2 l9_848=float2(0.0);
bool2 l9_849=bool2(l9_847.x>l9_847.y);
l9_848=float2(l9_849.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_849.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_850=l9_847.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_851=l9_850.xy-l9_848;
l9_850=float4(l9_851.x,l9_851.y,l9_850.z,l9_850.w);
l9_846=mod(l9_846,float2(289.0));
float3 l9_852=float3(l9_846.y)+float3(0.0,l9_848.y,1.0);
float3 l9_853=mod(((l9_852*34.0)+float3(1.0))*l9_852,float3(289.0));
float3 l9_854=(l9_853+float3(l9_846.x))+float3(0.0,l9_848.x,1.0);
float3 l9_855=mod(((l9_854*34.0)+float3(1.0))*l9_854,float3(289.0));
float3 l9_856=l9_855;
float3 l9_857=fast::max(float3(0.5)-float3(dot(l9_847,l9_847),dot(l9_850.xy,l9_850.xy),dot(l9_850.zw,l9_850.zw)),float3(0.0));
l9_857*=l9_857;
l9_857*=l9_857;
float3 l9_858=(fract(l9_856*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_859=abs(l9_858)-float3(0.5);
float3 l9_860=floor(l9_858+float3(0.5));
float3 l9_861=l9_858-l9_860;
l9_857*=(float3(1.7928429)-(((l9_861*l9_861)+(l9_859*l9_859))*0.85373473));
float3 l9_862=float3(0.0);
l9_862.x=(l9_861.x*l9_847.x)+(l9_859.x*l9_847.y);
float2 l9_863=(l9_861.yz*l9_850.xz)+(l9_859.yz*l9_850.yw);
l9_862=float3(l9_862.x,l9_863.x,l9_863.y);
float l9_864=130.0*dot(l9_857,l9_862);
float l9_865=l9_864;
float3 l9_866=(float3(l9_823,l9_844,l9_865)*l9_800)*l9_801;
l9_786+=l9_866;
}
float3 l9_867=float3(0.0,((N111_gravity/2.0)*l9_780)*l9_780,0.0);
float3 l9_868=l9_758;
if (N111_ENABLE_FORCE)
{
l9_868=((N111_localForce/float3(2.0))*l9_780)*l9_780;
}
float3 l9_869=l9_758;
float3 l9_870=N111_velocityMin+(((l9_776+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_870=mix(N111_velocityMin,N111_velocityMax,l9_777);
}
float3 l9_871=l9_870;
float l9_872=l9_780;
float3 l9_873=N111_velocityDrag;
float3 l9_874=l9_786;
float l9_875=l9_781;
float3 l9_876=float3(l9_872,l9_872,l9_872);
float3 l9_877=l9_873;
float l9_878;
if (l9_876.x<=0.0)
{
l9_878=0.0;
}
else
{
l9_878=pow(l9_876.x,l9_877.x);
}
float l9_879=l9_878;
float l9_880;
if (l9_876.y<=0.0)
{
l9_880=0.0;
}
else
{
l9_880=pow(l9_876.y,l9_877.y);
}
float l9_881=l9_880;
float l9_882;
if (l9_876.z<=0.0)
{
l9_882=0.0;
}
else
{
l9_882=pow(l9_876.z,l9_877.z);
}
float3 l9_883=float3(l9_879,l9_881,l9_882);
float3 l9_884=l9_883;
float3 l9_885=(l9_871+l9_874)*l9_884;
if (N111_ENABLE_VELRAMP)
{
float l9_886=floor(l9_875*10000.0)/10000.0;
float2 l9_887=tempGlobals.Surface_UVCoord0;
float2 l9_888=(l9_887/float2(10000.0,1.0))+float2(l9_886,0.0);
float2 l9_889=l9_888;
float4 l9_890=float4(0.0);
int l9_891;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_892=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_892=0;
}
else
{
l9_892=gl_InstanceIndex%2;
}
int l9_893=l9_892;
l9_891=1-l9_893;
}
else
{
int l9_894=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_894=0;
}
else
{
l9_894=gl_InstanceIndex%2;
}
int l9_895=l9_894;
l9_891=l9_895;
}
int l9_896=l9_891;
int l9_897=velRampTextureLayout_tmp;
int l9_898=l9_896;
float2 l9_899=l9_889;
bool l9_900=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_901=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_902=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_903=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_904=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_905=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_906=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_907=0.0;
bool l9_908=l9_905&&(!l9_903);
float l9_909=1.0;
float l9_910=l9_899.x;
int l9_911=l9_902.x;
if (l9_911==1)
{
l9_910=fract(l9_910);
}
else
{
if (l9_911==2)
{
float l9_912=fract(l9_910);
float l9_913=l9_910-l9_912;
float l9_914=step(0.25,fract(l9_913*0.5));
l9_910=mix(l9_912,1.0-l9_912,fast::clamp(l9_914,0.0,1.0));
}
}
l9_899.x=l9_910;
float l9_915=l9_899.y;
int l9_916=l9_902.y;
if (l9_916==1)
{
l9_915=fract(l9_915);
}
else
{
if (l9_916==2)
{
float l9_917=fract(l9_915);
float l9_918=l9_915-l9_917;
float l9_919=step(0.25,fract(l9_918*0.5));
l9_915=mix(l9_917,1.0-l9_917,fast::clamp(l9_919,0.0,1.0));
}
}
l9_899.y=l9_915;
if (l9_903)
{
bool l9_920=l9_905;
bool l9_921;
if (l9_920)
{
l9_921=l9_902.x==3;
}
else
{
l9_921=l9_920;
}
float l9_922=l9_899.x;
float l9_923=l9_904.x;
float l9_924=l9_904.z;
bool l9_925=l9_921;
float l9_926=l9_909;
float l9_927=fast::clamp(l9_922,l9_923,l9_924);
float l9_928=step(abs(l9_922-l9_927),9.9999997e-06);
l9_926*=(l9_928+((1.0-float(l9_925))*(1.0-l9_928)));
l9_922=l9_927;
l9_899.x=l9_922;
l9_909=l9_926;
bool l9_929=l9_905;
bool l9_930;
if (l9_929)
{
l9_930=l9_902.y==3;
}
else
{
l9_930=l9_929;
}
float l9_931=l9_899.y;
float l9_932=l9_904.y;
float l9_933=l9_904.w;
bool l9_934=l9_930;
float l9_935=l9_909;
float l9_936=fast::clamp(l9_931,l9_932,l9_933);
float l9_937=step(abs(l9_931-l9_936),9.9999997e-06);
l9_935*=(l9_937+((1.0-float(l9_934))*(1.0-l9_937)));
l9_931=l9_936;
l9_899.y=l9_931;
l9_909=l9_935;
}
float2 l9_938=l9_899;
bool l9_939=l9_900;
float3x3 l9_940=l9_901;
if (l9_939)
{
l9_938=float2((l9_940*float3(l9_938,1.0)).xy);
}
float2 l9_941=l9_938;
l9_899=l9_941;
float l9_942=l9_899.x;
int l9_943=l9_902.x;
bool l9_944=l9_908;
float l9_945=l9_909;
if ((l9_943==0)||(l9_943==3))
{
float l9_946=l9_942;
float l9_947=0.0;
float l9_948=1.0;
bool l9_949=l9_944;
float l9_950=l9_945;
float l9_951=fast::clamp(l9_946,l9_947,l9_948);
float l9_952=step(abs(l9_946-l9_951),9.9999997e-06);
l9_950*=(l9_952+((1.0-float(l9_949))*(1.0-l9_952)));
l9_946=l9_951;
l9_942=l9_946;
l9_945=l9_950;
}
l9_899.x=l9_942;
l9_909=l9_945;
float l9_953=l9_899.y;
int l9_954=l9_902.y;
bool l9_955=l9_908;
float l9_956=l9_909;
if ((l9_954==0)||(l9_954==3))
{
float l9_957=l9_953;
float l9_958=0.0;
float l9_959=1.0;
bool l9_960=l9_955;
float l9_961=l9_956;
float l9_962=fast::clamp(l9_957,l9_958,l9_959);
float l9_963=step(abs(l9_957-l9_962),9.9999997e-06);
l9_961*=(l9_963+((1.0-float(l9_960))*(1.0-l9_963)));
l9_957=l9_962;
l9_953=l9_957;
l9_956=l9_961;
}
l9_899.y=l9_953;
l9_909=l9_956;
float2 l9_964=l9_899;
int l9_965=l9_897;
int l9_966=l9_898;
float l9_967=l9_907;
float2 l9_968=l9_964;
int l9_969=l9_965;
int l9_970=l9_966;
float3 l9_971=float3(0.0);
if (l9_969==0)
{
l9_971=float3(l9_968,0.0);
}
else
{
if (l9_969==1)
{
l9_971=float3(l9_968.x,(l9_968.y*0.5)+(0.5-(float(l9_970)*0.5)),0.0);
}
else
{
l9_971=float3(l9_968,float(l9_970));
}
}
float3 l9_972=l9_971;
float3 l9_973=l9_972;
float4 l9_974=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_973.xy,level(l9_967));
float4 l9_975=l9_974;
if (l9_905)
{
l9_975=mix(l9_906,l9_975,float4(l9_909));
}
float4 l9_976=l9_975;
l9_890=l9_976;
float4 l9_977=l9_890;
float3 l9_978=l9_977.xyz;
l9_885=(l9_871+l9_874)*l9_978;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_885=l9_871*l9_884;
}
}
float3 l9_979=l9_885;
l9_869=l9_979;
if (N111_ENABLE_TRAILS)
{
if (N111_isTrail)
{
float2 l9_980=tempGlobals.Surface_UVCoord0;
float2 l9_981=l9_980;
float l9_982=mix(1.0,l9_981.y,1.0-N111_taper.x);
l9_982*=mix(1.0,1.0-l9_981.y,1.0-N111_taper.y);
N111_cameraFade_trailHeadTime_taper=float4(N111_cameraFade_trailHeadTime_taper.x,N111_trailHeadTime.x,N111_trailHeadTime.y,N111_cameraFade_trailHeadTime_taper.w);
N111_cameraFade_trailHeadTime_taper.w=l9_982;
}
}
float4x4 l9_983=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_984=length(l9_983[0].xyz);
float4x4 l9_985=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_986=length(l9_985[1].xyz);
float4x4 l9_987=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_988=length(l9_987[2].xyz);
float3 l9_989=float3(l9_984,l9_986,l9_988);
float4x4 l9_990=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_991=l9_990;
float4 l9_992=l9_991[0];
float4 l9_993=l9_991[1];
float4 l9_994=l9_991[2];
float3x3 l9_995=float3x3(float3(float3(l9_992.x,l9_993.x,l9_994.x)),float3(float3(l9_992.y,l9_993.y,l9_994.y)),float3(float3(l9_992.z,l9_993.z,l9_994.z)));
float3x3 l9_996=l9_995;
float3 l9_997=((l9_869+l9_867)+l9_868)*l9_996;
if (N111_WORLDFORCE)
{
float4x4 l9_998=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_999=l9_998;
float4 l9_1000=l9_999[0];
float4 l9_1001=l9_999[1];
float4 l9_1002=l9_999[2];
float3x3 l9_1003=float3x3(float3(float3(l9_1000.x,l9_1001.x,l9_1002.x)),float3(float3(l9_1000.y,l9_1001.y,l9_1002.y)),float3(float3(l9_1000.z,l9_1001.z,l9_1002.z)));
float3x3 l9_1004=l9_1003;
l9_997=((l9_869*l9_1004)+l9_867)+l9_868;
}
if (N111_WORLDSPACE)
{
l9_997=((l9_869*l9_989)+l9_867)+l9_868;
}
float4x4 l9_1005=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_1006=(l9_1005*float4(l9_785,1.0)).xyz+l9_997;
float l9_1007=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_778);
float l9_1008=1.0-l9_781;
float l9_1009=N111_rotationDrag;
float l9_1010;
if (l9_1008<=0.0)
{
l9_1010=0.0;
}
else
{
l9_1010=pow(l9_1008,l9_1009);
}
float l9_1011=l9_1010;
float l9_1012=l9_1011;
float l9_1013=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_778);
float l9_1014=((l9_1013*l9_1012)*l9_781)*2.0;
float l9_1015=N111_PI*((l9_1014+l9_1007)-0.5);
float l9_1016=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_1017=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_1018=l9_1017-l9_1006;
float l9_1019=dot(l9_1018,l9_1018);
float l9_1020=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_1021=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_1022=fast::min(l9_1020,l9_1021);
float l9_1023=fast::max(l9_1020,l9_1021);
float l9_1024=smoothstep(l9_1022,l9_1023,l9_1019);
float l9_1025;
if (l9_1020>l9_1021)
{
l9_1025=1.0-l9_1024;
}
else
{
l9_1025=l9_1024;
}
l9_1024=l9_1025;
if (l9_1024<=N111_EPSILON)
{
l9_1016=0.0;
}
N111_cameraFade_trailHeadTime_taper.x=l9_1024;
}
if (N111_MESHTYPE_QUAD||N111_ENABLE_TRAILS)
{
if (N111_MESHTYPE_QUAD||N111_isTrail)
{
int l9_1026=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1026=0;
}
else
{
l9_1026=gl_InstanceIndex%2;
}
int l9_1027=l9_1026;
float4x4 l9_1028=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1027];
float3 l9_1029=normalize(l9_1028[2].xyz);
if (N111_isTrail)
{
l9_1029*=float3(-1.0);
}
float3 l9_1030=float3(0.0,1.0,0.0);
if (N111_ENABLE_ALIGNQUADTOCAMERAUP)
{
int l9_1031=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1031=0;
}
else
{
l9_1031=gl_InstanceIndex%2;
}
int l9_1032=l9_1031;
float3 l9_1033=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1032][1].xyz;
l9_1030=l9_1033;
}
float3 l9_1034=-normalize(cross(l9_1029,l9_1030));
float3 l9_1035=normalize(cross(l9_1034,l9_1029));
float l9_1036=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_1034=float3(0.0,0.0,1.0);
l9_1035=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_1034=float3(1.0,0.0,0.0);
l9_1035=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_1034=float3(1.0,0.0,0.0);
l9_1035=float3(0.0,1.0,0.0);
}
float2 l9_1037=float2(cos(l9_1015),sin(l9_1015));
float2 l9_1038=float2(-sin(l9_1015),cos(l9_1015));
float3 l9_1039=float3((l9_1034*l9_1037.x)+(l9_1035*l9_1037.y));
float3 l9_1040=float3((l9_1034*l9_1038.x)+(l9_1035*l9_1038.y));
if (N111_ENABLE_ALIGNTOVEL||N111_ENABLE_TRAILS)
{
if (N111_ENABLE_ALIGNTOVEL||N111_isTrail)
{
float3 l9_1041=normalize(((l9_997+l9_867)+l9_868)+float3(N111_EPSILON));
float3 l9_1042=l9_997*(l9_780-0.0099999998);
float3 l9_1043=l9_997*(l9_780+0.0099999998);
l9_1039=l9_1041;
l9_1040=normalize(cross(l9_1039,l9_1029));
if (N111_ENABLE_TRAILSPIN)
{
if (N111_isTrail)
{
l9_1040=float3((l9_1039*l9_1037.x)+(l9_1040*l9_1037.y));
}
}
if (!N111_isTrail)
{
if (N111_ENABLE_IGNOREVEL)
{
l9_1036=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_1036=length(l9_1043-l9_1042)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_1044=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1036=(length(l9_1043-l9_1042)/length(l9_1044[0].xyz))*N111_sizeVelScale;
}
}
}
}
}
float4x4 l9_1045=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_1046=length(l9_1045[0].xyz);
float2 l9_1047=tempGlobals.Surface_UVCoord0;
float l9_1048=l9_771;
float l9_1049=l9_772;
float l9_1050=l9_781;
float l9_1051=N111_sizeSpeed;
float2 l9_1052=(((l9_1047-float2(0.5))*l9_1016)*N111_pSize(l9_1048,l9_1049,l9_1050,l9_1051,N111_isTrail,N111_ENABLE_TRAILS,N111_trailHeadTime,N111_ENABLE_INDEPENDENTTRAIL,N111_trailSizeMult,N111_ENABLE_TRAILSIZERAMP,N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.trailSizeRampTex,sc_set0.trailSizeRampTexSmpSC,sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals))*l9_1046;
float3 l9_1053=(l9_1006+(l9_1040*l9_1052.x))+(l9_1039*(l9_1052.y*l9_1036));
N111_position=l9_1053;
if ((N111_particleAlive<0.5)||(l9_1016<0.5))
{
N111_position/=float3(0.0);
}
N111_normal=l9_1029;
}
}
if (!N111_MESHTYPE_QUAD)
{
if (!N111_isTrail)
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_1054=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_1055=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_1056=(l9_1054+l9_1055)/float3(2.0);
N111_position-=l9_1056;
}
float l9_1057=l9_771;
float l9_1058=l9_772;
float l9_1059=l9_781;
float l9_1060=N111_sizeSpeed;
N111_position=(N111_position*l9_989)*N111_pSize3D(l9_1057,l9_1058,l9_1059,l9_1060,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals);
if ((N111_particleAlive<0.5)||(l9_1016<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_1061;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_1061=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_1062=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_1062=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_1062=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_1063=0.001;
float3 l9_1064=l9_870;
float l9_1065=l9_780-l9_1063;
float3 l9_1066=N111_velocityDrag;
float3 l9_1067=l9_786;
float l9_1068=l9_781-l9_1063;
float3 l9_1069=float3(l9_1065,l9_1065,l9_1065);
float3 l9_1070=l9_1066;
float l9_1071;
if (l9_1069.x<=0.0)
{
l9_1071=0.0;
}
else
{
l9_1071=pow(l9_1069.x,l9_1070.x);
}
float l9_1072=l9_1071;
float l9_1073;
if (l9_1069.y<=0.0)
{
l9_1073=0.0;
}
else
{
l9_1073=pow(l9_1069.y,l9_1070.y);
}
float l9_1074=l9_1073;
float l9_1075;
if (l9_1069.z<=0.0)
{
l9_1075=0.0;
}
else
{
l9_1075=pow(l9_1069.z,l9_1070.z);
}
float3 l9_1076=float3(l9_1072,l9_1074,l9_1075);
float3 l9_1077=l9_1076;
float3 l9_1078=(l9_1064+l9_1067)*l9_1077;
if (N111_ENABLE_VELRAMP)
{
float l9_1079=floor(l9_1068*10000.0)/10000.0;
float2 l9_1080=tempGlobals.Surface_UVCoord0;
float2 l9_1081=(l9_1080/float2(10000.0,1.0))+float2(l9_1079,0.0);
float2 l9_1082=l9_1081;
float4 l9_1083=float4(0.0);
int l9_1084;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1085=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1085=0;
}
else
{
l9_1085=gl_InstanceIndex%2;
}
int l9_1086=l9_1085;
l9_1084=1-l9_1086;
}
else
{
int l9_1087=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1087=0;
}
else
{
l9_1087=gl_InstanceIndex%2;
}
int l9_1088=l9_1087;
l9_1084=l9_1088;
}
int l9_1089=l9_1084;
int l9_1090=velRampTextureLayout_tmp;
int l9_1091=l9_1089;
float2 l9_1092=l9_1082;
bool l9_1093=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_1094=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_1095=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_1096=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_1097=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_1098=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_1099=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_1100=0.0;
bool l9_1101=l9_1098&&(!l9_1096);
float l9_1102=1.0;
float l9_1103=l9_1092.x;
int l9_1104=l9_1095.x;
if (l9_1104==1)
{
l9_1103=fract(l9_1103);
}
else
{
if (l9_1104==2)
{
float l9_1105=fract(l9_1103);
float l9_1106=l9_1103-l9_1105;
float l9_1107=step(0.25,fract(l9_1106*0.5));
l9_1103=mix(l9_1105,1.0-l9_1105,fast::clamp(l9_1107,0.0,1.0));
}
}
l9_1092.x=l9_1103;
float l9_1108=l9_1092.y;
int l9_1109=l9_1095.y;
if (l9_1109==1)
{
l9_1108=fract(l9_1108);
}
else
{
if (l9_1109==2)
{
float l9_1110=fract(l9_1108);
float l9_1111=l9_1108-l9_1110;
float l9_1112=step(0.25,fract(l9_1111*0.5));
l9_1108=mix(l9_1110,1.0-l9_1110,fast::clamp(l9_1112,0.0,1.0));
}
}
l9_1092.y=l9_1108;
if (l9_1096)
{
bool l9_1113=l9_1098;
bool l9_1114;
if (l9_1113)
{
l9_1114=l9_1095.x==3;
}
else
{
l9_1114=l9_1113;
}
float l9_1115=l9_1092.x;
float l9_1116=l9_1097.x;
float l9_1117=l9_1097.z;
bool l9_1118=l9_1114;
float l9_1119=l9_1102;
float l9_1120=fast::clamp(l9_1115,l9_1116,l9_1117);
float l9_1121=step(abs(l9_1115-l9_1120),9.9999997e-06);
l9_1119*=(l9_1121+((1.0-float(l9_1118))*(1.0-l9_1121)));
l9_1115=l9_1120;
l9_1092.x=l9_1115;
l9_1102=l9_1119;
bool l9_1122=l9_1098;
bool l9_1123;
if (l9_1122)
{
l9_1123=l9_1095.y==3;
}
else
{
l9_1123=l9_1122;
}
float l9_1124=l9_1092.y;
float l9_1125=l9_1097.y;
float l9_1126=l9_1097.w;
bool l9_1127=l9_1123;
float l9_1128=l9_1102;
float l9_1129=fast::clamp(l9_1124,l9_1125,l9_1126);
float l9_1130=step(abs(l9_1124-l9_1129),9.9999997e-06);
l9_1128*=(l9_1130+((1.0-float(l9_1127))*(1.0-l9_1130)));
l9_1124=l9_1129;
l9_1092.y=l9_1124;
l9_1102=l9_1128;
}
float2 l9_1131=l9_1092;
bool l9_1132=l9_1093;
float3x3 l9_1133=l9_1094;
if (l9_1132)
{
l9_1131=float2((l9_1133*float3(l9_1131,1.0)).xy);
}
float2 l9_1134=l9_1131;
l9_1092=l9_1134;
float l9_1135=l9_1092.x;
int l9_1136=l9_1095.x;
bool l9_1137=l9_1101;
float l9_1138=l9_1102;
if ((l9_1136==0)||(l9_1136==3))
{
float l9_1139=l9_1135;
float l9_1140=0.0;
float l9_1141=1.0;
bool l9_1142=l9_1137;
float l9_1143=l9_1138;
float l9_1144=fast::clamp(l9_1139,l9_1140,l9_1141);
float l9_1145=step(abs(l9_1139-l9_1144),9.9999997e-06);
l9_1143*=(l9_1145+((1.0-float(l9_1142))*(1.0-l9_1145)));
l9_1139=l9_1144;
l9_1135=l9_1139;
l9_1138=l9_1143;
}
l9_1092.x=l9_1135;
l9_1102=l9_1138;
float l9_1146=l9_1092.y;
int l9_1147=l9_1095.y;
bool l9_1148=l9_1101;
float l9_1149=l9_1102;
if ((l9_1147==0)||(l9_1147==3))
{
float l9_1150=l9_1146;
float l9_1151=0.0;
float l9_1152=1.0;
bool l9_1153=l9_1148;
float l9_1154=l9_1149;
float l9_1155=fast::clamp(l9_1150,l9_1151,l9_1152);
float l9_1156=step(abs(l9_1150-l9_1155),9.9999997e-06);
l9_1154*=(l9_1156+((1.0-float(l9_1153))*(1.0-l9_1156)));
l9_1150=l9_1155;
l9_1146=l9_1150;
l9_1149=l9_1154;
}
l9_1092.y=l9_1146;
l9_1102=l9_1149;
float2 l9_1157=l9_1092;
int l9_1158=l9_1090;
int l9_1159=l9_1091;
float l9_1160=l9_1100;
float2 l9_1161=l9_1157;
int l9_1162=l9_1158;
int l9_1163=l9_1159;
float3 l9_1164=float3(0.0);
if (l9_1162==0)
{
l9_1164=float3(l9_1161,0.0);
}
else
{
if (l9_1162==1)
{
l9_1164=float3(l9_1161.x,(l9_1161.y*0.5)+(0.5-(float(l9_1163)*0.5)),0.0);
}
else
{
l9_1164=float3(l9_1161,float(l9_1163));
}
}
float3 l9_1165=l9_1164;
float3 l9_1166=l9_1165;
float4 l9_1167=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_1166.xy,level(l9_1160));
float4 l9_1168=l9_1167;
if (l9_1098)
{
l9_1168=mix(l9_1099,l9_1168,float4(l9_1102));
}
float4 l9_1169=l9_1168;
l9_1083=l9_1169;
float4 l9_1170=l9_1083;
float3 l9_1171=l9_1170.xyz;
l9_1078=(l9_1064+l9_1067)*l9_1171;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1078=l9_1064*l9_1077;
}
}
float3 l9_1172=l9_1078;
float3 l9_1173=l9_1172;
float l9_1174=((N111_gravity/2.0)*(l9_780-l9_1063))*(l9_780-l9_1063);
l9_867.y-=l9_1174;
if (N111_ENABLE_FORCE)
{
float3 l9_1175=float3(((N111_localForce/float3(2.0))*(l9_780-l9_1063))*(l9_780-l9_1063));
l9_868-=l9_1175;
}
if (N111_WORLDFORCE)
{
float4x4 l9_1176=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1177=l9_1176;
float4 l9_1178=l9_1177[0];
float4 l9_1179=l9_1177[1];
float4 l9_1180=l9_1177[2];
float3x3 l9_1181=float3x3(float3(float3(l9_1178.x,l9_1179.x,l9_1180.x)),float3(float3(l9_1178.y,l9_1179.y,l9_1180.y)),float3(float3(l9_1178.z,l9_1179.z,l9_1180.z)));
float3x3 l9_1182=l9_1181;
l9_1062=(((l9_869-l9_1173)*l9_1182)+l9_867)+l9_868;
}
else
{
if (N111_WORLDSPACE)
{
l9_1062=((l9_869-l9_1173)+l9_867)+l9_868;
}
else
{
float4x4 l9_1183=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1184=l9_1183;
float4 l9_1185=l9_1184[0];
float4 l9_1186=l9_1184[1];
float4 l9_1187=l9_1184[2];
float3x3 l9_1188=float3x3(float3(float3(l9_1185.x,l9_1186.x,l9_1187.x)),float3(float3(l9_1185.y,l9_1186.y,l9_1187.y)),float3(float3(l9_1185.z,l9_1186.z,l9_1187.z)));
float3x3 l9_1189=l9_1188;
l9_1062=(((l9_869-l9_1173)+l9_868)+l9_867)*l9_1189;
}
}
l9_1062=normalize(l9_1062+float3(N111_EPSILON));
}
float3 l9_1190=float3(0.0,0.0,1.0);
float3 l9_1191=cross(l9_1062,l9_1190);
float3 l9_1192=normalize(l9_1191);
float l9_1193=length(l9_1191);
float l9_1194=dot(l9_1190,l9_1062);
float l9_1195=1.0-l9_1194;
l9_1061=float3x3(float3(((l9_1195*l9_1192.x)*l9_1192.x)+l9_1194,((l9_1195*l9_1192.x)*l9_1192.y)-(l9_1192.z*l9_1193),((l9_1195*l9_1192.z)*l9_1192.x)+(l9_1192.y*l9_1193)),float3(((l9_1195*l9_1192.x)*l9_1192.y)+(l9_1192.z*l9_1193),((l9_1195*l9_1192.y)*l9_1192.y)+l9_1194,((l9_1195*l9_1192.y)*l9_1192.z)-(l9_1192.x*l9_1193)),float3(((l9_1195*l9_1192.z)*l9_1192.x)-(l9_1192.y*l9_1193),((l9_1195*l9_1192.y)*l9_1192.z)+(l9_1192.x*l9_1193),((l9_1195*l9_1192.z)*l9_1192.z)+l9_1194));
}
float3x3 l9_1196=float3x3(float3(cos(l9_1015),-sin(l9_1015),0.0),float3(sin(l9_1015),cos(l9_1015),0.0),float3(0.0,0.0,1.0));
l9_1061=l9_1061*l9_1196;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_1197=l9_997*(l9_780-0.0099999998);
float3 l9_1198=l9_997*(l9_780+0.0099999998);
N111_position.z*=(length(l9_1198-l9_1197)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_1199=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_1200=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_1199);
float l9_1201=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_1199);
float l9_1202=((l9_1201*l9_1012)*l9_781)*2.0;
float l9_1203=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_1204=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_1203);
float l9_1205=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_1203);
float l9_1206=((l9_1205*l9_1012)*l9_781)*2.0;
float l9_1207=N111_PI*(l9_1202+l9_1200);
float l9_1208=N111_PI*(l9_1206+l9_1204);
float l9_1209=N111_PI*(l9_1014+l9_1007);
float3 l9_1210=float3(l9_1207,l9_1208,l9_1209);
float l9_1211=cos(l9_1210.x);
float l9_1212=sin(l9_1210.x);
float l9_1213=cos(l9_1210.y);
float l9_1214=sin(l9_1210.y);
float l9_1215=cos(l9_1210.z);
float l9_1216=sin(l9_1210.z);
l9_1061=float3x3(float3(l9_1213*l9_1215,(l9_1211*l9_1216)+((l9_1212*l9_1214)*l9_1215),(l9_1212*l9_1216)-((l9_1211*l9_1214)*l9_1215)),float3((-l9_1213)*l9_1216,(l9_1211*l9_1215)-((l9_1212*l9_1214)*l9_1216),(l9_1212*l9_1215)+((l9_1211*l9_1214)*l9_1216)),float3(l9_1214,(-l9_1212)*l9_1213,l9_1211*l9_1213));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_1217=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1218=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1219=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_1220=float3x3(float3(l9_1217[0].xyz/float3(l9_989.x)),float3(l9_1218[1].xyz/float3(l9_989.y)),float3(l9_1219[2].xyz/float3(l9_989.z)));
l9_1061=l9_1220*l9_1061;
}
N111_position=l9_1061*N111_position;
N111_normal=normalize(l9_1061*N111_normalObjectSpace);
N111_position+=l9_1006;
}
}
N111_timeValues=float4(l9_779,l9_780,l9_781);
param_261=N111_normal;
normal_N111=param_261;
WorldNormal=normal_N111;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_263=v;
float3 param_264=WorldPosition;
float3 param_265=WorldNormal;
float3 param_266=WorldTangent;
float4 param_267=v.position;
out.varPosAndMotion=float4(param_264.x,param_264.y,param_264.z,out.varPosAndMotion.w);
float3 l9_1221=normalize(param_265);
out.varNormalAndMotion=float4(l9_1221.x,l9_1221.y,l9_1221.z,out.varNormalAndMotion.w);
float3 l9_1222=normalize(param_266);
out.varTangent=float4(l9_1222.x,l9_1222.y,l9_1222.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_1223=param_263.position;
float4 l9_1224=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_1225=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1225=0;
}
else
{
l9_1225=gl_InstanceIndex%2;
}
int l9_1226=l9_1225;
l9_1224=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_1226]*l9_1223;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1227=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1227=0;
}
else
{
l9_1227=gl_InstanceIndex%2;
}
int l9_1228=l9_1227;
l9_1224=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_1228]*l9_1223;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1229=0;
}
else
{
l9_1229=gl_InstanceIndex%2;
}
int l9_1230=l9_1229;
l9_1224=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1230]*l9_1223;
}
else
{
l9_1224=l9_1223;
}
}
}
float4 l9_1231=l9_1224;
out.varViewSpaceDepth=-l9_1231.z;
}
float4 l9_1232=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_1232=param_267;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_1233=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1233=0;
}
else
{
l9_1233=gl_InstanceIndex%2;
}
int l9_1234=l9_1233;
l9_1232=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1234]*param_263.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1235=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1235=0;
}
else
{
l9_1235=gl_InstanceIndex%2;
}
int l9_1236=l9_1235;
l9_1232=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1236]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1237=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1237=0;
}
else
{
l9_1237=gl_InstanceIndex%2;
}
int l9_1238=l9_1237;
l9_1232=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1238]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_263.texture0,param_263.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_1239=param_263.position;
float4 l9_1240=l9_1239;
if (sc_RenderingSpace_tmp==1)
{
l9_1240=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_1239;
}
float4 l9_1241=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_1240;
float2 l9_1242=((l9_1241.xy/float2(l9_1241.w))*0.5)+float2(0.5);
out.varShadowTex=l9_1242;
}
float4 l9_1243=l9_1232;
if (sc_DepthBufferMode_tmp==1)
{
int l9_1244=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1244=0;
}
else
{
l9_1244=gl_InstanceIndex%2;
}
int l9_1245=l9_1244;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_1245][2].w!=0.0)
{
float l9_1246=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_1243.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_1243.w))*l9_1246)-1.0)*l9_1243.w;
}
}
float4 l9_1247=l9_1243;
l9_1232=l9_1247;
float4 l9_1248=l9_1232;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_1249=l9_1248.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_1248.w);
l9_1248=float4(l9_1249.x,l9_1249.y,l9_1248.z,l9_1248.w);
}
float4 l9_1250=l9_1248;
l9_1232=l9_1250;
float4 l9_1251=l9_1232;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1251.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1252=l9_1251;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1253=dot(l9_1252,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1254=l9_1253;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1254;
}
}
float4 l9_1255=float4(l9_1251.x,-l9_1251.y,(l9_1251.z*0.5)+(l9_1251.w*0.5),l9_1251.w);
out.gl_Position=l9_1255;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_1257=param_263;
sc_Vertex_t l9_1258=l9_1257;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_1259=l9_1258;
float3 l9_1260=in.blendShape0Pos;
float3 l9_1261=in.blendShape0Normal;
float l9_1262=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_1263=l9_1259;
float3 l9_1264=l9_1260;
float l9_1265=l9_1262;
float3 l9_1266=l9_1263.position.xyz+(l9_1264*l9_1265);
l9_1263.position=float4(l9_1266.x,l9_1266.y,l9_1266.z,l9_1263.position.w);
l9_1259=l9_1263;
l9_1259.normal+=(l9_1261*l9_1262);
l9_1258=l9_1259;
sc_Vertex_t l9_1267=l9_1258;
float3 l9_1268=in.blendShape1Pos;
float3 l9_1269=in.blendShape1Normal;
float l9_1270=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_1271=l9_1267;
float3 l9_1272=l9_1268;
float l9_1273=l9_1270;
float3 l9_1274=l9_1271.position.xyz+(l9_1272*l9_1273);
l9_1271.position=float4(l9_1274.x,l9_1274.y,l9_1274.z,l9_1271.position.w);
l9_1267=l9_1271;
l9_1267.normal+=(l9_1269*l9_1270);
l9_1258=l9_1267;
sc_Vertex_t l9_1275=l9_1258;
float3 l9_1276=in.blendShape2Pos;
float3 l9_1277=in.blendShape2Normal;
float l9_1278=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_1279=l9_1275;
float3 l9_1280=l9_1276;
float l9_1281=l9_1278;
float3 l9_1282=l9_1279.position.xyz+(l9_1280*l9_1281);
l9_1279.position=float4(l9_1282.x,l9_1282.y,l9_1282.z,l9_1279.position.w);
l9_1275=l9_1279;
l9_1275.normal+=(l9_1277*l9_1278);
l9_1258=l9_1275;
}
else
{
sc_Vertex_t l9_1283=l9_1258;
float3 l9_1284=in.blendShape0Pos;
float l9_1285=(*sc_set0.UserUniforms).weights0.x;
float3 l9_1286=l9_1283.position.xyz+(l9_1284*l9_1285);
l9_1283.position=float4(l9_1286.x,l9_1286.y,l9_1286.z,l9_1283.position.w);
l9_1258=l9_1283;
sc_Vertex_t l9_1287=l9_1258;
float3 l9_1288=in.blendShape1Pos;
float l9_1289=(*sc_set0.UserUniforms).weights0.y;
float3 l9_1290=l9_1287.position.xyz+(l9_1288*l9_1289);
l9_1287.position=float4(l9_1290.x,l9_1290.y,l9_1290.z,l9_1287.position.w);
l9_1258=l9_1287;
sc_Vertex_t l9_1291=l9_1258;
float3 l9_1292=in.blendShape2Pos;
float l9_1293=(*sc_set0.UserUniforms).weights0.z;
float3 l9_1294=l9_1291.position.xyz+(l9_1292*l9_1293);
l9_1291.position=float4(l9_1294.x,l9_1294.y,l9_1294.z,l9_1291.position.w);
l9_1258=l9_1291;
sc_Vertex_t l9_1295=l9_1258;
float3 l9_1296=in.blendShape3Pos;
float l9_1297=(*sc_set0.UserUniforms).weights0.w;
float3 l9_1298=l9_1295.position.xyz+(l9_1296*l9_1297);
l9_1295.position=float4(l9_1298.x,l9_1298.y,l9_1298.z,l9_1295.position.w);
l9_1258=l9_1295;
sc_Vertex_t l9_1299=l9_1258;
float3 l9_1300=in.blendShape4Pos;
float l9_1301=(*sc_set0.UserUniforms).weights1.x;
float3 l9_1302=l9_1299.position.xyz+(l9_1300*l9_1301);
l9_1299.position=float4(l9_1302.x,l9_1302.y,l9_1302.z,l9_1299.position.w);
l9_1258=l9_1299;
sc_Vertex_t l9_1303=l9_1258;
float3 l9_1304=in.blendShape5Pos;
float l9_1305=(*sc_set0.UserUniforms).weights1.y;
float3 l9_1306=l9_1303.position.xyz+(l9_1304*l9_1305);
l9_1303.position=float4(l9_1306.x,l9_1306.y,l9_1306.z,l9_1303.position.w);
l9_1258=l9_1303;
}
}
l9_1257=l9_1258;
sc_Vertex_t l9_1307=l9_1257;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_1308=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_1308=float4(1.0,fract(in.boneData.yzw));
l9_1308.x-=dot(l9_1308.yzw,float3(1.0));
}
float4 l9_1309=l9_1308;
float4 l9_1310=l9_1309;
int l9_1311=int(in.boneData.x);
int l9_1312=int(in.boneData.y);
int l9_1313=int(in.boneData.z);
int l9_1314=int(in.boneData.w);
int l9_1315=l9_1311;
float4 l9_1316=l9_1307.position;
float3 l9_1317=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1318=l9_1315;
float4 l9_1319=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1318].boneMatrix[0];
float4 l9_1320=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1318].boneMatrix[1];
float4 l9_1321=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1318].boneMatrix[2];
float4 l9_1322[3];
l9_1322[0]=l9_1319;
l9_1322[1]=l9_1320;
l9_1322[2]=l9_1321;
l9_1317=float3(dot(l9_1316,l9_1322[0]),dot(l9_1316,l9_1322[1]),dot(l9_1316,l9_1322[2]));
}
else
{
l9_1317=l9_1316.xyz;
}
float3 l9_1323=l9_1317;
float3 l9_1324=l9_1323;
float l9_1325=l9_1310.x;
int l9_1326=l9_1312;
float4 l9_1327=l9_1307.position;
float3 l9_1328=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1329=l9_1326;
float4 l9_1330=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1329].boneMatrix[0];
float4 l9_1331=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1329].boneMatrix[1];
float4 l9_1332=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1329].boneMatrix[2];
float4 l9_1333[3];
l9_1333[0]=l9_1330;
l9_1333[1]=l9_1331;
l9_1333[2]=l9_1332;
l9_1328=float3(dot(l9_1327,l9_1333[0]),dot(l9_1327,l9_1333[1]),dot(l9_1327,l9_1333[2]));
}
else
{
l9_1328=l9_1327.xyz;
}
float3 l9_1334=l9_1328;
float3 l9_1335=l9_1334;
float l9_1336=l9_1310.y;
int l9_1337=l9_1313;
float4 l9_1338=l9_1307.position;
float3 l9_1339=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1340=l9_1337;
float4 l9_1341=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1340].boneMatrix[0];
float4 l9_1342=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1340].boneMatrix[1];
float4 l9_1343=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1340].boneMatrix[2];
float4 l9_1344[3];
l9_1344[0]=l9_1341;
l9_1344[1]=l9_1342;
l9_1344[2]=l9_1343;
l9_1339=float3(dot(l9_1338,l9_1344[0]),dot(l9_1338,l9_1344[1]),dot(l9_1338,l9_1344[2]));
}
else
{
l9_1339=l9_1338.xyz;
}
float3 l9_1345=l9_1339;
float3 l9_1346=l9_1345;
float l9_1347=l9_1310.z;
int l9_1348=l9_1314;
float4 l9_1349=l9_1307.position;
float3 l9_1350=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1351=l9_1348;
float4 l9_1352=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1351].boneMatrix[0];
float4 l9_1353=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1351].boneMatrix[1];
float4 l9_1354=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1351].boneMatrix[2];
float4 l9_1355[3];
l9_1355[0]=l9_1352;
l9_1355[1]=l9_1353;
l9_1355[2]=l9_1354;
l9_1350=float3(dot(l9_1349,l9_1355[0]),dot(l9_1349,l9_1355[1]),dot(l9_1349,l9_1355[2]));
}
else
{
l9_1350=l9_1349.xyz;
}
float3 l9_1356=l9_1350;
float3 l9_1357=(((l9_1324*l9_1325)+(l9_1335*l9_1336))+(l9_1346*l9_1347))+(l9_1356*l9_1310.w);
l9_1307.position=float4(l9_1357.x,l9_1357.y,l9_1357.z,l9_1307.position.w);
int l9_1358=l9_1311;
float3x3 l9_1359=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1358].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1358].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1358].normalMatrix[2].xyz));
float3x3 l9_1360=l9_1359;
float3x3 l9_1361=l9_1360;
int l9_1362=l9_1312;
float3x3 l9_1363=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1362].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1362].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1362].normalMatrix[2].xyz));
float3x3 l9_1364=l9_1363;
float3x3 l9_1365=l9_1364;
int l9_1366=l9_1313;
float3x3 l9_1367=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1366].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1366].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1366].normalMatrix[2].xyz));
float3x3 l9_1368=l9_1367;
float3x3 l9_1369=l9_1368;
int l9_1370=l9_1314;
float3x3 l9_1371=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1370].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1370].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1370].normalMatrix[2].xyz));
float3x3 l9_1372=l9_1371;
float3x3 l9_1373=l9_1372;
l9_1307.normal=((((l9_1361*l9_1307.normal)*l9_1310.x)+((l9_1365*l9_1307.normal)*l9_1310.y))+((l9_1369*l9_1307.normal)*l9_1310.z))+((l9_1373*l9_1307.normal)*l9_1310.w);
l9_1307.tangent=((((l9_1361*l9_1307.tangent)*l9_1310.x)+((l9_1365*l9_1307.tangent)*l9_1310.y))+((l9_1369*l9_1307.tangent)*l9_1310.z))+((l9_1373*l9_1307.tangent)*l9_1310.w);
}
l9_1257=l9_1307;
float l9_1374=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_1375=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_1376=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_1377=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_1378=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_1379=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_1380=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_1381=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_1382=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_1383=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_1384=l9_1374/l9_1375;
int l9_1385=gl_InstanceIndex;
int l9_1386=l9_1385;
l9_1257.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_1257.position;
float3 l9_1387=l9_1257.position.xyz;
float3 l9_1388=float3(float(l9_1386%int(l9_1376))*l9_1374,float(l9_1386/int(l9_1376))*l9_1374,(float(l9_1386)*l9_1384)+l9_1381);
float3 l9_1389=l9_1387+l9_1388;
float4 l9_1390=float4(l9_1389-l9_1383,1.0);
float l9_1391=l9_1377;
float l9_1392=l9_1378;
float l9_1393=l9_1379;
float l9_1394=l9_1380;
float l9_1395=l9_1381;
float l9_1396=l9_1382;
float4x4 l9_1397=float4x4(float4(2.0/(l9_1392-l9_1391),0.0,0.0,(-(l9_1392+l9_1391))/(l9_1392-l9_1391)),float4(0.0,2.0/(l9_1394-l9_1393),0.0,(-(l9_1394+l9_1393))/(l9_1394-l9_1393)),float4(0.0,0.0,(-2.0)/(l9_1396-l9_1395),(-(l9_1396+l9_1395))/(l9_1396-l9_1395)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_1398=l9_1397;
float4 l9_1399=l9_1398*l9_1390;
l9_1399.w=1.0;
out.varScreenPos=l9_1399;
float4 l9_1400=l9_1399*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1400.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1401=l9_1400;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1402=dot(l9_1401,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1403=l9_1402;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1403;
}
}
float4 l9_1404=float4(l9_1400.x,-l9_1400.y,(l9_1400.z*0.5)+(l9_1400.w*0.5),l9_1400.w);
out.gl_Position=l9_1404;
param_263=l9_1257;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_1405=param_263;
sc_Vertex_t l9_1406=l9_1405;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_1407=l9_1406;
float3 l9_1408=in.blendShape0Pos;
float3 l9_1409=in.blendShape0Normal;
float l9_1410=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_1411=l9_1407;
float3 l9_1412=l9_1408;
float l9_1413=l9_1410;
float3 l9_1414=l9_1411.position.xyz+(l9_1412*l9_1413);
l9_1411.position=float4(l9_1414.x,l9_1414.y,l9_1414.z,l9_1411.position.w);
l9_1407=l9_1411;
l9_1407.normal+=(l9_1409*l9_1410);
l9_1406=l9_1407;
sc_Vertex_t l9_1415=l9_1406;
float3 l9_1416=in.blendShape1Pos;
float3 l9_1417=in.blendShape1Normal;
float l9_1418=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_1419=l9_1415;
float3 l9_1420=l9_1416;
float l9_1421=l9_1418;
float3 l9_1422=l9_1419.position.xyz+(l9_1420*l9_1421);
l9_1419.position=float4(l9_1422.x,l9_1422.y,l9_1422.z,l9_1419.position.w);
l9_1415=l9_1419;
l9_1415.normal+=(l9_1417*l9_1418);
l9_1406=l9_1415;
sc_Vertex_t l9_1423=l9_1406;
float3 l9_1424=in.blendShape2Pos;
float3 l9_1425=in.blendShape2Normal;
float l9_1426=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_1427=l9_1423;
float3 l9_1428=l9_1424;
float l9_1429=l9_1426;
float3 l9_1430=l9_1427.position.xyz+(l9_1428*l9_1429);
l9_1427.position=float4(l9_1430.x,l9_1430.y,l9_1430.z,l9_1427.position.w);
l9_1423=l9_1427;
l9_1423.normal+=(l9_1425*l9_1426);
l9_1406=l9_1423;
}
else
{
sc_Vertex_t l9_1431=l9_1406;
float3 l9_1432=in.blendShape0Pos;
float l9_1433=(*sc_set0.UserUniforms).weights0.x;
float3 l9_1434=l9_1431.position.xyz+(l9_1432*l9_1433);
l9_1431.position=float4(l9_1434.x,l9_1434.y,l9_1434.z,l9_1431.position.w);
l9_1406=l9_1431;
sc_Vertex_t l9_1435=l9_1406;
float3 l9_1436=in.blendShape1Pos;
float l9_1437=(*sc_set0.UserUniforms).weights0.y;
float3 l9_1438=l9_1435.position.xyz+(l9_1436*l9_1437);
l9_1435.position=float4(l9_1438.x,l9_1438.y,l9_1438.z,l9_1435.position.w);
l9_1406=l9_1435;
sc_Vertex_t l9_1439=l9_1406;
float3 l9_1440=in.blendShape2Pos;
float l9_1441=(*sc_set0.UserUniforms).weights0.z;
float3 l9_1442=l9_1439.position.xyz+(l9_1440*l9_1441);
l9_1439.position=float4(l9_1442.x,l9_1442.y,l9_1442.z,l9_1439.position.w);
l9_1406=l9_1439;
sc_Vertex_t l9_1443=l9_1406;
float3 l9_1444=in.blendShape3Pos;
float l9_1445=(*sc_set0.UserUniforms).weights0.w;
float3 l9_1446=l9_1443.position.xyz+(l9_1444*l9_1445);
l9_1443.position=float4(l9_1446.x,l9_1446.y,l9_1446.z,l9_1443.position.w);
l9_1406=l9_1443;
sc_Vertex_t l9_1447=l9_1406;
float3 l9_1448=in.blendShape4Pos;
float l9_1449=(*sc_set0.UserUniforms).weights1.x;
float3 l9_1450=l9_1447.position.xyz+(l9_1448*l9_1449);
l9_1447.position=float4(l9_1450.x,l9_1450.y,l9_1450.z,l9_1447.position.w);
l9_1406=l9_1447;
sc_Vertex_t l9_1451=l9_1406;
float3 l9_1452=in.blendShape5Pos;
float l9_1453=(*sc_set0.UserUniforms).weights1.y;
float3 l9_1454=l9_1451.position.xyz+(l9_1452*l9_1453);
l9_1451.position=float4(l9_1454.x,l9_1454.y,l9_1454.z,l9_1451.position.w);
l9_1406=l9_1451;
}
}
l9_1405=l9_1406;
sc_Vertex_t l9_1455=l9_1405;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_1456=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_1456=float4(1.0,fract(in.boneData.yzw));
l9_1456.x-=dot(l9_1456.yzw,float3(1.0));
}
float4 l9_1457=l9_1456;
float4 l9_1458=l9_1457;
int l9_1459=int(in.boneData.x);
int l9_1460=int(in.boneData.y);
int l9_1461=int(in.boneData.z);
int l9_1462=int(in.boneData.w);
int l9_1463=l9_1459;
float4 l9_1464=l9_1455.position;
float3 l9_1465=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1466=l9_1463;
float4 l9_1467=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1466].boneMatrix[0];
float4 l9_1468=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1466].boneMatrix[1];
float4 l9_1469=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1466].boneMatrix[2];
float4 l9_1470[3];
l9_1470[0]=l9_1467;
l9_1470[1]=l9_1468;
l9_1470[2]=l9_1469;
l9_1465=float3(dot(l9_1464,l9_1470[0]),dot(l9_1464,l9_1470[1]),dot(l9_1464,l9_1470[2]));
}
else
{
l9_1465=l9_1464.xyz;
}
float3 l9_1471=l9_1465;
float3 l9_1472=l9_1471;
float l9_1473=l9_1458.x;
int l9_1474=l9_1460;
float4 l9_1475=l9_1455.position;
float3 l9_1476=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1477=l9_1474;
float4 l9_1478=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1477].boneMatrix[0];
float4 l9_1479=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1477].boneMatrix[1];
float4 l9_1480=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1477].boneMatrix[2];
float4 l9_1481[3];
l9_1481[0]=l9_1478;
l9_1481[1]=l9_1479;
l9_1481[2]=l9_1480;
l9_1476=float3(dot(l9_1475,l9_1481[0]),dot(l9_1475,l9_1481[1]),dot(l9_1475,l9_1481[2]));
}
else
{
l9_1476=l9_1475.xyz;
}
float3 l9_1482=l9_1476;
float3 l9_1483=l9_1482;
float l9_1484=l9_1458.y;
int l9_1485=l9_1461;
float4 l9_1486=l9_1455.position;
float3 l9_1487=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1488=l9_1485;
float4 l9_1489=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1488].boneMatrix[0];
float4 l9_1490=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1488].boneMatrix[1];
float4 l9_1491=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1488].boneMatrix[2];
float4 l9_1492[3];
l9_1492[0]=l9_1489;
l9_1492[1]=l9_1490;
l9_1492[2]=l9_1491;
l9_1487=float3(dot(l9_1486,l9_1492[0]),dot(l9_1486,l9_1492[1]),dot(l9_1486,l9_1492[2]));
}
else
{
l9_1487=l9_1486.xyz;
}
float3 l9_1493=l9_1487;
float3 l9_1494=l9_1493;
float l9_1495=l9_1458.z;
int l9_1496=l9_1462;
float4 l9_1497=l9_1455.position;
float3 l9_1498=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1499=l9_1496;
float4 l9_1500=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1499].boneMatrix[0];
float4 l9_1501=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1499].boneMatrix[1];
float4 l9_1502=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1499].boneMatrix[2];
float4 l9_1503[3];
l9_1503[0]=l9_1500;
l9_1503[1]=l9_1501;
l9_1503[2]=l9_1502;
l9_1498=float3(dot(l9_1497,l9_1503[0]),dot(l9_1497,l9_1503[1]),dot(l9_1497,l9_1503[2]));
}
else
{
l9_1498=l9_1497.xyz;
}
float3 l9_1504=l9_1498;
float3 l9_1505=(((l9_1472*l9_1473)+(l9_1483*l9_1484))+(l9_1494*l9_1495))+(l9_1504*l9_1458.w);
l9_1455.position=float4(l9_1505.x,l9_1505.y,l9_1505.z,l9_1455.position.w);
int l9_1506=l9_1459;
float3x3 l9_1507=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1506].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1506].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1506].normalMatrix[2].xyz));
float3x3 l9_1508=l9_1507;
float3x3 l9_1509=l9_1508;
int l9_1510=l9_1460;
float3x3 l9_1511=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1510].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1510].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1510].normalMatrix[2].xyz));
float3x3 l9_1512=l9_1511;
float3x3 l9_1513=l9_1512;
int l9_1514=l9_1461;
float3x3 l9_1515=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1514].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1514].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1514].normalMatrix[2].xyz));
float3x3 l9_1516=l9_1515;
float3x3 l9_1517=l9_1516;
int l9_1518=l9_1462;
float3x3 l9_1519=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1518].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1518].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1518].normalMatrix[2].xyz));
float3x3 l9_1520=l9_1519;
float3x3 l9_1521=l9_1520;
l9_1455.normal=((((l9_1509*l9_1455.normal)*l9_1458.x)+((l9_1513*l9_1455.normal)*l9_1458.y))+((l9_1517*l9_1455.normal)*l9_1458.z))+((l9_1521*l9_1455.normal)*l9_1458.w);
l9_1455.tangent=((((l9_1509*l9_1455.tangent)*l9_1458.x)+((l9_1513*l9_1455.tangent)*l9_1458.y))+((l9_1517*l9_1455.tangent)*l9_1458.z))+((l9_1521*l9_1455.tangent)*l9_1458.w);
}
l9_1405=l9_1455;
float3 l9_1522=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_1523=((l9_1405.position.xy/float2(l9_1405.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_1523.x,l9_1523.y,out.varTex01.z,out.varTex01.w);
l9_1405.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_1405.position;
float3 l9_1524=l9_1405.position.xyz-l9_1522;
l9_1405.position=float4(l9_1524.x,l9_1524.y,l9_1524.z,l9_1405.position.w);
out.varPosAndMotion=float4(l9_1405.position.xyz.x,l9_1405.position.xyz.y,l9_1405.position.xyz.z,out.varPosAndMotion.w);
float3 l9_1525=normalize(l9_1405.normal);
out.varNormalAndMotion=float4(l9_1525.x,l9_1525.y,l9_1525.z,out.varNormalAndMotion.w);
float l9_1526=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_1527=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_1528=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_1529=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_1530=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_1531=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_1532=l9_1526;
float l9_1533=l9_1527;
float l9_1534=l9_1528;
float l9_1535=l9_1529;
float l9_1536=l9_1530;
float l9_1537=l9_1531;
float4x4 l9_1538=float4x4(float4(2.0/(l9_1533-l9_1532),0.0,0.0,(-(l9_1533+l9_1532))/(l9_1533-l9_1532)),float4(0.0,2.0/(l9_1535-l9_1534),0.0,(-(l9_1535+l9_1534))/(l9_1535-l9_1534)),float4(0.0,0.0,(-2.0)/(l9_1537-l9_1536),(-(l9_1537+l9_1536))/(l9_1537-l9_1536)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_1539=l9_1538;
float4 l9_1540=float4(0.0);
float3 l9_1541=(l9_1539*l9_1405.position).xyz;
l9_1540=float4(l9_1541.x,l9_1541.y,l9_1541.z,l9_1540.w);
l9_1540.w=1.0;
out.varScreenPos=l9_1540;
float4 l9_1542=l9_1540*1.0;
float4 l9_1543=l9_1542;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1543.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1544=l9_1543;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1545=dot(l9_1544,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1546=l9_1545;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1546;
}
}
float4 l9_1547=float4(l9_1543.x,-l9_1543.y,(l9_1543.z*0.5)+(l9_1543.w*0.5),l9_1543.w);
out.gl_Position=l9_1547;
param_263=l9_1405;
}
}
v=param_263;
out.Interpolator_gInstanceID=Globals.gInstanceID;
ssGlobals param_268=Globals;
float4 l9_1548=float4(0.0);
float l9_1549=0.0;
float l9_1550=(*sc_set0.UserUniforms).timeGlobal;
l9_1549=l9_1550;
float l9_1551=0.0;
float l9_1552=(*sc_set0.UserUniforms).externalTimeInput;
l9_1551=l9_1552;
float l9_1553=0.0;
float l9_1554=(*sc_set0.UserUniforms).externalSeed;
l9_1553=l9_1554;
float l9_1555=0.0;
float l9_1556=(*sc_set0.UserUniforms).lifeTimeConstant;
l9_1555=l9_1556;
float2 l9_1557=float2(0.0);
float2 l9_1558=(*sc_set0.UserUniforms).lifeTimeMinMax;
l9_1557=l9_1558;
float l9_1559=0.0;
float l9_1560=(*sc_set0.UserUniforms).spawnDuration;
l9_1559=l9_1560;
float l9_1561=0.0;
float l9_1562;
if ((int(TRAILS_tmp)!=0))
{
l9_1562=1.001;
}
else
{
l9_1562=0.001;
}
l9_1562-=0.001;
l9_1561=l9_1562;
float l9_1563=0.0;
float l9_1564=(*sc_set0.UserUniforms).trailLength;
l9_1563=l9_1564;
float4 l9_1565=float4(0.0);
l9_1565=param_268.VertexColor;
float l9_1566=0.0;
l9_1566=l9_1565.x;
float l9_1567=0.0;
float l9_1568=l9_1561;
bool l9_1569=(l9_1568*1.0)!=0.0;
bool l9_1570;
if (l9_1569)
{
l9_1570=(l9_1566*1.0)!=0.0;
}
else
{
l9_1570=l9_1569;
}
l9_1567=float(l9_1570);
float3 l9_1571=float3(0.0);
float l9_1572=0.0;
float l9_1573=0.0;
float4 l9_1574=float4(0.0);
float l9_1575=0.0;
float2 l9_1576=float2(0.0);
float l9_1577=l9_1549;
float l9_1578=l9_1551;
float l9_1579=l9_1553;
float l9_1580=l9_1555;
float2 l9_1581=l9_1557;
float l9_1582=l9_1559;
float l9_1583=l9_1563;
float l9_1584=l9_1567;
ssGlobals l9_1585=param_268;
tempGlobals=l9_1585;
float3 l9_1586=float3(0.0);
float l9_1587=0.0;
float l9_1588=0.0;
float4 l9_1589=float4(0.0);
float l9_1590=0.0;
float2 l9_1591=float2(0.0);
N181_timeGlobal=l9_1577;
N181_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N181_externalTime=l9_1578;
N181_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N181_externalSeed=l9_1579;
N181_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N181_lifeTimeConstant=l9_1580;
N181_lifeTimeMinMax=l9_1581;
N181_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N181_spawnDuration=l9_1582;
N181_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N181_trailLength=l9_1583;
N181_isTrailCondition=l9_1584!=0.0;
N181_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
float l9_1592=0.0;
if (N181_ENABLE_WORLDPOSSEED)
{
float4x4 l9_1593=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1592=length(float4(1.0)*l9_1593);
}
N181_globalSeed=N181_externalSeed+l9_1592;
int l9_1594=0;
l9_1594=ssInstanceID;
int l9_1595=l9_1594;
float l9_1596=float(l9_1595);
int l9_1597=int(l9_1596);
int l9_1598=l9_1597^(l9_1597*15299);
int l9_1599=l9_1598;
int l9_1600=l9_1599;
int l9_1601=((l9_1600*((l9_1600*1471343)+101146501))+1559861749)&2147483647;
int l9_1602=l9_1601;
int l9_1603=l9_1599*1399;
int l9_1604=((l9_1603*((l9_1603*1471343)+101146501))+1559861749)&2147483647;
int l9_1605=l9_1604;
int l9_1606=l9_1599*7177;
int l9_1607=((l9_1606*((l9_1606*1471343)+101146501))+1559861749)&2147483647;
int l9_1608=l9_1607;
int l9_1609=l9_1602;
float l9_1610=float(l9_1609)*4.6566129e-10;
int l9_1611=l9_1605;
float l9_1612=float(l9_1611)*4.6566129e-10;
int l9_1613=l9_1608;
float l9_1614=float(l9_1613)*4.6566129e-10;
float3 l9_1615=float3(l9_1610,l9_1612,l9_1614);
float3 l9_1616=l9_1615;
N181_particleSeed=l9_1616;
float l9_1617=fract((N181_particleSeed.y*12.12358)+N181_globalSeed);
float l9_1618=fract((N181_particleSeed.z*3.5358)+N181_globalSeed);
float2 l9_1619;
if (N181_ENABLE_LIFETIMEMINMAX)
{
l9_1619=N181_lifeTimeMinMax;
}
else
{
l9_1619=float2(N181_lifeTimeConstant);
}
float2 l9_1620=l9_1619;
float l9_1621=fast::max(l9_1620.x,0.0099999998);
float l9_1622=fast::max(l9_1620.y,0.0099999998);
float l9_1623=tempGlobals.gTimeElapsed;
float l9_1624=l9_1623;
if (N181_ENABLE_EXTERNALTIME)
{
l9_1624=N181_externalTime;
}
float l9_1625=l9_1624;
if (N181_ENABLE_INSTANTSPAWN)
{
l9_1625=N181_timeGlobal*l9_1624;
}
else
{
float l9_1626=0.0;
if (N181_ENABLE_TRAILS)
{
if (N181_ENABLE_INDEPENDENTTRAIL)
{
l9_1626=N181_trailLength;
}
}
float l9_1627=fract(((l9_1624*N181_timeGlobal)*(1.0/(l9_1620.y+l9_1626)))+l9_1617);
l9_1625=l9_1627*(l9_1620.y+l9_1626);
}
float l9_1628=mix(l9_1625/l9_1621,l9_1625/l9_1622,l9_1618);
float l9_1629=fast::clamp(l9_1628,0.0,1.0);
N181_isTrail=0.0;
N181_trailHeadTime=float2(l9_1625,l9_1629);
if (N181_ENABLE_TRAILS)
{
if (N181_isTrailCondition)
{
N181_isTrail=1.0;
float2 l9_1630=tempGlobals.Surface_UVCoord0;
l9_1625-=(l9_1630.y*N181_trailLength);
l9_1628=mix(l9_1625/l9_1621,l9_1625/l9_1622,l9_1618);
l9_1629=fast::clamp(l9_1628,0.0,1.0);
}
}
float l9_1631=0.0;
if (!N181_ENABLE_INSTANTSPAWN)
{
if (N181_spawnDuration>0.0)
{
if ((l9_1624-N181_spawnDuration)>=l9_1625)
{
l9_1631=1.0;
}
}
}
float l9_1632=l9_1628+l9_1631;
N181_particleAlive=1.0;
if ((l9_1632>0.99989998)||(l9_1625<=0.0))
{
N181_particleAlive=0.0;
}
N181_timeValues=float4(l9_1620,l9_1625,l9_1629);
l9_1586=N181_particleSeed;
l9_1587=N181_globalSeed;
l9_1588=N181_particleAlive;
l9_1589=N181_timeValues;
l9_1590=N181_isTrail;
l9_1591=N181_trailHeadTime;
l9_1571=l9_1586;
l9_1572=l9_1587;
l9_1573=l9_1588;
l9_1574=l9_1589;
l9_1575=l9_1590;
l9_1576=l9_1591;
float2 l9_1633=float2(0.0);
float2 l9_1634=(*sc_set0.UserUniforms).trailTaper;
l9_1633=l9_1634;
float l9_1635=0.0;
float l9_1636=(*sc_set0.UserUniforms).trailWidth;
l9_1635=l9_1636;
float3 l9_1637=float3(0.0);
l9_1637=param_268.SurfacePosition_ObjectSpace;
float3 l9_1638=float3(0.0);
l9_1638=param_268.VertexNormal_ObjectSpace;
float3 l9_1639=float3(0.0);
float3 l9_1640=(*sc_set0.UserUniforms).spawnLocation;
l9_1639=l9_1640;
float3 l9_1641=float3(0.0);
float3 l9_1642=(*sc_set0.UserUniforms).spawnBox;
l9_1641=l9_1642;
float3 l9_1643=float3(0.0);
float3 l9_1644=(*sc_set0.UserUniforms).spawnSphere;
l9_1643=l9_1644;
float3 l9_1645=float3(0.0);
float3 l9_1646=(*sc_set0.UserUniforms).noiseMult;
l9_1645=l9_1646;
float3 l9_1647=float3(0.0);
float3 l9_1648=(*sc_set0.UserUniforms).noiseFrequency;
l9_1647=l9_1648;
float3 l9_1649=float3(0.0);
float3 l9_1650=(*sc_set0.UserUniforms).sNoiseMult;
l9_1649=l9_1650;
float3 l9_1651=float3(0.0);
float3 l9_1652=(*sc_set0.UserUniforms).sNoiseFrequency;
l9_1651=l9_1652;
float3 l9_1653=float3(0.0);
float3 l9_1654=(*sc_set0.UserUniforms).velocityMin;
l9_1653=l9_1654;
float3 l9_1655=float3(0.0);
float3 l9_1656=(*sc_set0.UserUniforms).velocityMax;
l9_1655=l9_1656;
float3 l9_1657=float3(0.0);
float3 l9_1658=(*sc_set0.UserUniforms).velocityDrag;
l9_1657=l9_1658;
float3 l9_1659=float3(0.0);
float3 l9_1660=float3(0.0);
float3 l9_1661=float3(0.0);
float3 l9_1662;
if (MESHTYPE_tmp==0)
{
float2 l9_1663=float2(0.0);
float2 l9_1664=(*sc_set0.UserUniforms).sizeStart;
l9_1663=l9_1664;
l9_1660=float3(l9_1663,0.0);
l9_1662=l9_1660;
}
else
{
float3 l9_1665=float3(0.0);
float3 l9_1666=(*sc_set0.UserUniforms).sizeStart3D;
l9_1665=l9_1666;
l9_1661=l9_1665;
l9_1662=l9_1661;
}
l9_1659=l9_1662;
float3 l9_1667=float3(0.0);
float3 l9_1668=float3(0.0);
float3 l9_1669=float3(0.0);
float3 l9_1670;
if (MESHTYPE_tmp==0)
{
float2 l9_1671=float2(0.0);
float2 l9_1672=(*sc_set0.UserUniforms).sizeEnd;
l9_1671=l9_1672;
l9_1668=float3(l9_1671,0.0);
l9_1670=l9_1668;
}
else
{
float3 l9_1673=float3(0.0);
float3 l9_1674=(*sc_set0.UserUniforms).sizeEnd3D;
l9_1673=l9_1674;
l9_1669=l9_1673;
l9_1670=l9_1669;
}
l9_1667=l9_1670;
float3 l9_1675=float3(0.0);
float3 l9_1676=float3(0.0);
float3 l9_1677=float3(0.0);
float3 l9_1678;
if (MESHTYPE_tmp==0)
{
float2 l9_1679=float2(0.0);
float2 l9_1680=(*sc_set0.UserUniforms).sizeStartMin;
l9_1679=l9_1680;
l9_1676=float3(l9_1679,0.0);
l9_1678=l9_1676;
}
else
{
float3 l9_1681=float3(0.0);
float3 l9_1682=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_1681=l9_1682;
l9_1677=l9_1681;
l9_1678=l9_1677;
}
l9_1675=l9_1678;
float3 l9_1683=float3(0.0);
float3 l9_1684=float3(0.0);
float3 l9_1685=float3(0.0);
float3 l9_1686;
if (MESHTYPE_tmp==0)
{
float2 l9_1687=float2(0.0);
float2 l9_1688=(*sc_set0.UserUniforms).sizeStartMax;
l9_1687=l9_1688;
l9_1684=float3(l9_1687,0.0);
l9_1686=l9_1684;
}
else
{
float3 l9_1689=float3(0.0);
float3 l9_1690=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_1689=l9_1690;
l9_1685=l9_1689;
l9_1686=l9_1685;
}
l9_1683=l9_1686;
float3 l9_1691=float3(0.0);
float3 l9_1692=float3(0.0);
float3 l9_1693=float3(0.0);
float3 l9_1694;
if (MESHTYPE_tmp==0)
{
float2 l9_1695=float2(0.0);
float2 l9_1696=(*sc_set0.UserUniforms).sizeEndMin;
l9_1695=l9_1696;
l9_1692=float3(l9_1695,0.0);
l9_1694=l9_1692;
}
else
{
float3 l9_1697=float3(0.0);
float3 l9_1698=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_1697=l9_1698;
l9_1693=l9_1697;
l9_1694=l9_1693;
}
l9_1691=l9_1694;
float3 l9_1699=float3(0.0);
float3 l9_1700=float3(0.0);
float3 l9_1701=float3(0.0);
float3 l9_1702;
if (MESHTYPE_tmp==0)
{
float2 l9_1703=float2(0.0);
float2 l9_1704=(*sc_set0.UserUniforms).sizeEndMax;
l9_1703=l9_1704;
l9_1700=float3(l9_1703,0.0);
l9_1702=l9_1700;
}
else
{
float3 l9_1705=float3(0.0);
float3 l9_1706=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_1705=l9_1706;
l9_1701=l9_1705;
l9_1702=l9_1701;
}
l9_1699=l9_1702;
float l9_1707=0.0;
float l9_1708=(*sc_set0.UserUniforms).sizeSpeed;
l9_1707=l9_1708;
float l9_1709=0.0;
float l9_1710;
if ((int(ENABLE_SIZERAMPSTARTENDASBOUNDS_tmp)!=0))
{
l9_1710=1.001;
}
else
{
l9_1710=0.001;
}
l9_1710-=0.001;
l9_1709=l9_1710;
float l9_1711=0.0;
float l9_1712=(*sc_set0.UserUniforms).gravity;
l9_1711=l9_1712;
float3 l9_1713=float3(0.0);
float3 l9_1714=(*sc_set0.UserUniforms).localForce;
l9_1713=l9_1714;
float l9_1715=0.0;
float l9_1716=(*sc_set0.UserUniforms).sizeVelScale;
l9_1715=l9_1716;
float l9_1717=0.0;
float l9_1718=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
l9_1717=l9_1718;
float l9_1719=0.0;
float l9_1720=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
l9_1719=l9_1720;
float l9_1721=0.0;
float l9_1722=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
l9_1721=l9_1722;
float2 l9_1723=float2(0.0);
float2 l9_1724=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 l9_1725=float2(0.0);
float2 l9_1726;
if (MESHTYPE_tmp==0)
{
l9_1726=l9_1724;
}
else
{
float2 l9_1727=float2(0.0);
float2 l9_1728=(*sc_set0.UserUniforms).rotationRandomX;
l9_1727=l9_1728;
l9_1725=l9_1727;
l9_1726=l9_1725;
}
l9_1723=l9_1726;
float2 l9_1729=float2(0.0);
float2 l9_1730=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 l9_1731=float2(0.0);
float2 l9_1732;
if (MESHTYPE_tmp==0)
{
l9_1732=l9_1730;
}
else
{
float2 l9_1733=float2(0.0);
float2 l9_1734=(*sc_set0.UserUniforms).rotationRateX;
l9_1733=l9_1734;
l9_1731=l9_1733;
l9_1732=l9_1731;
}
l9_1729=l9_1732;
float2 l9_1735=float2(0.0);
float2 l9_1736=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 l9_1737=float2(0.0);
float2 l9_1738;
if (MESHTYPE_tmp==0)
{
l9_1738=l9_1736;
}
else
{
float2 l9_1739=float2(0.0);
float2 l9_1740=(*sc_set0.UserUniforms).randomRotationY;
l9_1739=l9_1740;
l9_1737=l9_1739;
l9_1738=l9_1737;
}
l9_1735=l9_1738;
float2 l9_1741=float2(0.0);
float2 l9_1742=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 l9_1743=float2(0.0);
float2 l9_1744;
if (MESHTYPE_tmp==0)
{
l9_1744=l9_1742;
}
else
{
float2 l9_1745=float2(0.0);
float2 l9_1746=(*sc_set0.UserUniforms).rotationRateY;
l9_1745=l9_1746;
l9_1743=l9_1745;
l9_1744=l9_1743;
}
l9_1741=l9_1744;
float2 l9_1747=float2(0.0);
float2 l9_1748=float2(1.0);
float2 l9_1749=float2(0.0);
float2 l9_1750;
if (MESHTYPE_tmp==0)
{
float2 l9_1751=float2(0.0);
float2 l9_1752=(*sc_set0.UserUniforms).rotationRandom;
l9_1751=l9_1752;
l9_1748=l9_1751;
l9_1750=l9_1748;
}
else
{
float2 l9_1753=float2(0.0);
float2 l9_1754=(*sc_set0.UserUniforms).randomRotationZ;
l9_1753=l9_1754;
l9_1749=l9_1753;
l9_1750=l9_1749;
}
l9_1747=l9_1750;
float2 l9_1755=float2(0.0);
float2 l9_1756=float2(1.0);
float2 l9_1757=float2(0.0);
float2 l9_1758;
if (MESHTYPE_tmp==0)
{
float2 l9_1759=float2(0.0);
float2 l9_1760=(*sc_set0.UserUniforms).rotationRate;
l9_1759=l9_1760;
l9_1756=l9_1759;
l9_1758=l9_1756;
}
else
{
float2 l9_1761=float2(0.0);
float2 l9_1762=(*sc_set0.UserUniforms).rotationRateZ;
l9_1761=l9_1762;
l9_1757=l9_1761;
l9_1758=l9_1757;
}
l9_1755=l9_1758;
float l9_1763=0.0;
float l9_1764=(*sc_set0.UserUniforms).rotationDrag;
l9_1763=l9_1764;
float l9_1765=0.0;
float l9_1766=(*sc_set0.UserUniforms).Port_Input1_N110;
float l9_1767=0.0;
float l9_1768;
if (MESHTYPE_tmp==0)
{
l9_1768=l9_1766;
}
else
{
float l9_1769=0.0;
float l9_1770=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_1769=l9_1770;
l9_1767=l9_1769;
l9_1768=l9_1767;
}
l9_1765=l9_1768;
float l9_1771=0.0;
float l9_1772=(*sc_set0.UserUniforms).fadeDistanceVisible;
l9_1771=l9_1772;
float l9_1773=0.0;
float l9_1774=(*sc_set0.UserUniforms).fadeDistanceInvisible;
l9_1773=l9_1774;
float4 l9_1775=float4(0.0);
float3 l9_1776=l9_1571;
float l9_1777=l9_1572;
float l9_1778=l9_1573;
float4 l9_1779=l9_1574;
float l9_1780=l9_1575;
float2 l9_1781=l9_1576;
float2 l9_1782=l9_1633;
float l9_1783=l9_1635;
float3 l9_1784=l9_1637;
float3 l9_1785=l9_1638;
float3 l9_1786=l9_1639;
float3 l9_1787=l9_1641;
float3 l9_1788=l9_1643;
float3 l9_1789=l9_1645;
float3 l9_1790=l9_1647;
float3 l9_1791=l9_1649;
float3 l9_1792=l9_1651;
float3 l9_1793=l9_1653;
float3 l9_1794=l9_1655;
float3 l9_1795=l9_1657;
float3 l9_1796=l9_1659;
float3 l9_1797=l9_1667;
float3 l9_1798=l9_1675;
float3 l9_1799=l9_1683;
float3 l9_1800=l9_1691;
float3 l9_1801=l9_1699;
float l9_1802=l9_1707;
float l9_1803=l9_1709;
float l9_1804=l9_1711;
float3 l9_1805=l9_1713;
float l9_1806=l9_1715;
float l9_1807=l9_1717;
float l9_1808=l9_1719;
float l9_1809=l9_1721;
float2 l9_1810=l9_1723;
float2 l9_1811=l9_1729;
float2 l9_1812=l9_1735;
float2 l9_1813=l9_1741;
float2 l9_1814=l9_1747;
float2 l9_1815=l9_1755;
float l9_1816=l9_1763;
float l9_1817=l9_1765;
float l9_1818=l9_1771;
float l9_1819=l9_1773;
ssGlobals l9_1820=param_268;
tempGlobals=l9_1820;
float4 l9_1821=float4(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=l9_1776;
N111_globalSeedIn=l9_1777;
N111_particleAlive=l9_1778;
N111_timeValuesIn=l9_1779;
N111_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N111_isTrail=l9_1780!=0.0;
N111_trailHeadTime=l9_1781;
N111_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N111_taper=l9_1782;
N111_ENABLE_TRAILSPIN=(int(TRAILTWIST_tmp)!=0);
N111_trailSizeMult=l9_1783;
N111_ENABLE_TRAILSIZERAMP=(int(TRAILSIZERAMP_tmp)!=0);
N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS=(int(TRAILSIZERAMPSTARTENDASBOUNDS_tmp)!=0);
N111_positionObjectSpace=l9_1784;
N111_normalObjectSpace=l9_1785;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=l9_1786;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=l9_1787;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=l9_1788;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=l9_1789;
N111_noiseFrequency=l9_1790;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=l9_1791;
N111_sNoiseFrequency=l9_1792;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=l9_1793;
N111_velocityMax=l9_1794;
N111_velocityDrag=l9_1795;
N111_sizeStart=l9_1796;
N111_sizeEnd=l9_1797;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=l9_1798;
N111_sizeStartMax=l9_1799;
N111_sizeEndMin=l9_1800;
N111_sizeEndMax=l9_1801;
N111_sizeSpeed=l9_1802;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_ENABLE_SIZERAMPSTARTENDASBOUNDS=l9_1803!=0.0;
N111_gravity=l9_1804;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=l9_1805;
N111_ENABLE_ALIGNQUADTOCAMERAUP=(int(ALIGNTOCAMERAUP_tmp)!=0);
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=l9_1806;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=l9_1807!=0.0;
N111_ENABLE_ALIGNTOY=l9_1808!=0.0;
N111_ENABLE_ALIGNTOZ=l9_1809!=0.0;
N111_rotationRandomX=l9_1810;
N111_rotationRateX=l9_1811;
N111_rotationRandomY=l9_1812;
N111_rotationRateY=l9_1813;
N111_rotationRandomZ=l9_1814;
N111_rotationRateZ=l9_1815;
N111_rotationDrag=l9_1816;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=l9_1817!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=l9_1818;
N111_fadeDistanceInvisible=l9_1819;
float3 l9_1822=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_1823=N111_particleSeed.x;
float l9_1824=N111_particleSeed.y;
float l9_1825=N111_particleSeed.z;
float3 l9_1826=fract((float3(l9_1823,l9_1824,l9_1825)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_1827=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_1828=normalize(l9_1827+float3(N111_EPSILON));
float l9_1829=fract(N111_particleSeed.x+N111_globalSeed);
float l9_1830=l9_1829;
float l9_1831=0.33333334;
float l9_1832;
if (l9_1830<=0.0)
{
l9_1832=0.0;
}
else
{
l9_1832=pow(l9_1830,l9_1831);
}
float l9_1833=l9_1832;
float l9_1834=l9_1833;
l9_1828*=l9_1834;
l9_1828/=float3(2.0);
float l9_1835=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_1836=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_1837=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_1838=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_1839=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_1840=(float3(l9_1838,l9_1839,l9_1837)-float3(0.5))*2.0;
float3 l9_1841=float3(l9_1838,l9_1839,l9_1837);
float l9_1842=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_1843=N111_timeValuesIn.xy;
float l9_1844=N111_timeValuesIn.z;
float l9_1845=N111_timeValuesIn.w;
N111_cameraFade_trailHeadTime_taper=float4(0.0);
float3 l9_1846=l9_1822;
float3 l9_1847=l9_1822;
float3 l9_1848=l9_1822;
if (N111_ENABLE_INILOCATION)
{
l9_1848=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_1846=N111_spawnBox*l9_1826;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_1847=N111_spawnSphere*l9_1828;
}
float3 l9_1849=(l9_1848+l9_1847)+l9_1846;
float3 l9_1850=l9_1822;
if (N111_ENABLE_NOISE)
{
float3 l9_1851=N111_noiseFrequency;
float3 l9_1852=N111_noiseMult;
float3 l9_1853=l9_1840;
float l9_1854=l9_1845;
float l9_1855=sin(l9_1854*l9_1851.x);
float l9_1856=sin(l9_1854*l9_1851.y);
float l9_1857=sin(l9_1854*l9_1851.z);
float3 l9_1858=(float3(l9_1855,l9_1856,l9_1857)*l9_1852)*l9_1853;
float3 l9_1859=l9_1858;
l9_1850+=l9_1859;
}
if (N111_ENABLE_SNOISE)
{
float l9_1860=l9_1837;
float l9_1861=l9_1838;
float l9_1862=l9_1839;
float3 l9_1863=N111_sNoiseFrequency;
float3 l9_1864=N111_sNoiseMult;
float3 l9_1865=l9_1840;
float l9_1866=l9_1844;
float2 l9_1867=float2(l9_1860*l9_1866,l9_1863.x);
float2 l9_1868=floor(l9_1867+float2(dot(l9_1867,float2(0.36602542))));
float2 l9_1869=(l9_1867-l9_1868)+float2(dot(l9_1868,float2(0.21132487)));
float2 l9_1870=float2(0.0);
bool2 l9_1871=bool2(l9_1869.x>l9_1869.y);
l9_1870=float2(l9_1871.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_1871.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_1872=l9_1869.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_1873=l9_1872.xy-l9_1870;
l9_1872=float4(l9_1873.x,l9_1873.y,l9_1872.z,l9_1872.w);
l9_1868=mod(l9_1868,float2(289.0));
float3 l9_1874=float3(l9_1868.y)+float3(0.0,l9_1870.y,1.0);
float3 l9_1875=mod(((l9_1874*34.0)+float3(1.0))*l9_1874,float3(289.0));
float3 l9_1876=(l9_1875+float3(l9_1868.x))+float3(0.0,l9_1870.x,1.0);
float3 l9_1877=mod(((l9_1876*34.0)+float3(1.0))*l9_1876,float3(289.0));
float3 l9_1878=l9_1877;
float3 l9_1879=fast::max(float3(0.5)-float3(dot(l9_1869,l9_1869),dot(l9_1872.xy,l9_1872.xy),dot(l9_1872.zw,l9_1872.zw)),float3(0.0));
l9_1879*=l9_1879;
l9_1879*=l9_1879;
float3 l9_1880=(fract(l9_1878*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_1881=abs(l9_1880)-float3(0.5);
float3 l9_1882=floor(l9_1880+float3(0.5));
float3 l9_1883=l9_1880-l9_1882;
l9_1879*=(float3(1.7928429)-(((l9_1883*l9_1883)+(l9_1881*l9_1881))*0.85373473));
float3 l9_1884=float3(0.0);
l9_1884.x=(l9_1883.x*l9_1869.x)+(l9_1881.x*l9_1869.y);
float2 l9_1885=(l9_1883.yz*l9_1872.xz)+(l9_1881.yz*l9_1872.yw);
l9_1884=float3(l9_1884.x,l9_1885.x,l9_1885.y);
float l9_1886=130.0*dot(l9_1879,l9_1884);
float l9_1887=l9_1886;
float2 l9_1888=float2(l9_1861*l9_1866,l9_1863.y);
float2 l9_1889=floor(l9_1888+float2(dot(l9_1888,float2(0.36602542))));
float2 l9_1890=(l9_1888-l9_1889)+float2(dot(l9_1889,float2(0.21132487)));
float2 l9_1891=float2(0.0);
bool2 l9_1892=bool2(l9_1890.x>l9_1890.y);
l9_1891=float2(l9_1892.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_1892.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_1893=l9_1890.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_1894=l9_1893.xy-l9_1891;
l9_1893=float4(l9_1894.x,l9_1894.y,l9_1893.z,l9_1893.w);
l9_1889=mod(l9_1889,float2(289.0));
float3 l9_1895=float3(l9_1889.y)+float3(0.0,l9_1891.y,1.0);
float3 l9_1896=mod(((l9_1895*34.0)+float3(1.0))*l9_1895,float3(289.0));
float3 l9_1897=(l9_1896+float3(l9_1889.x))+float3(0.0,l9_1891.x,1.0);
float3 l9_1898=mod(((l9_1897*34.0)+float3(1.0))*l9_1897,float3(289.0));
float3 l9_1899=l9_1898;
float3 l9_1900=fast::max(float3(0.5)-float3(dot(l9_1890,l9_1890),dot(l9_1893.xy,l9_1893.xy),dot(l9_1893.zw,l9_1893.zw)),float3(0.0));
l9_1900*=l9_1900;
l9_1900*=l9_1900;
float3 l9_1901=(fract(l9_1899*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_1902=abs(l9_1901)-float3(0.5);
float3 l9_1903=floor(l9_1901+float3(0.5));
float3 l9_1904=l9_1901-l9_1903;
l9_1900*=(float3(1.7928429)-(((l9_1904*l9_1904)+(l9_1902*l9_1902))*0.85373473));
float3 l9_1905=float3(0.0);
l9_1905.x=(l9_1904.x*l9_1890.x)+(l9_1902.x*l9_1890.y);
float2 l9_1906=(l9_1904.yz*l9_1893.xz)+(l9_1902.yz*l9_1893.yw);
l9_1905=float3(l9_1905.x,l9_1906.x,l9_1906.y);
float l9_1907=130.0*dot(l9_1900,l9_1905);
float l9_1908=l9_1907;
float2 l9_1909=float2(l9_1862*l9_1866,l9_1863.z);
float2 l9_1910=floor(l9_1909+float2(dot(l9_1909,float2(0.36602542))));
float2 l9_1911=(l9_1909-l9_1910)+float2(dot(l9_1910,float2(0.21132487)));
float2 l9_1912=float2(0.0);
bool2 l9_1913=bool2(l9_1911.x>l9_1911.y);
l9_1912=float2(l9_1913.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_1913.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_1914=l9_1911.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_1915=l9_1914.xy-l9_1912;
l9_1914=float4(l9_1915.x,l9_1915.y,l9_1914.z,l9_1914.w);
l9_1910=mod(l9_1910,float2(289.0));
float3 l9_1916=float3(l9_1910.y)+float3(0.0,l9_1912.y,1.0);
float3 l9_1917=mod(((l9_1916*34.0)+float3(1.0))*l9_1916,float3(289.0));
float3 l9_1918=(l9_1917+float3(l9_1910.x))+float3(0.0,l9_1912.x,1.0);
float3 l9_1919=mod(((l9_1918*34.0)+float3(1.0))*l9_1918,float3(289.0));
float3 l9_1920=l9_1919;
float3 l9_1921=fast::max(float3(0.5)-float3(dot(l9_1911,l9_1911),dot(l9_1914.xy,l9_1914.xy),dot(l9_1914.zw,l9_1914.zw)),float3(0.0));
l9_1921*=l9_1921;
l9_1921*=l9_1921;
float3 l9_1922=(fract(l9_1920*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_1923=abs(l9_1922)-float3(0.5);
float3 l9_1924=floor(l9_1922+float3(0.5));
float3 l9_1925=l9_1922-l9_1924;
l9_1921*=(float3(1.7928429)-(((l9_1925*l9_1925)+(l9_1923*l9_1923))*0.85373473));
float3 l9_1926=float3(0.0);
l9_1926.x=(l9_1925.x*l9_1911.x)+(l9_1923.x*l9_1911.y);
float2 l9_1927=(l9_1925.yz*l9_1914.xz)+(l9_1923.yz*l9_1914.yw);
l9_1926=float3(l9_1926.x,l9_1927.x,l9_1927.y);
float l9_1928=130.0*dot(l9_1921,l9_1926);
float l9_1929=l9_1928;
float3 l9_1930=(float3(l9_1887,l9_1908,l9_1929)*l9_1864)*l9_1865;
l9_1850+=l9_1930;
}
float3 l9_1931=float3(0.0,((N111_gravity/2.0)*l9_1844)*l9_1844,0.0);
float3 l9_1932=l9_1822;
if (N111_ENABLE_FORCE)
{
l9_1932=((N111_localForce/float3(2.0))*l9_1844)*l9_1844;
}
float3 l9_1933=l9_1822;
float3 l9_1934=N111_velocityMin+(((l9_1840+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_1934=mix(N111_velocityMin,N111_velocityMax,l9_1841);
}
float3 l9_1935=l9_1934;
float l9_1936=l9_1844;
float3 l9_1937=N111_velocityDrag;
float3 l9_1938=l9_1850;
float l9_1939=l9_1845;
float3 l9_1940=float3(l9_1936,l9_1936,l9_1936);
float3 l9_1941=l9_1937;
float l9_1942;
if (l9_1940.x<=0.0)
{
l9_1942=0.0;
}
else
{
l9_1942=pow(l9_1940.x,l9_1941.x);
}
float l9_1943=l9_1942;
float l9_1944;
if (l9_1940.y<=0.0)
{
l9_1944=0.0;
}
else
{
l9_1944=pow(l9_1940.y,l9_1941.y);
}
float l9_1945=l9_1944;
float l9_1946;
if (l9_1940.z<=0.0)
{
l9_1946=0.0;
}
else
{
l9_1946=pow(l9_1940.z,l9_1941.z);
}
float3 l9_1947=float3(l9_1943,l9_1945,l9_1946);
float3 l9_1948=l9_1947;
float3 l9_1949=(l9_1935+l9_1938)*l9_1948;
if (N111_ENABLE_VELRAMP)
{
float l9_1950=floor(l9_1939*10000.0)/10000.0;
float2 l9_1951=tempGlobals.Surface_UVCoord0;
float2 l9_1952=(l9_1951/float2(10000.0,1.0))+float2(l9_1950,0.0);
float2 l9_1953=l9_1952;
float4 l9_1954=float4(0.0);
int l9_1955;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1956=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1956=0;
}
else
{
l9_1956=gl_InstanceIndex%2;
}
int l9_1957=l9_1956;
l9_1955=1-l9_1957;
}
else
{
int l9_1958=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1958=0;
}
else
{
l9_1958=gl_InstanceIndex%2;
}
int l9_1959=l9_1958;
l9_1955=l9_1959;
}
int l9_1960=l9_1955;
int l9_1961=velRampTextureLayout_tmp;
int l9_1962=l9_1960;
float2 l9_1963=l9_1953;
bool l9_1964=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_1965=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_1966=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_1967=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_1968=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_1969=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_1970=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_1971=0.0;
bool l9_1972=l9_1969&&(!l9_1967);
float l9_1973=1.0;
float l9_1974=l9_1963.x;
int l9_1975=l9_1966.x;
if (l9_1975==1)
{
l9_1974=fract(l9_1974);
}
else
{
if (l9_1975==2)
{
float l9_1976=fract(l9_1974);
float l9_1977=l9_1974-l9_1976;
float l9_1978=step(0.25,fract(l9_1977*0.5));
l9_1974=mix(l9_1976,1.0-l9_1976,fast::clamp(l9_1978,0.0,1.0));
}
}
l9_1963.x=l9_1974;
float l9_1979=l9_1963.y;
int l9_1980=l9_1966.y;
if (l9_1980==1)
{
l9_1979=fract(l9_1979);
}
else
{
if (l9_1980==2)
{
float l9_1981=fract(l9_1979);
float l9_1982=l9_1979-l9_1981;
float l9_1983=step(0.25,fract(l9_1982*0.5));
l9_1979=mix(l9_1981,1.0-l9_1981,fast::clamp(l9_1983,0.0,1.0));
}
}
l9_1963.y=l9_1979;
if (l9_1967)
{
bool l9_1984=l9_1969;
bool l9_1985;
if (l9_1984)
{
l9_1985=l9_1966.x==3;
}
else
{
l9_1985=l9_1984;
}
float l9_1986=l9_1963.x;
float l9_1987=l9_1968.x;
float l9_1988=l9_1968.z;
bool l9_1989=l9_1985;
float l9_1990=l9_1973;
float l9_1991=fast::clamp(l9_1986,l9_1987,l9_1988);
float l9_1992=step(abs(l9_1986-l9_1991),9.9999997e-06);
l9_1990*=(l9_1992+((1.0-float(l9_1989))*(1.0-l9_1992)));
l9_1986=l9_1991;
l9_1963.x=l9_1986;
l9_1973=l9_1990;
bool l9_1993=l9_1969;
bool l9_1994;
if (l9_1993)
{
l9_1994=l9_1966.y==3;
}
else
{
l9_1994=l9_1993;
}
float l9_1995=l9_1963.y;
float l9_1996=l9_1968.y;
float l9_1997=l9_1968.w;
bool l9_1998=l9_1994;
float l9_1999=l9_1973;
float l9_2000=fast::clamp(l9_1995,l9_1996,l9_1997);
float l9_2001=step(abs(l9_1995-l9_2000),9.9999997e-06);
l9_1999*=(l9_2001+((1.0-float(l9_1998))*(1.0-l9_2001)));
l9_1995=l9_2000;
l9_1963.y=l9_1995;
l9_1973=l9_1999;
}
float2 l9_2002=l9_1963;
bool l9_2003=l9_1964;
float3x3 l9_2004=l9_1965;
if (l9_2003)
{
l9_2002=float2((l9_2004*float3(l9_2002,1.0)).xy);
}
float2 l9_2005=l9_2002;
l9_1963=l9_2005;
float l9_2006=l9_1963.x;
int l9_2007=l9_1966.x;
bool l9_2008=l9_1972;
float l9_2009=l9_1973;
if ((l9_2007==0)||(l9_2007==3))
{
float l9_2010=l9_2006;
float l9_2011=0.0;
float l9_2012=1.0;
bool l9_2013=l9_2008;
float l9_2014=l9_2009;
float l9_2015=fast::clamp(l9_2010,l9_2011,l9_2012);
float l9_2016=step(abs(l9_2010-l9_2015),9.9999997e-06);
l9_2014*=(l9_2016+((1.0-float(l9_2013))*(1.0-l9_2016)));
l9_2010=l9_2015;
l9_2006=l9_2010;
l9_2009=l9_2014;
}
l9_1963.x=l9_2006;
l9_1973=l9_2009;
float l9_2017=l9_1963.y;
int l9_2018=l9_1966.y;
bool l9_2019=l9_1972;
float l9_2020=l9_1973;
if ((l9_2018==0)||(l9_2018==3))
{
float l9_2021=l9_2017;
float l9_2022=0.0;
float l9_2023=1.0;
bool l9_2024=l9_2019;
float l9_2025=l9_2020;
float l9_2026=fast::clamp(l9_2021,l9_2022,l9_2023);
float l9_2027=step(abs(l9_2021-l9_2026),9.9999997e-06);
l9_2025*=(l9_2027+((1.0-float(l9_2024))*(1.0-l9_2027)));
l9_2021=l9_2026;
l9_2017=l9_2021;
l9_2020=l9_2025;
}
l9_1963.y=l9_2017;
l9_1973=l9_2020;
float2 l9_2028=l9_1963;
int l9_2029=l9_1961;
int l9_2030=l9_1962;
float l9_2031=l9_1971;
float2 l9_2032=l9_2028;
int l9_2033=l9_2029;
int l9_2034=l9_2030;
float3 l9_2035=float3(0.0);
if (l9_2033==0)
{
l9_2035=float3(l9_2032,0.0);
}
else
{
if (l9_2033==1)
{
l9_2035=float3(l9_2032.x,(l9_2032.y*0.5)+(0.5-(float(l9_2034)*0.5)),0.0);
}
else
{
l9_2035=float3(l9_2032,float(l9_2034));
}
}
float3 l9_2036=l9_2035;
float3 l9_2037=l9_2036;
float4 l9_2038=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2037.xy,level(l9_2031));
float4 l9_2039=l9_2038;
if (l9_1969)
{
l9_2039=mix(l9_1970,l9_2039,float4(l9_1973));
}
float4 l9_2040=l9_2039;
l9_1954=l9_2040;
float4 l9_2041=l9_1954;
float3 l9_2042=l9_2041.xyz;
l9_1949=(l9_1935+l9_1938)*l9_2042;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1949=l9_1935*l9_1948;
}
}
float3 l9_2043=l9_1949;
l9_1933=l9_2043;
if (N111_ENABLE_TRAILS)
{
if (N111_isTrail)
{
float2 l9_2044=tempGlobals.Surface_UVCoord0;
float2 l9_2045=l9_2044;
float l9_2046=mix(1.0,l9_2045.y,1.0-N111_taper.x);
l9_2046*=mix(1.0,1.0-l9_2045.y,1.0-N111_taper.y);
N111_cameraFade_trailHeadTime_taper=float4(N111_cameraFade_trailHeadTime_taper.x,N111_trailHeadTime.x,N111_trailHeadTime.y,N111_cameraFade_trailHeadTime_taper.w);
N111_cameraFade_trailHeadTime_taper.w=l9_2046;
}
}
float4x4 l9_2047=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2048=length(l9_2047[0].xyz);
float4x4 l9_2049=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2050=length(l9_2049[1].xyz);
float4x4 l9_2051=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2052=length(l9_2051[2].xyz);
float3 l9_2053=float3(l9_2048,l9_2050,l9_2052);
float4x4 l9_2054=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2055=l9_2054;
float4 l9_2056=l9_2055[0];
float4 l9_2057=l9_2055[1];
float4 l9_2058=l9_2055[2];
float3x3 l9_2059=float3x3(float3(float3(l9_2056.x,l9_2057.x,l9_2058.x)),float3(float3(l9_2056.y,l9_2057.y,l9_2058.y)),float3(float3(l9_2056.z,l9_2057.z,l9_2058.z)));
float3x3 l9_2060=l9_2059;
float3 l9_2061=((l9_1933+l9_1931)+l9_1932)*l9_2060;
if (N111_WORLDFORCE)
{
float4x4 l9_2062=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2063=l9_2062;
float4 l9_2064=l9_2063[0];
float4 l9_2065=l9_2063[1];
float4 l9_2066=l9_2063[2];
float3x3 l9_2067=float3x3(float3(float3(l9_2064.x,l9_2065.x,l9_2066.x)),float3(float3(l9_2064.y,l9_2065.y,l9_2066.y)),float3(float3(l9_2064.z,l9_2065.z,l9_2066.z)));
float3x3 l9_2068=l9_2067;
l9_2061=((l9_1933*l9_2068)+l9_1931)+l9_1932;
}
if (N111_WORLDSPACE)
{
l9_2061=((l9_1933*l9_2053)+l9_1931)+l9_1932;
}
float4x4 l9_2069=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_2070=(l9_2069*float4(l9_1849,1.0)).xyz+l9_2061;
float l9_2071=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_1842);
float l9_2072=1.0-l9_1845;
float l9_2073=N111_rotationDrag;
float l9_2074;
if (l9_2072<=0.0)
{
l9_2074=0.0;
}
else
{
l9_2074=pow(l9_2072,l9_2073);
}
float l9_2075=l9_2074;
float l9_2076=l9_2075;
float l9_2077=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_1842);
float l9_2078=((l9_2077*l9_2076)*l9_1845)*2.0;
float l9_2079=N111_PI*((l9_2078+l9_2071)-0.5);
float l9_2080=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_2081=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_2082=l9_2081-l9_2070;
float l9_2083=dot(l9_2082,l9_2082);
float l9_2084=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_2085=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_2086=fast::min(l9_2084,l9_2085);
float l9_2087=fast::max(l9_2084,l9_2085);
float l9_2088=smoothstep(l9_2086,l9_2087,l9_2083);
float l9_2089;
if (l9_2084>l9_2085)
{
l9_2089=1.0-l9_2088;
}
else
{
l9_2089=l9_2088;
}
l9_2088=l9_2089;
if (l9_2088<=N111_EPSILON)
{
l9_2080=0.0;
}
N111_cameraFade_trailHeadTime_taper.x=l9_2088;
}
if (N111_MESHTYPE_QUAD||N111_ENABLE_TRAILS)
{
if (N111_MESHTYPE_QUAD||N111_isTrail)
{
int l9_2090=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2090=0;
}
else
{
l9_2090=gl_InstanceIndex%2;
}
int l9_2091=l9_2090;
float4x4 l9_2092=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2091];
float3 l9_2093=normalize(l9_2092[2].xyz);
if (N111_isTrail)
{
l9_2093*=float3(-1.0);
}
float3 l9_2094=float3(0.0,1.0,0.0);
if (N111_ENABLE_ALIGNQUADTOCAMERAUP)
{
int l9_2095=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2095=0;
}
else
{
l9_2095=gl_InstanceIndex%2;
}
int l9_2096=l9_2095;
float3 l9_2097=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2096][1].xyz;
l9_2094=l9_2097;
}
float3 l9_2098=-normalize(cross(l9_2093,l9_2094));
float3 l9_2099=normalize(cross(l9_2098,l9_2093));
float l9_2100=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_2098=float3(0.0,0.0,1.0);
l9_2099=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2098=float3(1.0,0.0,0.0);
l9_2099=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_2098=float3(1.0,0.0,0.0);
l9_2099=float3(0.0,1.0,0.0);
}
float2 l9_2101=float2(cos(l9_2079),sin(l9_2079));
float2 l9_2102=float2(-sin(l9_2079),cos(l9_2079));
float3 l9_2103=float3((l9_2098*l9_2101.x)+(l9_2099*l9_2101.y));
float3 l9_2104=float3((l9_2098*l9_2102.x)+(l9_2099*l9_2102.y));
if (N111_ENABLE_ALIGNTOVEL||N111_ENABLE_TRAILS)
{
if (N111_ENABLE_ALIGNTOVEL||N111_isTrail)
{
float3 l9_2105=normalize(((l9_2061+l9_1931)+l9_1932)+float3(N111_EPSILON));
float3 l9_2106=l9_2061*(l9_1844-0.0099999998);
float3 l9_2107=l9_2061*(l9_1844+0.0099999998);
l9_2103=l9_2105;
l9_2104=normalize(cross(l9_2103,l9_2093));
if (N111_ENABLE_TRAILSPIN)
{
if (N111_isTrail)
{
l9_2104=float3((l9_2103*l9_2101.x)+(l9_2104*l9_2101.y));
}
}
if (!N111_isTrail)
{
if (N111_ENABLE_IGNOREVEL)
{
l9_2100=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_2100=length(l9_2107-l9_2106)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_2108=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2100=(length(l9_2107-l9_2106)/length(l9_2108[0].xyz))*N111_sizeVelScale;
}
}
}
}
}
float4x4 l9_2109=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2110=length(l9_2109[0].xyz);
float2 l9_2111=tempGlobals.Surface_UVCoord0;
float l9_2112=l9_1835;
float l9_2113=l9_1836;
float l9_2114=l9_1845;
float l9_2115=N111_sizeSpeed;
float2 l9_2116=(((l9_2111-float2(0.5))*l9_2080)*N111_pSize(l9_2112,l9_2113,l9_2114,l9_2115,N111_isTrail,N111_ENABLE_TRAILS,N111_trailHeadTime,N111_ENABLE_INDEPENDENTTRAIL,N111_trailSizeMult,N111_ENABLE_TRAILSIZERAMP,N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.trailSizeRampTex,sc_set0.trailSizeRampTexSmpSC,sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals))*l9_2110;
float3 l9_2117=(l9_2070+(l9_2104*l9_2116.x))+(l9_2103*(l9_2116.y*l9_2100));
N111_position=l9_2117;
if ((N111_particleAlive<0.5)||(l9_2080<0.5))
{
N111_position/=float3(0.0);
}
N111_normal=l9_2093;
}
}
if (!N111_MESHTYPE_QUAD)
{
if (!N111_isTrail)
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_2118=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_2119=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_2120=(l9_2118+l9_2119)/float3(2.0);
N111_position-=l9_2120;
}
float l9_2121=l9_1835;
float l9_2122=l9_1836;
float l9_2123=l9_1845;
float l9_2124=N111_sizeSpeed;
N111_position=(N111_position*l9_2053)*N111_pSize3D(l9_2121,l9_2122,l9_2123,l9_2124,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals);
if ((N111_particleAlive<0.5)||(l9_2080<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_2125;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_2125=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_2126=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_2126=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2126=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_2127=0.001;
float3 l9_2128=l9_1934;
float l9_2129=l9_1844-l9_2127;
float3 l9_2130=N111_velocityDrag;
float3 l9_2131=l9_1850;
float l9_2132=l9_1845-l9_2127;
float3 l9_2133=float3(l9_2129,l9_2129,l9_2129);
float3 l9_2134=l9_2130;
float l9_2135;
if (l9_2133.x<=0.0)
{
l9_2135=0.0;
}
else
{
l9_2135=pow(l9_2133.x,l9_2134.x);
}
float l9_2136=l9_2135;
float l9_2137;
if (l9_2133.y<=0.0)
{
l9_2137=0.0;
}
else
{
l9_2137=pow(l9_2133.y,l9_2134.y);
}
float l9_2138=l9_2137;
float l9_2139;
if (l9_2133.z<=0.0)
{
l9_2139=0.0;
}
else
{
l9_2139=pow(l9_2133.z,l9_2134.z);
}
float3 l9_2140=float3(l9_2136,l9_2138,l9_2139);
float3 l9_2141=l9_2140;
float3 l9_2142=(l9_2128+l9_2131)*l9_2141;
if (N111_ENABLE_VELRAMP)
{
float l9_2143=floor(l9_2132*10000.0)/10000.0;
float2 l9_2144=tempGlobals.Surface_UVCoord0;
float2 l9_2145=(l9_2144/float2(10000.0,1.0))+float2(l9_2143,0.0);
float2 l9_2146=l9_2145;
float4 l9_2147=float4(0.0);
int l9_2148;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2149=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2149=0;
}
else
{
l9_2149=gl_InstanceIndex%2;
}
int l9_2150=l9_2149;
l9_2148=1-l9_2150;
}
else
{
int l9_2151=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2151=0;
}
else
{
l9_2151=gl_InstanceIndex%2;
}
int l9_2152=l9_2151;
l9_2148=l9_2152;
}
int l9_2153=l9_2148;
int l9_2154=velRampTextureLayout_tmp;
int l9_2155=l9_2153;
float2 l9_2156=l9_2146;
bool l9_2157=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_2158=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_2159=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_2160=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_2161=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_2162=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_2163=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_2164=0.0;
bool l9_2165=l9_2162&&(!l9_2160);
float l9_2166=1.0;
float l9_2167=l9_2156.x;
int l9_2168=l9_2159.x;
if (l9_2168==1)
{
l9_2167=fract(l9_2167);
}
else
{
if (l9_2168==2)
{
float l9_2169=fract(l9_2167);
float l9_2170=l9_2167-l9_2169;
float l9_2171=step(0.25,fract(l9_2170*0.5));
l9_2167=mix(l9_2169,1.0-l9_2169,fast::clamp(l9_2171,0.0,1.0));
}
}
l9_2156.x=l9_2167;
float l9_2172=l9_2156.y;
int l9_2173=l9_2159.y;
if (l9_2173==1)
{
l9_2172=fract(l9_2172);
}
else
{
if (l9_2173==2)
{
float l9_2174=fract(l9_2172);
float l9_2175=l9_2172-l9_2174;
float l9_2176=step(0.25,fract(l9_2175*0.5));
l9_2172=mix(l9_2174,1.0-l9_2174,fast::clamp(l9_2176,0.0,1.0));
}
}
l9_2156.y=l9_2172;
if (l9_2160)
{
bool l9_2177=l9_2162;
bool l9_2178;
if (l9_2177)
{
l9_2178=l9_2159.x==3;
}
else
{
l9_2178=l9_2177;
}
float l9_2179=l9_2156.x;
float l9_2180=l9_2161.x;
float l9_2181=l9_2161.z;
bool l9_2182=l9_2178;
float l9_2183=l9_2166;
float l9_2184=fast::clamp(l9_2179,l9_2180,l9_2181);
float l9_2185=step(abs(l9_2179-l9_2184),9.9999997e-06);
l9_2183*=(l9_2185+((1.0-float(l9_2182))*(1.0-l9_2185)));
l9_2179=l9_2184;
l9_2156.x=l9_2179;
l9_2166=l9_2183;
bool l9_2186=l9_2162;
bool l9_2187;
if (l9_2186)
{
l9_2187=l9_2159.y==3;
}
else
{
l9_2187=l9_2186;
}
float l9_2188=l9_2156.y;
float l9_2189=l9_2161.y;
float l9_2190=l9_2161.w;
bool l9_2191=l9_2187;
float l9_2192=l9_2166;
float l9_2193=fast::clamp(l9_2188,l9_2189,l9_2190);
float l9_2194=step(abs(l9_2188-l9_2193),9.9999997e-06);
l9_2192*=(l9_2194+((1.0-float(l9_2191))*(1.0-l9_2194)));
l9_2188=l9_2193;
l9_2156.y=l9_2188;
l9_2166=l9_2192;
}
float2 l9_2195=l9_2156;
bool l9_2196=l9_2157;
float3x3 l9_2197=l9_2158;
if (l9_2196)
{
l9_2195=float2((l9_2197*float3(l9_2195,1.0)).xy);
}
float2 l9_2198=l9_2195;
l9_2156=l9_2198;
float l9_2199=l9_2156.x;
int l9_2200=l9_2159.x;
bool l9_2201=l9_2165;
float l9_2202=l9_2166;
if ((l9_2200==0)||(l9_2200==3))
{
float l9_2203=l9_2199;
float l9_2204=0.0;
float l9_2205=1.0;
bool l9_2206=l9_2201;
float l9_2207=l9_2202;
float l9_2208=fast::clamp(l9_2203,l9_2204,l9_2205);
float l9_2209=step(abs(l9_2203-l9_2208),9.9999997e-06);
l9_2207*=(l9_2209+((1.0-float(l9_2206))*(1.0-l9_2209)));
l9_2203=l9_2208;
l9_2199=l9_2203;
l9_2202=l9_2207;
}
l9_2156.x=l9_2199;
l9_2166=l9_2202;
float l9_2210=l9_2156.y;
int l9_2211=l9_2159.y;
bool l9_2212=l9_2165;
float l9_2213=l9_2166;
if ((l9_2211==0)||(l9_2211==3))
{
float l9_2214=l9_2210;
float l9_2215=0.0;
float l9_2216=1.0;
bool l9_2217=l9_2212;
float l9_2218=l9_2213;
float l9_2219=fast::clamp(l9_2214,l9_2215,l9_2216);
float l9_2220=step(abs(l9_2214-l9_2219),9.9999997e-06);
l9_2218*=(l9_2220+((1.0-float(l9_2217))*(1.0-l9_2220)));
l9_2214=l9_2219;
l9_2210=l9_2214;
l9_2213=l9_2218;
}
l9_2156.y=l9_2210;
l9_2166=l9_2213;
float2 l9_2221=l9_2156;
int l9_2222=l9_2154;
int l9_2223=l9_2155;
float l9_2224=l9_2164;
float2 l9_2225=l9_2221;
int l9_2226=l9_2222;
int l9_2227=l9_2223;
float3 l9_2228=float3(0.0);
if (l9_2226==0)
{
l9_2228=float3(l9_2225,0.0);
}
else
{
if (l9_2226==1)
{
l9_2228=float3(l9_2225.x,(l9_2225.y*0.5)+(0.5-(float(l9_2227)*0.5)),0.0);
}
else
{
l9_2228=float3(l9_2225,float(l9_2227));
}
}
float3 l9_2229=l9_2228;
float3 l9_2230=l9_2229;
float4 l9_2231=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2230.xy,level(l9_2224));
float4 l9_2232=l9_2231;
if (l9_2162)
{
l9_2232=mix(l9_2163,l9_2232,float4(l9_2166));
}
float4 l9_2233=l9_2232;
l9_2147=l9_2233;
float4 l9_2234=l9_2147;
float3 l9_2235=l9_2234.xyz;
l9_2142=(l9_2128+l9_2131)*l9_2235;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2142=l9_2128*l9_2141;
}
}
float3 l9_2236=l9_2142;
float3 l9_2237=l9_2236;
float l9_2238=((N111_gravity/2.0)*(l9_1844-l9_2127))*(l9_1844-l9_2127);
l9_1931.y-=l9_2238;
if (N111_ENABLE_FORCE)
{
float3 l9_2239=float3(((N111_localForce/float3(2.0))*(l9_1844-l9_2127))*(l9_1844-l9_2127));
l9_1932-=l9_2239;
}
if (N111_WORLDFORCE)
{
float4x4 l9_2240=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2241=l9_2240;
float4 l9_2242=l9_2241[0];
float4 l9_2243=l9_2241[1];
float4 l9_2244=l9_2241[2];
float3x3 l9_2245=float3x3(float3(float3(l9_2242.x,l9_2243.x,l9_2244.x)),float3(float3(l9_2242.y,l9_2243.y,l9_2244.y)),float3(float3(l9_2242.z,l9_2243.z,l9_2244.z)));
float3x3 l9_2246=l9_2245;
l9_2126=(((l9_1933-l9_2237)*l9_2246)+l9_1931)+l9_1932;
}
else
{
if (N111_WORLDSPACE)
{
l9_2126=((l9_1933-l9_2237)+l9_1931)+l9_1932;
}
else
{
float4x4 l9_2247=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2248=l9_2247;
float4 l9_2249=l9_2248[0];
float4 l9_2250=l9_2248[1];
float4 l9_2251=l9_2248[2];
float3x3 l9_2252=float3x3(float3(float3(l9_2249.x,l9_2250.x,l9_2251.x)),float3(float3(l9_2249.y,l9_2250.y,l9_2251.y)),float3(float3(l9_2249.z,l9_2250.z,l9_2251.z)));
float3x3 l9_2253=l9_2252;
l9_2126=(((l9_1933-l9_2237)+l9_1932)+l9_1931)*l9_2253;
}
}
l9_2126=normalize(l9_2126+float3(N111_EPSILON));
}
float3 l9_2254=float3(0.0,0.0,1.0);
float3 l9_2255=cross(l9_2126,l9_2254);
float3 l9_2256=normalize(l9_2255);
float l9_2257=length(l9_2255);
float l9_2258=dot(l9_2254,l9_2126);
float l9_2259=1.0-l9_2258;
l9_2125=float3x3(float3(((l9_2259*l9_2256.x)*l9_2256.x)+l9_2258,((l9_2259*l9_2256.x)*l9_2256.y)-(l9_2256.z*l9_2257),((l9_2259*l9_2256.z)*l9_2256.x)+(l9_2256.y*l9_2257)),float3(((l9_2259*l9_2256.x)*l9_2256.y)+(l9_2256.z*l9_2257),((l9_2259*l9_2256.y)*l9_2256.y)+l9_2258,((l9_2259*l9_2256.y)*l9_2256.z)-(l9_2256.x*l9_2257)),float3(((l9_2259*l9_2256.z)*l9_2256.x)-(l9_2256.y*l9_2257),((l9_2259*l9_2256.y)*l9_2256.z)+(l9_2256.x*l9_2257),((l9_2259*l9_2256.z)*l9_2256.z)+l9_2258));
}
float3x3 l9_2260=float3x3(float3(cos(l9_2079),-sin(l9_2079),0.0),float3(sin(l9_2079),cos(l9_2079),0.0),float3(0.0,0.0,1.0));
l9_2125=l9_2125*l9_2260;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_2261=l9_2061*(l9_1844-0.0099999998);
float3 l9_2262=l9_2061*(l9_1844+0.0099999998);
N111_position.z*=(length(l9_2262-l9_2261)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_2263=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_2264=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_2263);
float l9_2265=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_2263);
float l9_2266=((l9_2265*l9_2076)*l9_1845)*2.0;
float l9_2267=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_2268=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_2267);
float l9_2269=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_2267);
float l9_2270=((l9_2269*l9_2076)*l9_1845)*2.0;
float l9_2271=N111_PI*(l9_2266+l9_2264);
float l9_2272=N111_PI*(l9_2270+l9_2268);
float l9_2273=N111_PI*(l9_2078+l9_2071);
float3 l9_2274=float3(l9_2271,l9_2272,l9_2273);
float l9_2275=cos(l9_2274.x);
float l9_2276=sin(l9_2274.x);
float l9_2277=cos(l9_2274.y);
float l9_2278=sin(l9_2274.y);
float l9_2279=cos(l9_2274.z);
float l9_2280=sin(l9_2274.z);
l9_2125=float3x3(float3(l9_2277*l9_2279,(l9_2275*l9_2280)+((l9_2276*l9_2278)*l9_2279),(l9_2276*l9_2280)-((l9_2275*l9_2278)*l9_2279)),float3((-l9_2277)*l9_2280,(l9_2275*l9_2279)-((l9_2276*l9_2278)*l9_2280),(l9_2276*l9_2279)+((l9_2275*l9_2278)*l9_2280)),float3(l9_2278,(-l9_2276)*l9_2277,l9_2275*l9_2277));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_2281=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2282=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2283=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_2284=float3x3(float3(l9_2281[0].xyz/float3(l9_2053.x)),float3(l9_2282[1].xyz/float3(l9_2053.y)),float3(l9_2283[2].xyz/float3(l9_2053.z)));
l9_2125=l9_2284*l9_2125;
}
N111_position=l9_2125*N111_position;
N111_normal=normalize(l9_2125*N111_normalObjectSpace);
N111_position+=l9_2070;
}
}
N111_timeValues=float4(l9_1843,l9_1844,l9_1845);
l9_1821=N111_timeValues;
l9_1775=l9_1821;
l9_1548=l9_1775;
out.Interpolator0.x=l9_1548.x;
out.Interpolator0.y=l9_1548.y;
out.Interpolator0.z=l9_1548.z;
out.Interpolator0.w=l9_1548.w;
ssGlobals param_269=Globals;
float4 l9_2285=float4(0.0);
float l9_2286=0.0;
float l9_2287=(*sc_set0.UserUniforms).timeGlobal;
l9_2286=l9_2287;
float l9_2288=0.0;
float l9_2289=(*sc_set0.UserUniforms).externalTimeInput;
l9_2288=l9_2289;
float l9_2290=0.0;
float l9_2291=(*sc_set0.UserUniforms).externalSeed;
l9_2290=l9_2291;
float l9_2292=0.0;
float l9_2293=(*sc_set0.UserUniforms).lifeTimeConstant;
l9_2292=l9_2293;
float2 l9_2294=float2(0.0);
float2 l9_2295=(*sc_set0.UserUniforms).lifeTimeMinMax;
l9_2294=l9_2295;
float l9_2296=0.0;
float l9_2297=(*sc_set0.UserUniforms).spawnDuration;
l9_2296=l9_2297;
float l9_2298=0.0;
float l9_2299;
if ((int(TRAILS_tmp)!=0))
{
l9_2299=1.001;
}
else
{
l9_2299=0.001;
}
l9_2299-=0.001;
l9_2298=l9_2299;
float l9_2300=0.0;
float l9_2301=(*sc_set0.UserUniforms).trailLength;
l9_2300=l9_2301;
float4 l9_2302=float4(0.0);
l9_2302=param_269.VertexColor;
float l9_2303=0.0;
l9_2303=l9_2302.x;
float l9_2304=0.0;
float l9_2305=l9_2298;
bool l9_2306=(l9_2305*1.0)!=0.0;
bool l9_2307;
if (l9_2306)
{
l9_2307=(l9_2303*1.0)!=0.0;
}
else
{
l9_2307=l9_2306;
}
l9_2304=float(l9_2307);
float3 l9_2308=float3(0.0);
float l9_2309=0.0;
float l9_2310=0.0;
float4 l9_2311=float4(0.0);
float l9_2312=0.0;
float2 l9_2313=float2(0.0);
float l9_2314=l9_2286;
float l9_2315=l9_2288;
float l9_2316=l9_2290;
float l9_2317=l9_2292;
float2 l9_2318=l9_2294;
float l9_2319=l9_2296;
float l9_2320=l9_2300;
float l9_2321=l9_2304;
ssGlobals l9_2322=param_269;
tempGlobals=l9_2322;
float3 l9_2323=float3(0.0);
float l9_2324=0.0;
float l9_2325=0.0;
float4 l9_2326=float4(0.0);
float l9_2327=0.0;
float2 l9_2328=float2(0.0);
N181_timeGlobal=l9_2314;
N181_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N181_externalTime=l9_2315;
N181_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N181_externalSeed=l9_2316;
N181_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N181_lifeTimeConstant=l9_2317;
N181_lifeTimeMinMax=l9_2318;
N181_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N181_spawnDuration=l9_2319;
N181_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N181_trailLength=l9_2320;
N181_isTrailCondition=l9_2321!=0.0;
N181_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
float l9_2329=0.0;
if (N181_ENABLE_WORLDPOSSEED)
{
float4x4 l9_2330=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2329=length(float4(1.0)*l9_2330);
}
N181_globalSeed=N181_externalSeed+l9_2329;
int l9_2331=0;
l9_2331=ssInstanceID;
int l9_2332=l9_2331;
float l9_2333=float(l9_2332);
int l9_2334=int(l9_2333);
int l9_2335=l9_2334^(l9_2334*15299);
int l9_2336=l9_2335;
int l9_2337=l9_2336;
int l9_2338=((l9_2337*((l9_2337*1471343)+101146501))+1559861749)&2147483647;
int l9_2339=l9_2338;
int l9_2340=l9_2336*1399;
int l9_2341=((l9_2340*((l9_2340*1471343)+101146501))+1559861749)&2147483647;
int l9_2342=l9_2341;
int l9_2343=l9_2336*7177;
int l9_2344=((l9_2343*((l9_2343*1471343)+101146501))+1559861749)&2147483647;
int l9_2345=l9_2344;
int l9_2346=l9_2339;
float l9_2347=float(l9_2346)*4.6566129e-10;
int l9_2348=l9_2342;
float l9_2349=float(l9_2348)*4.6566129e-10;
int l9_2350=l9_2345;
float l9_2351=float(l9_2350)*4.6566129e-10;
float3 l9_2352=float3(l9_2347,l9_2349,l9_2351);
float3 l9_2353=l9_2352;
N181_particleSeed=l9_2353;
float l9_2354=fract((N181_particleSeed.y*12.12358)+N181_globalSeed);
float l9_2355=fract((N181_particleSeed.z*3.5358)+N181_globalSeed);
float2 l9_2356;
if (N181_ENABLE_LIFETIMEMINMAX)
{
l9_2356=N181_lifeTimeMinMax;
}
else
{
l9_2356=float2(N181_lifeTimeConstant);
}
float2 l9_2357=l9_2356;
float l9_2358=fast::max(l9_2357.x,0.0099999998);
float l9_2359=fast::max(l9_2357.y,0.0099999998);
float l9_2360=tempGlobals.gTimeElapsed;
float l9_2361=l9_2360;
if (N181_ENABLE_EXTERNALTIME)
{
l9_2361=N181_externalTime;
}
float l9_2362=l9_2361;
if (N181_ENABLE_INSTANTSPAWN)
{
l9_2362=N181_timeGlobal*l9_2361;
}
else
{
float l9_2363=0.0;
if (N181_ENABLE_TRAILS)
{
if (N181_ENABLE_INDEPENDENTTRAIL)
{
l9_2363=N181_trailLength;
}
}
float l9_2364=fract(((l9_2361*N181_timeGlobal)*(1.0/(l9_2357.y+l9_2363)))+l9_2354);
l9_2362=l9_2364*(l9_2357.y+l9_2363);
}
float l9_2365=mix(l9_2362/l9_2358,l9_2362/l9_2359,l9_2355);
float l9_2366=fast::clamp(l9_2365,0.0,1.0);
N181_isTrail=0.0;
N181_trailHeadTime=float2(l9_2362,l9_2366);
if (N181_ENABLE_TRAILS)
{
if (N181_isTrailCondition)
{
N181_isTrail=1.0;
float2 l9_2367=tempGlobals.Surface_UVCoord0;
l9_2362-=(l9_2367.y*N181_trailLength);
l9_2365=mix(l9_2362/l9_2358,l9_2362/l9_2359,l9_2355);
l9_2366=fast::clamp(l9_2365,0.0,1.0);
}
}
float l9_2368=0.0;
if (!N181_ENABLE_INSTANTSPAWN)
{
if (N181_spawnDuration>0.0)
{
if ((l9_2361-N181_spawnDuration)>=l9_2362)
{
l9_2368=1.0;
}
}
}
float l9_2369=l9_2365+l9_2368;
N181_particleAlive=1.0;
if ((l9_2369>0.99989998)||(l9_2362<=0.0))
{
N181_particleAlive=0.0;
}
N181_timeValues=float4(l9_2357,l9_2362,l9_2366);
l9_2323=N181_particleSeed;
l9_2324=N181_globalSeed;
l9_2325=N181_particleAlive;
l9_2326=N181_timeValues;
l9_2327=N181_isTrail;
l9_2328=N181_trailHeadTime;
l9_2308=l9_2323;
l9_2309=l9_2324;
l9_2310=l9_2325;
l9_2311=l9_2326;
l9_2312=l9_2327;
l9_2313=l9_2328;
float2 l9_2370=float2(0.0);
float2 l9_2371=(*sc_set0.UserUniforms).trailTaper;
l9_2370=l9_2371;
float l9_2372=0.0;
float l9_2373=(*sc_set0.UserUniforms).trailWidth;
l9_2372=l9_2373;
float3 l9_2374=float3(0.0);
l9_2374=param_269.SurfacePosition_ObjectSpace;
float3 l9_2375=float3(0.0);
l9_2375=param_269.VertexNormal_ObjectSpace;
float3 l9_2376=float3(0.0);
float3 l9_2377=(*sc_set0.UserUniforms).spawnLocation;
l9_2376=l9_2377;
float3 l9_2378=float3(0.0);
float3 l9_2379=(*sc_set0.UserUniforms).spawnBox;
l9_2378=l9_2379;
float3 l9_2380=float3(0.0);
float3 l9_2381=(*sc_set0.UserUniforms).spawnSphere;
l9_2380=l9_2381;
float3 l9_2382=float3(0.0);
float3 l9_2383=(*sc_set0.UserUniforms).noiseMult;
l9_2382=l9_2383;
float3 l9_2384=float3(0.0);
float3 l9_2385=(*sc_set0.UserUniforms).noiseFrequency;
l9_2384=l9_2385;
float3 l9_2386=float3(0.0);
float3 l9_2387=(*sc_set0.UserUniforms).sNoiseMult;
l9_2386=l9_2387;
float3 l9_2388=float3(0.0);
float3 l9_2389=(*sc_set0.UserUniforms).sNoiseFrequency;
l9_2388=l9_2389;
float3 l9_2390=float3(0.0);
float3 l9_2391=(*sc_set0.UserUniforms).velocityMin;
l9_2390=l9_2391;
float3 l9_2392=float3(0.0);
float3 l9_2393=(*sc_set0.UserUniforms).velocityMax;
l9_2392=l9_2393;
float3 l9_2394=float3(0.0);
float3 l9_2395=(*sc_set0.UserUniforms).velocityDrag;
l9_2394=l9_2395;
float3 l9_2396=float3(0.0);
float3 l9_2397=float3(0.0);
float3 l9_2398=float3(0.0);
float3 l9_2399;
if (MESHTYPE_tmp==0)
{
float2 l9_2400=float2(0.0);
float2 l9_2401=(*sc_set0.UserUniforms).sizeStart;
l9_2400=l9_2401;
l9_2397=float3(l9_2400,0.0);
l9_2399=l9_2397;
}
else
{
float3 l9_2402=float3(0.0);
float3 l9_2403=(*sc_set0.UserUniforms).sizeStart3D;
l9_2402=l9_2403;
l9_2398=l9_2402;
l9_2399=l9_2398;
}
l9_2396=l9_2399;
float3 l9_2404=float3(0.0);
float3 l9_2405=float3(0.0);
float3 l9_2406=float3(0.0);
float3 l9_2407;
if (MESHTYPE_tmp==0)
{
float2 l9_2408=float2(0.0);
float2 l9_2409=(*sc_set0.UserUniforms).sizeEnd;
l9_2408=l9_2409;
l9_2405=float3(l9_2408,0.0);
l9_2407=l9_2405;
}
else
{
float3 l9_2410=float3(0.0);
float3 l9_2411=(*sc_set0.UserUniforms).sizeEnd3D;
l9_2410=l9_2411;
l9_2406=l9_2410;
l9_2407=l9_2406;
}
l9_2404=l9_2407;
float3 l9_2412=float3(0.0);
float3 l9_2413=float3(0.0);
float3 l9_2414=float3(0.0);
float3 l9_2415;
if (MESHTYPE_tmp==0)
{
float2 l9_2416=float2(0.0);
float2 l9_2417=(*sc_set0.UserUniforms).sizeStartMin;
l9_2416=l9_2417;
l9_2413=float3(l9_2416,0.0);
l9_2415=l9_2413;
}
else
{
float3 l9_2418=float3(0.0);
float3 l9_2419=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_2418=l9_2419;
l9_2414=l9_2418;
l9_2415=l9_2414;
}
l9_2412=l9_2415;
float3 l9_2420=float3(0.0);
float3 l9_2421=float3(0.0);
float3 l9_2422=float3(0.0);
float3 l9_2423;
if (MESHTYPE_tmp==0)
{
float2 l9_2424=float2(0.0);
float2 l9_2425=(*sc_set0.UserUniforms).sizeStartMax;
l9_2424=l9_2425;
l9_2421=float3(l9_2424,0.0);
l9_2423=l9_2421;
}
else
{
float3 l9_2426=float3(0.0);
float3 l9_2427=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_2426=l9_2427;
l9_2422=l9_2426;
l9_2423=l9_2422;
}
l9_2420=l9_2423;
float3 l9_2428=float3(0.0);
float3 l9_2429=float3(0.0);
float3 l9_2430=float3(0.0);
float3 l9_2431;
if (MESHTYPE_tmp==0)
{
float2 l9_2432=float2(0.0);
float2 l9_2433=(*sc_set0.UserUniforms).sizeEndMin;
l9_2432=l9_2433;
l9_2429=float3(l9_2432,0.0);
l9_2431=l9_2429;
}
else
{
float3 l9_2434=float3(0.0);
float3 l9_2435=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_2434=l9_2435;
l9_2430=l9_2434;
l9_2431=l9_2430;
}
l9_2428=l9_2431;
float3 l9_2436=float3(0.0);
float3 l9_2437=float3(0.0);
float3 l9_2438=float3(0.0);
float3 l9_2439;
if (MESHTYPE_tmp==0)
{
float2 l9_2440=float2(0.0);
float2 l9_2441=(*sc_set0.UserUniforms).sizeEndMax;
l9_2440=l9_2441;
l9_2437=float3(l9_2440,0.0);
l9_2439=l9_2437;
}
else
{
float3 l9_2442=float3(0.0);
float3 l9_2443=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_2442=l9_2443;
l9_2438=l9_2442;
l9_2439=l9_2438;
}
l9_2436=l9_2439;
float l9_2444=0.0;
float l9_2445=(*sc_set0.UserUniforms).sizeSpeed;
l9_2444=l9_2445;
float l9_2446=0.0;
float l9_2447;
if ((int(ENABLE_SIZERAMPSTARTENDASBOUNDS_tmp)!=0))
{
l9_2447=1.001;
}
else
{
l9_2447=0.001;
}
l9_2447-=0.001;
l9_2446=l9_2447;
float l9_2448=0.0;
float l9_2449=(*sc_set0.UserUniforms).gravity;
l9_2448=l9_2449;
float3 l9_2450=float3(0.0);
float3 l9_2451=(*sc_set0.UserUniforms).localForce;
l9_2450=l9_2451;
float l9_2452=0.0;
float l9_2453=(*sc_set0.UserUniforms).sizeVelScale;
l9_2452=l9_2453;
float l9_2454=0.0;
float l9_2455=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
l9_2454=l9_2455;
float l9_2456=0.0;
float l9_2457=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
l9_2456=l9_2457;
float l9_2458=0.0;
float l9_2459=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
l9_2458=l9_2459;
float2 l9_2460=float2(0.0);
float2 l9_2461=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 l9_2462=float2(0.0);
float2 l9_2463;
if (MESHTYPE_tmp==0)
{
l9_2463=l9_2461;
}
else
{
float2 l9_2464=float2(0.0);
float2 l9_2465=(*sc_set0.UserUniforms).rotationRandomX;
l9_2464=l9_2465;
l9_2462=l9_2464;
l9_2463=l9_2462;
}
l9_2460=l9_2463;
float2 l9_2466=float2(0.0);
float2 l9_2467=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 l9_2468=float2(0.0);
float2 l9_2469;
if (MESHTYPE_tmp==0)
{
l9_2469=l9_2467;
}
else
{
float2 l9_2470=float2(0.0);
float2 l9_2471=(*sc_set0.UserUniforms).rotationRateX;
l9_2470=l9_2471;
l9_2468=l9_2470;
l9_2469=l9_2468;
}
l9_2466=l9_2469;
float2 l9_2472=float2(0.0);
float2 l9_2473=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 l9_2474=float2(0.0);
float2 l9_2475;
if (MESHTYPE_tmp==0)
{
l9_2475=l9_2473;
}
else
{
float2 l9_2476=float2(0.0);
float2 l9_2477=(*sc_set0.UserUniforms).randomRotationY;
l9_2476=l9_2477;
l9_2474=l9_2476;
l9_2475=l9_2474;
}
l9_2472=l9_2475;
float2 l9_2478=float2(0.0);
float2 l9_2479=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 l9_2480=float2(0.0);
float2 l9_2481;
if (MESHTYPE_tmp==0)
{
l9_2481=l9_2479;
}
else
{
float2 l9_2482=float2(0.0);
float2 l9_2483=(*sc_set0.UserUniforms).rotationRateY;
l9_2482=l9_2483;
l9_2480=l9_2482;
l9_2481=l9_2480;
}
l9_2478=l9_2481;
float2 l9_2484=float2(0.0);
float2 l9_2485=float2(1.0);
float2 l9_2486=float2(0.0);
float2 l9_2487;
if (MESHTYPE_tmp==0)
{
float2 l9_2488=float2(0.0);
float2 l9_2489=(*sc_set0.UserUniforms).rotationRandom;
l9_2488=l9_2489;
l9_2485=l9_2488;
l9_2487=l9_2485;
}
else
{
float2 l9_2490=float2(0.0);
float2 l9_2491=(*sc_set0.UserUniforms).randomRotationZ;
l9_2490=l9_2491;
l9_2486=l9_2490;
l9_2487=l9_2486;
}
l9_2484=l9_2487;
float2 l9_2492=float2(0.0);
float2 l9_2493=float2(1.0);
float2 l9_2494=float2(0.0);
float2 l9_2495;
if (MESHTYPE_tmp==0)
{
float2 l9_2496=float2(0.0);
float2 l9_2497=(*sc_set0.UserUniforms).rotationRate;
l9_2496=l9_2497;
l9_2493=l9_2496;
l9_2495=l9_2493;
}
else
{
float2 l9_2498=float2(0.0);
float2 l9_2499=(*sc_set0.UserUniforms).rotationRateZ;
l9_2498=l9_2499;
l9_2494=l9_2498;
l9_2495=l9_2494;
}
l9_2492=l9_2495;
float l9_2500=0.0;
float l9_2501=(*sc_set0.UserUniforms).rotationDrag;
l9_2500=l9_2501;
float l9_2502=0.0;
float l9_2503=(*sc_set0.UserUniforms).Port_Input1_N110;
float l9_2504=0.0;
float l9_2505;
if (MESHTYPE_tmp==0)
{
l9_2505=l9_2503;
}
else
{
float l9_2506=0.0;
float l9_2507=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_2506=l9_2507;
l9_2504=l9_2506;
l9_2505=l9_2504;
}
l9_2502=l9_2505;
float l9_2508=0.0;
float l9_2509=(*sc_set0.UserUniforms).fadeDistanceVisible;
l9_2508=l9_2509;
float l9_2510=0.0;
float l9_2511=(*sc_set0.UserUniforms).fadeDistanceInvisible;
l9_2510=l9_2511;
float4 l9_2512=float4(0.0);
float3 l9_2513=l9_2308;
float l9_2514=l9_2309;
float l9_2515=l9_2310;
float4 l9_2516=l9_2311;
float l9_2517=l9_2312;
float2 l9_2518=l9_2313;
float2 l9_2519=l9_2370;
float l9_2520=l9_2372;
float3 l9_2521=l9_2374;
float3 l9_2522=l9_2375;
float3 l9_2523=l9_2376;
float3 l9_2524=l9_2378;
float3 l9_2525=l9_2380;
float3 l9_2526=l9_2382;
float3 l9_2527=l9_2384;
float3 l9_2528=l9_2386;
float3 l9_2529=l9_2388;
float3 l9_2530=l9_2390;
float3 l9_2531=l9_2392;
float3 l9_2532=l9_2394;
float3 l9_2533=l9_2396;
float3 l9_2534=l9_2404;
float3 l9_2535=l9_2412;
float3 l9_2536=l9_2420;
float3 l9_2537=l9_2428;
float3 l9_2538=l9_2436;
float l9_2539=l9_2444;
float l9_2540=l9_2446;
float l9_2541=l9_2448;
float3 l9_2542=l9_2450;
float l9_2543=l9_2452;
float l9_2544=l9_2454;
float l9_2545=l9_2456;
float l9_2546=l9_2458;
float2 l9_2547=l9_2460;
float2 l9_2548=l9_2466;
float2 l9_2549=l9_2472;
float2 l9_2550=l9_2478;
float2 l9_2551=l9_2484;
float2 l9_2552=l9_2492;
float l9_2553=l9_2500;
float l9_2554=l9_2502;
float l9_2555=l9_2508;
float l9_2556=l9_2510;
ssGlobals l9_2557=param_269;
tempGlobals=l9_2557;
float4 l9_2558=float4(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=l9_2513;
N111_globalSeedIn=l9_2514;
N111_particleAlive=l9_2515;
N111_timeValuesIn=l9_2516;
N111_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N111_isTrail=l9_2517!=0.0;
N111_trailHeadTime=l9_2518;
N111_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N111_taper=l9_2519;
N111_ENABLE_TRAILSPIN=(int(TRAILTWIST_tmp)!=0);
N111_trailSizeMult=l9_2520;
N111_ENABLE_TRAILSIZERAMP=(int(TRAILSIZERAMP_tmp)!=0);
N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS=(int(TRAILSIZERAMPSTARTENDASBOUNDS_tmp)!=0);
N111_positionObjectSpace=l9_2521;
N111_normalObjectSpace=l9_2522;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=l9_2523;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=l9_2524;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=l9_2525;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=l9_2526;
N111_noiseFrequency=l9_2527;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=l9_2528;
N111_sNoiseFrequency=l9_2529;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=l9_2530;
N111_velocityMax=l9_2531;
N111_velocityDrag=l9_2532;
N111_sizeStart=l9_2533;
N111_sizeEnd=l9_2534;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=l9_2535;
N111_sizeStartMax=l9_2536;
N111_sizeEndMin=l9_2537;
N111_sizeEndMax=l9_2538;
N111_sizeSpeed=l9_2539;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_ENABLE_SIZERAMPSTARTENDASBOUNDS=l9_2540!=0.0;
N111_gravity=l9_2541;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=l9_2542;
N111_ENABLE_ALIGNQUADTOCAMERAUP=(int(ALIGNTOCAMERAUP_tmp)!=0);
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=l9_2543;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=l9_2544!=0.0;
N111_ENABLE_ALIGNTOY=l9_2545!=0.0;
N111_ENABLE_ALIGNTOZ=l9_2546!=0.0;
N111_rotationRandomX=l9_2547;
N111_rotationRateX=l9_2548;
N111_rotationRandomY=l9_2549;
N111_rotationRateY=l9_2550;
N111_rotationRandomZ=l9_2551;
N111_rotationRateZ=l9_2552;
N111_rotationDrag=l9_2553;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=l9_2554!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=l9_2555;
N111_fadeDistanceInvisible=l9_2556;
float3 l9_2559=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_2560=N111_particleSeed.x;
float l9_2561=N111_particleSeed.y;
float l9_2562=N111_particleSeed.z;
float3 l9_2563=fract((float3(l9_2560,l9_2561,l9_2562)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_2564=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_2565=normalize(l9_2564+float3(N111_EPSILON));
float l9_2566=fract(N111_particleSeed.x+N111_globalSeed);
float l9_2567=l9_2566;
float l9_2568=0.33333334;
float l9_2569;
if (l9_2567<=0.0)
{
l9_2569=0.0;
}
else
{
l9_2569=pow(l9_2567,l9_2568);
}
float l9_2570=l9_2569;
float l9_2571=l9_2570;
l9_2565*=l9_2571;
l9_2565/=float3(2.0);
float l9_2572=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_2573=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_2574=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_2575=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_2576=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_2577=(float3(l9_2575,l9_2576,l9_2574)-float3(0.5))*2.0;
float3 l9_2578=float3(l9_2575,l9_2576,l9_2574);
float l9_2579=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_2580=N111_timeValuesIn.xy;
float l9_2581=N111_timeValuesIn.z;
float l9_2582=N111_timeValuesIn.w;
N111_cameraFade_trailHeadTime_taper=float4(0.0);
float3 l9_2583=l9_2559;
float3 l9_2584=l9_2559;
float3 l9_2585=l9_2559;
if (N111_ENABLE_INILOCATION)
{
l9_2585=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_2583=N111_spawnBox*l9_2563;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_2584=N111_spawnSphere*l9_2565;
}
float3 l9_2586=(l9_2585+l9_2584)+l9_2583;
float3 l9_2587=l9_2559;
if (N111_ENABLE_NOISE)
{
float3 l9_2588=N111_noiseFrequency;
float3 l9_2589=N111_noiseMult;
float3 l9_2590=l9_2577;
float l9_2591=l9_2582;
float l9_2592=sin(l9_2591*l9_2588.x);
float l9_2593=sin(l9_2591*l9_2588.y);
float l9_2594=sin(l9_2591*l9_2588.z);
float3 l9_2595=(float3(l9_2592,l9_2593,l9_2594)*l9_2589)*l9_2590;
float3 l9_2596=l9_2595;
l9_2587+=l9_2596;
}
if (N111_ENABLE_SNOISE)
{
float l9_2597=l9_2574;
float l9_2598=l9_2575;
float l9_2599=l9_2576;
float3 l9_2600=N111_sNoiseFrequency;
float3 l9_2601=N111_sNoiseMult;
float3 l9_2602=l9_2577;
float l9_2603=l9_2581;
float2 l9_2604=float2(l9_2597*l9_2603,l9_2600.x);
float2 l9_2605=floor(l9_2604+float2(dot(l9_2604,float2(0.36602542))));
float2 l9_2606=(l9_2604-l9_2605)+float2(dot(l9_2605,float2(0.21132487)));
float2 l9_2607=float2(0.0);
bool2 l9_2608=bool2(l9_2606.x>l9_2606.y);
l9_2607=float2(l9_2608.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2608.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2609=l9_2606.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2610=l9_2609.xy-l9_2607;
l9_2609=float4(l9_2610.x,l9_2610.y,l9_2609.z,l9_2609.w);
l9_2605=mod(l9_2605,float2(289.0));
float3 l9_2611=float3(l9_2605.y)+float3(0.0,l9_2607.y,1.0);
float3 l9_2612=mod(((l9_2611*34.0)+float3(1.0))*l9_2611,float3(289.0));
float3 l9_2613=(l9_2612+float3(l9_2605.x))+float3(0.0,l9_2607.x,1.0);
float3 l9_2614=mod(((l9_2613*34.0)+float3(1.0))*l9_2613,float3(289.0));
float3 l9_2615=l9_2614;
float3 l9_2616=fast::max(float3(0.5)-float3(dot(l9_2606,l9_2606),dot(l9_2609.xy,l9_2609.xy),dot(l9_2609.zw,l9_2609.zw)),float3(0.0));
l9_2616*=l9_2616;
l9_2616*=l9_2616;
float3 l9_2617=(fract(l9_2615*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2618=abs(l9_2617)-float3(0.5);
float3 l9_2619=floor(l9_2617+float3(0.5));
float3 l9_2620=l9_2617-l9_2619;
l9_2616*=(float3(1.7928429)-(((l9_2620*l9_2620)+(l9_2618*l9_2618))*0.85373473));
float3 l9_2621=float3(0.0);
l9_2621.x=(l9_2620.x*l9_2606.x)+(l9_2618.x*l9_2606.y);
float2 l9_2622=(l9_2620.yz*l9_2609.xz)+(l9_2618.yz*l9_2609.yw);
l9_2621=float3(l9_2621.x,l9_2622.x,l9_2622.y);
float l9_2623=130.0*dot(l9_2616,l9_2621);
float l9_2624=l9_2623;
float2 l9_2625=float2(l9_2598*l9_2603,l9_2600.y);
float2 l9_2626=floor(l9_2625+float2(dot(l9_2625,float2(0.36602542))));
float2 l9_2627=(l9_2625-l9_2626)+float2(dot(l9_2626,float2(0.21132487)));
float2 l9_2628=float2(0.0);
bool2 l9_2629=bool2(l9_2627.x>l9_2627.y);
l9_2628=float2(l9_2629.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2629.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2630=l9_2627.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2631=l9_2630.xy-l9_2628;
l9_2630=float4(l9_2631.x,l9_2631.y,l9_2630.z,l9_2630.w);
l9_2626=mod(l9_2626,float2(289.0));
float3 l9_2632=float3(l9_2626.y)+float3(0.0,l9_2628.y,1.0);
float3 l9_2633=mod(((l9_2632*34.0)+float3(1.0))*l9_2632,float3(289.0));
float3 l9_2634=(l9_2633+float3(l9_2626.x))+float3(0.0,l9_2628.x,1.0);
float3 l9_2635=mod(((l9_2634*34.0)+float3(1.0))*l9_2634,float3(289.0));
float3 l9_2636=l9_2635;
float3 l9_2637=fast::max(float3(0.5)-float3(dot(l9_2627,l9_2627),dot(l9_2630.xy,l9_2630.xy),dot(l9_2630.zw,l9_2630.zw)),float3(0.0));
l9_2637*=l9_2637;
l9_2637*=l9_2637;
float3 l9_2638=(fract(l9_2636*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2639=abs(l9_2638)-float3(0.5);
float3 l9_2640=floor(l9_2638+float3(0.5));
float3 l9_2641=l9_2638-l9_2640;
l9_2637*=(float3(1.7928429)-(((l9_2641*l9_2641)+(l9_2639*l9_2639))*0.85373473));
float3 l9_2642=float3(0.0);
l9_2642.x=(l9_2641.x*l9_2627.x)+(l9_2639.x*l9_2627.y);
float2 l9_2643=(l9_2641.yz*l9_2630.xz)+(l9_2639.yz*l9_2630.yw);
l9_2642=float3(l9_2642.x,l9_2643.x,l9_2643.y);
float l9_2644=130.0*dot(l9_2637,l9_2642);
float l9_2645=l9_2644;
float2 l9_2646=float2(l9_2599*l9_2603,l9_2600.z);
float2 l9_2647=floor(l9_2646+float2(dot(l9_2646,float2(0.36602542))));
float2 l9_2648=(l9_2646-l9_2647)+float2(dot(l9_2647,float2(0.21132487)));
float2 l9_2649=float2(0.0);
bool2 l9_2650=bool2(l9_2648.x>l9_2648.y);
l9_2649=float2(l9_2650.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2650.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2651=l9_2648.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2652=l9_2651.xy-l9_2649;
l9_2651=float4(l9_2652.x,l9_2652.y,l9_2651.z,l9_2651.w);
l9_2647=mod(l9_2647,float2(289.0));
float3 l9_2653=float3(l9_2647.y)+float3(0.0,l9_2649.y,1.0);
float3 l9_2654=mod(((l9_2653*34.0)+float3(1.0))*l9_2653,float3(289.0));
float3 l9_2655=(l9_2654+float3(l9_2647.x))+float3(0.0,l9_2649.x,1.0);
float3 l9_2656=mod(((l9_2655*34.0)+float3(1.0))*l9_2655,float3(289.0));
float3 l9_2657=l9_2656;
float3 l9_2658=fast::max(float3(0.5)-float3(dot(l9_2648,l9_2648),dot(l9_2651.xy,l9_2651.xy),dot(l9_2651.zw,l9_2651.zw)),float3(0.0));
l9_2658*=l9_2658;
l9_2658*=l9_2658;
float3 l9_2659=(fract(l9_2657*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2660=abs(l9_2659)-float3(0.5);
float3 l9_2661=floor(l9_2659+float3(0.5));
float3 l9_2662=l9_2659-l9_2661;
l9_2658*=(float3(1.7928429)-(((l9_2662*l9_2662)+(l9_2660*l9_2660))*0.85373473));
float3 l9_2663=float3(0.0);
l9_2663.x=(l9_2662.x*l9_2648.x)+(l9_2660.x*l9_2648.y);
float2 l9_2664=(l9_2662.yz*l9_2651.xz)+(l9_2660.yz*l9_2651.yw);
l9_2663=float3(l9_2663.x,l9_2664.x,l9_2664.y);
float l9_2665=130.0*dot(l9_2658,l9_2663);
float l9_2666=l9_2665;
float3 l9_2667=(float3(l9_2624,l9_2645,l9_2666)*l9_2601)*l9_2602;
l9_2587+=l9_2667;
}
float3 l9_2668=float3(0.0,((N111_gravity/2.0)*l9_2581)*l9_2581,0.0);
float3 l9_2669=l9_2559;
if (N111_ENABLE_FORCE)
{
l9_2669=((N111_localForce/float3(2.0))*l9_2581)*l9_2581;
}
float3 l9_2670=l9_2559;
float3 l9_2671=N111_velocityMin+(((l9_2577+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_2671=mix(N111_velocityMin,N111_velocityMax,l9_2578);
}
float3 l9_2672=l9_2671;
float l9_2673=l9_2581;
float3 l9_2674=N111_velocityDrag;
float3 l9_2675=l9_2587;
float l9_2676=l9_2582;
float3 l9_2677=float3(l9_2673,l9_2673,l9_2673);
float3 l9_2678=l9_2674;
float l9_2679;
if (l9_2677.x<=0.0)
{
l9_2679=0.0;
}
else
{
l9_2679=pow(l9_2677.x,l9_2678.x);
}
float l9_2680=l9_2679;
float l9_2681;
if (l9_2677.y<=0.0)
{
l9_2681=0.0;
}
else
{
l9_2681=pow(l9_2677.y,l9_2678.y);
}
float l9_2682=l9_2681;
float l9_2683;
if (l9_2677.z<=0.0)
{
l9_2683=0.0;
}
else
{
l9_2683=pow(l9_2677.z,l9_2678.z);
}
float3 l9_2684=float3(l9_2680,l9_2682,l9_2683);
float3 l9_2685=l9_2684;
float3 l9_2686=(l9_2672+l9_2675)*l9_2685;
if (N111_ENABLE_VELRAMP)
{
float l9_2687=floor(l9_2676*10000.0)/10000.0;
float2 l9_2688=tempGlobals.Surface_UVCoord0;
float2 l9_2689=(l9_2688/float2(10000.0,1.0))+float2(l9_2687,0.0);
float2 l9_2690=l9_2689;
float4 l9_2691=float4(0.0);
int l9_2692;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2693=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2693=0;
}
else
{
l9_2693=gl_InstanceIndex%2;
}
int l9_2694=l9_2693;
l9_2692=1-l9_2694;
}
else
{
int l9_2695=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2695=0;
}
else
{
l9_2695=gl_InstanceIndex%2;
}
int l9_2696=l9_2695;
l9_2692=l9_2696;
}
int l9_2697=l9_2692;
int l9_2698=velRampTextureLayout_tmp;
int l9_2699=l9_2697;
float2 l9_2700=l9_2690;
bool l9_2701=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_2702=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_2703=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_2704=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_2705=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_2706=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_2707=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_2708=0.0;
bool l9_2709=l9_2706&&(!l9_2704);
float l9_2710=1.0;
float l9_2711=l9_2700.x;
int l9_2712=l9_2703.x;
if (l9_2712==1)
{
l9_2711=fract(l9_2711);
}
else
{
if (l9_2712==2)
{
float l9_2713=fract(l9_2711);
float l9_2714=l9_2711-l9_2713;
float l9_2715=step(0.25,fract(l9_2714*0.5));
l9_2711=mix(l9_2713,1.0-l9_2713,fast::clamp(l9_2715,0.0,1.0));
}
}
l9_2700.x=l9_2711;
float l9_2716=l9_2700.y;
int l9_2717=l9_2703.y;
if (l9_2717==1)
{
l9_2716=fract(l9_2716);
}
else
{
if (l9_2717==2)
{
float l9_2718=fract(l9_2716);
float l9_2719=l9_2716-l9_2718;
float l9_2720=step(0.25,fract(l9_2719*0.5));
l9_2716=mix(l9_2718,1.0-l9_2718,fast::clamp(l9_2720,0.0,1.0));
}
}
l9_2700.y=l9_2716;
if (l9_2704)
{
bool l9_2721=l9_2706;
bool l9_2722;
if (l9_2721)
{
l9_2722=l9_2703.x==3;
}
else
{
l9_2722=l9_2721;
}
float l9_2723=l9_2700.x;
float l9_2724=l9_2705.x;
float l9_2725=l9_2705.z;
bool l9_2726=l9_2722;
float l9_2727=l9_2710;
float l9_2728=fast::clamp(l9_2723,l9_2724,l9_2725);
float l9_2729=step(abs(l9_2723-l9_2728),9.9999997e-06);
l9_2727*=(l9_2729+((1.0-float(l9_2726))*(1.0-l9_2729)));
l9_2723=l9_2728;
l9_2700.x=l9_2723;
l9_2710=l9_2727;
bool l9_2730=l9_2706;
bool l9_2731;
if (l9_2730)
{
l9_2731=l9_2703.y==3;
}
else
{
l9_2731=l9_2730;
}
float l9_2732=l9_2700.y;
float l9_2733=l9_2705.y;
float l9_2734=l9_2705.w;
bool l9_2735=l9_2731;
float l9_2736=l9_2710;
float l9_2737=fast::clamp(l9_2732,l9_2733,l9_2734);
float l9_2738=step(abs(l9_2732-l9_2737),9.9999997e-06);
l9_2736*=(l9_2738+((1.0-float(l9_2735))*(1.0-l9_2738)));
l9_2732=l9_2737;
l9_2700.y=l9_2732;
l9_2710=l9_2736;
}
float2 l9_2739=l9_2700;
bool l9_2740=l9_2701;
float3x3 l9_2741=l9_2702;
if (l9_2740)
{
l9_2739=float2((l9_2741*float3(l9_2739,1.0)).xy);
}
float2 l9_2742=l9_2739;
l9_2700=l9_2742;
float l9_2743=l9_2700.x;
int l9_2744=l9_2703.x;
bool l9_2745=l9_2709;
float l9_2746=l9_2710;
if ((l9_2744==0)||(l9_2744==3))
{
float l9_2747=l9_2743;
float l9_2748=0.0;
float l9_2749=1.0;
bool l9_2750=l9_2745;
float l9_2751=l9_2746;
float l9_2752=fast::clamp(l9_2747,l9_2748,l9_2749);
float l9_2753=step(abs(l9_2747-l9_2752),9.9999997e-06);
l9_2751*=(l9_2753+((1.0-float(l9_2750))*(1.0-l9_2753)));
l9_2747=l9_2752;
l9_2743=l9_2747;
l9_2746=l9_2751;
}
l9_2700.x=l9_2743;
l9_2710=l9_2746;
float l9_2754=l9_2700.y;
int l9_2755=l9_2703.y;
bool l9_2756=l9_2709;
float l9_2757=l9_2710;
if ((l9_2755==0)||(l9_2755==3))
{
float l9_2758=l9_2754;
float l9_2759=0.0;
float l9_2760=1.0;
bool l9_2761=l9_2756;
float l9_2762=l9_2757;
float l9_2763=fast::clamp(l9_2758,l9_2759,l9_2760);
float l9_2764=step(abs(l9_2758-l9_2763),9.9999997e-06);
l9_2762*=(l9_2764+((1.0-float(l9_2761))*(1.0-l9_2764)));
l9_2758=l9_2763;
l9_2754=l9_2758;
l9_2757=l9_2762;
}
l9_2700.y=l9_2754;
l9_2710=l9_2757;
float2 l9_2765=l9_2700;
int l9_2766=l9_2698;
int l9_2767=l9_2699;
float l9_2768=l9_2708;
float2 l9_2769=l9_2765;
int l9_2770=l9_2766;
int l9_2771=l9_2767;
float3 l9_2772=float3(0.0);
if (l9_2770==0)
{
l9_2772=float3(l9_2769,0.0);
}
else
{
if (l9_2770==1)
{
l9_2772=float3(l9_2769.x,(l9_2769.y*0.5)+(0.5-(float(l9_2771)*0.5)),0.0);
}
else
{
l9_2772=float3(l9_2769,float(l9_2771));
}
}
float3 l9_2773=l9_2772;
float3 l9_2774=l9_2773;
float4 l9_2775=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2774.xy,level(l9_2768));
float4 l9_2776=l9_2775;
if (l9_2706)
{
l9_2776=mix(l9_2707,l9_2776,float4(l9_2710));
}
float4 l9_2777=l9_2776;
l9_2691=l9_2777;
float4 l9_2778=l9_2691;
float3 l9_2779=l9_2778.xyz;
l9_2686=(l9_2672+l9_2675)*l9_2779;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2686=l9_2672*l9_2685;
}
}
float3 l9_2780=l9_2686;
l9_2670=l9_2780;
if (N111_ENABLE_TRAILS)
{
if (N111_isTrail)
{
float2 l9_2781=tempGlobals.Surface_UVCoord0;
float2 l9_2782=l9_2781;
float l9_2783=mix(1.0,l9_2782.y,1.0-N111_taper.x);
l9_2783*=mix(1.0,1.0-l9_2782.y,1.0-N111_taper.y);
N111_cameraFade_trailHeadTime_taper=float4(N111_cameraFade_trailHeadTime_taper.x,N111_trailHeadTime.x,N111_trailHeadTime.y,N111_cameraFade_trailHeadTime_taper.w);
N111_cameraFade_trailHeadTime_taper.w=l9_2783;
}
}
float4x4 l9_2784=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2785=length(l9_2784[0].xyz);
float4x4 l9_2786=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2787=length(l9_2786[1].xyz);
float4x4 l9_2788=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2789=length(l9_2788[2].xyz);
float3 l9_2790=float3(l9_2785,l9_2787,l9_2789);
float4x4 l9_2791=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2792=l9_2791;
float4 l9_2793=l9_2792[0];
float4 l9_2794=l9_2792[1];
float4 l9_2795=l9_2792[2];
float3x3 l9_2796=float3x3(float3(float3(l9_2793.x,l9_2794.x,l9_2795.x)),float3(float3(l9_2793.y,l9_2794.y,l9_2795.y)),float3(float3(l9_2793.z,l9_2794.z,l9_2795.z)));
float3x3 l9_2797=l9_2796;
float3 l9_2798=((l9_2670+l9_2668)+l9_2669)*l9_2797;
if (N111_WORLDFORCE)
{
float4x4 l9_2799=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2800=l9_2799;
float4 l9_2801=l9_2800[0];
float4 l9_2802=l9_2800[1];
float4 l9_2803=l9_2800[2];
float3x3 l9_2804=float3x3(float3(float3(l9_2801.x,l9_2802.x,l9_2803.x)),float3(float3(l9_2801.y,l9_2802.y,l9_2803.y)),float3(float3(l9_2801.z,l9_2802.z,l9_2803.z)));
float3x3 l9_2805=l9_2804;
l9_2798=((l9_2670*l9_2805)+l9_2668)+l9_2669;
}
if (N111_WORLDSPACE)
{
l9_2798=((l9_2670*l9_2790)+l9_2668)+l9_2669;
}
float4x4 l9_2806=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_2807=(l9_2806*float4(l9_2586,1.0)).xyz+l9_2798;
float l9_2808=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_2579);
float l9_2809=1.0-l9_2582;
float l9_2810=N111_rotationDrag;
float l9_2811;
if (l9_2809<=0.0)
{
l9_2811=0.0;
}
else
{
l9_2811=pow(l9_2809,l9_2810);
}
float l9_2812=l9_2811;
float l9_2813=l9_2812;
float l9_2814=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_2579);
float l9_2815=((l9_2814*l9_2813)*l9_2582)*2.0;
float l9_2816=N111_PI*((l9_2815+l9_2808)-0.5);
float l9_2817=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_2818=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_2819=l9_2818-l9_2807;
float l9_2820=dot(l9_2819,l9_2819);
float l9_2821=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_2822=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_2823=fast::min(l9_2821,l9_2822);
float l9_2824=fast::max(l9_2821,l9_2822);
float l9_2825=smoothstep(l9_2823,l9_2824,l9_2820);
float l9_2826;
if (l9_2821>l9_2822)
{
l9_2826=1.0-l9_2825;
}
else
{
l9_2826=l9_2825;
}
l9_2825=l9_2826;
if (l9_2825<=N111_EPSILON)
{
l9_2817=0.0;
}
N111_cameraFade_trailHeadTime_taper.x=l9_2825;
}
if (N111_MESHTYPE_QUAD||N111_ENABLE_TRAILS)
{
if (N111_MESHTYPE_QUAD||N111_isTrail)
{
int l9_2827=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2827=0;
}
else
{
l9_2827=gl_InstanceIndex%2;
}
int l9_2828=l9_2827;
float4x4 l9_2829=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2828];
float3 l9_2830=normalize(l9_2829[2].xyz);
if (N111_isTrail)
{
l9_2830*=float3(-1.0);
}
float3 l9_2831=float3(0.0,1.0,0.0);
if (N111_ENABLE_ALIGNQUADTOCAMERAUP)
{
int l9_2832=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2832=0;
}
else
{
l9_2832=gl_InstanceIndex%2;
}
int l9_2833=l9_2832;
float3 l9_2834=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2833][1].xyz;
l9_2831=l9_2834;
}
float3 l9_2835=-normalize(cross(l9_2830,l9_2831));
float3 l9_2836=normalize(cross(l9_2835,l9_2830));
float l9_2837=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_2835=float3(0.0,0.0,1.0);
l9_2836=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2835=float3(1.0,0.0,0.0);
l9_2836=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_2835=float3(1.0,0.0,0.0);
l9_2836=float3(0.0,1.0,0.0);
}
float2 l9_2838=float2(cos(l9_2816),sin(l9_2816));
float2 l9_2839=float2(-sin(l9_2816),cos(l9_2816));
float3 l9_2840=float3((l9_2835*l9_2838.x)+(l9_2836*l9_2838.y));
float3 l9_2841=float3((l9_2835*l9_2839.x)+(l9_2836*l9_2839.y));
if (N111_ENABLE_ALIGNTOVEL||N111_ENABLE_TRAILS)
{
if (N111_ENABLE_ALIGNTOVEL||N111_isTrail)
{
float3 l9_2842=normalize(((l9_2798+l9_2668)+l9_2669)+float3(N111_EPSILON));
float3 l9_2843=l9_2798*(l9_2581-0.0099999998);
float3 l9_2844=l9_2798*(l9_2581+0.0099999998);
l9_2840=l9_2842;
l9_2841=normalize(cross(l9_2840,l9_2830));
if (N111_ENABLE_TRAILSPIN)
{
if (N111_isTrail)
{
l9_2841=float3((l9_2840*l9_2838.x)+(l9_2841*l9_2838.y));
}
}
if (!N111_isTrail)
{
if (N111_ENABLE_IGNOREVEL)
{
l9_2837=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_2837=length(l9_2844-l9_2843)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_2845=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2837=(length(l9_2844-l9_2843)/length(l9_2845[0].xyz))*N111_sizeVelScale;
}
}
}
}
}
float4x4 l9_2846=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2847=length(l9_2846[0].xyz);
float2 l9_2848=tempGlobals.Surface_UVCoord0;
float l9_2849=l9_2572;
float l9_2850=l9_2573;
float l9_2851=l9_2582;
float l9_2852=N111_sizeSpeed;
float2 l9_2853=(((l9_2848-float2(0.5))*l9_2817)*N111_pSize(l9_2849,l9_2850,l9_2851,l9_2852,N111_isTrail,N111_ENABLE_TRAILS,N111_trailHeadTime,N111_ENABLE_INDEPENDENTTRAIL,N111_trailSizeMult,N111_ENABLE_TRAILSIZERAMP,N111_ENABLE_TRAILSIZERAMPSTARTENDASBOUNDS,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.trailSizeRampTex,sc_set0.trailSizeRampTexSmpSC,sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals))*l9_2847;
float3 l9_2854=(l9_2807+(l9_2841*l9_2853.x))+(l9_2840*(l9_2853.y*l9_2837));
N111_position=l9_2854;
if ((N111_particleAlive<0.5)||(l9_2817<0.5))
{
N111_position/=float3(0.0);
}
N111_normal=l9_2830;
}
}
if (!N111_MESHTYPE_QUAD)
{
if (!N111_isTrail)
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_2855=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_2856=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_2857=(l9_2855+l9_2856)/float3(2.0);
N111_position-=l9_2857;
}
float l9_2858=l9_2572;
float l9_2859=l9_2573;
float l9_2860=l9_2582;
float l9_2861=N111_sizeSpeed;
N111_position=(N111_position*l9_2790)*N111_pSize3D(l9_2858,l9_2859,l9_2860,l9_2861,N111_sizeStart,N111_sizeEnd,N111_ENABLE_SIZEMINMAX,N111_sizeStartMin,N111_sizeStartMax,N111_sizeEndMin,N111_sizeEndMax,N111_ENABLE_SIZERAMP,N111_ENABLE_SIZERAMPSTARTENDASBOUNDS,gl_InstanceIndex,(*sc_set0.UserUniforms),sc_set0.sizeRampTexture,sc_set0.sizeRampTextureSmpSC,tempGlobals);
if ((N111_particleAlive<0.5)||(l9_2817<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_2862;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_2862=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_2863=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_2863=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2863=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_2864=0.001;
float3 l9_2865=l9_2671;
float l9_2866=l9_2581-l9_2864;
float3 l9_2867=N111_velocityDrag;
float3 l9_2868=l9_2587;
float l9_2869=l9_2582-l9_2864;
float3 l9_2870=float3(l9_2866,l9_2866,l9_2866);
float3 l9_2871=l9_2867;
float l9_2872;
if (l9_2870.x<=0.0)
{
l9_2872=0.0;
}
else
{
l9_2872=pow(l9_2870.x,l9_2871.x);
}
float l9_2873=l9_2872;
float l9_2874;
if (l9_2870.y<=0.0)
{
l9_2874=0.0;
}
else
{
l9_2874=pow(l9_2870.y,l9_2871.y);
}
float l9_2875=l9_2874;
float l9_2876;
if (l9_2870.z<=0.0)
{
l9_2876=0.0;
}
else
{
l9_2876=pow(l9_2870.z,l9_2871.z);
}
float3 l9_2877=float3(l9_2873,l9_2875,l9_2876);
float3 l9_2878=l9_2877;
float3 l9_2879=(l9_2865+l9_2868)*l9_2878;
if (N111_ENABLE_VELRAMP)
{
float l9_2880=floor(l9_2869*10000.0)/10000.0;
float2 l9_2881=tempGlobals.Surface_UVCoord0;
float2 l9_2882=(l9_2881/float2(10000.0,1.0))+float2(l9_2880,0.0);
float2 l9_2883=l9_2882;
float4 l9_2884=float4(0.0);
int l9_2885;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2886=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2886=0;
}
else
{
l9_2886=gl_InstanceIndex%2;
}
int l9_2887=l9_2886;
l9_2885=1-l9_2887;
}
else
{
int l9_2888=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2888=0;
}
else
{
l9_2888=gl_InstanceIndex%2;
}
int l9_2889=l9_2888;
l9_2885=l9_2889;
}
int l9_2890=l9_2885;
int l9_2891=velRampTextureLayout_tmp;
int l9_2892=l9_2890;
float2 l9_2893=l9_2883;
bool l9_2894=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_2895=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_2896=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_2897=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_2898=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_2899=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_2900=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_2901=0.0;
bool l9_2902=l9_2899&&(!l9_2897);
float l9_2903=1.0;
float l9_2904=l9_2893.x;
int l9_2905=l9_2896.x;
if (l9_2905==1)
{
l9_2904=fract(l9_2904);
}
else
{
if (l9_2905==2)
{
float l9_2906=fract(l9_2904);
float l9_2907=l9_2904-l9_2906;
float l9_2908=step(0.25,fract(l9_2907*0.5));
l9_2904=mix(l9_2906,1.0-l9_2906,fast::clamp(l9_2908,0.0,1.0));
}
}
l9_2893.x=l9_2904;
float l9_2909=l9_2893.y;
int l9_2910=l9_2896.y;
if (l9_2910==1)
{
l9_2909=fract(l9_2909);
}
else
{
if (l9_2910==2)
{
float l9_2911=fract(l9_2909);
float l9_2912=l9_2909-l9_2911;
float l9_2913=step(0.25,fract(l9_2912*0.5));
l9_2909=mix(l9_2911,1.0-l9_2911,fast::clamp(l9_2913,0.0,1.0));
}
}
l9_2893.y=l9_2909;
if (l9_2897)
{
bool l9_2914=l9_2899;
bool l9_2915;
if (l9_2914)
{
l9_2915=l9_2896.x==3;
}
else
{
l9_2915=l9_2914;
}
float l9_2916=l9_2893.x;
float l9_2917=l9_2898.x;
float l9_2918=l9_2898.z;
bool l9_2919=l9_2915;
float l9_2920=l9_2903;
float l9_2921=fast::clamp(l9_2916,l9_2917,l9_2918);
float l9_2922=step(abs(l9_2916-l9_2921),9.9999997e-06);
l9_2920*=(l9_2922+((1.0-float(l9_2919))*(1.0-l9_2922)));
l9_2916=l9_2921;
l9_2893.x=l9_2916;
l9_2903=l9_2920;
bool l9_2923=l9_2899;
bool l9_2924;
if (l9_2923)
{
l9_2924=l9_2896.y==3;
}
else
{
l9_2924=l9_2923;
}
float l9_2925=l9_2893.y;
float l9_2926=l9_2898.y;
float l9_2927=l9_2898.w;
bool l9_2928=l9_2924;
float l9_2929=l9_2903;
float l9_2930=fast::clamp(l9_2925,l9_2926,l9_2927);
float l9_2931=step(abs(l9_2925-l9_2930),9.9999997e-06);
l9_2929*=(l9_2931+((1.0-float(l9_2928))*(1.0-l9_2931)));
l9_2925=l9_2930;
l9_2893.y=l9_2925;
l9_2903=l9_2929;
}
float2 l9_2932=l9_2893;
bool l9_2933=l9_2894;
float3x3 l9_2934=l9_2895;
if (l9_2933)
{
l9_2932=float2((l9_2934*float3(l9_2932,1.0)).xy);
}
float2 l9_2935=l9_2932;
l9_2893=l9_2935;
float l9_2936=l9_2893.x;
int l9_2937=l9_2896.x;
bool l9_2938=l9_2902;
float l9_2939=l9_2903;
if ((l9_2937==0)||(l9_2937==3))
{
float l9_2940=l9_2936;
float l9_2941=0.0;
float l9_2942=1.0;
bool l9_2943=l9_2938;
float l9_2944=l9_2939;
float l9_2945=fast::clamp(l9_2940,l9_2941,l9_2942);
float l9_2946=step(abs(l9_2940-l9_2945),9.9999997e-06);
l9_2944*=(l9_2946+((1.0-float(l9_2943))*(1.0-l9_2946)));
l9_2940=l9_2945;
l9_2936=l9_2940;
l9_2939=l9_2944;
}
l9_2893.x=l9_2936;
l9_2903=l9_2939;
float l9_2947=l9_2893.y;
int l9_2948=l9_2896.y;
bool l9_2949=l9_2902;
float l9_2950=l9_2903;
if ((l9_2948==0)||(l9_2948==3))
{
float l9_2951=l9_2947;
float l9_2952=0.0;
float l9_2953=1.0;
bool l9_2954=l9_2949;
float l9_2955=l9_2950;
float l9_2956=fast::clamp(l9_2951,l9_2952,l9_2953);
float l9_2957=step(abs(l9_2951-l9_2956),9.9999997e-06);
l9_2955*=(l9_2957+((1.0-float(l9_2954))*(1.0-l9_2957)));
l9_2951=l9_2956;
l9_2947=l9_2951;
l9_2950=l9_2955;
}
l9_2893.y=l9_2947;
l9_2903=l9_2950;
float2 l9_2958=l9_2893;
int l9_2959=l9_2891;
int l9_2960=l9_2892;
float l9_2961=l9_2901;
float2 l9_2962=l9_2958;
int l9_2963=l9_2959;
int l9_2964=l9_2960;
float3 l9_2965=float3(0.0);
if (l9_2963==0)
{
l9_2965=float3(l9_2962,0.0);
}
else
{
if (l9_2963==1)
{
l9_2965=float3(l9_2962.x,(l9_2962.y*0.5)+(0.5-(float(l9_2964)*0.5)),0.0);
}
else
{
l9_2965=float3(l9_2962,float(l9_2964));
}
}
float3 l9_2966=l9_2965;
float3 l9_2967=l9_2966;
float4 l9_2968=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2967.xy,level(l9_2961));
float4 l9_2969=l9_2968;
if (l9_2899)
{
l9_2969=mix(l9_2900,l9_2969,float4(l9_2903));
}
float4 l9_2970=l9_2969;
l9_2884=l9_2970;
float4 l9_2971=l9_2884;
float3 l9_2972=l9_2971.xyz;
l9_2879=(l9_2865+l9_2868)*l9_2972;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2879=l9_2865*l9_2878;
}
}
float3 l9_2973=l9_2879;
float3 l9_2974=l9_2973;
float l9_2975=((N111_gravity/2.0)*(l9_2581-l9_2864))*(l9_2581-l9_2864);
l9_2668.y-=l9_2975;
if (N111_ENABLE_FORCE)
{
float3 l9_2976=float3(((N111_localForce/float3(2.0))*(l9_2581-l9_2864))*(l9_2581-l9_2864));
l9_2669-=l9_2976;
}
if (N111_WORLDFORCE)
{
float4x4 l9_2977=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2978=l9_2977;
float4 l9_2979=l9_2978[0];
float4 l9_2980=l9_2978[1];
float4 l9_2981=l9_2978[2];
float3x3 l9_2982=float3x3(float3(float3(l9_2979.x,l9_2980.x,l9_2981.x)),float3(float3(l9_2979.y,l9_2980.y,l9_2981.y)),float3(float3(l9_2979.z,l9_2980.z,l9_2981.z)));
float3x3 l9_2983=l9_2982;
l9_2863=(((l9_2670-l9_2974)*l9_2983)+l9_2668)+l9_2669;
}
else
{
if (N111_WORLDSPACE)
{
l9_2863=((l9_2670-l9_2974)+l9_2668)+l9_2669;
}
else
{
float4x4 l9_2984=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2985=l9_2984;
float4 l9_2986=l9_2985[0];
float4 l9_2987=l9_2985[1];
float4 l9_2988=l9_2985[2];
float3x3 l9_2989=float3x3(float3(float3(l9_2986.x,l9_2987.x,l9_2988.x)),float3(float3(l9_2986.y,l9_2987.y,l9_2988.y)),float3(float3(l9_2986.z,l9_2987.z,l9_2988.z)));
float3x3 l9_2990=l9_2989;
l9_2863=(((l9_2670-l9_2974)+l9_2669)+l9_2668)*l9_2990;
}
}
l9_2863=normalize(l9_2863+float3(N111_EPSILON));
}
float3 l9_2991=float3(0.0,0.0,1.0);
float3 l9_2992=cross(l9_2863,l9_2991);
float3 l9_2993=normalize(l9_2992);
float l9_2994=length(l9_2992);
float l9_2995=dot(l9_2991,l9_2863);
float l9_2996=1.0-l9_2995;
l9_2862=float3x3(float3(((l9_2996*l9_2993.x)*l9_2993.x)+l9_2995,((l9_2996*l9_2993.x)*l9_2993.y)-(l9_2993.z*l9_2994),((l9_2996*l9_2993.z)*l9_2993.x)+(l9_2993.y*l9_2994)),float3(((l9_2996*l9_2993.x)*l9_2993.y)+(l9_2993.z*l9_2994),((l9_2996*l9_2993.y)*l9_2993.y)+l9_2995,((l9_2996*l9_2993.y)*l9_2993.z)-(l9_2993.x*l9_2994)),float3(((l9_2996*l9_2993.z)*l9_2993.x)-(l9_2993.y*l9_2994),((l9_2996*l9_2993.y)*l9_2993.z)+(l9_2993.x*l9_2994),((l9_2996*l9_2993.z)*l9_2993.z)+l9_2995));
}
float3x3 l9_2997=float3x3(float3(cos(l9_2816),-sin(l9_2816),0.0),float3(sin(l9_2816),cos(l9_2816),0.0),float3(0.0,0.0,1.0));
l9_2862=l9_2862*l9_2997;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_2998=l9_2798*(l9_2581-0.0099999998);
float3 l9_2999=l9_2798*(l9_2581+0.0099999998);
N111_position.z*=(length(l9_2999-l9_2998)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_3000=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_3001=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_3000);
float l9_3002=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_3000);
float l9_3003=((l9_3002*l9_2813)*l9_2582)*2.0;
float l9_3004=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_3005=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_3004);
float l9_3006=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_3004);
float l9_3007=((l9_3006*l9_2813)*l9_2582)*2.0;
float l9_3008=N111_PI*(l9_3003+l9_3001);
float l9_3009=N111_PI*(l9_3007+l9_3005);
float l9_3010=N111_PI*(l9_2815+l9_2808);
float3 l9_3011=float3(l9_3008,l9_3009,l9_3010);
float l9_3012=cos(l9_3011.x);
float l9_3013=sin(l9_3011.x);
float l9_3014=cos(l9_3011.y);
float l9_3015=sin(l9_3011.y);
float l9_3016=cos(l9_3011.z);
float l9_3017=sin(l9_3011.z);
l9_2862=float3x3(float3(l9_3014*l9_3016,(l9_3012*l9_3017)+((l9_3013*l9_3015)*l9_3016),(l9_3013*l9_3017)-((l9_3012*l9_3015)*l9_3016)),float3((-l9_3014)*l9_3017,(l9_3012*l9_3016)-((l9_3013*l9_3015)*l9_3017),(l9_3013*l9_3016)+((l9_3012*l9_3015)*l9_3017)),float3(l9_3015,(-l9_3013)*l9_3014,l9_3012*l9_3014));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_3018=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3019=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3020=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_3021=float3x3(float3(l9_3018[0].xyz/float3(l9_2790.x)),float3(l9_3019[1].xyz/float3(l9_2790.y)),float3(l9_3020[2].xyz/float3(l9_2790.z)));
l9_2862=l9_3021*l9_2862;
}
N111_position=l9_2862*N111_position;
N111_normal=normalize(l9_2862*N111_normalObjectSpace);
N111_position+=l9_2807;
}
}
N111_timeValues=float4(l9_2580,l9_2581,l9_2582);
l9_2558=N111_cameraFade_trailHeadTime_taper;
l9_2512=l9_2558;
l9_2285=l9_2512;
out.Interpolator1.x=l9_2285.x;
out.Interpolator1.y=l9_2285.y;
out.Interpolator1.z=l9_2285.z;
out.Interpolator1.w=l9_2285.w;
float3 param_270=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_3022=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_270,1.0);
float3 l9_3023=param_270;
float3 l9_3024=l9_3022.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_3025=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3025=0;
}
else
{
l9_3025=gl_InstanceIndex%2;
}
int l9_3026=l9_3025;
float4 l9_3027=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_3026]*float4(l9_3023,1.0);
float2 l9_3028=l9_3027.xy/float2(l9_3027.w);
l9_3027=float4(l9_3028.x,l9_3028.y,l9_3027.z,l9_3027.w);
int l9_3029=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3029=0;
}
else
{
l9_3029=gl_InstanceIndex%2;
}
int l9_3030=l9_3029;
float4 l9_3031=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_3030]*float4(l9_3024,1.0);
float2 l9_3032=l9_3031.xy/float2(l9_3031.w);
l9_3031=float4(l9_3032.x,l9_3032.y,l9_3031.z,l9_3031.w);
float2 l9_3033=(l9_3027.xy-l9_3031.xy)*0.5;
out.varPosAndMotion.w=l9_3033.x;
out.varNormalAndMotion.w=l9_3033.y;
}
}
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float4 VertexColor;
float gInstanceID;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float timeGlobal;
float externalTimeInput;
float externalSeed;
float lifeTimeConstant;
float2 lifeTimeMinMax;
float spawnDuration;
float trailLength;
float2 trailTaper;
float trailWidth;
float4 trailSizeRampTexSize;
float4 trailSizeRampTexDims;
float4 trailSizeRampTexView;
float3x3 trailSizeRampTexTransform;
float4 trailSizeRampTexUvMinMax;
float4 trailSizeRampTexBorderColor;
float3 spawnLocation;
float3 spawnBox;
float3 spawnSphere;
float3 noiseMult;
float3 noiseFrequency;
float3 sNoiseMult;
float3 sNoiseFrequency;
float3 velocityMin;
float3 velocityMax;
float3 velocityDrag;
float4 velRampTextureSize;
float4 velRampTextureDims;
float4 velRampTextureView;
float3x3 velRampTextureTransform;
float4 velRampTextureUvMinMax;
float4 velRampTextureBorderColor;
float2 sizeStart;
float3 sizeStart3D;
float2 sizeEnd;
float3 sizeEnd3D;
float2 sizeStartMin;
float3 sizeStartMin3D;
float2 sizeStartMax;
float3 sizeStartMax3D;
float2 sizeEndMin;
float3 sizeEndMin3D;
float2 sizeEndMax;
float3 sizeEndMax3D;
float sizeSpeed;
float4 sizeRampTextureSize;
float4 sizeRampTextureDims;
float4 sizeRampTextureView;
float3x3 sizeRampTextureTransform;
float4 sizeRampTextureUvMinMax;
float4 sizeRampTextureBorderColor;
float gravity;
float3 localForce;
float sizeVelScale;
int ALIGNTOX;
int ALIGNTOY;
int ALIGNTOZ;
float2 rotationRandomX;
float2 rotationRateX;
float2 randomRotationY;
float2 rotationRateY;
float2 rotationRandom;
float2 randomRotationZ;
float2 rotationRate;
float2 rotationRateZ;
float rotationDrag;
int CENTER_BBOX;
float fadeDistanceVisible;
float fadeDistanceInvisible;
float4 trailTexSize;
float4 trailTexDims;
float4 trailTexView;
float3x3 trailTexTransform;
float4 trailTexUvMinMax;
float4 trailTexBorderColor;
float4 trailColorRampTexSize;
float4 trailColorRampTexDims;
float4 trailColorRampTexView;
float3x3 trailColorRampTexTransform;
float4 trailColorRampTexUvMinMax;
float4 trailColorRampTexBorderColor;
float2 trailFadeStartEnd;
float2 trailFadeInOut;
float3 colorStart;
float3 colorEnd;
float3 colorMinStart;
float3 colorMinEnd;
float3 colorMaxStart;
float3 colorMaxEnd;
float alphaStart;
float alphaEnd;
float alphaMinStart;
float alphaMinEnd;
float alphaMaxStart;
float alphaMaxEnd;
float alphaDissolveMult;
float numValidFrames;
float2 gridSize;
float flipBookSpeedMult;
float flipBookRandomStart;
float4 colorRampTextureSize;
float4 colorRampTextureDims;
float4 colorRampTextureView;
float3x3 colorRampTextureTransform;
float4 colorRampTextureUvMinMax;
float4 colorRampTextureBorderColor;
float4 colorRampMult;
float4 mainTextureSize;
float4 mainTextureDims;
float4 mainTextureView;
float3x3 mainTextureTransform;
float4 mainTextureUvMinMax;
float4 mainTextureBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float metallic;
float roughness;
float Port_Input1_N119;
float2 Port_Input1_N138;
float2 Port_Input1_N139;
float2 Port_Input1_N140;
float2 Port_Input1_N144;
float Port_Input1_N069;
float Port_Input1_N068;
float Port_Input1_N110;
float Port_Input1_N154;
float Port_Input1_N216;
float3 Port_Default_N182;
float3 Port_Emissive_N014;
float3 Port_AO_N014;
float3 Port_SpecularAO_N014;
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRampTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> mainTexture [[id(3)]];
texture2d<float> normalTex [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(15)]];
texture2d<float> sc_RayTracingReflections [[id(16)]];
texture2d<float> sc_RayTracingShadows [[id(17)]];
texture2d<float> sc_SSAOTexture [[id(18)]];
texture2d<float> sc_ScreenTexture [[id(19)]];
texture2d<float> sc_ShadowTexture [[id(20)]];
texture2d<float> sizeRampTexture [[id(22)]];
texture2d<float> trailColorRampTex [[id(23)]];
texture2d<float> trailSizeRampTex [[id(24)]];
texture2d<float> trailTex [[id(25)]];
texture2d<float> velRampTexture [[id(26)]];
sampler colorRampTextureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler mainTextureSmpSC [[id(29)]];
sampler normalTexSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler sizeRampTextureSmpSC [[id(41)]];
sampler trailColorRampTexSmpSC [[id(42)]];
sampler trailSizeRampTexSmpSC [[id(43)]];
sampler trailTexSmpSC [[id(44)]];
sampler velRampTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(46)]];
};
struct main_frag_out
{
float4 sc_FragData0 [[color(0)]];
};
struct main_frag_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float Interpolator_gInstanceID [[user(locn13)]];
float4 Interpolator0 [[user(locn14)]];
float4 Interpolator1 [[user(locn15)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
float l9_10=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_11=param_6;
float l9_12=param_8;
float l9_13=l9_12+1.0;
l9_13=(l9_13*l9_13)*0.125;
float l9_14=(l9_11*(1.0-l9_13))+l9_13;
float l9_15=param_7;
float l9_16=param_8;
float l9_17=l9_16+1.0;
l9_17=(l9_17*l9_17)*0.125;
float l9_18=(l9_15*(1.0-l9_17))+l9_17;
float l9_19=1.0/(l9_14*l9_18);
float param_9=VdotH;
float3 param_10=F0;
float l9_20=param_9;
float3 l9_21=param_10;
float3 l9_22=float3(1.0);
float l9_23=1.0-l9_20;
float l9_24=l9_23*l9_23;
float l9_25=(l9_24*l9_24)*l9_23;
float3 l9_26=l9_21+((l9_22-l9_21)*l9_25);
float3 l9_27=l9_26;
return l9_27*(((l9_10*l9_19)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_28=param_11;
float3 l9_29=param_12;
float3 l9_30=float3(1.0);
float l9_31=1.0-l9_28;
float l9_32=l9_31*l9_31;
float l9_33=(l9_32*l9_32)*l9_31;
float3 l9_34=l9_29+((l9_30-l9_29)*l9_33);
float3 l9_35=l9_34;
return ((l9_35*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float param=surfaceProperties.roughness;
float param_1=NdotV;
float4 l9_0=(float4(-1.0,-0.0275,-0.57200003,0.022)*param)+float4(1.0,0.0425,1.04,-0.039999999);
float l9_1=(fast::min(l9_0.x*l9_0.x,exp2((-9.2799997)*param_1))*l9_0.x)+l9_0.y;
float2 l9_2=(float2(-1.04,1.04)*l9_1)+l9_0.zw;
float2 l9_3=l9_2;
float2 AB=l9_3;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param_2=NdotV;
float3 param_3=surfaceProperties.specColor;
float3 param_4=fresnelMax;
float l9_4=1.0-param_2;
float l9_5=l9_4*l9_4;
float l9_6=(l9_5*l9_5)*l9_4;
float3 l9_7=param_3+((param_4-param_3)*l9_6);
return l9_7;
}
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorIfNeeded(thread const float4& finalColor,thread float4& varPosAndMotion,thread float4& varNormalAndMotion)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float2 param=float2(varPosAndMotion.w,varNormalAndMotion.w);
float l9_0=(param.x*5.0)+0.5;
float l9_1=floor(l9_0*65535.0);
float l9_2=floor(l9_1*0.00390625);
float2 l9_3=float2(l9_2/255.0,(l9_1-(l9_2*256.0))/255.0);
float l9_4=(param.y*5.0)+0.5;
float l9_5=floor(l9_4*65535.0);
float l9_6=floor(l9_5*0.00390625);
float2 l9_7=float2(l9_6/255.0,(l9_5-(l9_6*256.0))/255.0);
float4 l9_8=float4(l9_3,l9_7);
return l9_8;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
bool N2_isTrailCondition=false;
bool N2_ENABLE_TRAILS=false;
bool N2_ENABLE_INDEPENDENTTRAIL=false;
bool N2_ENABLE_TRAILTEXTURE=false;
bool N2_ENABLE_TRAILCOLORRAMP=false;
float4 N2_fadeInOut=float4(0.0);
float3 N2_colorStart=float3(0.0);
float3 N2_colorEnd=float3(0.0);
bool N2_ENABLE_COLORMINMAX=false;
float3 N2_colorMinStart=float3(0.0);
float3 N2_colorMinEnd=float3(0.0);
float3 N2_colorMaxStart=float3(0.0);
float3 N2_colorMaxEnd=float3(0.0);
bool N2_ENABLE_COLORMONOMIN=false;
float N2_alphaStart=0.0;
float N2_alphaEnd=0.0;
bool N2_ENABLE_ALPHAMINMAX=false;
float N2_alphaMinStart=0.0;
float N2_alphaMinEnd=0.0;
float N2_alphaMaxStart=0.0;
float N2_alphaMaxEnd=0.0;
bool N2_ENABLE_ALPHADISSOLVE=false;
float N2_alphaDissolveMult=0.0;
bool N2_ENABLE_PREMULTIPLIEDCOLOR=false;
bool N2_ENABLE_BLACKASALPHA=false;
bool N2_ENABLE_SCREENFADE=false;
bool N2_ENABLE_FLIPBOOK=false;
float N2_numValidFrames=0.0;
float2 N2_gridSize=float2(0.0);
float N2_flipBookSpeedMult=0.0;
float N2_flipBookRandomStart=0.0;
bool N2_ENABLE_FLIPBOOKBLEND=false;
bool N2_ENABLE_FLIPBOOKBYLIFE=false;
bool N2_ENABLE_COLORRAMP=false;
float2 N2_texSize=float2(0.0);
float4 N2_colorRampMult=float4(0.0);
bool N2_ENABLE_NORANDOFFSET=false;
bool N2_ENABLE_BASETEXTURE=false;
bool N2_ENABLE_WORLDPOSSEED=false;
float N2_externalSeed=0.0;
float4 N2_timeValuesIn=float4(0.0);
float4 N2_cameraFade_trailHeadTime_taper=float4(0.0);
float3 N2_particleSeed=float3(0.0);
float N2_globalSeed=0.0;
float4 N2_result=float4(0.0);
float2 N2_uv=float2(0.0);
float N2_isTrail=0.0;
float2 N2_trailHeadTime=float2(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.VertexColor=in.varColor;
Globals.gInstanceID=in.Interpolator_gInstanceID;
float4 Result_N158=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
ssGlobals param_3=Globals;
ssGlobals tempGlobals;
float4 param_2;
if ((MESHTYPE_tmp==1)&&(int(PBR_tmp)!=0))
{
float l9_0=0.0;
float l9_1;
if ((int(TRAILS_tmp)!=0))
{
l9_1=1.001;
}
else
{
l9_1=0.001;
}
l9_1-=0.001;
l9_0=l9_1;
float4 l9_2=float4(0.0);
l9_2=param_3.VertexColor;
float l9_3=0.0;
l9_3=l9_2.x;
float l9_4=0.0;
float l9_5=l9_0;
bool l9_6=(l9_5*1.0)!=0.0;
bool l9_7;
if (l9_6)
{
l9_7=(l9_3*1.0)!=0.0;
}
else
{
l9_7=l9_6;
}
l9_4=float(l9_7);
float2 l9_8=float2(0.0);
float2 l9_9=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_8=l9_9;
float2 l9_10=float2(0.0);
float l9_11=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_12=float2(0.0);
float2 l9_13;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_13=float2(l9_11);
}
else
{
float2 l9_14=float2(0.0);
float2 l9_15=(*sc_set0.UserUniforms).trailFadeInOut;
l9_14=l9_15;
l9_12=l9_14;
l9_13=l9_12;
}
l9_10=l9_13;
float4 l9_16=float4(0.0);
l9_16=float4(l9_8.x,l9_8.y,l9_16.z,l9_16.w);
l9_16=float4(l9_16.x,l9_16.y,l9_10.x,l9_10.y);
float3 l9_17=float3(0.0);
float3 l9_18=(*sc_set0.UserUniforms).colorStart;
l9_17=l9_18;
float3 l9_19=float3(0.0);
float3 l9_20=(*sc_set0.UserUniforms).colorEnd;
l9_19=l9_20;
float3 l9_21=float3(0.0);
float3 l9_22=(*sc_set0.UserUniforms).colorMinStart;
l9_21=l9_22;
float3 l9_23=float3(0.0);
float3 l9_24=(*sc_set0.UserUniforms).colorMinEnd;
l9_23=l9_24;
float3 l9_25=float3(0.0);
float3 l9_26=(*sc_set0.UserUniforms).colorMaxStart;
l9_25=l9_26;
float3 l9_27=float3(0.0);
float3 l9_28=(*sc_set0.UserUniforms).colorMaxEnd;
l9_27=l9_28;
float l9_29=0.0;
float l9_30=(*sc_set0.UserUniforms).alphaStart;
l9_29=l9_30;
float l9_31=0.0;
float l9_32=(*sc_set0.UserUniforms).alphaEnd;
l9_31=l9_32;
float l9_33=0.0;
float l9_34=(*sc_set0.UserUniforms).alphaMinStart;
l9_33=l9_34;
float l9_35=0.0;
float l9_36=(*sc_set0.UserUniforms).alphaMinEnd;
l9_35=l9_36;
float l9_37=0.0;
float l9_38=(*sc_set0.UserUniforms).alphaMaxStart;
l9_37=l9_38;
float l9_39=0.0;
float l9_40=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_39=l9_40;
float l9_41=0.0;
float l9_42=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_41=l9_42;
float l9_43=0.0;
float l9_44=(*sc_set0.UserUniforms).numValidFrames;
l9_43=l9_44;
float2 l9_45=float2(0.0);
float2 l9_46=(*sc_set0.UserUniforms).gridSize;
l9_45=l9_46;
float l9_47=0.0;
float l9_48=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_47=l9_48;
float l9_49=0.0;
float l9_50=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_49=l9_50;
float2 l9_51=float2(0.0);
float2 l9_52=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_51=l9_52;
float4 l9_53=float4(0.0);
float4 l9_54=(*sc_set0.UserUniforms).colorRampMult;
l9_53=l9_54;
float l9_55=0.0;
float l9_56=(*sc_set0.UserUniforms).externalSeed;
l9_55=l9_56;
float4 l9_57=float4(0.0);
float4 l9_58;
l9_58.x=in.Interpolator0.x;
l9_58.y=in.Interpolator0.y;
l9_58.z=in.Interpolator0.z;
l9_58.w=in.Interpolator0.w;
l9_57=l9_58;
float4 l9_59=float4(0.0);
float4 l9_60;
l9_60.x=in.Interpolator1.x;
l9_60.y=in.Interpolator1.y;
l9_60.z=in.Interpolator1.z;
l9_60.w=in.Interpolator1.w;
l9_59=l9_60;
float4 l9_61=float4(0.0);
float l9_62=l9_4;
float4 l9_63=l9_16;
float3 l9_64=l9_17;
float3 l9_65=l9_19;
float3 l9_66=l9_21;
float3 l9_67=l9_23;
float3 l9_68=l9_25;
float3 l9_69=l9_27;
float l9_70=l9_29;
float l9_71=l9_31;
float l9_72=l9_33;
float l9_73=l9_35;
float l9_74=l9_37;
float l9_75=l9_39;
float l9_76=l9_41;
float l9_77=l9_43;
float2 l9_78=l9_45;
float l9_79=l9_47;
float l9_80=l9_49;
float2 l9_81=l9_51;
float4 l9_82=l9_53;
float l9_83=l9_55;
float4 l9_84=l9_57;
float4 l9_85=l9_59;
ssGlobals l9_86=param_3;
tempGlobals=l9_86;
float4 l9_87=float4(0.0);
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_62!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_63;
N2_colorStart=l9_64;
N2_colorEnd=l9_65;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_66;
N2_colorMinEnd=l9_67;
N2_colorMaxStart=l9_68;
N2_colorMaxEnd=l9_69;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_70;
N2_alphaEnd=l9_71;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_72;
N2_alphaMinEnd=l9_73;
N2_alphaMaxStart=l9_74;
N2_alphaMaxEnd=l9_75;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_76;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_77;
N2_gridSize=l9_78;
N2_flipBookSpeedMult=l9_79;
N2_flipBookRandomStart=l9_80;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_81;
N2_colorRampMult=l9_82;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_83;
N2_timeValuesIn=l9_84;
N2_cameraFade_trailHeadTime_taper=l9_85;
float l9_88=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_89=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_88=length(float4(1.0)*l9_89);
}
N2_globalSeed=N2_externalSeed+l9_88;
int l9_90=0;
l9_90=int(tempGlobals.gInstanceID+0.5);
int l9_91=l9_90;
float l9_92=float(l9_91);
int l9_93=int(l9_92);
int l9_94=l9_93^(l9_93*15299);
int l9_95=l9_94;
int l9_96=l9_95;
int l9_97=((l9_96*((l9_96*1471343)+101146501))+1559861749)&2147483647;
int l9_98=l9_97;
int l9_99=l9_95*1399;
int l9_100=((l9_99*((l9_99*1471343)+101146501))+1559861749)&2147483647;
int l9_101=l9_100;
int l9_102=l9_95*7177;
int l9_103=((l9_102*((l9_102*1471343)+101146501))+1559861749)&2147483647;
int l9_104=l9_103;
int l9_105=l9_98;
float l9_106=float(l9_105)*4.6566129e-10;
int l9_107=l9_101;
float l9_108=float(l9_107)*4.6566129e-10;
int l9_109=l9_104;
float l9_110=float(l9_109)*4.6566129e-10;
float3 l9_111=float3(l9_106,l9_108,l9_110);
float3 l9_112=l9_111;
N2_particleSeed=l9_112;
float l9_113=N2_timeValuesIn.w;
float l9_114=N2_particleSeed.x;
float l9_115=N2_particleSeed.y;
float l9_116=N2_particleSeed.z;
float3 l9_117=fract((float3(l9_114,l9_115,l9_116)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_117=fract((float3(l9_114,l9_114,l9_114)*27.21883)+float3(N2_globalSeed));
}
float l9_118=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_119=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_120=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_121=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_122=float4(1.0);
float2 l9_123=tempGlobals.Surface_UVCoord0;
N2_uv=l9_123;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_124=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_125=float2(0.5-(l9_124/2.0),0.5+(l9_124/2.0));
float l9_126=N2_uv.x;
float l9_127=l9_125.x;
bool l9_128=l9_126<l9_127;
bool l9_129;
if (!l9_128)
{
l9_129=N2_uv.x>l9_125.y;
}
else
{
l9_129=l9_128;
}
if (l9_129)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_125.x)*1.0)/((l9_125.y-l9_125.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_130=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_131=float4(0.0);
int l9_132;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_133=0;
}
else
{
l9_133=in.varStereoViewID;
}
int l9_134=l9_133;
l9_132=1-l9_134;
}
else
{
int l9_135=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_135=0;
}
else
{
l9_135=in.varStereoViewID;
}
int l9_136=l9_135;
l9_132=l9_136;
}
int l9_137=l9_132;
int l9_138=trailTexLayout_tmp;
int l9_139=l9_137;
float2 l9_140=l9_130;
bool l9_141=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_142=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_143=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_144=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_145=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_146=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_147=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_148=0.0;
bool l9_149=l9_146&&(!l9_144);
float l9_150=1.0;
float l9_151=l9_140.x;
int l9_152=l9_143.x;
if (l9_152==1)
{
l9_151=fract(l9_151);
}
else
{
if (l9_152==2)
{
float l9_153=fract(l9_151);
float l9_154=l9_151-l9_153;
float l9_155=step(0.25,fract(l9_154*0.5));
l9_151=mix(l9_153,1.0-l9_153,fast::clamp(l9_155,0.0,1.0));
}
}
l9_140.x=l9_151;
float l9_156=l9_140.y;
int l9_157=l9_143.y;
if (l9_157==1)
{
l9_156=fract(l9_156);
}
else
{
if (l9_157==2)
{
float l9_158=fract(l9_156);
float l9_159=l9_156-l9_158;
float l9_160=step(0.25,fract(l9_159*0.5));
l9_156=mix(l9_158,1.0-l9_158,fast::clamp(l9_160,0.0,1.0));
}
}
l9_140.y=l9_156;
if (l9_144)
{
bool l9_161=l9_146;
bool l9_162;
if (l9_161)
{
l9_162=l9_143.x==3;
}
else
{
l9_162=l9_161;
}
float l9_163=l9_140.x;
float l9_164=l9_145.x;
float l9_165=l9_145.z;
bool l9_166=l9_162;
float l9_167=l9_150;
float l9_168=fast::clamp(l9_163,l9_164,l9_165);
float l9_169=step(abs(l9_163-l9_168),9.9999997e-06);
l9_167*=(l9_169+((1.0-float(l9_166))*(1.0-l9_169)));
l9_163=l9_168;
l9_140.x=l9_163;
l9_150=l9_167;
bool l9_170=l9_146;
bool l9_171;
if (l9_170)
{
l9_171=l9_143.y==3;
}
else
{
l9_171=l9_170;
}
float l9_172=l9_140.y;
float l9_173=l9_145.y;
float l9_174=l9_145.w;
bool l9_175=l9_171;
float l9_176=l9_150;
float l9_177=fast::clamp(l9_172,l9_173,l9_174);
float l9_178=step(abs(l9_172-l9_177),9.9999997e-06);
l9_176*=(l9_178+((1.0-float(l9_175))*(1.0-l9_178)));
l9_172=l9_177;
l9_140.y=l9_172;
l9_150=l9_176;
}
float2 l9_179=l9_140;
bool l9_180=l9_141;
float3x3 l9_181=l9_142;
if (l9_180)
{
l9_179=float2((l9_181*float3(l9_179,1.0)).xy);
}
float2 l9_182=l9_179;
l9_140=l9_182;
float l9_183=l9_140.x;
int l9_184=l9_143.x;
bool l9_185=l9_149;
float l9_186=l9_150;
if ((l9_184==0)||(l9_184==3))
{
float l9_187=l9_183;
float l9_188=0.0;
float l9_189=1.0;
bool l9_190=l9_185;
float l9_191=l9_186;
float l9_192=fast::clamp(l9_187,l9_188,l9_189);
float l9_193=step(abs(l9_187-l9_192),9.9999997e-06);
l9_191*=(l9_193+((1.0-float(l9_190))*(1.0-l9_193)));
l9_187=l9_192;
l9_183=l9_187;
l9_186=l9_191;
}
l9_140.x=l9_183;
l9_150=l9_186;
float l9_194=l9_140.y;
int l9_195=l9_143.y;
bool l9_196=l9_149;
float l9_197=l9_150;
if ((l9_195==0)||(l9_195==3))
{
float l9_198=l9_194;
float l9_199=0.0;
float l9_200=1.0;
bool l9_201=l9_196;
float l9_202=l9_197;
float l9_203=fast::clamp(l9_198,l9_199,l9_200);
float l9_204=step(abs(l9_198-l9_203),9.9999997e-06);
l9_202*=(l9_204+((1.0-float(l9_201))*(1.0-l9_204)));
l9_198=l9_203;
l9_194=l9_198;
l9_197=l9_202;
}
l9_140.y=l9_194;
l9_150=l9_197;
float2 l9_205=l9_140;
int l9_206=l9_138;
int l9_207=l9_139;
float l9_208=l9_148;
float2 l9_209=l9_205;
int l9_210=l9_206;
int l9_211=l9_207;
float3 l9_212=float3(0.0);
if (l9_210==0)
{
l9_212=float3(l9_209,0.0);
}
else
{
if (l9_210==1)
{
l9_212=float3(l9_209.x,(l9_209.y*0.5)+(0.5-(float(l9_211)*0.5)),0.0);
}
else
{
l9_212=float3(l9_209,float(l9_211));
}
}
float3 l9_213=l9_212;
float3 l9_214=l9_213;
float4 l9_215=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_214.xy,bias(l9_208));
float4 l9_216=l9_215;
if (l9_146)
{
l9_216=mix(l9_147,l9_216,float4(l9_150));
}
float4 l9_217=l9_216;
l9_131=l9_217;
float4 l9_218=l9_131;
l9_122=l9_218;
}
float l9_219=fast::max(1e-06,N2_fadeInOut.x);
float l9_220=N2_timeValuesIn.w;
l9_121*=mix(0.0,1.0,fast::clamp(l9_220,0.0,l9_219)/l9_219);
l9_219=fast::max(1e-06,N2_fadeInOut.y);
l9_121*=mix(0.0,1.0,fast::clamp(1.0-l9_220,0.0,l9_219)/l9_219);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_113=N2_trailHeadTime.y;
l9_219=fast::max(1e-06,N2_fadeInOut.z);
l9_121*=mix(0.0,1.0,fast::clamp(l9_113,0.0,l9_219)/l9_219);
l9_219=fast::max(1e-06,N2_fadeInOut.w);
l9_121*=mix(0.0,1.0,fast::clamp(1.0-l9_113,0.0,l9_219)/l9_219);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_221=float2(0.0);
l9_221=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_222=l9_221;
float2 l9_223=float2(0.0);
l9_223=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_224=l9_223;
float l9_225=ceil(l9_113*l9_222.x)/l9_224.x;
float2 l9_226=float2(l9_225,0.5);
float4 l9_227=float4(0.0);
int l9_228;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=in.varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=in.varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=trailColorRampTexLayout_tmp;
int l9_235=l9_233;
float2 l9_236=l9_226;
bool l9_237=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_238=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_241=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_243=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
l9_227=l9_313;
float4 l9_314=l9_227;
l9_122*=l9_314;
}
}
}
float4 l9_315=float4(0.0);
float3 l9_316=float3(0.0);
float3 l9_317=float3(0.0);
float l9_318=0.0;
float l9_319=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_316=mix(N2_colorMinStart,N2_colorMaxStart,l9_117);
l9_317=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_117);
}
else
{
l9_316=N2_colorStart;
l9_317=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_318=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_118);
l9_319=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_118);
}
else
{
l9_318=N2_alphaStart;
l9_319=N2_alphaEnd;
}
l9_316=mix(l9_316,l9_317,float3(l9_113));
l9_318=mix(l9_318,l9_319,l9_113);
l9_315=float4(l9_316,l9_318);
float4 l9_320=float4(0.0);
float2 l9_321=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_322=tempGlobals.Surface_UVCoord0;
l9_321=l9_322;
float2 l9_323=l9_321;
float l9_324=fast::max(N2_timeValuesIn.x,1e-06);
float l9_325=fast::max(N2_timeValuesIn.y,1e-06);
float l9_326=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_327=mix(l9_324,l9_325,l9_120);
l9_326/=l9_327;
}
float l9_328=floor((N2_flipBookRandomStart+1.0)*l9_119);
float2 l9_329=l9_321;
float2 l9_330=N2_gridSize;
float l9_331=N2_numValidFrames;
float l9_332=l9_328;
float l9_333=N2_flipBookSpeedMult;
float l9_334=l9_326;
float l9_335=floor(l9_330.x);
float l9_336=floor(l9_330.y);
float l9_337=1.0/l9_335;
float l9_338=1.0/l9_336;
float l9_339=fast::min(l9_335*l9_336,floor(l9_331));
float l9_340=floor(mod((l9_334*l9_333)+floor(l9_332),l9_339));
float l9_341=floor(l9_340/l9_335);
float l9_342=mod(l9_340,l9_335);
float2 l9_343=float2((l9_337*l9_329.x)+(l9_342*l9_337),((1.0-l9_338)-(l9_341*l9_338))+(l9_338*l9_329.y));
l9_321=l9_343;
float2 l9_344=l9_321;
float4 l9_345=float4(0.0);
int l9_346;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_347=0;
}
else
{
l9_347=in.varStereoViewID;
}
int l9_348=l9_347;
l9_346=1-l9_348;
}
else
{
int l9_349=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_349=0;
}
else
{
l9_349=in.varStereoViewID;
}
int l9_350=l9_349;
l9_346=l9_350;
}
int l9_351=l9_346;
int l9_352=mainTextureLayout_tmp;
int l9_353=l9_351;
float2 l9_354=l9_344;
bool l9_355=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_356=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_357=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_358=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_359=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_360=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_361=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_362=0.0;
bool l9_363=l9_360&&(!l9_358);
float l9_364=1.0;
float l9_365=l9_354.x;
int l9_366=l9_357.x;
if (l9_366==1)
{
l9_365=fract(l9_365);
}
else
{
if (l9_366==2)
{
float l9_367=fract(l9_365);
float l9_368=l9_365-l9_367;
float l9_369=step(0.25,fract(l9_368*0.5));
l9_365=mix(l9_367,1.0-l9_367,fast::clamp(l9_369,0.0,1.0));
}
}
l9_354.x=l9_365;
float l9_370=l9_354.y;
int l9_371=l9_357.y;
if (l9_371==1)
{
l9_370=fract(l9_370);
}
else
{
if (l9_371==2)
{
float l9_372=fract(l9_370);
float l9_373=l9_370-l9_372;
float l9_374=step(0.25,fract(l9_373*0.5));
l9_370=mix(l9_372,1.0-l9_372,fast::clamp(l9_374,0.0,1.0));
}
}
l9_354.y=l9_370;
if (l9_358)
{
bool l9_375=l9_360;
bool l9_376;
if (l9_375)
{
l9_376=l9_357.x==3;
}
else
{
l9_376=l9_375;
}
float l9_377=l9_354.x;
float l9_378=l9_359.x;
float l9_379=l9_359.z;
bool l9_380=l9_376;
float l9_381=l9_364;
float l9_382=fast::clamp(l9_377,l9_378,l9_379);
float l9_383=step(abs(l9_377-l9_382),9.9999997e-06);
l9_381*=(l9_383+((1.0-float(l9_380))*(1.0-l9_383)));
l9_377=l9_382;
l9_354.x=l9_377;
l9_364=l9_381;
bool l9_384=l9_360;
bool l9_385;
if (l9_384)
{
l9_385=l9_357.y==3;
}
else
{
l9_385=l9_384;
}
float l9_386=l9_354.y;
float l9_387=l9_359.y;
float l9_388=l9_359.w;
bool l9_389=l9_385;
float l9_390=l9_364;
float l9_391=fast::clamp(l9_386,l9_387,l9_388);
float l9_392=step(abs(l9_386-l9_391),9.9999997e-06);
l9_390*=(l9_392+((1.0-float(l9_389))*(1.0-l9_392)));
l9_386=l9_391;
l9_354.y=l9_386;
l9_364=l9_390;
}
float2 l9_393=l9_354;
bool l9_394=l9_355;
float3x3 l9_395=l9_356;
if (l9_394)
{
l9_393=float2((l9_395*float3(l9_393,1.0)).xy);
}
float2 l9_396=l9_393;
l9_354=l9_396;
float l9_397=l9_354.x;
int l9_398=l9_357.x;
bool l9_399=l9_363;
float l9_400=l9_364;
if ((l9_398==0)||(l9_398==3))
{
float l9_401=l9_397;
float l9_402=0.0;
float l9_403=1.0;
bool l9_404=l9_399;
float l9_405=l9_400;
float l9_406=fast::clamp(l9_401,l9_402,l9_403);
float l9_407=step(abs(l9_401-l9_406),9.9999997e-06);
l9_405*=(l9_407+((1.0-float(l9_404))*(1.0-l9_407)));
l9_401=l9_406;
l9_397=l9_401;
l9_400=l9_405;
}
l9_354.x=l9_397;
l9_364=l9_400;
float l9_408=l9_354.y;
int l9_409=l9_357.y;
bool l9_410=l9_363;
float l9_411=l9_364;
if ((l9_409==0)||(l9_409==3))
{
float l9_412=l9_408;
float l9_413=0.0;
float l9_414=1.0;
bool l9_415=l9_410;
float l9_416=l9_411;
float l9_417=fast::clamp(l9_412,l9_413,l9_414);
float l9_418=step(abs(l9_412-l9_417),9.9999997e-06);
l9_416*=(l9_418+((1.0-float(l9_415))*(1.0-l9_418)));
l9_412=l9_417;
l9_408=l9_412;
l9_411=l9_416;
}
l9_354.y=l9_408;
l9_364=l9_411;
float2 l9_419=l9_354;
int l9_420=l9_352;
int l9_421=l9_353;
float l9_422=l9_362;
float2 l9_423=l9_419;
int l9_424=l9_420;
int l9_425=l9_421;
float3 l9_426=float3(0.0);
if (l9_424==0)
{
l9_426=float3(l9_423,0.0);
}
else
{
if (l9_424==1)
{
l9_426=float3(l9_423.x,(l9_423.y*0.5)+(0.5-(float(l9_425)*0.5)),0.0);
}
else
{
l9_426=float3(l9_423,float(l9_425));
}
}
float3 l9_427=l9_426;
float3 l9_428=l9_427;
float4 l9_429=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_428.xy,bias(l9_422));
float4 l9_430=l9_429;
if (l9_360)
{
l9_430=mix(l9_361,l9_430,float4(l9_364));
}
float4 l9_431=l9_430;
l9_345=l9_431;
float4 l9_432=l9_345;
l9_320=l9_432;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_433=l9_323;
float2 l9_434=N2_gridSize;
float l9_435=N2_numValidFrames;
float l9_436=floor(mod(l9_328+1.0,N2_numValidFrames));
float l9_437=N2_flipBookSpeedMult;
float l9_438=l9_326;
float l9_439=floor(l9_434.x);
float l9_440=floor(l9_434.y);
float l9_441=1.0/l9_439;
float l9_442=1.0/l9_440;
float l9_443=fast::min(l9_439*l9_440,floor(l9_435));
float l9_444=floor(mod((l9_438*l9_437)+floor(l9_436),l9_443));
float l9_445=floor(l9_444/l9_439);
float l9_446=mod(l9_444,l9_439);
float2 l9_447=float2((l9_441*l9_433.x)+(l9_446*l9_441),((1.0-l9_442)-(l9_445*l9_442))+(l9_442*l9_433.y));
l9_323=l9_447;
float4 l9_448=l9_320;
float2 l9_449=l9_323;
float4 l9_450=float4(0.0);
int l9_451;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=in.varStereoViewID;
}
int l9_453=l9_452;
l9_451=1-l9_453;
}
else
{
int l9_454=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_454=0;
}
else
{
l9_454=in.varStereoViewID;
}
int l9_455=l9_454;
l9_451=l9_455;
}
int l9_456=l9_451;
int l9_457=mainTextureLayout_tmp;
int l9_458=l9_456;
float2 l9_459=l9_449;
bool l9_460=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_461=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_462=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_463=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_464=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_465=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_466=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_467=0.0;
bool l9_468=l9_465&&(!l9_463);
float l9_469=1.0;
float l9_470=l9_459.x;
int l9_471=l9_462.x;
if (l9_471==1)
{
l9_470=fract(l9_470);
}
else
{
if (l9_471==2)
{
float l9_472=fract(l9_470);
float l9_473=l9_470-l9_472;
float l9_474=step(0.25,fract(l9_473*0.5));
l9_470=mix(l9_472,1.0-l9_472,fast::clamp(l9_474,0.0,1.0));
}
}
l9_459.x=l9_470;
float l9_475=l9_459.y;
int l9_476=l9_462.y;
if (l9_476==1)
{
l9_475=fract(l9_475);
}
else
{
if (l9_476==2)
{
float l9_477=fract(l9_475);
float l9_478=l9_475-l9_477;
float l9_479=step(0.25,fract(l9_478*0.5));
l9_475=mix(l9_477,1.0-l9_477,fast::clamp(l9_479,0.0,1.0));
}
}
l9_459.y=l9_475;
if (l9_463)
{
bool l9_480=l9_465;
bool l9_481;
if (l9_480)
{
l9_481=l9_462.x==3;
}
else
{
l9_481=l9_480;
}
float l9_482=l9_459.x;
float l9_483=l9_464.x;
float l9_484=l9_464.z;
bool l9_485=l9_481;
float l9_486=l9_469;
float l9_487=fast::clamp(l9_482,l9_483,l9_484);
float l9_488=step(abs(l9_482-l9_487),9.9999997e-06);
l9_486*=(l9_488+((1.0-float(l9_485))*(1.0-l9_488)));
l9_482=l9_487;
l9_459.x=l9_482;
l9_469=l9_486;
bool l9_489=l9_465;
bool l9_490;
if (l9_489)
{
l9_490=l9_462.y==3;
}
else
{
l9_490=l9_489;
}
float l9_491=l9_459.y;
float l9_492=l9_464.y;
float l9_493=l9_464.w;
bool l9_494=l9_490;
float l9_495=l9_469;
float l9_496=fast::clamp(l9_491,l9_492,l9_493);
float l9_497=step(abs(l9_491-l9_496),9.9999997e-06);
l9_495*=(l9_497+((1.0-float(l9_494))*(1.0-l9_497)));
l9_491=l9_496;
l9_459.y=l9_491;
l9_469=l9_495;
}
float2 l9_498=l9_459;
bool l9_499=l9_460;
float3x3 l9_500=l9_461;
if (l9_499)
{
l9_498=float2((l9_500*float3(l9_498,1.0)).xy);
}
float2 l9_501=l9_498;
l9_459=l9_501;
float l9_502=l9_459.x;
int l9_503=l9_462.x;
bool l9_504=l9_468;
float l9_505=l9_469;
if ((l9_503==0)||(l9_503==3))
{
float l9_506=l9_502;
float l9_507=0.0;
float l9_508=1.0;
bool l9_509=l9_504;
float l9_510=l9_505;
float l9_511=fast::clamp(l9_506,l9_507,l9_508);
float l9_512=step(abs(l9_506-l9_511),9.9999997e-06);
l9_510*=(l9_512+((1.0-float(l9_509))*(1.0-l9_512)));
l9_506=l9_511;
l9_502=l9_506;
l9_505=l9_510;
}
l9_459.x=l9_502;
l9_469=l9_505;
float l9_513=l9_459.y;
int l9_514=l9_462.y;
bool l9_515=l9_468;
float l9_516=l9_469;
if ((l9_514==0)||(l9_514==3))
{
float l9_517=l9_513;
float l9_518=0.0;
float l9_519=1.0;
bool l9_520=l9_515;
float l9_521=l9_516;
float l9_522=fast::clamp(l9_517,l9_518,l9_519);
float l9_523=step(abs(l9_517-l9_522),9.9999997e-06);
l9_521*=(l9_523+((1.0-float(l9_520))*(1.0-l9_523)));
l9_517=l9_522;
l9_513=l9_517;
l9_516=l9_521;
}
l9_459.y=l9_513;
l9_469=l9_516;
float2 l9_524=l9_459;
int l9_525=l9_457;
int l9_526=l9_458;
float l9_527=l9_467;
float2 l9_528=l9_524;
int l9_529=l9_525;
int l9_530=l9_526;
float3 l9_531=float3(0.0);
if (l9_529==0)
{
l9_531=float3(l9_528,0.0);
}
else
{
if (l9_529==1)
{
l9_531=float3(l9_528.x,(l9_528.y*0.5)+(0.5-(float(l9_530)*0.5)),0.0);
}
else
{
l9_531=float3(l9_528,float(l9_530));
}
}
float3 l9_532=l9_531;
float3 l9_533=l9_532;
float4 l9_534=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_533.xy,bias(l9_527));
float4 l9_535=l9_534;
if (l9_465)
{
l9_535=mix(l9_466,l9_535,float4(l9_469));
}
float4 l9_536=l9_535;
l9_450=l9_536;
float4 l9_537=l9_450;
l9_320=mix(l9_448,l9_537,float4(fract((l9_326*N2_flipBookSpeedMult)+l9_328)));
}
}
}
float4 l9_538=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_539=ceil(l9_113*N2_texSize.x)/N2_texSize.x;
float l9_540=l9_539;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_541=tempGlobals.Surface_UVCoord0;
l9_540+=(l9_541.x/N2_texSize.x);
}
float2 l9_542=float2(l9_540,0.5);
float4 l9_543=float4(0.0);
int l9_544;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_545=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_545=0;
}
else
{
l9_545=in.varStereoViewID;
}
int l9_546=l9_545;
l9_544=1-l9_546;
}
else
{
int l9_547=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_547=0;
}
else
{
l9_547=in.varStereoViewID;
}
int l9_548=l9_547;
l9_544=l9_548;
}
int l9_549=l9_544;
int l9_550=colorRampTextureLayout_tmp;
int l9_551=l9_549;
float2 l9_552=l9_542;
bool l9_553=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_554=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_555=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_556=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_557=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_558=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_559=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_560=0.0;
bool l9_561=l9_558&&(!l9_556);
float l9_562=1.0;
float l9_563=l9_552.x;
int l9_564=l9_555.x;
if (l9_564==1)
{
l9_563=fract(l9_563);
}
else
{
if (l9_564==2)
{
float l9_565=fract(l9_563);
float l9_566=l9_563-l9_565;
float l9_567=step(0.25,fract(l9_566*0.5));
l9_563=mix(l9_565,1.0-l9_565,fast::clamp(l9_567,0.0,1.0));
}
}
l9_552.x=l9_563;
float l9_568=l9_552.y;
int l9_569=l9_555.y;
if (l9_569==1)
{
l9_568=fract(l9_568);
}
else
{
if (l9_569==2)
{
float l9_570=fract(l9_568);
float l9_571=l9_568-l9_570;
float l9_572=step(0.25,fract(l9_571*0.5));
l9_568=mix(l9_570,1.0-l9_570,fast::clamp(l9_572,0.0,1.0));
}
}
l9_552.y=l9_568;
if (l9_556)
{
bool l9_573=l9_558;
bool l9_574;
if (l9_573)
{
l9_574=l9_555.x==3;
}
else
{
l9_574=l9_573;
}
float l9_575=l9_552.x;
float l9_576=l9_557.x;
float l9_577=l9_557.z;
bool l9_578=l9_574;
float l9_579=l9_562;
float l9_580=fast::clamp(l9_575,l9_576,l9_577);
float l9_581=step(abs(l9_575-l9_580),9.9999997e-06);
l9_579*=(l9_581+((1.0-float(l9_578))*(1.0-l9_581)));
l9_575=l9_580;
l9_552.x=l9_575;
l9_562=l9_579;
bool l9_582=l9_558;
bool l9_583;
if (l9_582)
{
l9_583=l9_555.y==3;
}
else
{
l9_583=l9_582;
}
float l9_584=l9_552.y;
float l9_585=l9_557.y;
float l9_586=l9_557.w;
bool l9_587=l9_583;
float l9_588=l9_562;
float l9_589=fast::clamp(l9_584,l9_585,l9_586);
float l9_590=step(abs(l9_584-l9_589),9.9999997e-06);
l9_588*=(l9_590+((1.0-float(l9_587))*(1.0-l9_590)));
l9_584=l9_589;
l9_552.y=l9_584;
l9_562=l9_588;
}
float2 l9_591=l9_552;
bool l9_592=l9_553;
float3x3 l9_593=l9_554;
if (l9_592)
{
l9_591=float2((l9_593*float3(l9_591,1.0)).xy);
}
float2 l9_594=l9_591;
l9_552=l9_594;
float l9_595=l9_552.x;
int l9_596=l9_555.x;
bool l9_597=l9_561;
float l9_598=l9_562;
if ((l9_596==0)||(l9_596==3))
{
float l9_599=l9_595;
float l9_600=0.0;
float l9_601=1.0;
bool l9_602=l9_597;
float l9_603=l9_598;
float l9_604=fast::clamp(l9_599,l9_600,l9_601);
float l9_605=step(abs(l9_599-l9_604),9.9999997e-06);
l9_603*=(l9_605+((1.0-float(l9_602))*(1.0-l9_605)));
l9_599=l9_604;
l9_595=l9_599;
l9_598=l9_603;
}
l9_552.x=l9_595;
l9_562=l9_598;
float l9_606=l9_552.y;
int l9_607=l9_555.y;
bool l9_608=l9_561;
float l9_609=l9_562;
if ((l9_607==0)||(l9_607==3))
{
float l9_610=l9_606;
float l9_611=0.0;
float l9_612=1.0;
bool l9_613=l9_608;
float l9_614=l9_609;
float l9_615=fast::clamp(l9_610,l9_611,l9_612);
float l9_616=step(abs(l9_610-l9_615),9.9999997e-06);
l9_614*=(l9_616+((1.0-float(l9_613))*(1.0-l9_616)));
l9_610=l9_615;
l9_606=l9_610;
l9_609=l9_614;
}
l9_552.y=l9_606;
l9_562=l9_609;
float2 l9_617=l9_552;
int l9_618=l9_550;
int l9_619=l9_551;
float l9_620=l9_560;
float2 l9_621=l9_617;
int l9_622=l9_618;
int l9_623=l9_619;
float3 l9_624=float3(0.0);
if (l9_622==0)
{
l9_624=float3(l9_621,0.0);
}
else
{
if (l9_622==1)
{
l9_624=float3(l9_621.x,(l9_621.y*0.5)+(0.5-(float(l9_623)*0.5)),0.0);
}
else
{
l9_624=float3(l9_621,float(l9_623));
}
}
float3 l9_625=l9_624;
float3 l9_626=l9_625;
float4 l9_627=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_626.xy,bias(l9_620));
float4 l9_628=l9_627;
if (l9_558)
{
l9_628=mix(l9_559,l9_628,float4(l9_562));
}
float4 l9_629=l9_628;
l9_543=l9_629;
float4 l9_630=l9_543;
l9_538=l9_630*N2_colorRampMult;
}
float4 l9_631=float4(1.0);
float4 l9_632=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_321;
l9_631=l9_320;
}
else
{
float2 l9_633=N2_uv;
float4 l9_634=float4(0.0);
int l9_635;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_636=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_636=0;
}
else
{
l9_636=in.varStereoViewID;
}
int l9_637=l9_636;
l9_635=1-l9_637;
}
else
{
int l9_638=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_638=0;
}
else
{
l9_638=in.varStereoViewID;
}
int l9_639=l9_638;
l9_635=l9_639;
}
int l9_640=l9_635;
int l9_641=mainTextureLayout_tmp;
int l9_642=l9_640;
float2 l9_643=l9_633;
bool l9_644=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_645=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_646=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_647=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_648=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_649=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_650=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_651=0.0;
bool l9_652=l9_649&&(!l9_647);
float l9_653=1.0;
float l9_654=l9_643.x;
int l9_655=l9_646.x;
if (l9_655==1)
{
l9_654=fract(l9_654);
}
else
{
if (l9_655==2)
{
float l9_656=fract(l9_654);
float l9_657=l9_654-l9_656;
float l9_658=step(0.25,fract(l9_657*0.5));
l9_654=mix(l9_656,1.0-l9_656,fast::clamp(l9_658,0.0,1.0));
}
}
l9_643.x=l9_654;
float l9_659=l9_643.y;
int l9_660=l9_646.y;
if (l9_660==1)
{
l9_659=fract(l9_659);
}
else
{
if (l9_660==2)
{
float l9_661=fract(l9_659);
float l9_662=l9_659-l9_661;
float l9_663=step(0.25,fract(l9_662*0.5));
l9_659=mix(l9_661,1.0-l9_661,fast::clamp(l9_663,0.0,1.0));
}
}
l9_643.y=l9_659;
if (l9_647)
{
bool l9_664=l9_649;
bool l9_665;
if (l9_664)
{
l9_665=l9_646.x==3;
}
else
{
l9_665=l9_664;
}
float l9_666=l9_643.x;
float l9_667=l9_648.x;
float l9_668=l9_648.z;
bool l9_669=l9_665;
float l9_670=l9_653;
float l9_671=fast::clamp(l9_666,l9_667,l9_668);
float l9_672=step(abs(l9_666-l9_671),9.9999997e-06);
l9_670*=(l9_672+((1.0-float(l9_669))*(1.0-l9_672)));
l9_666=l9_671;
l9_643.x=l9_666;
l9_653=l9_670;
bool l9_673=l9_649;
bool l9_674;
if (l9_673)
{
l9_674=l9_646.y==3;
}
else
{
l9_674=l9_673;
}
float l9_675=l9_643.y;
float l9_676=l9_648.y;
float l9_677=l9_648.w;
bool l9_678=l9_674;
float l9_679=l9_653;
float l9_680=fast::clamp(l9_675,l9_676,l9_677);
float l9_681=step(abs(l9_675-l9_680),9.9999997e-06);
l9_679*=(l9_681+((1.0-float(l9_678))*(1.0-l9_681)));
l9_675=l9_680;
l9_643.y=l9_675;
l9_653=l9_679;
}
float2 l9_682=l9_643;
bool l9_683=l9_644;
float3x3 l9_684=l9_645;
if (l9_683)
{
l9_682=float2((l9_684*float3(l9_682,1.0)).xy);
}
float2 l9_685=l9_682;
l9_643=l9_685;
float l9_686=l9_643.x;
int l9_687=l9_646.x;
bool l9_688=l9_652;
float l9_689=l9_653;
if ((l9_687==0)||(l9_687==3))
{
float l9_690=l9_686;
float l9_691=0.0;
float l9_692=1.0;
bool l9_693=l9_688;
float l9_694=l9_689;
float l9_695=fast::clamp(l9_690,l9_691,l9_692);
float l9_696=step(abs(l9_690-l9_695),9.9999997e-06);
l9_694*=(l9_696+((1.0-float(l9_693))*(1.0-l9_696)));
l9_690=l9_695;
l9_686=l9_690;
l9_689=l9_694;
}
l9_643.x=l9_686;
l9_653=l9_689;
float l9_697=l9_643.y;
int l9_698=l9_646.y;
bool l9_699=l9_652;
float l9_700=l9_653;
if ((l9_698==0)||(l9_698==3))
{
float l9_701=l9_697;
float l9_702=0.0;
float l9_703=1.0;
bool l9_704=l9_699;
float l9_705=l9_700;
float l9_706=fast::clamp(l9_701,l9_702,l9_703);
float l9_707=step(abs(l9_701-l9_706),9.9999997e-06);
l9_705*=(l9_707+((1.0-float(l9_704))*(1.0-l9_707)));
l9_701=l9_706;
l9_697=l9_701;
l9_700=l9_705;
}
l9_643.y=l9_697;
l9_653=l9_700;
float2 l9_708=l9_643;
int l9_709=l9_641;
int l9_710=l9_642;
float l9_711=l9_651;
float2 l9_712=l9_708;
int l9_713=l9_709;
int l9_714=l9_710;
float3 l9_715=float3(0.0);
if (l9_713==0)
{
l9_715=float3(l9_712,0.0);
}
else
{
if (l9_713==1)
{
l9_715=float3(l9_712.x,(l9_712.y*0.5)+(0.5-(float(l9_714)*0.5)),0.0);
}
else
{
l9_715=float3(l9_712,float(l9_714));
}
}
float3 l9_716=l9_715;
float3 l9_717=l9_716;
float4 l9_718=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_717.xy,bias(l9_711));
float4 l9_719=l9_718;
if (l9_649)
{
l9_719=mix(l9_650,l9_719,float4(l9_653));
}
float4 l9_720=l9_719;
l9_634=l9_720;
float4 l9_721=l9_634;
l9_631=l9_721;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_632=l9_538;
}
}
N2_result=(l9_631*l9_315)*l9_632;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_122*l9_315)*l9_632;
N2_result.w*=l9_121;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_722=l9_113*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_722,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_723=length(N2_result.xyz);
N2_result.w=l9_723;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_121;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_724=N2_result.xyz*N2_result.w;
N2_result=float4(l9_724.x,l9_724.y,l9_724.z,N2_result.w);
}
l9_87=N2_result;
l9_61=l9_87;
float3 l9_725=float3(0.0);
float l9_726=0.0;
float4 l9_727=l9_61;
float3 l9_728=l9_727.xyz;
float l9_729=l9_727.w;
l9_725=l9_728;
l9_726=l9_729;
float3 l9_730=float3(0.0);
float3 l9_731=float3(0.0);
float3 l9_732=(*sc_set0.UserUniforms).Port_Default_N182;
ssGlobals l9_733=param_3;
float3 l9_734;
if ((int(PBRNORMALTEX_tmp)!=0))
{
float l9_735=0.0;
float l9_736;
if ((int(TRAILS_tmp)!=0))
{
l9_736=1.001;
}
else
{
l9_736=0.001;
}
l9_736-=0.001;
l9_735=l9_736;
float4 l9_737=float4(0.0);
l9_737=l9_733.VertexColor;
float l9_738=0.0;
l9_738=l9_737.x;
float l9_739=0.0;
float l9_740=l9_735;
bool l9_741=(l9_740*1.0)!=0.0;
bool l9_742;
if (l9_741)
{
l9_742=(l9_738*1.0)!=0.0;
}
else
{
l9_742=l9_741;
}
l9_739=float(l9_742);
float2 l9_743=float2(0.0);
float2 l9_744=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_743=l9_744;
float2 l9_745=float2(0.0);
float l9_746=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_747=float2(0.0);
float2 l9_748;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_748=float2(l9_746);
}
else
{
float2 l9_749=float2(0.0);
float2 l9_750=(*sc_set0.UserUniforms).trailFadeInOut;
l9_749=l9_750;
l9_747=l9_749;
l9_748=l9_747;
}
l9_745=l9_748;
float4 l9_751=float4(0.0);
l9_751=float4(l9_743.x,l9_743.y,l9_751.z,l9_751.w);
l9_751=float4(l9_751.x,l9_751.y,l9_745.x,l9_745.y);
float3 l9_752=float3(0.0);
float3 l9_753=(*sc_set0.UserUniforms).colorStart;
l9_752=l9_753;
float3 l9_754=float3(0.0);
float3 l9_755=(*sc_set0.UserUniforms).colorEnd;
l9_754=l9_755;
float3 l9_756=float3(0.0);
float3 l9_757=(*sc_set0.UserUniforms).colorMinStart;
l9_756=l9_757;
float3 l9_758=float3(0.0);
float3 l9_759=(*sc_set0.UserUniforms).colorMinEnd;
l9_758=l9_759;
float3 l9_760=float3(0.0);
float3 l9_761=(*sc_set0.UserUniforms).colorMaxStart;
l9_760=l9_761;
float3 l9_762=float3(0.0);
float3 l9_763=(*sc_set0.UserUniforms).colorMaxEnd;
l9_762=l9_763;
float l9_764=0.0;
float l9_765=(*sc_set0.UserUniforms).alphaStart;
l9_764=l9_765;
float l9_766=0.0;
float l9_767=(*sc_set0.UserUniforms).alphaEnd;
l9_766=l9_767;
float l9_768=0.0;
float l9_769=(*sc_set0.UserUniforms).alphaMinStart;
l9_768=l9_769;
float l9_770=0.0;
float l9_771=(*sc_set0.UserUniforms).alphaMinEnd;
l9_770=l9_771;
float l9_772=0.0;
float l9_773=(*sc_set0.UserUniforms).alphaMaxStart;
l9_772=l9_773;
float l9_774=0.0;
float l9_775=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_774=l9_775;
float l9_776=0.0;
float l9_777=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_776=l9_777;
float l9_778=0.0;
float l9_779=(*sc_set0.UserUniforms).numValidFrames;
l9_778=l9_779;
float2 l9_780=float2(0.0);
float2 l9_781=(*sc_set0.UserUniforms).gridSize;
l9_780=l9_781;
float l9_782=0.0;
float l9_783=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_782=l9_783;
float l9_784=0.0;
float l9_785=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_784=l9_785;
float2 l9_786=float2(0.0);
float2 l9_787=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_786=l9_787;
float4 l9_788=float4(0.0);
float4 l9_789=(*sc_set0.UserUniforms).colorRampMult;
l9_788=l9_789;
float l9_790=0.0;
float l9_791=(*sc_set0.UserUniforms).externalSeed;
l9_790=l9_791;
float4 l9_792=float4(0.0);
float4 l9_793;
l9_793.x=in.Interpolator0.x;
l9_793.y=in.Interpolator0.y;
l9_793.z=in.Interpolator0.z;
l9_793.w=in.Interpolator0.w;
l9_792=l9_793;
float4 l9_794=float4(0.0);
float4 l9_795;
l9_795.x=in.Interpolator1.x;
l9_795.y=in.Interpolator1.y;
l9_795.z=in.Interpolator1.z;
l9_795.w=in.Interpolator1.w;
l9_794=l9_795;
float2 l9_796=float2(0.0);
float l9_797=l9_739;
float4 l9_798=l9_751;
float3 l9_799=l9_752;
float3 l9_800=l9_754;
float3 l9_801=l9_756;
float3 l9_802=l9_758;
float3 l9_803=l9_760;
float3 l9_804=l9_762;
float l9_805=l9_764;
float l9_806=l9_766;
float l9_807=l9_768;
float l9_808=l9_770;
float l9_809=l9_772;
float l9_810=l9_774;
float l9_811=l9_776;
float l9_812=l9_778;
float2 l9_813=l9_780;
float l9_814=l9_782;
float l9_815=l9_784;
float2 l9_816=l9_786;
float4 l9_817=l9_788;
float l9_818=l9_790;
float4 l9_819=l9_792;
float4 l9_820=l9_794;
ssGlobals l9_821=l9_733;
tempGlobals=l9_821;
float2 l9_822=float2(0.0);
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_797!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_798;
N2_colorStart=l9_799;
N2_colorEnd=l9_800;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_801;
N2_colorMinEnd=l9_802;
N2_colorMaxStart=l9_803;
N2_colorMaxEnd=l9_804;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_805;
N2_alphaEnd=l9_806;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_807;
N2_alphaMinEnd=l9_808;
N2_alphaMaxStart=l9_809;
N2_alphaMaxEnd=l9_810;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_811;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_812;
N2_gridSize=l9_813;
N2_flipBookSpeedMult=l9_814;
N2_flipBookRandomStart=l9_815;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_816;
N2_colorRampMult=l9_817;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_818;
N2_timeValuesIn=l9_819;
N2_cameraFade_trailHeadTime_taper=l9_820;
float l9_823=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_824=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_823=length(float4(1.0)*l9_824);
}
N2_globalSeed=N2_externalSeed+l9_823;
int l9_825=0;
l9_825=int(tempGlobals.gInstanceID+0.5);
int l9_826=l9_825;
float l9_827=float(l9_826);
int l9_828=int(l9_827);
int l9_829=l9_828^(l9_828*15299);
int l9_830=l9_829;
int l9_831=l9_830;
int l9_832=((l9_831*((l9_831*1471343)+101146501))+1559861749)&2147483647;
int l9_833=l9_832;
int l9_834=l9_830*1399;
int l9_835=((l9_834*((l9_834*1471343)+101146501))+1559861749)&2147483647;
int l9_836=l9_835;
int l9_837=l9_830*7177;
int l9_838=((l9_837*((l9_837*1471343)+101146501))+1559861749)&2147483647;
int l9_839=l9_838;
int l9_840=l9_833;
float l9_841=float(l9_840)*4.6566129e-10;
int l9_842=l9_836;
float l9_843=float(l9_842)*4.6566129e-10;
int l9_844=l9_839;
float l9_845=float(l9_844)*4.6566129e-10;
float3 l9_846=float3(l9_841,l9_843,l9_845);
float3 l9_847=l9_846;
N2_particleSeed=l9_847;
float l9_848=N2_timeValuesIn.w;
float l9_849=N2_particleSeed.x;
float l9_850=N2_particleSeed.y;
float l9_851=N2_particleSeed.z;
float3 l9_852=fract((float3(l9_849,l9_850,l9_851)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_852=fract((float3(l9_849,l9_849,l9_849)*27.21883)+float3(N2_globalSeed));
}
float l9_853=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_854=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_855=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_856=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_857=float4(1.0);
float2 l9_858=tempGlobals.Surface_UVCoord0;
N2_uv=l9_858;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_859=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_860=float2(0.5-(l9_859/2.0),0.5+(l9_859/2.0));
float l9_861=N2_uv.x;
float l9_862=l9_860.x;
bool l9_863=l9_861<l9_862;
bool l9_864;
if (!l9_863)
{
l9_864=N2_uv.x>l9_860.y;
}
else
{
l9_864=l9_863;
}
if (l9_864)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_860.x)*1.0)/((l9_860.y-l9_860.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_865=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_866=float4(0.0);
int l9_867;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_868=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_868=0;
}
else
{
l9_868=in.varStereoViewID;
}
int l9_869=l9_868;
l9_867=1-l9_869;
}
else
{
int l9_870=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_870=0;
}
else
{
l9_870=in.varStereoViewID;
}
int l9_871=l9_870;
l9_867=l9_871;
}
int l9_872=l9_867;
int l9_873=trailTexLayout_tmp;
int l9_874=l9_872;
float2 l9_875=l9_865;
bool l9_876=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_877=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_878=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_879=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_880=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_881=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_882=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_883=0.0;
bool l9_884=l9_881&&(!l9_879);
float l9_885=1.0;
float l9_886=l9_875.x;
int l9_887=l9_878.x;
if (l9_887==1)
{
l9_886=fract(l9_886);
}
else
{
if (l9_887==2)
{
float l9_888=fract(l9_886);
float l9_889=l9_886-l9_888;
float l9_890=step(0.25,fract(l9_889*0.5));
l9_886=mix(l9_888,1.0-l9_888,fast::clamp(l9_890,0.0,1.0));
}
}
l9_875.x=l9_886;
float l9_891=l9_875.y;
int l9_892=l9_878.y;
if (l9_892==1)
{
l9_891=fract(l9_891);
}
else
{
if (l9_892==2)
{
float l9_893=fract(l9_891);
float l9_894=l9_891-l9_893;
float l9_895=step(0.25,fract(l9_894*0.5));
l9_891=mix(l9_893,1.0-l9_893,fast::clamp(l9_895,0.0,1.0));
}
}
l9_875.y=l9_891;
if (l9_879)
{
bool l9_896=l9_881;
bool l9_897;
if (l9_896)
{
l9_897=l9_878.x==3;
}
else
{
l9_897=l9_896;
}
float l9_898=l9_875.x;
float l9_899=l9_880.x;
float l9_900=l9_880.z;
bool l9_901=l9_897;
float l9_902=l9_885;
float l9_903=fast::clamp(l9_898,l9_899,l9_900);
float l9_904=step(abs(l9_898-l9_903),9.9999997e-06);
l9_902*=(l9_904+((1.0-float(l9_901))*(1.0-l9_904)));
l9_898=l9_903;
l9_875.x=l9_898;
l9_885=l9_902;
bool l9_905=l9_881;
bool l9_906;
if (l9_905)
{
l9_906=l9_878.y==3;
}
else
{
l9_906=l9_905;
}
float l9_907=l9_875.y;
float l9_908=l9_880.y;
float l9_909=l9_880.w;
bool l9_910=l9_906;
float l9_911=l9_885;
float l9_912=fast::clamp(l9_907,l9_908,l9_909);
float l9_913=step(abs(l9_907-l9_912),9.9999997e-06);
l9_911*=(l9_913+((1.0-float(l9_910))*(1.0-l9_913)));
l9_907=l9_912;
l9_875.y=l9_907;
l9_885=l9_911;
}
float2 l9_914=l9_875;
bool l9_915=l9_876;
float3x3 l9_916=l9_877;
if (l9_915)
{
l9_914=float2((l9_916*float3(l9_914,1.0)).xy);
}
float2 l9_917=l9_914;
l9_875=l9_917;
float l9_918=l9_875.x;
int l9_919=l9_878.x;
bool l9_920=l9_884;
float l9_921=l9_885;
if ((l9_919==0)||(l9_919==3))
{
float l9_922=l9_918;
float l9_923=0.0;
float l9_924=1.0;
bool l9_925=l9_920;
float l9_926=l9_921;
float l9_927=fast::clamp(l9_922,l9_923,l9_924);
float l9_928=step(abs(l9_922-l9_927),9.9999997e-06);
l9_926*=(l9_928+((1.0-float(l9_925))*(1.0-l9_928)));
l9_922=l9_927;
l9_918=l9_922;
l9_921=l9_926;
}
l9_875.x=l9_918;
l9_885=l9_921;
float l9_929=l9_875.y;
int l9_930=l9_878.y;
bool l9_931=l9_884;
float l9_932=l9_885;
if ((l9_930==0)||(l9_930==3))
{
float l9_933=l9_929;
float l9_934=0.0;
float l9_935=1.0;
bool l9_936=l9_931;
float l9_937=l9_932;
float l9_938=fast::clamp(l9_933,l9_934,l9_935);
float l9_939=step(abs(l9_933-l9_938),9.9999997e-06);
l9_937*=(l9_939+((1.0-float(l9_936))*(1.0-l9_939)));
l9_933=l9_938;
l9_929=l9_933;
l9_932=l9_937;
}
l9_875.y=l9_929;
l9_885=l9_932;
float2 l9_940=l9_875;
int l9_941=l9_873;
int l9_942=l9_874;
float l9_943=l9_883;
float2 l9_944=l9_940;
int l9_945=l9_941;
int l9_946=l9_942;
float3 l9_947=float3(0.0);
if (l9_945==0)
{
l9_947=float3(l9_944,0.0);
}
else
{
if (l9_945==1)
{
l9_947=float3(l9_944.x,(l9_944.y*0.5)+(0.5-(float(l9_946)*0.5)),0.0);
}
else
{
l9_947=float3(l9_944,float(l9_946));
}
}
float3 l9_948=l9_947;
float3 l9_949=l9_948;
float4 l9_950=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_949.xy,bias(l9_943));
float4 l9_951=l9_950;
if (l9_881)
{
l9_951=mix(l9_882,l9_951,float4(l9_885));
}
float4 l9_952=l9_951;
l9_866=l9_952;
float4 l9_953=l9_866;
l9_857=l9_953;
}
float l9_954=fast::max(1e-06,N2_fadeInOut.x);
float l9_955=N2_timeValuesIn.w;
l9_856*=mix(0.0,1.0,fast::clamp(l9_955,0.0,l9_954)/l9_954);
l9_954=fast::max(1e-06,N2_fadeInOut.y);
l9_856*=mix(0.0,1.0,fast::clamp(1.0-l9_955,0.0,l9_954)/l9_954);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_848=N2_trailHeadTime.y;
l9_954=fast::max(1e-06,N2_fadeInOut.z);
l9_856*=mix(0.0,1.0,fast::clamp(l9_848,0.0,l9_954)/l9_954);
l9_954=fast::max(1e-06,N2_fadeInOut.w);
l9_856*=mix(0.0,1.0,fast::clamp(1.0-l9_848,0.0,l9_954)/l9_954);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_956=float2(0.0);
l9_956=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_957=l9_956;
float2 l9_958=float2(0.0);
l9_958=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_959=l9_958;
float l9_960=ceil(l9_848*l9_957.x)/l9_959.x;
float2 l9_961=float2(l9_960,0.5);
float4 l9_962=float4(0.0);
int l9_963;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_964=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_964=0;
}
else
{
l9_964=in.varStereoViewID;
}
int l9_965=l9_964;
l9_963=1-l9_965;
}
else
{
int l9_966=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_966=0;
}
else
{
l9_966=in.varStereoViewID;
}
int l9_967=l9_966;
l9_963=l9_967;
}
int l9_968=l9_963;
int l9_969=trailColorRampTexLayout_tmp;
int l9_970=l9_968;
float2 l9_971=l9_961;
bool l9_972=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_973=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_974=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_975=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_976=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_977=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_978=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_979=0.0;
bool l9_980=l9_977&&(!l9_975);
float l9_981=1.0;
float l9_982=l9_971.x;
int l9_983=l9_974.x;
if (l9_983==1)
{
l9_982=fract(l9_982);
}
else
{
if (l9_983==2)
{
float l9_984=fract(l9_982);
float l9_985=l9_982-l9_984;
float l9_986=step(0.25,fract(l9_985*0.5));
l9_982=mix(l9_984,1.0-l9_984,fast::clamp(l9_986,0.0,1.0));
}
}
l9_971.x=l9_982;
float l9_987=l9_971.y;
int l9_988=l9_974.y;
if (l9_988==1)
{
l9_987=fract(l9_987);
}
else
{
if (l9_988==2)
{
float l9_989=fract(l9_987);
float l9_990=l9_987-l9_989;
float l9_991=step(0.25,fract(l9_990*0.5));
l9_987=mix(l9_989,1.0-l9_989,fast::clamp(l9_991,0.0,1.0));
}
}
l9_971.y=l9_987;
if (l9_975)
{
bool l9_992=l9_977;
bool l9_993;
if (l9_992)
{
l9_993=l9_974.x==3;
}
else
{
l9_993=l9_992;
}
float l9_994=l9_971.x;
float l9_995=l9_976.x;
float l9_996=l9_976.z;
bool l9_997=l9_993;
float l9_998=l9_981;
float l9_999=fast::clamp(l9_994,l9_995,l9_996);
float l9_1000=step(abs(l9_994-l9_999),9.9999997e-06);
l9_998*=(l9_1000+((1.0-float(l9_997))*(1.0-l9_1000)));
l9_994=l9_999;
l9_971.x=l9_994;
l9_981=l9_998;
bool l9_1001=l9_977;
bool l9_1002;
if (l9_1001)
{
l9_1002=l9_974.y==3;
}
else
{
l9_1002=l9_1001;
}
float l9_1003=l9_971.y;
float l9_1004=l9_976.y;
float l9_1005=l9_976.w;
bool l9_1006=l9_1002;
float l9_1007=l9_981;
float l9_1008=fast::clamp(l9_1003,l9_1004,l9_1005);
float l9_1009=step(abs(l9_1003-l9_1008),9.9999997e-06);
l9_1007*=(l9_1009+((1.0-float(l9_1006))*(1.0-l9_1009)));
l9_1003=l9_1008;
l9_971.y=l9_1003;
l9_981=l9_1007;
}
float2 l9_1010=l9_971;
bool l9_1011=l9_972;
float3x3 l9_1012=l9_973;
if (l9_1011)
{
l9_1010=float2((l9_1012*float3(l9_1010,1.0)).xy);
}
float2 l9_1013=l9_1010;
l9_971=l9_1013;
float l9_1014=l9_971.x;
int l9_1015=l9_974.x;
bool l9_1016=l9_980;
float l9_1017=l9_981;
if ((l9_1015==0)||(l9_1015==3))
{
float l9_1018=l9_1014;
float l9_1019=0.0;
float l9_1020=1.0;
bool l9_1021=l9_1016;
float l9_1022=l9_1017;
float l9_1023=fast::clamp(l9_1018,l9_1019,l9_1020);
float l9_1024=step(abs(l9_1018-l9_1023),9.9999997e-06);
l9_1022*=(l9_1024+((1.0-float(l9_1021))*(1.0-l9_1024)));
l9_1018=l9_1023;
l9_1014=l9_1018;
l9_1017=l9_1022;
}
l9_971.x=l9_1014;
l9_981=l9_1017;
float l9_1025=l9_971.y;
int l9_1026=l9_974.y;
bool l9_1027=l9_980;
float l9_1028=l9_981;
if ((l9_1026==0)||(l9_1026==3))
{
float l9_1029=l9_1025;
float l9_1030=0.0;
float l9_1031=1.0;
bool l9_1032=l9_1027;
float l9_1033=l9_1028;
float l9_1034=fast::clamp(l9_1029,l9_1030,l9_1031);
float l9_1035=step(abs(l9_1029-l9_1034),9.9999997e-06);
l9_1033*=(l9_1035+((1.0-float(l9_1032))*(1.0-l9_1035)));
l9_1029=l9_1034;
l9_1025=l9_1029;
l9_1028=l9_1033;
}
l9_971.y=l9_1025;
l9_981=l9_1028;
float2 l9_1036=l9_971;
int l9_1037=l9_969;
int l9_1038=l9_970;
float l9_1039=l9_979;
float2 l9_1040=l9_1036;
int l9_1041=l9_1037;
int l9_1042=l9_1038;
float3 l9_1043=float3(0.0);
if (l9_1041==0)
{
l9_1043=float3(l9_1040,0.0);
}
else
{
if (l9_1041==1)
{
l9_1043=float3(l9_1040.x,(l9_1040.y*0.5)+(0.5-(float(l9_1042)*0.5)),0.0);
}
else
{
l9_1043=float3(l9_1040,float(l9_1042));
}
}
float3 l9_1044=l9_1043;
float3 l9_1045=l9_1044;
float4 l9_1046=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_1045.xy,bias(l9_1039));
float4 l9_1047=l9_1046;
if (l9_977)
{
l9_1047=mix(l9_978,l9_1047,float4(l9_981));
}
float4 l9_1048=l9_1047;
l9_962=l9_1048;
float4 l9_1049=l9_962;
l9_857*=l9_1049;
}
}
}
float4 l9_1050=float4(0.0);
float3 l9_1051=float3(0.0);
float3 l9_1052=float3(0.0);
float l9_1053=0.0;
float l9_1054=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_1051=mix(N2_colorMinStart,N2_colorMaxStart,l9_852);
l9_1052=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_852);
}
else
{
l9_1051=N2_colorStart;
l9_1052=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_1053=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_853);
l9_1054=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_853);
}
else
{
l9_1053=N2_alphaStart;
l9_1054=N2_alphaEnd;
}
l9_1051=mix(l9_1051,l9_1052,float3(l9_848));
l9_1053=mix(l9_1053,l9_1054,l9_848);
l9_1050=float4(l9_1051,l9_1053);
float4 l9_1055=float4(0.0);
float2 l9_1056=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_1057=tempGlobals.Surface_UVCoord0;
l9_1056=l9_1057;
float2 l9_1058=l9_1056;
float l9_1059=fast::max(N2_timeValuesIn.x,1e-06);
float l9_1060=fast::max(N2_timeValuesIn.y,1e-06);
float l9_1061=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_1062=mix(l9_1059,l9_1060,l9_855);
l9_1061/=l9_1062;
}
float l9_1063=floor((N2_flipBookRandomStart+1.0)*l9_854);
float2 l9_1064=l9_1056;
float2 l9_1065=N2_gridSize;
float l9_1066=N2_numValidFrames;
float l9_1067=l9_1063;
float l9_1068=N2_flipBookSpeedMult;
float l9_1069=l9_1061;
float l9_1070=floor(l9_1065.x);
float l9_1071=floor(l9_1065.y);
float l9_1072=1.0/l9_1070;
float l9_1073=1.0/l9_1071;
float l9_1074=fast::min(l9_1070*l9_1071,floor(l9_1066));
float l9_1075=floor(mod((l9_1069*l9_1068)+floor(l9_1067),l9_1074));
float l9_1076=floor(l9_1075/l9_1070);
float l9_1077=mod(l9_1075,l9_1070);
float2 l9_1078=float2((l9_1072*l9_1064.x)+(l9_1077*l9_1072),((1.0-l9_1073)-(l9_1076*l9_1073))+(l9_1073*l9_1064.y));
l9_1056=l9_1078;
float2 l9_1079=l9_1056;
float4 l9_1080=float4(0.0);
int l9_1081;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1082=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1082=0;
}
else
{
l9_1082=in.varStereoViewID;
}
int l9_1083=l9_1082;
l9_1081=1-l9_1083;
}
else
{
int l9_1084=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1084=0;
}
else
{
l9_1084=in.varStereoViewID;
}
int l9_1085=l9_1084;
l9_1081=l9_1085;
}
int l9_1086=l9_1081;
int l9_1087=mainTextureLayout_tmp;
int l9_1088=l9_1086;
float2 l9_1089=l9_1079;
bool l9_1090=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1091=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1092=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1093=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1094=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1095=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1096=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1097=0.0;
bool l9_1098=l9_1095&&(!l9_1093);
float l9_1099=1.0;
float l9_1100=l9_1089.x;
int l9_1101=l9_1092.x;
if (l9_1101==1)
{
l9_1100=fract(l9_1100);
}
else
{
if (l9_1101==2)
{
float l9_1102=fract(l9_1100);
float l9_1103=l9_1100-l9_1102;
float l9_1104=step(0.25,fract(l9_1103*0.5));
l9_1100=mix(l9_1102,1.0-l9_1102,fast::clamp(l9_1104,0.0,1.0));
}
}
l9_1089.x=l9_1100;
float l9_1105=l9_1089.y;
int l9_1106=l9_1092.y;
if (l9_1106==1)
{
l9_1105=fract(l9_1105);
}
else
{
if (l9_1106==2)
{
float l9_1107=fract(l9_1105);
float l9_1108=l9_1105-l9_1107;
float l9_1109=step(0.25,fract(l9_1108*0.5));
l9_1105=mix(l9_1107,1.0-l9_1107,fast::clamp(l9_1109,0.0,1.0));
}
}
l9_1089.y=l9_1105;
if (l9_1093)
{
bool l9_1110=l9_1095;
bool l9_1111;
if (l9_1110)
{
l9_1111=l9_1092.x==3;
}
else
{
l9_1111=l9_1110;
}
float l9_1112=l9_1089.x;
float l9_1113=l9_1094.x;
float l9_1114=l9_1094.z;
bool l9_1115=l9_1111;
float l9_1116=l9_1099;
float l9_1117=fast::clamp(l9_1112,l9_1113,l9_1114);
float l9_1118=step(abs(l9_1112-l9_1117),9.9999997e-06);
l9_1116*=(l9_1118+((1.0-float(l9_1115))*(1.0-l9_1118)));
l9_1112=l9_1117;
l9_1089.x=l9_1112;
l9_1099=l9_1116;
bool l9_1119=l9_1095;
bool l9_1120;
if (l9_1119)
{
l9_1120=l9_1092.y==3;
}
else
{
l9_1120=l9_1119;
}
float l9_1121=l9_1089.y;
float l9_1122=l9_1094.y;
float l9_1123=l9_1094.w;
bool l9_1124=l9_1120;
float l9_1125=l9_1099;
float l9_1126=fast::clamp(l9_1121,l9_1122,l9_1123);
float l9_1127=step(abs(l9_1121-l9_1126),9.9999997e-06);
l9_1125*=(l9_1127+((1.0-float(l9_1124))*(1.0-l9_1127)));
l9_1121=l9_1126;
l9_1089.y=l9_1121;
l9_1099=l9_1125;
}
float2 l9_1128=l9_1089;
bool l9_1129=l9_1090;
float3x3 l9_1130=l9_1091;
if (l9_1129)
{
l9_1128=float2((l9_1130*float3(l9_1128,1.0)).xy);
}
float2 l9_1131=l9_1128;
l9_1089=l9_1131;
float l9_1132=l9_1089.x;
int l9_1133=l9_1092.x;
bool l9_1134=l9_1098;
float l9_1135=l9_1099;
if ((l9_1133==0)||(l9_1133==3))
{
float l9_1136=l9_1132;
float l9_1137=0.0;
float l9_1138=1.0;
bool l9_1139=l9_1134;
float l9_1140=l9_1135;
float l9_1141=fast::clamp(l9_1136,l9_1137,l9_1138);
float l9_1142=step(abs(l9_1136-l9_1141),9.9999997e-06);
l9_1140*=(l9_1142+((1.0-float(l9_1139))*(1.0-l9_1142)));
l9_1136=l9_1141;
l9_1132=l9_1136;
l9_1135=l9_1140;
}
l9_1089.x=l9_1132;
l9_1099=l9_1135;
float l9_1143=l9_1089.y;
int l9_1144=l9_1092.y;
bool l9_1145=l9_1098;
float l9_1146=l9_1099;
if ((l9_1144==0)||(l9_1144==3))
{
float l9_1147=l9_1143;
float l9_1148=0.0;
float l9_1149=1.0;
bool l9_1150=l9_1145;
float l9_1151=l9_1146;
float l9_1152=fast::clamp(l9_1147,l9_1148,l9_1149);
float l9_1153=step(abs(l9_1147-l9_1152),9.9999997e-06);
l9_1151*=(l9_1153+((1.0-float(l9_1150))*(1.0-l9_1153)));
l9_1147=l9_1152;
l9_1143=l9_1147;
l9_1146=l9_1151;
}
l9_1089.y=l9_1143;
l9_1099=l9_1146;
float2 l9_1154=l9_1089;
int l9_1155=l9_1087;
int l9_1156=l9_1088;
float l9_1157=l9_1097;
float2 l9_1158=l9_1154;
int l9_1159=l9_1155;
int l9_1160=l9_1156;
float3 l9_1161=float3(0.0);
if (l9_1159==0)
{
l9_1161=float3(l9_1158,0.0);
}
else
{
if (l9_1159==1)
{
l9_1161=float3(l9_1158.x,(l9_1158.y*0.5)+(0.5-(float(l9_1160)*0.5)),0.0);
}
else
{
l9_1161=float3(l9_1158,float(l9_1160));
}
}
float3 l9_1162=l9_1161;
float3 l9_1163=l9_1162;
float4 l9_1164=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1163.xy,bias(l9_1157));
float4 l9_1165=l9_1164;
if (l9_1095)
{
l9_1165=mix(l9_1096,l9_1165,float4(l9_1099));
}
float4 l9_1166=l9_1165;
l9_1080=l9_1166;
float4 l9_1167=l9_1080;
l9_1055=l9_1167;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_1168=l9_1058;
float2 l9_1169=N2_gridSize;
float l9_1170=N2_numValidFrames;
float l9_1171=floor(mod(l9_1063+1.0,N2_numValidFrames));
float l9_1172=N2_flipBookSpeedMult;
float l9_1173=l9_1061;
float l9_1174=floor(l9_1169.x);
float l9_1175=floor(l9_1169.y);
float l9_1176=1.0/l9_1174;
float l9_1177=1.0/l9_1175;
float l9_1178=fast::min(l9_1174*l9_1175,floor(l9_1170));
float l9_1179=floor(mod((l9_1173*l9_1172)+floor(l9_1171),l9_1178));
float l9_1180=floor(l9_1179/l9_1174);
float l9_1181=mod(l9_1179,l9_1174);
float2 l9_1182=float2((l9_1176*l9_1168.x)+(l9_1181*l9_1176),((1.0-l9_1177)-(l9_1180*l9_1177))+(l9_1177*l9_1168.y));
l9_1058=l9_1182;
float4 l9_1183=l9_1055;
float2 l9_1184=l9_1058;
float4 l9_1185=float4(0.0);
int l9_1186;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1187=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1187=0;
}
else
{
l9_1187=in.varStereoViewID;
}
int l9_1188=l9_1187;
l9_1186=1-l9_1188;
}
else
{
int l9_1189=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1189=0;
}
else
{
l9_1189=in.varStereoViewID;
}
int l9_1190=l9_1189;
l9_1186=l9_1190;
}
int l9_1191=l9_1186;
int l9_1192=mainTextureLayout_tmp;
int l9_1193=l9_1191;
float2 l9_1194=l9_1184;
bool l9_1195=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1196=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1197=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1198=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1199=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1200=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1201=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1202=0.0;
bool l9_1203=l9_1200&&(!l9_1198);
float l9_1204=1.0;
float l9_1205=l9_1194.x;
int l9_1206=l9_1197.x;
if (l9_1206==1)
{
l9_1205=fract(l9_1205);
}
else
{
if (l9_1206==2)
{
float l9_1207=fract(l9_1205);
float l9_1208=l9_1205-l9_1207;
float l9_1209=step(0.25,fract(l9_1208*0.5));
l9_1205=mix(l9_1207,1.0-l9_1207,fast::clamp(l9_1209,0.0,1.0));
}
}
l9_1194.x=l9_1205;
float l9_1210=l9_1194.y;
int l9_1211=l9_1197.y;
if (l9_1211==1)
{
l9_1210=fract(l9_1210);
}
else
{
if (l9_1211==2)
{
float l9_1212=fract(l9_1210);
float l9_1213=l9_1210-l9_1212;
float l9_1214=step(0.25,fract(l9_1213*0.5));
l9_1210=mix(l9_1212,1.0-l9_1212,fast::clamp(l9_1214,0.0,1.0));
}
}
l9_1194.y=l9_1210;
if (l9_1198)
{
bool l9_1215=l9_1200;
bool l9_1216;
if (l9_1215)
{
l9_1216=l9_1197.x==3;
}
else
{
l9_1216=l9_1215;
}
float l9_1217=l9_1194.x;
float l9_1218=l9_1199.x;
float l9_1219=l9_1199.z;
bool l9_1220=l9_1216;
float l9_1221=l9_1204;
float l9_1222=fast::clamp(l9_1217,l9_1218,l9_1219);
float l9_1223=step(abs(l9_1217-l9_1222),9.9999997e-06);
l9_1221*=(l9_1223+((1.0-float(l9_1220))*(1.0-l9_1223)));
l9_1217=l9_1222;
l9_1194.x=l9_1217;
l9_1204=l9_1221;
bool l9_1224=l9_1200;
bool l9_1225;
if (l9_1224)
{
l9_1225=l9_1197.y==3;
}
else
{
l9_1225=l9_1224;
}
float l9_1226=l9_1194.y;
float l9_1227=l9_1199.y;
float l9_1228=l9_1199.w;
bool l9_1229=l9_1225;
float l9_1230=l9_1204;
float l9_1231=fast::clamp(l9_1226,l9_1227,l9_1228);
float l9_1232=step(abs(l9_1226-l9_1231),9.9999997e-06);
l9_1230*=(l9_1232+((1.0-float(l9_1229))*(1.0-l9_1232)));
l9_1226=l9_1231;
l9_1194.y=l9_1226;
l9_1204=l9_1230;
}
float2 l9_1233=l9_1194;
bool l9_1234=l9_1195;
float3x3 l9_1235=l9_1196;
if (l9_1234)
{
l9_1233=float2((l9_1235*float3(l9_1233,1.0)).xy);
}
float2 l9_1236=l9_1233;
l9_1194=l9_1236;
float l9_1237=l9_1194.x;
int l9_1238=l9_1197.x;
bool l9_1239=l9_1203;
float l9_1240=l9_1204;
if ((l9_1238==0)||(l9_1238==3))
{
float l9_1241=l9_1237;
float l9_1242=0.0;
float l9_1243=1.0;
bool l9_1244=l9_1239;
float l9_1245=l9_1240;
float l9_1246=fast::clamp(l9_1241,l9_1242,l9_1243);
float l9_1247=step(abs(l9_1241-l9_1246),9.9999997e-06);
l9_1245*=(l9_1247+((1.0-float(l9_1244))*(1.0-l9_1247)));
l9_1241=l9_1246;
l9_1237=l9_1241;
l9_1240=l9_1245;
}
l9_1194.x=l9_1237;
l9_1204=l9_1240;
float l9_1248=l9_1194.y;
int l9_1249=l9_1197.y;
bool l9_1250=l9_1203;
float l9_1251=l9_1204;
if ((l9_1249==0)||(l9_1249==3))
{
float l9_1252=l9_1248;
float l9_1253=0.0;
float l9_1254=1.0;
bool l9_1255=l9_1250;
float l9_1256=l9_1251;
float l9_1257=fast::clamp(l9_1252,l9_1253,l9_1254);
float l9_1258=step(abs(l9_1252-l9_1257),9.9999997e-06);
l9_1256*=(l9_1258+((1.0-float(l9_1255))*(1.0-l9_1258)));
l9_1252=l9_1257;
l9_1248=l9_1252;
l9_1251=l9_1256;
}
l9_1194.y=l9_1248;
l9_1204=l9_1251;
float2 l9_1259=l9_1194;
int l9_1260=l9_1192;
int l9_1261=l9_1193;
float l9_1262=l9_1202;
float2 l9_1263=l9_1259;
int l9_1264=l9_1260;
int l9_1265=l9_1261;
float3 l9_1266=float3(0.0);
if (l9_1264==0)
{
l9_1266=float3(l9_1263,0.0);
}
else
{
if (l9_1264==1)
{
l9_1266=float3(l9_1263.x,(l9_1263.y*0.5)+(0.5-(float(l9_1265)*0.5)),0.0);
}
else
{
l9_1266=float3(l9_1263,float(l9_1265));
}
}
float3 l9_1267=l9_1266;
float3 l9_1268=l9_1267;
float4 l9_1269=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1268.xy,bias(l9_1262));
float4 l9_1270=l9_1269;
if (l9_1200)
{
l9_1270=mix(l9_1201,l9_1270,float4(l9_1204));
}
float4 l9_1271=l9_1270;
l9_1185=l9_1271;
float4 l9_1272=l9_1185;
l9_1055=mix(l9_1183,l9_1272,float4(fract((l9_1061*N2_flipBookSpeedMult)+l9_1063)));
}
}
}
float4 l9_1273=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_1274=ceil(l9_848*N2_texSize.x)/N2_texSize.x;
float l9_1275=l9_1274;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_1276=tempGlobals.Surface_UVCoord0;
l9_1275+=(l9_1276.x/N2_texSize.x);
}
float2 l9_1277=float2(l9_1275,0.5);
float4 l9_1278=float4(0.0);
int l9_1279;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1280=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1280=0;
}
else
{
l9_1280=in.varStereoViewID;
}
int l9_1281=l9_1280;
l9_1279=1-l9_1281;
}
else
{
int l9_1282=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1282=0;
}
else
{
l9_1282=in.varStereoViewID;
}
int l9_1283=l9_1282;
l9_1279=l9_1283;
}
int l9_1284=l9_1279;
int l9_1285=colorRampTextureLayout_tmp;
int l9_1286=l9_1284;
float2 l9_1287=l9_1277;
bool l9_1288=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_1289=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_1290=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_1291=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_1292=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_1293=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_1294=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_1295=0.0;
bool l9_1296=l9_1293&&(!l9_1291);
float l9_1297=1.0;
float l9_1298=l9_1287.x;
int l9_1299=l9_1290.x;
if (l9_1299==1)
{
l9_1298=fract(l9_1298);
}
else
{
if (l9_1299==2)
{
float l9_1300=fract(l9_1298);
float l9_1301=l9_1298-l9_1300;
float l9_1302=step(0.25,fract(l9_1301*0.5));
l9_1298=mix(l9_1300,1.0-l9_1300,fast::clamp(l9_1302,0.0,1.0));
}
}
l9_1287.x=l9_1298;
float l9_1303=l9_1287.y;
int l9_1304=l9_1290.y;
if (l9_1304==1)
{
l9_1303=fract(l9_1303);
}
else
{
if (l9_1304==2)
{
float l9_1305=fract(l9_1303);
float l9_1306=l9_1303-l9_1305;
float l9_1307=step(0.25,fract(l9_1306*0.5));
l9_1303=mix(l9_1305,1.0-l9_1305,fast::clamp(l9_1307,0.0,1.0));
}
}
l9_1287.y=l9_1303;
if (l9_1291)
{
bool l9_1308=l9_1293;
bool l9_1309;
if (l9_1308)
{
l9_1309=l9_1290.x==3;
}
else
{
l9_1309=l9_1308;
}
float l9_1310=l9_1287.x;
float l9_1311=l9_1292.x;
float l9_1312=l9_1292.z;
bool l9_1313=l9_1309;
float l9_1314=l9_1297;
float l9_1315=fast::clamp(l9_1310,l9_1311,l9_1312);
float l9_1316=step(abs(l9_1310-l9_1315),9.9999997e-06);
l9_1314*=(l9_1316+((1.0-float(l9_1313))*(1.0-l9_1316)));
l9_1310=l9_1315;
l9_1287.x=l9_1310;
l9_1297=l9_1314;
bool l9_1317=l9_1293;
bool l9_1318;
if (l9_1317)
{
l9_1318=l9_1290.y==3;
}
else
{
l9_1318=l9_1317;
}
float l9_1319=l9_1287.y;
float l9_1320=l9_1292.y;
float l9_1321=l9_1292.w;
bool l9_1322=l9_1318;
float l9_1323=l9_1297;
float l9_1324=fast::clamp(l9_1319,l9_1320,l9_1321);
float l9_1325=step(abs(l9_1319-l9_1324),9.9999997e-06);
l9_1323*=(l9_1325+((1.0-float(l9_1322))*(1.0-l9_1325)));
l9_1319=l9_1324;
l9_1287.y=l9_1319;
l9_1297=l9_1323;
}
float2 l9_1326=l9_1287;
bool l9_1327=l9_1288;
float3x3 l9_1328=l9_1289;
if (l9_1327)
{
l9_1326=float2((l9_1328*float3(l9_1326,1.0)).xy);
}
float2 l9_1329=l9_1326;
l9_1287=l9_1329;
float l9_1330=l9_1287.x;
int l9_1331=l9_1290.x;
bool l9_1332=l9_1296;
float l9_1333=l9_1297;
if ((l9_1331==0)||(l9_1331==3))
{
float l9_1334=l9_1330;
float l9_1335=0.0;
float l9_1336=1.0;
bool l9_1337=l9_1332;
float l9_1338=l9_1333;
float l9_1339=fast::clamp(l9_1334,l9_1335,l9_1336);
float l9_1340=step(abs(l9_1334-l9_1339),9.9999997e-06);
l9_1338*=(l9_1340+((1.0-float(l9_1337))*(1.0-l9_1340)));
l9_1334=l9_1339;
l9_1330=l9_1334;
l9_1333=l9_1338;
}
l9_1287.x=l9_1330;
l9_1297=l9_1333;
float l9_1341=l9_1287.y;
int l9_1342=l9_1290.y;
bool l9_1343=l9_1296;
float l9_1344=l9_1297;
if ((l9_1342==0)||(l9_1342==3))
{
float l9_1345=l9_1341;
float l9_1346=0.0;
float l9_1347=1.0;
bool l9_1348=l9_1343;
float l9_1349=l9_1344;
float l9_1350=fast::clamp(l9_1345,l9_1346,l9_1347);
float l9_1351=step(abs(l9_1345-l9_1350),9.9999997e-06);
l9_1349*=(l9_1351+((1.0-float(l9_1348))*(1.0-l9_1351)));
l9_1345=l9_1350;
l9_1341=l9_1345;
l9_1344=l9_1349;
}
l9_1287.y=l9_1341;
l9_1297=l9_1344;
float2 l9_1352=l9_1287;
int l9_1353=l9_1285;
int l9_1354=l9_1286;
float l9_1355=l9_1295;
float2 l9_1356=l9_1352;
int l9_1357=l9_1353;
int l9_1358=l9_1354;
float3 l9_1359=float3(0.0);
if (l9_1357==0)
{
l9_1359=float3(l9_1356,0.0);
}
else
{
if (l9_1357==1)
{
l9_1359=float3(l9_1356.x,(l9_1356.y*0.5)+(0.5-(float(l9_1358)*0.5)),0.0);
}
else
{
l9_1359=float3(l9_1356,float(l9_1358));
}
}
float3 l9_1360=l9_1359;
float3 l9_1361=l9_1360;
float4 l9_1362=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_1361.xy,bias(l9_1355));
float4 l9_1363=l9_1362;
if (l9_1293)
{
l9_1363=mix(l9_1294,l9_1363,float4(l9_1297));
}
float4 l9_1364=l9_1363;
l9_1278=l9_1364;
float4 l9_1365=l9_1278;
l9_1273=l9_1365*N2_colorRampMult;
}
float4 l9_1366=float4(1.0);
float4 l9_1367=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_1056;
l9_1366=l9_1055;
}
else
{
float2 l9_1368=N2_uv;
float4 l9_1369=float4(0.0);
int l9_1370;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1371=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1371=0;
}
else
{
l9_1371=in.varStereoViewID;
}
int l9_1372=l9_1371;
l9_1370=1-l9_1372;
}
else
{
int l9_1373=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1373=0;
}
else
{
l9_1373=in.varStereoViewID;
}
int l9_1374=l9_1373;
l9_1370=l9_1374;
}
int l9_1375=l9_1370;
int l9_1376=mainTextureLayout_tmp;
int l9_1377=l9_1375;
float2 l9_1378=l9_1368;
bool l9_1379=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1380=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1381=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1382=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1383=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1384=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1385=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1386=0.0;
bool l9_1387=l9_1384&&(!l9_1382);
float l9_1388=1.0;
float l9_1389=l9_1378.x;
int l9_1390=l9_1381.x;
if (l9_1390==1)
{
l9_1389=fract(l9_1389);
}
else
{
if (l9_1390==2)
{
float l9_1391=fract(l9_1389);
float l9_1392=l9_1389-l9_1391;
float l9_1393=step(0.25,fract(l9_1392*0.5));
l9_1389=mix(l9_1391,1.0-l9_1391,fast::clamp(l9_1393,0.0,1.0));
}
}
l9_1378.x=l9_1389;
float l9_1394=l9_1378.y;
int l9_1395=l9_1381.y;
if (l9_1395==1)
{
l9_1394=fract(l9_1394);
}
else
{
if (l9_1395==2)
{
float l9_1396=fract(l9_1394);
float l9_1397=l9_1394-l9_1396;
float l9_1398=step(0.25,fract(l9_1397*0.5));
l9_1394=mix(l9_1396,1.0-l9_1396,fast::clamp(l9_1398,0.0,1.0));
}
}
l9_1378.y=l9_1394;
if (l9_1382)
{
bool l9_1399=l9_1384;
bool l9_1400;
if (l9_1399)
{
l9_1400=l9_1381.x==3;
}
else
{
l9_1400=l9_1399;
}
float l9_1401=l9_1378.x;
float l9_1402=l9_1383.x;
float l9_1403=l9_1383.z;
bool l9_1404=l9_1400;
float l9_1405=l9_1388;
float l9_1406=fast::clamp(l9_1401,l9_1402,l9_1403);
float l9_1407=step(abs(l9_1401-l9_1406),9.9999997e-06);
l9_1405*=(l9_1407+((1.0-float(l9_1404))*(1.0-l9_1407)));
l9_1401=l9_1406;
l9_1378.x=l9_1401;
l9_1388=l9_1405;
bool l9_1408=l9_1384;
bool l9_1409;
if (l9_1408)
{
l9_1409=l9_1381.y==3;
}
else
{
l9_1409=l9_1408;
}
float l9_1410=l9_1378.y;
float l9_1411=l9_1383.y;
float l9_1412=l9_1383.w;
bool l9_1413=l9_1409;
float l9_1414=l9_1388;
float l9_1415=fast::clamp(l9_1410,l9_1411,l9_1412);
float l9_1416=step(abs(l9_1410-l9_1415),9.9999997e-06);
l9_1414*=(l9_1416+((1.0-float(l9_1413))*(1.0-l9_1416)));
l9_1410=l9_1415;
l9_1378.y=l9_1410;
l9_1388=l9_1414;
}
float2 l9_1417=l9_1378;
bool l9_1418=l9_1379;
float3x3 l9_1419=l9_1380;
if (l9_1418)
{
l9_1417=float2((l9_1419*float3(l9_1417,1.0)).xy);
}
float2 l9_1420=l9_1417;
l9_1378=l9_1420;
float l9_1421=l9_1378.x;
int l9_1422=l9_1381.x;
bool l9_1423=l9_1387;
float l9_1424=l9_1388;
if ((l9_1422==0)||(l9_1422==3))
{
float l9_1425=l9_1421;
float l9_1426=0.0;
float l9_1427=1.0;
bool l9_1428=l9_1423;
float l9_1429=l9_1424;
float l9_1430=fast::clamp(l9_1425,l9_1426,l9_1427);
float l9_1431=step(abs(l9_1425-l9_1430),9.9999997e-06);
l9_1429*=(l9_1431+((1.0-float(l9_1428))*(1.0-l9_1431)));
l9_1425=l9_1430;
l9_1421=l9_1425;
l9_1424=l9_1429;
}
l9_1378.x=l9_1421;
l9_1388=l9_1424;
float l9_1432=l9_1378.y;
int l9_1433=l9_1381.y;
bool l9_1434=l9_1387;
float l9_1435=l9_1388;
if ((l9_1433==0)||(l9_1433==3))
{
float l9_1436=l9_1432;
float l9_1437=0.0;
float l9_1438=1.0;
bool l9_1439=l9_1434;
float l9_1440=l9_1435;
float l9_1441=fast::clamp(l9_1436,l9_1437,l9_1438);
float l9_1442=step(abs(l9_1436-l9_1441),9.9999997e-06);
l9_1440*=(l9_1442+((1.0-float(l9_1439))*(1.0-l9_1442)));
l9_1436=l9_1441;
l9_1432=l9_1436;
l9_1435=l9_1440;
}
l9_1378.y=l9_1432;
l9_1388=l9_1435;
float2 l9_1443=l9_1378;
int l9_1444=l9_1376;
int l9_1445=l9_1377;
float l9_1446=l9_1386;
float2 l9_1447=l9_1443;
int l9_1448=l9_1444;
int l9_1449=l9_1445;
float3 l9_1450=float3(0.0);
if (l9_1448==0)
{
l9_1450=float3(l9_1447,0.0);
}
else
{
if (l9_1448==1)
{
l9_1450=float3(l9_1447.x,(l9_1447.y*0.5)+(0.5-(float(l9_1449)*0.5)),0.0);
}
else
{
l9_1450=float3(l9_1447,float(l9_1449));
}
}
float3 l9_1451=l9_1450;
float3 l9_1452=l9_1451;
float4 l9_1453=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1452.xy,bias(l9_1446));
float4 l9_1454=l9_1453;
if (l9_1384)
{
l9_1454=mix(l9_1385,l9_1454,float4(l9_1388));
}
float4 l9_1455=l9_1454;
l9_1369=l9_1455;
float4 l9_1456=l9_1369;
l9_1366=l9_1456;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_1367=l9_1273;
}
}
N2_result=(l9_1366*l9_1050)*l9_1367;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_857*l9_1050)*l9_1367;
N2_result.w*=l9_856;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_1457=l9_848*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_1457,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_1458=length(N2_result.xyz);
N2_result.w=l9_1458;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_856;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_1459=N2_result.xyz*N2_result.w;
N2_result=float4(l9_1459.x,l9_1459.y,l9_1459.z,N2_result.w);
}
l9_822=N2_uv;
l9_796=l9_822;
float4 l9_1460=float4(0.0);
float2 l9_1461=l9_796;
int l9_1462;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1463=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1463=0;
}
else
{
l9_1463=in.varStereoViewID;
}
int l9_1464=l9_1463;
l9_1462=1-l9_1464;
}
else
{
int l9_1465=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1465=0;
}
else
{
l9_1465=in.varStereoViewID;
}
int l9_1466=l9_1465;
l9_1462=l9_1466;
}
int l9_1467=l9_1462;
int l9_1468=normalTexLayout_tmp;
int l9_1469=l9_1467;
float2 l9_1470=l9_1461;
bool l9_1471=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1472=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1473=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1474=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1475=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1476=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1477=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1478=0.0;
bool l9_1479=l9_1476&&(!l9_1474);
float l9_1480=1.0;
float l9_1481=l9_1470.x;
int l9_1482=l9_1473.x;
if (l9_1482==1)
{
l9_1481=fract(l9_1481);
}
else
{
if (l9_1482==2)
{
float l9_1483=fract(l9_1481);
float l9_1484=l9_1481-l9_1483;
float l9_1485=step(0.25,fract(l9_1484*0.5));
l9_1481=mix(l9_1483,1.0-l9_1483,fast::clamp(l9_1485,0.0,1.0));
}
}
l9_1470.x=l9_1481;
float l9_1486=l9_1470.y;
int l9_1487=l9_1473.y;
if (l9_1487==1)
{
l9_1486=fract(l9_1486);
}
else
{
if (l9_1487==2)
{
float l9_1488=fract(l9_1486);
float l9_1489=l9_1486-l9_1488;
float l9_1490=step(0.25,fract(l9_1489*0.5));
l9_1486=mix(l9_1488,1.0-l9_1488,fast::clamp(l9_1490,0.0,1.0));
}
}
l9_1470.y=l9_1486;
if (l9_1474)
{
bool l9_1491=l9_1476;
bool l9_1492;
if (l9_1491)
{
l9_1492=l9_1473.x==3;
}
else
{
l9_1492=l9_1491;
}
float l9_1493=l9_1470.x;
float l9_1494=l9_1475.x;
float l9_1495=l9_1475.z;
bool l9_1496=l9_1492;
float l9_1497=l9_1480;
float l9_1498=fast::clamp(l9_1493,l9_1494,l9_1495);
float l9_1499=step(abs(l9_1493-l9_1498),9.9999997e-06);
l9_1497*=(l9_1499+((1.0-float(l9_1496))*(1.0-l9_1499)));
l9_1493=l9_1498;
l9_1470.x=l9_1493;
l9_1480=l9_1497;
bool l9_1500=l9_1476;
bool l9_1501;
if (l9_1500)
{
l9_1501=l9_1473.y==3;
}
else
{
l9_1501=l9_1500;
}
float l9_1502=l9_1470.y;
float l9_1503=l9_1475.y;
float l9_1504=l9_1475.w;
bool l9_1505=l9_1501;
float l9_1506=l9_1480;
float l9_1507=fast::clamp(l9_1502,l9_1503,l9_1504);
float l9_1508=step(abs(l9_1502-l9_1507),9.9999997e-06);
l9_1506*=(l9_1508+((1.0-float(l9_1505))*(1.0-l9_1508)));
l9_1502=l9_1507;
l9_1470.y=l9_1502;
l9_1480=l9_1506;
}
float2 l9_1509=l9_1470;
bool l9_1510=l9_1471;
float3x3 l9_1511=l9_1472;
if (l9_1510)
{
l9_1509=float2((l9_1511*float3(l9_1509,1.0)).xy);
}
float2 l9_1512=l9_1509;
l9_1470=l9_1512;
float l9_1513=l9_1470.x;
int l9_1514=l9_1473.x;
bool l9_1515=l9_1479;
float l9_1516=l9_1480;
if ((l9_1514==0)||(l9_1514==3))
{
float l9_1517=l9_1513;
float l9_1518=0.0;
float l9_1519=1.0;
bool l9_1520=l9_1515;
float l9_1521=l9_1516;
float l9_1522=fast::clamp(l9_1517,l9_1518,l9_1519);
float l9_1523=step(abs(l9_1517-l9_1522),9.9999997e-06);
l9_1521*=(l9_1523+((1.0-float(l9_1520))*(1.0-l9_1523)));
l9_1517=l9_1522;
l9_1513=l9_1517;
l9_1516=l9_1521;
}
l9_1470.x=l9_1513;
l9_1480=l9_1516;
float l9_1524=l9_1470.y;
int l9_1525=l9_1473.y;
bool l9_1526=l9_1479;
float l9_1527=l9_1480;
if ((l9_1525==0)||(l9_1525==3))
{
float l9_1528=l9_1524;
float l9_1529=0.0;
float l9_1530=1.0;
bool l9_1531=l9_1526;
float l9_1532=l9_1527;
float l9_1533=fast::clamp(l9_1528,l9_1529,l9_1530);
float l9_1534=step(abs(l9_1528-l9_1533),9.9999997e-06);
l9_1532*=(l9_1534+((1.0-float(l9_1531))*(1.0-l9_1534)));
l9_1528=l9_1533;
l9_1524=l9_1528;
l9_1527=l9_1532;
}
l9_1470.y=l9_1524;
l9_1480=l9_1527;
float2 l9_1535=l9_1470;
int l9_1536=l9_1468;
int l9_1537=l9_1469;
float l9_1538=l9_1478;
float2 l9_1539=l9_1535;
int l9_1540=l9_1536;
int l9_1541=l9_1537;
float3 l9_1542=float3(0.0);
if (l9_1540==0)
{
l9_1542=float3(l9_1539,0.0);
}
else
{
if (l9_1540==1)
{
l9_1542=float3(l9_1539.x,(l9_1539.y*0.5)+(0.5-(float(l9_1541)*0.5)),0.0);
}
else
{
l9_1542=float3(l9_1539,float(l9_1541));
}
}
float3 l9_1543=l9_1542;
float3 l9_1544=l9_1543;
float4 l9_1545=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1544.xy,bias(l9_1538));
float4 l9_1546=l9_1545;
if (l9_1476)
{
l9_1546=mix(l9_1477,l9_1546,float4(l9_1480));
}
float4 l9_1547=l9_1546;
float4 l9_1548=l9_1547;
float3 l9_1549=(l9_1548.xyz*1.9921875)-float3(1.0);
l9_1548=float4(l9_1549.x,l9_1549.y,l9_1549.z,l9_1548.w);
l9_1460=l9_1548;
l9_731=l9_1460.xyz;
l9_734=l9_731;
}
else
{
l9_734=l9_732;
}
l9_730=l9_734;
float l9_1550=0.0;
float l9_1551=(*sc_set0.UserUniforms).metallic;
l9_1550=l9_1551;
float l9_1552=0.0;
float l9_1553=(*sc_set0.UserUniforms).roughness;
l9_1552=l9_1553;
float4 l9_1554=float4(0.0);
float3 l9_1555=l9_725;
float l9_1556=l9_726;
float3 l9_1557=l9_730;
float3 l9_1558=(*sc_set0.UserUniforms).Port_Emissive_N014;
float l9_1559=l9_1550;
float l9_1560=l9_1552;
float3 l9_1561=(*sc_set0.UserUniforms).Port_AO_N014;
float3 l9_1562=(*sc_set0.UserUniforms).Port_SpecularAO_N014;
ssGlobals l9_1563=param_3;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1563.BumpedNormal=float3x3(float3(l9_1563.VertexTangent_WorldSpace),float3(l9_1563.VertexBinormal_WorldSpace),float3(l9_1563.VertexNormal_WorldSpace))*l9_1557;
}
l9_1556=fast::clamp(l9_1556,0.0,1.0);
float l9_1564=l9_1556;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1564<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1565=gl_FragCoord;
float2 l9_1566=floor(mod(l9_1565.xy,float2(4.0)));
float l9_1567=(mod(dot(l9_1566,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1564<l9_1567)
{
discard_fragment();
}
}
l9_1555=fast::max(l9_1555,float3(0.0));
float4 l9_1568;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1568=float4(l9_1555,l9_1556);
}
else
{
l9_1559=fast::clamp(l9_1559,0.0,1.0);
l9_1560=fast::clamp(l9_1560,0.0,1.0);
float3 l9_1569=l9_1555;
float l9_1570=l9_1556;
float3 l9_1571=l9_1563.BumpedNormal;
float3 l9_1572=l9_1563.PositionWS;
float3 l9_1573=l9_1563.ViewDirWS;
float3 l9_1574=l9_1558;
float l9_1575=l9_1559;
float l9_1576=l9_1560;
float3 l9_1577=l9_1561;
float3 l9_1578=l9_1562;
SurfaceProperties l9_1579;
l9_1579.albedo=float3(0.0);
l9_1579.opacity=1.0;
l9_1579.normal=float3(0.0);
l9_1579.positionWS=float3(0.0);
l9_1579.viewDirWS=float3(0.0);
l9_1579.metallic=0.0;
l9_1579.roughness=0.0;
l9_1579.emissive=float3(0.0);
l9_1579.ao=float3(1.0);
l9_1579.specularAo=float3(1.0);
l9_1579.bakedShadows=float3(1.0);
SurfaceProperties l9_1580=l9_1579;
SurfaceProperties l9_1581=l9_1580;
l9_1581.opacity=l9_1570;
float3 l9_1582=l9_1569;
float3 l9_1583;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1583=float3(pow(l9_1582.x,2.2),pow(l9_1582.y,2.2),pow(l9_1582.z,2.2));
}
else
{
l9_1583=l9_1582*l9_1582;
}
float3 l9_1584=l9_1583;
l9_1581.albedo=l9_1584;
l9_1581.normal=normalize(l9_1571);
l9_1581.positionWS=l9_1572;
l9_1581.viewDirWS=l9_1573;
float3 l9_1585=l9_1574;
float3 l9_1586;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1586=float3(pow(l9_1585.x,2.2),pow(l9_1585.y,2.2),pow(l9_1585.z,2.2));
}
else
{
l9_1586=l9_1585*l9_1585;
}
float3 l9_1587=l9_1586;
l9_1581.emissive=l9_1587;
l9_1581.metallic=l9_1575;
l9_1581.roughness=l9_1576;
l9_1581.ao=l9_1577;
l9_1581.specularAo=l9_1578;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_1588=l9_1581.positionWS;
l9_1581.ao=evaluateSSAO(l9_1588,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_1589=l9_1581;
SurfaceProperties l9_1590=l9_1589;
float3 l9_1591=mix(float3(0.039999999),l9_1590.albedo*l9_1590.metallic,float3(l9_1590.metallic));
float3 l9_1592=mix(l9_1590.albedo*(1.0-l9_1590.metallic),float3(0.0),float3(l9_1590.metallic));
l9_1589.albedo=l9_1592;
l9_1589.specColor=l9_1591;
SurfaceProperties l9_1593=l9_1589;
l9_1581=l9_1593;
SurfaceProperties l9_1594=l9_1581;
LightingComponents l9_1595;
l9_1595.directDiffuse=float3(0.0);
l9_1595.directSpecular=float3(0.0);
l9_1595.indirectDiffuse=float3(1.0);
l9_1595.indirectSpecular=float3(0.0);
l9_1595.emitted=float3(0.0);
l9_1595.transmitted=float3(0.0);
LightingComponents l9_1596=l9_1595;
LightingComponents l9_1597=l9_1596;
float3 l9_1598=l9_1594.viewDirWS;
int l9_1599=0;
float4 l9_1600=float4(l9_1594.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_1601;
LightProperties l9_1602;
int l9_1603=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1603<sc_DirectionalLightsCount_tmp)
{
l9_1601.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1603].direction;
l9_1601.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1603].color;
l9_1602.direction=l9_1601.direction;
l9_1602.color=l9_1601.color.xyz;
l9_1602.attenuation=l9_1601.color.w;
l9_1602.attenuation*=l9_1600[(l9_1599<3) ? l9_1599 : 3];
l9_1599++;
LightingComponents l9_1604=l9_1597;
LightProperties l9_1605=l9_1602;
SurfaceProperties l9_1606=l9_1594;
float3 l9_1607=l9_1598;
SurfaceProperties l9_1608=l9_1606;
float3 l9_1609=l9_1605.direction;
float l9_1610=dot(l9_1608.normal,l9_1609);
float l9_1611=fast::clamp(l9_1610,0.0,1.0);
float3 l9_1612=float3(l9_1611);
l9_1604.directDiffuse+=((l9_1612*l9_1605.color)*l9_1605.attenuation);
SurfaceProperties l9_1613=l9_1606;
float3 l9_1614=l9_1605.direction;
float3 l9_1615=l9_1607;
l9_1604.directSpecular+=((calculateDirectSpecular(l9_1613,l9_1614,l9_1615)*l9_1605.color)*l9_1605.attenuation);
LightingComponents l9_1616=l9_1604;
l9_1597=l9_1616;
l9_1603++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_1617;
LightProperties l9_1618;
int l9_1619=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1619<sc_PointLightsCount_tmp)
{
l9_1617.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].falloffEnabled!=0;
l9_1617.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].falloffEndDistance;
l9_1617.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].negRcpFalloffEndDistance4;
l9_1617.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].angleScale;
l9_1617.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].angleOffset;
l9_1617.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].direction;
l9_1617.position=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].position;
l9_1617.color=(*sc_set0.UserUniforms).sc_PointLights[l9_1619].color;
float3 l9_1620=l9_1617.position-l9_1594.positionWS;
l9_1618.direction=normalize(l9_1620);
l9_1618.color=l9_1617.color.xyz;
l9_1618.attenuation=l9_1617.color.w;
l9_1618.attenuation*=l9_1600[(l9_1599<3) ? l9_1599 : 3];
float3 l9_1621=l9_1618.direction;
float3 l9_1622=l9_1617.direction;
float l9_1623=l9_1617.angleScale;
float l9_1624=l9_1617.angleOffset;
float l9_1625=dot(l9_1621,l9_1622);
float l9_1626=fast::clamp((l9_1625*l9_1623)+l9_1624,0.0,1.0);
float l9_1627=l9_1626*l9_1626;
l9_1618.attenuation*=l9_1627;
if (l9_1617.falloffEnabled)
{
float l9_1628=length(l9_1620);
float l9_1629=l9_1617.falloffEndDistance;
l9_1618.attenuation*=computeDistanceAttenuation(l9_1628,l9_1629);
}
l9_1599++;
LightingComponents l9_1630=l9_1597;
LightProperties l9_1631=l9_1618;
SurfaceProperties l9_1632=l9_1594;
float3 l9_1633=l9_1598;
SurfaceProperties l9_1634=l9_1632;
float3 l9_1635=l9_1631.direction;
float l9_1636=dot(l9_1634.normal,l9_1635);
float l9_1637=fast::clamp(l9_1636,0.0,1.0);
float3 l9_1638=float3(l9_1637);
l9_1630.directDiffuse+=((l9_1638*l9_1631.color)*l9_1631.attenuation);
SurfaceProperties l9_1639=l9_1632;
float3 l9_1640=l9_1631.direction;
float3 l9_1641=l9_1633;
l9_1630.directSpecular+=((calculateDirectSpecular(l9_1639,l9_1640,l9_1641)*l9_1631.color)*l9_1631.attenuation);
LightingComponents l9_1642=l9_1630;
l9_1597=l9_1642;
l9_1619++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_1643=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_1644=abs(in.varShadowTex-float2(0.5));
float l9_1645=fast::max(l9_1644.x,l9_1644.y);
float l9_1646=step(l9_1645,0.5);
float4 l9_1647=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_1646;
float3 l9_1648=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1647.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_1649=l9_1647.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_1643=mix(float3(1.0),l9_1648,float3(l9_1649));
}
else
{
l9_1643=float3(1.0);
}
float3 l9_1650=l9_1643;
float3 l9_1651=l9_1650;
l9_1597.directDiffuse*=l9_1651;
l9_1597.directSpecular*=l9_1651;
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_1652=gl_FragCoord;
float2 l9_1653=l9_1652.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1654=l9_1653;
float2 l9_1655=l9_1654;
float l9_1656=0.0;
int l9_1657;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_1658=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1658=0;
}
else
{
l9_1658=in.varStereoViewID;
}
int l9_1659=l9_1658;
l9_1657=1-l9_1659;
}
else
{
int l9_1660=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1660=0;
}
else
{
l9_1660=in.varStereoViewID;
}
int l9_1661=l9_1660;
l9_1657=l9_1661;
}
int l9_1662=l9_1657;
float2 l9_1663=l9_1655;
int l9_1664=sc_RayTracingShadowsLayout_tmp;
int l9_1665=l9_1662;
float l9_1666=l9_1656;
float2 l9_1667=l9_1663;
int l9_1668=l9_1664;
int l9_1669=l9_1665;
float3 l9_1670=float3(0.0);
if (l9_1668==0)
{
l9_1670=float3(l9_1667,0.0);
}
else
{
if (l9_1668==1)
{
l9_1670=float3(l9_1667.x,(l9_1667.y*0.5)+(0.5-(float(l9_1669)*0.5)),0.0);
}
else
{
l9_1670=float3(l9_1667,float(l9_1669));
}
}
float3 l9_1671=l9_1670;
float3 l9_1672=l9_1671;
float4 l9_1673=sc_set0.sc_RayTracingShadows.sample(sc_set0.sc_RayTracingShadowsSmpSC,l9_1672.xy,bias(l9_1666));
float4 l9_1674=l9_1673;
float4 l9_1675=l9_1674;
float l9_1676=l9_1675.x;
float l9_1677=1.0-l9_1676;
l9_1597.directDiffuse*=l9_1677;
l9_1597.directSpecular*=l9_1677;
}
SurfaceProperties l9_1678=l9_1594;
float3 l9_1679=l9_1678.normal;
float3 l9_1680=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_1681=l9_1679;
float3 l9_1682=l9_1681;
float l9_1683=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1684=float2(0.0);
float l9_1685=l9_1682.x;
float l9_1686=-l9_1682.z;
float l9_1687=(l9_1685<0.0) ? (-1.0) : 1.0;
float l9_1688=l9_1687*acos(fast::clamp(l9_1686/length(float2(l9_1685,l9_1686)),-1.0,1.0));
l9_1684.x=l9_1688-1.5707964;
l9_1684.y=acos(l9_1682.y);
l9_1684/=float2(6.2831855,3.1415927);
l9_1684.y=1.0-l9_1684.y;
l9_1684.x+=(l9_1683/360.0);
l9_1684.x=fract((l9_1684.x+floor(l9_1684.x))+1.0);
float2 l9_1689=l9_1684;
float2 l9_1690=l9_1689;
float4 l9_1691=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_1692=l9_1690;
float2 l9_1693=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1694=5.0;
l9_1690=calcSeamlessPanoramicUvsForSampling(l9_1692,l9_1693,l9_1694);
}
float2 l9_1695=l9_1690;
float l9_1696=13.0;
int l9_1697;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1698=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1698=0;
}
else
{
l9_1698=in.varStereoViewID;
}
int l9_1699=l9_1698;
l9_1697=1-l9_1699;
}
else
{
int l9_1700=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1700=0;
}
else
{
l9_1700=in.varStereoViewID;
}
int l9_1701=l9_1700;
l9_1697=l9_1701;
}
int l9_1702=l9_1697;
float2 l9_1703=l9_1695;
int l9_1704=sc_EnvmapSpecularLayout_tmp;
int l9_1705=l9_1702;
float l9_1706=l9_1696;
float2 l9_1707=l9_1703;
int l9_1708=l9_1704;
int l9_1709=l9_1705;
float3 l9_1710=float3(0.0);
if (l9_1708==0)
{
l9_1710=float3(l9_1707,0.0);
}
else
{
if (l9_1708==1)
{
l9_1710=float3(l9_1707.x,(l9_1707.y*0.5)+(0.5-(float(l9_1709)*0.5)),0.0);
}
else
{
l9_1710=float3(l9_1707,float(l9_1709));
}
}
float3 l9_1711=l9_1710;
float3 l9_1712=l9_1711;
float4 l9_1713=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1712.xy,bias(l9_1706));
float4 l9_1714=l9_1713;
l9_1691=l9_1714;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_1715=l9_1690;
float2 l9_1716=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_1717=0.0;
l9_1690=calcSeamlessPanoramicUvsForSampling(l9_1715,l9_1716,l9_1717);
float2 l9_1718=l9_1690;
float l9_1719=-13.0;
int l9_1720;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_1721=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1721=0;
}
else
{
l9_1721=in.varStereoViewID;
}
int l9_1722=l9_1721;
l9_1720=1-l9_1722;
}
else
{
int l9_1723=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1723=0;
}
else
{
l9_1723=in.varStereoViewID;
}
int l9_1724=l9_1723;
l9_1720=l9_1724;
}
int l9_1725=l9_1720;
float2 l9_1726=l9_1718;
int l9_1727=sc_EnvmapDiffuseLayout_tmp;
int l9_1728=l9_1725;
float l9_1729=l9_1719;
float2 l9_1730=l9_1726;
int l9_1731=l9_1727;
int l9_1732=l9_1728;
float3 l9_1733=float3(0.0);
if (l9_1731==0)
{
l9_1733=float3(l9_1730,0.0);
}
else
{
if (l9_1731==1)
{
l9_1733=float3(l9_1730.x,(l9_1730.y*0.5)+(0.5-(float(l9_1732)*0.5)),0.0);
}
else
{
l9_1733=float3(l9_1730,float(l9_1732));
}
}
float3 l9_1734=l9_1733;
float3 l9_1735=l9_1734;
float4 l9_1736=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_1735.xy,bias(l9_1729));
float4 l9_1737=l9_1736;
l9_1691=l9_1737;
}
else
{
float2 l9_1738=l9_1690;
float l9_1739=13.0;
int l9_1740;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1741=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1741=0;
}
else
{
l9_1741=in.varStereoViewID;
}
int l9_1742=l9_1741;
l9_1740=1-l9_1742;
}
else
{
int l9_1743=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1743=0;
}
else
{
l9_1743=in.varStereoViewID;
}
int l9_1744=l9_1743;
l9_1740=l9_1744;
}
int l9_1745=l9_1740;
float2 l9_1746=l9_1738;
int l9_1747=sc_EnvmapSpecularLayout_tmp;
int l9_1748=l9_1745;
float l9_1749=l9_1739;
float2 l9_1750=l9_1746;
int l9_1751=l9_1747;
int l9_1752=l9_1748;
float3 l9_1753=float3(0.0);
if (l9_1751==0)
{
l9_1753=float3(l9_1750,0.0);
}
else
{
if (l9_1751==1)
{
l9_1753=float3(l9_1750.x,(l9_1750.y*0.5)+(0.5-(float(l9_1752)*0.5)),0.0);
}
else
{
l9_1753=float3(l9_1750,float(l9_1752));
}
}
float3 l9_1754=l9_1753;
float3 l9_1755=l9_1754;
float4 l9_1756=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1755.xy,bias(l9_1749));
float4 l9_1757=l9_1756;
l9_1691=l9_1757;
}
}
float4 l9_1758=l9_1691;
float3 l9_1759=l9_1758.xyz*(1.0/l9_1758.w);
float3 l9_1760=l9_1759*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1680=l9_1760;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_1761=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_1762=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_1763=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_1764=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_1765=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_1766=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_1767=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_1768=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_1769=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_1770=-l9_1679;
float l9_1771=0.0;
l9_1771=l9_1770.x;
float l9_1772=l9_1770.y;
float l9_1773=l9_1770.z;
float l9_1774=l9_1771*l9_1771;
float l9_1775=l9_1772*l9_1772;
float l9_1776=l9_1773*l9_1773;
float l9_1777=l9_1771*l9_1772;
float l9_1778=l9_1772*l9_1773;
float l9_1779=l9_1771*l9_1773;
float3 l9_1780=((((((l9_1769*0.42904299)*(l9_1774-l9_1775))+((l9_1767*0.74312502)*l9_1776))+(l9_1761*0.88622701))-(l9_1767*0.24770799))+((((l9_1765*l9_1777)+(l9_1768*l9_1779))+(l9_1766*l9_1778))*0.85808599))+((((l9_1764*l9_1771)+(l9_1762*l9_1772))+(l9_1763*l9_1773))*1.0233279);
l9_1680=l9_1780*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_1781=gl_FragCoord;
float2 l9_1782=l9_1781.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1783=l9_1782;
float2 l9_1784=l9_1783;
float l9_1785=0.0;
int l9_1786;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_1787=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1787=0;
}
else
{
l9_1787=in.varStereoViewID;
}
int l9_1788=l9_1787;
l9_1786=1-l9_1788;
}
else
{
int l9_1789=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1789=0;
}
else
{
l9_1789=in.varStereoViewID;
}
int l9_1790=l9_1789;
l9_1786=l9_1790;
}
int l9_1791=l9_1786;
float2 l9_1792=l9_1784;
int l9_1793=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_1794=l9_1791;
float l9_1795=l9_1785;
float2 l9_1796=l9_1792;
int l9_1797=l9_1793;
int l9_1798=l9_1794;
float3 l9_1799=float3(0.0);
if (l9_1797==0)
{
l9_1799=float3(l9_1796,0.0);
}
else
{
if (l9_1797==1)
{
l9_1799=float3(l9_1796.x,(l9_1796.y*0.5)+(0.5-(float(l9_1798)*0.5)),0.0);
}
else
{
l9_1799=float3(l9_1796,float(l9_1798));
}
}
float3 l9_1800=l9_1799;
float3 l9_1801=l9_1800;
float4 l9_1802=sc_set0.sc_RayTracingGlobalIllumination.sample(sc_set0.sc_RayTracingGlobalIlluminationSmpSC,l9_1801.xy,bias(l9_1795));
float4 l9_1803=l9_1802;
float4 l9_1804=l9_1803;
float4 l9_1805=l9_1804;
l9_1680=mix(l9_1680,l9_1805.xyz,float3(l9_1805.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1680+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_1680.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1680+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_1680.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1680+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_1680.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_1806=l9_1679;
float3 l9_1807=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_1808;
float l9_1809;
int l9_1810=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1810<sc_LightEstimationSGCount_tmp)
{
l9_1808.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1810].color;
l9_1808.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1810].sharpness;
l9_1808.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1810].axis;
float3 l9_1811=l9_1806;
float l9_1812=dot(l9_1808.axis,l9_1811);
float l9_1813=l9_1808.sharpness;
float l9_1814=0.36000001;
float l9_1815=1.0/(4.0*l9_1814);
float l9_1816=exp(-l9_1813);
float l9_1817=l9_1816*l9_1816;
float l9_1818=1.0/l9_1813;
float l9_1819=(1.0+(2.0*l9_1817))-l9_1818;
float l9_1820=((l9_1816-l9_1817)*l9_1818)-l9_1817;
float l9_1821=sqrt(1.0-l9_1819);
float l9_1822=l9_1814*l9_1812;
float l9_1823=l9_1815*l9_1821;
float l9_1824=l9_1822+l9_1823;
float l9_1825=l9_1812;
float l9_1826=fast::clamp(l9_1825,0.0,1.0);
float l9_1827=l9_1826;
if (step(abs(l9_1822),l9_1823)>0.5)
{
l9_1809=(l9_1824*l9_1824)/l9_1821;
}
else
{
l9_1809=l9_1827;
}
l9_1827=l9_1809;
float l9_1828=(l9_1819*l9_1827)+l9_1820;
sc_SphericalGaussianLight_t l9_1829=l9_1808;
float3 l9_1830=(l9_1829.color/float3(l9_1829.sharpness))*6.2831855;
float3 l9_1831=(l9_1830*l9_1828)/float3(3.1415927);
l9_1807+=l9_1831;
l9_1810++;
continue;
}
else
{
break;
}
}
float3 l9_1832=l9_1807;
l9_1680+=l9_1832;
}
float3 l9_1833=l9_1680;
float3 l9_1834=l9_1833;
l9_1597.indirectDiffuse=l9_1834;
SurfaceProperties l9_1835=l9_1594;
float3 l9_1836=l9_1598;
float3 l9_1837=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_1838=l9_1835;
float3 l9_1839=l9_1836;
float3 l9_1840=l9_1838.normal;
float3 l9_1841=reflect(-l9_1839,l9_1840);
float3 l9_1842=l9_1840;
float3 l9_1843=l9_1841;
float l9_1844=l9_1838.roughness;
l9_1841=getSpecularDominantDir(l9_1842,l9_1843,l9_1844);
float l9_1845=l9_1838.roughness;
float l9_1846=pow(l9_1845,0.66666669);
float l9_1847=fast::clamp(l9_1846,0.0,1.0);
float l9_1848=l9_1847*5.0;
float l9_1849=l9_1848;
float l9_1850=l9_1849;
float3 l9_1851=l9_1841;
float l9_1852=l9_1850;
float3 l9_1853=l9_1851;
float l9_1854=l9_1852;
float4 l9_1855=float4(0.0);
float3 l9_1856=l9_1853;
float l9_1857=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1858=float2(0.0);
float l9_1859=l9_1856.x;
float l9_1860=-l9_1856.z;
float l9_1861=(l9_1859<0.0) ? (-1.0) : 1.0;
float l9_1862=l9_1861*acos(fast::clamp(l9_1860/length(float2(l9_1859,l9_1860)),-1.0,1.0));
l9_1858.x=l9_1862-1.5707964;
l9_1858.y=acos(l9_1856.y);
l9_1858/=float2(6.2831855,3.1415927);
l9_1858.y=1.0-l9_1858.y;
l9_1858.x+=(l9_1857/360.0);
l9_1858.x=fract((l9_1858.x+floor(l9_1858.x))+1.0);
float2 l9_1863=l9_1858;
float2 l9_1864=l9_1863;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_1865=floor(l9_1854);
float l9_1866=ceil(l9_1854);
float l9_1867=l9_1854-l9_1865;
float2 l9_1868=l9_1864;
float2 l9_1869=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1870=l9_1865;
float2 l9_1871=calcSeamlessPanoramicUvsForSampling(l9_1868,l9_1869,l9_1870);
float2 l9_1872=l9_1871;
float l9_1873=l9_1865;
float2 l9_1874=l9_1872;
float l9_1875=l9_1873;
int l9_1876;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1877=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1877=0;
}
else
{
l9_1877=in.varStereoViewID;
}
int l9_1878=l9_1877;
l9_1876=1-l9_1878;
}
else
{
int l9_1879=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1879=0;
}
else
{
l9_1879=in.varStereoViewID;
}
int l9_1880=l9_1879;
l9_1876=l9_1880;
}
int l9_1881=l9_1876;
float2 l9_1882=l9_1874;
int l9_1883=sc_EnvmapSpecularLayout_tmp;
int l9_1884=l9_1881;
float l9_1885=l9_1875;
float2 l9_1886=l9_1882;
int l9_1887=l9_1883;
int l9_1888=l9_1884;
float3 l9_1889=float3(0.0);
if (l9_1887==0)
{
l9_1889=float3(l9_1886,0.0);
}
else
{
if (l9_1887==1)
{
l9_1889=float3(l9_1886.x,(l9_1886.y*0.5)+(0.5-(float(l9_1888)*0.5)),0.0);
}
else
{
l9_1889=float3(l9_1886,float(l9_1888));
}
}
float3 l9_1890=l9_1889;
float3 l9_1891=l9_1890;
float4 l9_1892=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1891.xy,level(l9_1885));
float4 l9_1893=l9_1892;
float4 l9_1894=l9_1893;
float4 l9_1895=l9_1894;
float2 l9_1896=l9_1864;
float2 l9_1897=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1898=l9_1866;
float2 l9_1899=calcSeamlessPanoramicUvsForSampling(l9_1896,l9_1897,l9_1898);
float2 l9_1900=l9_1899;
float l9_1901=l9_1866;
float2 l9_1902=l9_1900;
float l9_1903=l9_1901;
int l9_1904;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1905=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1905=0;
}
else
{
l9_1905=in.varStereoViewID;
}
int l9_1906=l9_1905;
l9_1904=1-l9_1906;
}
else
{
int l9_1907=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1907=0;
}
else
{
l9_1907=in.varStereoViewID;
}
int l9_1908=l9_1907;
l9_1904=l9_1908;
}
int l9_1909=l9_1904;
float2 l9_1910=l9_1902;
int l9_1911=sc_EnvmapSpecularLayout_tmp;
int l9_1912=l9_1909;
float l9_1913=l9_1903;
float2 l9_1914=l9_1910;
int l9_1915=l9_1911;
int l9_1916=l9_1912;
float3 l9_1917=float3(0.0);
if (l9_1915==0)
{
l9_1917=float3(l9_1914,0.0);
}
else
{
if (l9_1915==1)
{
l9_1917=float3(l9_1914.x,(l9_1914.y*0.5)+(0.5-(float(l9_1916)*0.5)),0.0);
}
else
{
l9_1917=float3(l9_1914,float(l9_1916));
}
}
float3 l9_1918=l9_1917;
float3 l9_1919=l9_1918;
float4 l9_1920=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1919.xy,level(l9_1913));
float4 l9_1921=l9_1920;
float4 l9_1922=l9_1921;
float4 l9_1923=l9_1922;
l9_1855=mix(l9_1895,l9_1923,float4(l9_1867));
}
else
{
float2 l9_1924=l9_1864;
float l9_1925=l9_1854;
float2 l9_1926=l9_1924;
float l9_1927=l9_1925;
int l9_1928;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1929=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1929=0;
}
else
{
l9_1929=in.varStereoViewID;
}
int l9_1930=l9_1929;
l9_1928=1-l9_1930;
}
else
{
int l9_1931=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1931=0;
}
else
{
l9_1931=in.varStereoViewID;
}
int l9_1932=l9_1931;
l9_1928=l9_1932;
}
int l9_1933=l9_1928;
float2 l9_1934=l9_1926;
int l9_1935=sc_EnvmapSpecularLayout_tmp;
int l9_1936=l9_1933;
float l9_1937=l9_1927;
float2 l9_1938=l9_1934;
int l9_1939=l9_1935;
int l9_1940=l9_1936;
float3 l9_1941=float3(0.0);
if (l9_1939==0)
{
l9_1941=float3(l9_1938,0.0);
}
else
{
if (l9_1939==1)
{
l9_1941=float3(l9_1938.x,(l9_1938.y*0.5)+(0.5-(float(l9_1940)*0.5)),0.0);
}
else
{
l9_1941=float3(l9_1938,float(l9_1940));
}
}
float3 l9_1942=l9_1941;
float3 l9_1943=l9_1942;
float4 l9_1944=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1943.xy,level(l9_1937));
float4 l9_1945=l9_1944;
float4 l9_1946=l9_1945;
l9_1855=l9_1946;
}
float4 l9_1947=l9_1855;
float3 l9_1948=l9_1947.xyz*(1.0/l9_1947.w);
float3 l9_1949=l9_1948;
float3 l9_1950=l9_1949*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1950+=float3(1e-06);
float3 l9_1951=l9_1950;
float3 l9_1952=l9_1951;
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_1953=gl_FragCoord;
float2 l9_1954=l9_1953.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1955=l9_1954;
float2 l9_1956=l9_1955;
float l9_1957=0.0;
int l9_1958;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_1959=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1959=0;
}
else
{
l9_1959=in.varStereoViewID;
}
int l9_1960=l9_1959;
l9_1958=1-l9_1960;
}
else
{
int l9_1961=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1961=0;
}
else
{
l9_1961=in.varStereoViewID;
}
int l9_1962=l9_1961;
l9_1958=l9_1962;
}
int l9_1963=l9_1958;
float2 l9_1964=l9_1956;
int l9_1965=sc_RayTracingReflectionsLayout_tmp;
int l9_1966=l9_1963;
float l9_1967=l9_1957;
float2 l9_1968=l9_1964;
int l9_1969=l9_1965;
int l9_1970=l9_1966;
float3 l9_1971=float3(0.0);
if (l9_1969==0)
{
l9_1971=float3(l9_1968,0.0);
}
else
{
if (l9_1969==1)
{
l9_1971=float3(l9_1968.x,(l9_1968.y*0.5)+(0.5-(float(l9_1970)*0.5)),0.0);
}
else
{
l9_1971=float3(l9_1968,float(l9_1970));
}
}
float3 l9_1972=l9_1971;
float3 l9_1973=l9_1972;
float4 l9_1974=sc_set0.sc_RayTracingReflections.sample(sc_set0.sc_RayTracingReflectionsSmpSC,l9_1973.xy,bias(l9_1967));
float4 l9_1975=l9_1974;
float4 l9_1976=l9_1975;
float4 l9_1977=l9_1976;
l9_1952=mix(l9_1952,l9_1977.xyz,float3(l9_1977.w));
}
float l9_1978=abs(dot(l9_1840,l9_1839));
SurfaceProperties l9_1979=l9_1838;
float l9_1980=l9_1978;
float3 l9_1981=l9_1952*envBRDFApprox(l9_1979,l9_1980);
l9_1837+=l9_1981;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_1982=l9_1835;
float3 l9_1983=l9_1836;
float l9_1984=fast::clamp(l9_1982.roughness*l9_1982.roughness,0.0099999998,1.0);
float3 l9_1985=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_1982.specColor;
sc_SphericalGaussianLight_t l9_1986;
sc_SphericalGaussianLight_t l9_1987;
sc_SphericalGaussianLight_t l9_1988;
int l9_1989=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1989<sc_LightEstimationSGCount_tmp)
{
l9_1986.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1989].color;
l9_1986.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1989].sharpness;
l9_1986.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1989].axis;
float3 l9_1990=l9_1982.normal;
float l9_1991=l9_1984;
float3 l9_1992=l9_1983;
float3 l9_1993=l9_1982.specColor;
float3 l9_1994=l9_1990;
float l9_1995=l9_1991;
l9_1987.axis=l9_1994;
float l9_1996=l9_1995*l9_1995;
l9_1987.sharpness=2.0/l9_1996;
l9_1987.color=float3(1.0/(3.1415927*l9_1996));
sc_SphericalGaussianLight_t l9_1997=l9_1987;
sc_SphericalGaussianLight_t l9_1998=l9_1997;
sc_SphericalGaussianLight_t l9_1999=l9_1998;
float3 l9_2000=l9_1992;
l9_1988.axis=reflect(-l9_2000,l9_1999.axis);
l9_1988.color=l9_1999.color;
l9_1988.sharpness=l9_1999.sharpness;
l9_1988.sharpness/=(4.0*fast::max(dot(l9_1999.axis,l9_2000),9.9999997e-05));
sc_SphericalGaussianLight_t l9_2001=l9_1988;
sc_SphericalGaussianLight_t l9_2002=l9_2001;
sc_SphericalGaussianLight_t l9_2003=l9_2002;
sc_SphericalGaussianLight_t l9_2004=l9_1986;
float l9_2005=length((l9_2003.axis*l9_2003.sharpness)+(l9_2004.axis*l9_2004.sharpness));
float3 l9_2006=(l9_2003.color*exp((l9_2005-l9_2003.sharpness)-l9_2004.sharpness))*l9_2004.color;
float l9_2007=1.0-exp((-2.0)*l9_2005);
float3 l9_2008=((l9_2006*6.2831855)*l9_2007)/float3(l9_2005);
float3 l9_2009=l9_2008;
float3 l9_2010=l9_2002.axis;
float l9_2011=l9_1991*l9_1991;
float l9_2012=dot(l9_1990,l9_2010);
float l9_2013=fast::clamp(l9_2012,0.0,1.0);
float l9_2014=l9_2013;
float l9_2015=dot(l9_1990,l9_1992);
float l9_2016=fast::clamp(l9_2015,0.0,1.0);
float l9_2017=l9_2016;
float3 l9_2018=normalize(l9_2002.axis+l9_1992);
float l9_2019=l9_2011;
float l9_2020=l9_2014;
float l9_2021=1.0/(l9_2020+sqrt(l9_2019+(((1.0-l9_2019)*l9_2020)*l9_2020)));
float l9_2022=l9_2011;
float l9_2023=l9_2017;
float l9_2024=1.0/(l9_2023+sqrt(l9_2022+(((1.0-l9_2022)*l9_2023)*l9_2023)));
l9_2009*=(l9_2021*l9_2024);
float l9_2025=dot(l9_2010,l9_2018);
float l9_2026=fast::clamp(l9_2025,0.0,1.0);
float l9_2027=pow(1.0-l9_2026,5.0);
l9_2009*=(l9_1993+((float3(1.0)-l9_1993)*l9_2027));
l9_2009*=l9_2014;
float3 l9_2028=l9_2009;
l9_1985+=l9_2028;
l9_1989++;
continue;
}
else
{
break;
}
}
float3 l9_2029=l9_1985;
l9_1837+=l9_2029;
}
float3 l9_2030=l9_1837;
l9_1597.indirectSpecular=l9_2030;
LightingComponents l9_2031=l9_1597;
LightingComponents l9_2032=l9_2031;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2032.directDiffuse=float3(0.0);
l9_2032.indirectDiffuse=float3(0.0);
float4 l9_2033=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2034=out.sc_FragData0;
l9_2033=l9_2034;
}
else
{
float4 l9_2035=gl_FragCoord;
float2 l9_2036=l9_2035.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2037=l9_2036;
float2 l9_2038=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2039=1;
int l9_2040=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2040=0;
}
else
{
l9_2040=in.varStereoViewID;
}
int l9_2041=l9_2040;
int l9_2042=l9_2041;
float3 l9_2043=float3(l9_2037,0.0);
int l9_2044=l9_2039;
int l9_2045=l9_2042;
if (l9_2044==1)
{
l9_2043.y=((2.0*l9_2043.y)+float(l9_2045))-1.0;
}
float2 l9_2046=l9_2043.xy;
l9_2038=l9_2046;
}
else
{
l9_2038=l9_2037;
}
float2 l9_2047=l9_2038;
float2 l9_2048=l9_2047;
float2 l9_2049=l9_2048;
float2 l9_2050=l9_2049;
float l9_2051=0.0;
int l9_2052;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2053=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2053=0;
}
else
{
l9_2053=in.varStereoViewID;
}
int l9_2054=l9_2053;
l9_2052=1-l9_2054;
}
else
{
int l9_2055=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2055=0;
}
else
{
l9_2055=in.varStereoViewID;
}
int l9_2056=l9_2055;
l9_2052=l9_2056;
}
int l9_2057=l9_2052;
float2 l9_2058=l9_2050;
int l9_2059=sc_ScreenTextureLayout_tmp;
int l9_2060=l9_2057;
float l9_2061=l9_2051;
float2 l9_2062=l9_2058;
int l9_2063=l9_2059;
int l9_2064=l9_2060;
float3 l9_2065=float3(0.0);
if (l9_2063==0)
{
l9_2065=float3(l9_2062,0.0);
}
else
{
if (l9_2063==1)
{
l9_2065=float3(l9_2062.x,(l9_2062.y*0.5)+(0.5-(float(l9_2064)*0.5)),0.0);
}
else
{
l9_2065=float3(l9_2062,float(l9_2064));
}
}
float3 l9_2066=l9_2065;
float3 l9_2067=l9_2066;
float4 l9_2068=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2067.xy,bias(l9_2061));
float4 l9_2069=l9_2068;
float4 l9_2070=l9_2069;
l9_2033=l9_2070;
}
float4 l9_2071=l9_2033;
float3 l9_2072=l9_2071.xyz;
float3 l9_2073;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2073=float3(pow(l9_2072.x,2.2),pow(l9_2072.y,2.2),pow(l9_2072.z,2.2));
}
else
{
l9_2073=l9_2072*l9_2072;
}
float3 l9_2074=l9_2073;
float3 l9_2075=l9_2074;
l9_2032.transmitted=l9_2075*mix(float3(1.0),l9_1581.albedo,float3(l9_1581.opacity));
l9_1581.opacity=1.0;
}
bool l9_2076=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2076=true;
}
SurfaceProperties l9_2077=l9_1581;
LightingComponents l9_2078=l9_2032;
bool l9_2079=l9_2076;
float3 l9_2080=l9_2077.albedo*(l9_2078.directDiffuse+(l9_2078.indirectDiffuse*l9_2077.ao));
float3 l9_2081=l9_2078.directSpecular+(l9_2078.indirectSpecular*l9_2077.specularAo);
float3 l9_2082=l9_2077.emissive;
float3 l9_2083=l9_2078.transmitted;
if (l9_2079)
{
float l9_2084=l9_2077.opacity;
l9_2080*=srgbToLinear(l9_2084);
}
float3 l9_2085=((l9_2080+l9_2081)+l9_2082)+l9_2083;
float3 l9_2086=l9_2085;
float4 l9_2087=float4(l9_2086,l9_1581.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
l9_2087.x+=((l9_1581.ao.x*l9_1581.specularAo.x)*9.9999997e-06);
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_2088=l9_2087.xyz;
float l9_2089=1.8;
float l9_2090=1.4;
float l9_2091=0.5;
float l9_2092=1.5;
float3 l9_2093=(l9_2088*((l9_2088*l9_2089)+float3(l9_2090)))/((l9_2088*((l9_2088*l9_2089)+float3(l9_2091)))+float3(l9_2092));
l9_2087=float4(l9_2093.x,l9_2093.y,l9_2093.z,l9_2087.w);
}
float3 l9_2094=l9_2087.xyz;
float l9_2095=l9_2094.x;
float l9_2096=l9_2094.y;
float l9_2097=l9_2094.z;
float3 l9_2098=float3(linearToSrgb(l9_2095),linearToSrgb(l9_2096),linearToSrgb(l9_2097));
l9_2087=float4(l9_2098.x,l9_2098.y,l9_2098.z,l9_2087.w);
float4 l9_2099=l9_2087;
l9_1568=l9_2099;
}
l9_1568=fast::max(l9_1568,float4(0.0));
l9_1554=l9_1568;
param=l9_1554;
param_2=param;
}
else
{
float l9_2100=0.0;
float l9_2101;
if ((int(TRAILS_tmp)!=0))
{
l9_2101=1.001;
}
else
{
l9_2101=0.001;
}
l9_2101-=0.001;
l9_2100=l9_2101;
float4 l9_2102=float4(0.0);
l9_2102=param_3.VertexColor;
float l9_2103=0.0;
l9_2103=l9_2102.x;
float l9_2104=0.0;
float l9_2105=l9_2100;
bool l9_2106=(l9_2105*1.0)!=0.0;
bool l9_2107;
if (l9_2106)
{
l9_2107=(l9_2103*1.0)!=0.0;
}
else
{
l9_2107=l9_2106;
}
l9_2104=float(l9_2107);
float2 l9_2108=float2(0.0);
float2 l9_2109=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_2108=l9_2109;
float2 l9_2110=float2(0.0);
float l9_2111=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_2112=float2(0.0);
float2 l9_2113;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_2113=float2(l9_2111);
}
else
{
float2 l9_2114=float2(0.0);
float2 l9_2115=(*sc_set0.UserUniforms).trailFadeInOut;
l9_2114=l9_2115;
l9_2112=l9_2114;
l9_2113=l9_2112;
}
l9_2110=l9_2113;
float4 l9_2116=float4(0.0);
l9_2116=float4(l9_2108.x,l9_2108.y,l9_2116.z,l9_2116.w);
l9_2116=float4(l9_2116.x,l9_2116.y,l9_2110.x,l9_2110.y);
float3 l9_2117=float3(0.0);
float3 l9_2118=(*sc_set0.UserUniforms).colorStart;
l9_2117=l9_2118;
float3 l9_2119=float3(0.0);
float3 l9_2120=(*sc_set0.UserUniforms).colorEnd;
l9_2119=l9_2120;
float3 l9_2121=float3(0.0);
float3 l9_2122=(*sc_set0.UserUniforms).colorMinStart;
l9_2121=l9_2122;
float3 l9_2123=float3(0.0);
float3 l9_2124=(*sc_set0.UserUniforms).colorMinEnd;
l9_2123=l9_2124;
float3 l9_2125=float3(0.0);
float3 l9_2126=(*sc_set0.UserUniforms).colorMaxStart;
l9_2125=l9_2126;
float3 l9_2127=float3(0.0);
float3 l9_2128=(*sc_set0.UserUniforms).colorMaxEnd;
l9_2127=l9_2128;
float l9_2129=0.0;
float l9_2130=(*sc_set0.UserUniforms).alphaStart;
l9_2129=l9_2130;
float l9_2131=0.0;
float l9_2132=(*sc_set0.UserUniforms).alphaEnd;
l9_2131=l9_2132;
float l9_2133=0.0;
float l9_2134=(*sc_set0.UserUniforms).alphaMinStart;
l9_2133=l9_2134;
float l9_2135=0.0;
float l9_2136=(*sc_set0.UserUniforms).alphaMinEnd;
l9_2135=l9_2136;
float l9_2137=0.0;
float l9_2138=(*sc_set0.UserUniforms).alphaMaxStart;
l9_2137=l9_2138;
float l9_2139=0.0;
float l9_2140=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_2139=l9_2140;
float l9_2141=0.0;
float l9_2142=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_2141=l9_2142;
float l9_2143=0.0;
float l9_2144=(*sc_set0.UserUniforms).numValidFrames;
l9_2143=l9_2144;
float2 l9_2145=float2(0.0);
float2 l9_2146=(*sc_set0.UserUniforms).gridSize;
l9_2145=l9_2146;
float l9_2147=0.0;
float l9_2148=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_2147=l9_2148;
float l9_2149=0.0;
float l9_2150=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_2149=l9_2150;
float2 l9_2151=float2(0.0);
float2 l9_2152=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_2151=l9_2152;
float4 l9_2153=float4(0.0);
float4 l9_2154=(*sc_set0.UserUniforms).colorRampMult;
l9_2153=l9_2154;
float l9_2155=0.0;
float l9_2156=(*sc_set0.UserUniforms).externalSeed;
l9_2155=l9_2156;
float4 l9_2157=float4(0.0);
float4 l9_2158;
l9_2158.x=in.Interpolator0.x;
l9_2158.y=in.Interpolator0.y;
l9_2158.z=in.Interpolator0.z;
l9_2158.w=in.Interpolator0.w;
l9_2157=l9_2158;
float4 l9_2159=float4(0.0);
float4 l9_2160;
l9_2160.x=in.Interpolator1.x;
l9_2160.y=in.Interpolator1.y;
l9_2160.z=in.Interpolator1.z;
l9_2160.w=in.Interpolator1.w;
l9_2159=l9_2160;
float4 l9_2161=float4(0.0);
float l9_2162=l9_2104;
float4 l9_2163=l9_2116;
float3 l9_2164=l9_2117;
float3 l9_2165=l9_2119;
float3 l9_2166=l9_2121;
float3 l9_2167=l9_2123;
float3 l9_2168=l9_2125;
float3 l9_2169=l9_2127;
float l9_2170=l9_2129;
float l9_2171=l9_2131;
float l9_2172=l9_2133;
float l9_2173=l9_2135;
float l9_2174=l9_2137;
float l9_2175=l9_2139;
float l9_2176=l9_2141;
float l9_2177=l9_2143;
float2 l9_2178=l9_2145;
float l9_2179=l9_2147;
float l9_2180=l9_2149;
float2 l9_2181=l9_2151;
float4 l9_2182=l9_2153;
float l9_2183=l9_2155;
float4 l9_2184=l9_2157;
float4 l9_2185=l9_2159;
ssGlobals l9_2186=param_3;
tempGlobals=l9_2186;
float4 l9_2187=float4(0.0);
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_2162!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_2163;
N2_colorStart=l9_2164;
N2_colorEnd=l9_2165;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_2166;
N2_colorMinEnd=l9_2167;
N2_colorMaxStart=l9_2168;
N2_colorMaxEnd=l9_2169;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_2170;
N2_alphaEnd=l9_2171;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_2172;
N2_alphaMinEnd=l9_2173;
N2_alphaMaxStart=l9_2174;
N2_alphaMaxEnd=l9_2175;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_2176;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_2177;
N2_gridSize=l9_2178;
N2_flipBookSpeedMult=l9_2179;
N2_flipBookRandomStart=l9_2180;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_2181;
N2_colorRampMult=l9_2182;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_2183;
N2_timeValuesIn=l9_2184;
N2_cameraFade_trailHeadTime_taper=l9_2185;
float l9_2188=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_2189=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2188=length(float4(1.0)*l9_2189);
}
N2_globalSeed=N2_externalSeed+l9_2188;
int l9_2190=0;
l9_2190=int(tempGlobals.gInstanceID+0.5);
int l9_2191=l9_2190;
float l9_2192=float(l9_2191);
int l9_2193=int(l9_2192);
int l9_2194=l9_2193^(l9_2193*15299);
int l9_2195=l9_2194;
int l9_2196=l9_2195;
int l9_2197=((l9_2196*((l9_2196*1471343)+101146501))+1559861749)&2147483647;
int l9_2198=l9_2197;
int l9_2199=l9_2195*1399;
int l9_2200=((l9_2199*((l9_2199*1471343)+101146501))+1559861749)&2147483647;
int l9_2201=l9_2200;
int l9_2202=l9_2195*7177;
int l9_2203=((l9_2202*((l9_2202*1471343)+101146501))+1559861749)&2147483647;
int l9_2204=l9_2203;
int l9_2205=l9_2198;
float l9_2206=float(l9_2205)*4.6566129e-10;
int l9_2207=l9_2201;
float l9_2208=float(l9_2207)*4.6566129e-10;
int l9_2209=l9_2204;
float l9_2210=float(l9_2209)*4.6566129e-10;
float3 l9_2211=float3(l9_2206,l9_2208,l9_2210);
float3 l9_2212=l9_2211;
N2_particleSeed=l9_2212;
float l9_2213=N2_timeValuesIn.w;
float l9_2214=N2_particleSeed.x;
float l9_2215=N2_particleSeed.y;
float l9_2216=N2_particleSeed.z;
float3 l9_2217=fract((float3(l9_2214,l9_2215,l9_2216)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_2217=fract((float3(l9_2214,l9_2214,l9_2214)*27.21883)+float3(N2_globalSeed));
}
float l9_2218=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_2219=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_2220=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_2221=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_2222=float4(1.0);
float2 l9_2223=tempGlobals.Surface_UVCoord0;
N2_uv=l9_2223;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_2224=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_2225=float2(0.5-(l9_2224/2.0),0.5+(l9_2224/2.0));
float l9_2226=N2_uv.x;
float l9_2227=l9_2225.x;
bool l9_2228=l9_2226<l9_2227;
bool l9_2229;
if (!l9_2228)
{
l9_2229=N2_uv.x>l9_2225.y;
}
else
{
l9_2229=l9_2228;
}
if (l9_2229)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_2225.x)*1.0)/((l9_2225.y-l9_2225.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_2230=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_2231=float4(0.0);
int l9_2232;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_2233=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2233=0;
}
else
{
l9_2233=in.varStereoViewID;
}
int l9_2234=l9_2233;
l9_2232=1-l9_2234;
}
else
{
int l9_2235=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2235=0;
}
else
{
l9_2235=in.varStereoViewID;
}
int l9_2236=l9_2235;
l9_2232=l9_2236;
}
int l9_2237=l9_2232;
int l9_2238=trailTexLayout_tmp;
int l9_2239=l9_2237;
float2 l9_2240=l9_2230;
bool l9_2241=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_2242=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_2243=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_2244=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_2245=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_2246=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_2247=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_2248=0.0;
bool l9_2249=l9_2246&&(!l9_2244);
float l9_2250=1.0;
float l9_2251=l9_2240.x;
int l9_2252=l9_2243.x;
if (l9_2252==1)
{
l9_2251=fract(l9_2251);
}
else
{
if (l9_2252==2)
{
float l9_2253=fract(l9_2251);
float l9_2254=l9_2251-l9_2253;
float l9_2255=step(0.25,fract(l9_2254*0.5));
l9_2251=mix(l9_2253,1.0-l9_2253,fast::clamp(l9_2255,0.0,1.0));
}
}
l9_2240.x=l9_2251;
float l9_2256=l9_2240.y;
int l9_2257=l9_2243.y;
if (l9_2257==1)
{
l9_2256=fract(l9_2256);
}
else
{
if (l9_2257==2)
{
float l9_2258=fract(l9_2256);
float l9_2259=l9_2256-l9_2258;
float l9_2260=step(0.25,fract(l9_2259*0.5));
l9_2256=mix(l9_2258,1.0-l9_2258,fast::clamp(l9_2260,0.0,1.0));
}
}
l9_2240.y=l9_2256;
if (l9_2244)
{
bool l9_2261=l9_2246;
bool l9_2262;
if (l9_2261)
{
l9_2262=l9_2243.x==3;
}
else
{
l9_2262=l9_2261;
}
float l9_2263=l9_2240.x;
float l9_2264=l9_2245.x;
float l9_2265=l9_2245.z;
bool l9_2266=l9_2262;
float l9_2267=l9_2250;
float l9_2268=fast::clamp(l9_2263,l9_2264,l9_2265);
float l9_2269=step(abs(l9_2263-l9_2268),9.9999997e-06);
l9_2267*=(l9_2269+((1.0-float(l9_2266))*(1.0-l9_2269)));
l9_2263=l9_2268;
l9_2240.x=l9_2263;
l9_2250=l9_2267;
bool l9_2270=l9_2246;
bool l9_2271;
if (l9_2270)
{
l9_2271=l9_2243.y==3;
}
else
{
l9_2271=l9_2270;
}
float l9_2272=l9_2240.y;
float l9_2273=l9_2245.y;
float l9_2274=l9_2245.w;
bool l9_2275=l9_2271;
float l9_2276=l9_2250;
float l9_2277=fast::clamp(l9_2272,l9_2273,l9_2274);
float l9_2278=step(abs(l9_2272-l9_2277),9.9999997e-06);
l9_2276*=(l9_2278+((1.0-float(l9_2275))*(1.0-l9_2278)));
l9_2272=l9_2277;
l9_2240.y=l9_2272;
l9_2250=l9_2276;
}
float2 l9_2279=l9_2240;
bool l9_2280=l9_2241;
float3x3 l9_2281=l9_2242;
if (l9_2280)
{
l9_2279=float2((l9_2281*float3(l9_2279,1.0)).xy);
}
float2 l9_2282=l9_2279;
l9_2240=l9_2282;
float l9_2283=l9_2240.x;
int l9_2284=l9_2243.x;
bool l9_2285=l9_2249;
float l9_2286=l9_2250;
if ((l9_2284==0)||(l9_2284==3))
{
float l9_2287=l9_2283;
float l9_2288=0.0;
float l9_2289=1.0;
bool l9_2290=l9_2285;
float l9_2291=l9_2286;
float l9_2292=fast::clamp(l9_2287,l9_2288,l9_2289);
float l9_2293=step(abs(l9_2287-l9_2292),9.9999997e-06);
l9_2291*=(l9_2293+((1.0-float(l9_2290))*(1.0-l9_2293)));
l9_2287=l9_2292;
l9_2283=l9_2287;
l9_2286=l9_2291;
}
l9_2240.x=l9_2283;
l9_2250=l9_2286;
float l9_2294=l9_2240.y;
int l9_2295=l9_2243.y;
bool l9_2296=l9_2249;
float l9_2297=l9_2250;
if ((l9_2295==0)||(l9_2295==3))
{
float l9_2298=l9_2294;
float l9_2299=0.0;
float l9_2300=1.0;
bool l9_2301=l9_2296;
float l9_2302=l9_2297;
float l9_2303=fast::clamp(l9_2298,l9_2299,l9_2300);
float l9_2304=step(abs(l9_2298-l9_2303),9.9999997e-06);
l9_2302*=(l9_2304+((1.0-float(l9_2301))*(1.0-l9_2304)));
l9_2298=l9_2303;
l9_2294=l9_2298;
l9_2297=l9_2302;
}
l9_2240.y=l9_2294;
l9_2250=l9_2297;
float2 l9_2305=l9_2240;
int l9_2306=l9_2238;
int l9_2307=l9_2239;
float l9_2308=l9_2248;
float2 l9_2309=l9_2305;
int l9_2310=l9_2306;
int l9_2311=l9_2307;
float3 l9_2312=float3(0.0);
if (l9_2310==0)
{
l9_2312=float3(l9_2309,0.0);
}
else
{
if (l9_2310==1)
{
l9_2312=float3(l9_2309.x,(l9_2309.y*0.5)+(0.5-(float(l9_2311)*0.5)),0.0);
}
else
{
l9_2312=float3(l9_2309,float(l9_2311));
}
}
float3 l9_2313=l9_2312;
float3 l9_2314=l9_2313;
float4 l9_2315=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_2314.xy,bias(l9_2308));
float4 l9_2316=l9_2315;
if (l9_2246)
{
l9_2316=mix(l9_2247,l9_2316,float4(l9_2250));
}
float4 l9_2317=l9_2316;
l9_2231=l9_2317;
float4 l9_2318=l9_2231;
l9_2222=l9_2318;
}
float l9_2319=fast::max(1e-06,N2_fadeInOut.x);
float l9_2320=N2_timeValuesIn.w;
l9_2221*=mix(0.0,1.0,fast::clamp(l9_2320,0.0,l9_2319)/l9_2319);
l9_2319=fast::max(1e-06,N2_fadeInOut.y);
l9_2221*=mix(0.0,1.0,fast::clamp(1.0-l9_2320,0.0,l9_2319)/l9_2319);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_2213=N2_trailHeadTime.y;
l9_2319=fast::max(1e-06,N2_fadeInOut.z);
l9_2221*=mix(0.0,1.0,fast::clamp(l9_2213,0.0,l9_2319)/l9_2319);
l9_2319=fast::max(1e-06,N2_fadeInOut.w);
l9_2221*=mix(0.0,1.0,fast::clamp(1.0-l9_2213,0.0,l9_2319)/l9_2319);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_2321=float2(0.0);
l9_2321=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_2322=l9_2321;
float2 l9_2323=float2(0.0);
l9_2323=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_2324=l9_2323;
float l9_2325=ceil(l9_2213*l9_2322.x)/l9_2324.x;
float2 l9_2326=float2(l9_2325,0.5);
float4 l9_2327=float4(0.0);
int l9_2328;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_2329=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2329=0;
}
else
{
l9_2329=in.varStereoViewID;
}
int l9_2330=l9_2329;
l9_2328=1-l9_2330;
}
else
{
int l9_2331=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2331=0;
}
else
{
l9_2331=in.varStereoViewID;
}
int l9_2332=l9_2331;
l9_2328=l9_2332;
}
int l9_2333=l9_2328;
int l9_2334=trailColorRampTexLayout_tmp;
int l9_2335=l9_2333;
float2 l9_2336=l9_2326;
bool l9_2337=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_2338=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_2339=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_2340=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_2341=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_2342=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_2343=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_2344=0.0;
bool l9_2345=l9_2342&&(!l9_2340);
float l9_2346=1.0;
float l9_2347=l9_2336.x;
int l9_2348=l9_2339.x;
if (l9_2348==1)
{
l9_2347=fract(l9_2347);
}
else
{
if (l9_2348==2)
{
float l9_2349=fract(l9_2347);
float l9_2350=l9_2347-l9_2349;
float l9_2351=step(0.25,fract(l9_2350*0.5));
l9_2347=mix(l9_2349,1.0-l9_2349,fast::clamp(l9_2351,0.0,1.0));
}
}
l9_2336.x=l9_2347;
float l9_2352=l9_2336.y;
int l9_2353=l9_2339.y;
if (l9_2353==1)
{
l9_2352=fract(l9_2352);
}
else
{
if (l9_2353==2)
{
float l9_2354=fract(l9_2352);
float l9_2355=l9_2352-l9_2354;
float l9_2356=step(0.25,fract(l9_2355*0.5));
l9_2352=mix(l9_2354,1.0-l9_2354,fast::clamp(l9_2356,0.0,1.0));
}
}
l9_2336.y=l9_2352;
if (l9_2340)
{
bool l9_2357=l9_2342;
bool l9_2358;
if (l9_2357)
{
l9_2358=l9_2339.x==3;
}
else
{
l9_2358=l9_2357;
}
float l9_2359=l9_2336.x;
float l9_2360=l9_2341.x;
float l9_2361=l9_2341.z;
bool l9_2362=l9_2358;
float l9_2363=l9_2346;
float l9_2364=fast::clamp(l9_2359,l9_2360,l9_2361);
float l9_2365=step(abs(l9_2359-l9_2364),9.9999997e-06);
l9_2363*=(l9_2365+((1.0-float(l9_2362))*(1.0-l9_2365)));
l9_2359=l9_2364;
l9_2336.x=l9_2359;
l9_2346=l9_2363;
bool l9_2366=l9_2342;
bool l9_2367;
if (l9_2366)
{
l9_2367=l9_2339.y==3;
}
else
{
l9_2367=l9_2366;
}
float l9_2368=l9_2336.y;
float l9_2369=l9_2341.y;
float l9_2370=l9_2341.w;
bool l9_2371=l9_2367;
float l9_2372=l9_2346;
float l9_2373=fast::clamp(l9_2368,l9_2369,l9_2370);
float l9_2374=step(abs(l9_2368-l9_2373),9.9999997e-06);
l9_2372*=(l9_2374+((1.0-float(l9_2371))*(1.0-l9_2374)));
l9_2368=l9_2373;
l9_2336.y=l9_2368;
l9_2346=l9_2372;
}
float2 l9_2375=l9_2336;
bool l9_2376=l9_2337;
float3x3 l9_2377=l9_2338;
if (l9_2376)
{
l9_2375=float2((l9_2377*float3(l9_2375,1.0)).xy);
}
float2 l9_2378=l9_2375;
l9_2336=l9_2378;
float l9_2379=l9_2336.x;
int l9_2380=l9_2339.x;
bool l9_2381=l9_2345;
float l9_2382=l9_2346;
if ((l9_2380==0)||(l9_2380==3))
{
float l9_2383=l9_2379;
float l9_2384=0.0;
float l9_2385=1.0;
bool l9_2386=l9_2381;
float l9_2387=l9_2382;
float l9_2388=fast::clamp(l9_2383,l9_2384,l9_2385);
float l9_2389=step(abs(l9_2383-l9_2388),9.9999997e-06);
l9_2387*=(l9_2389+((1.0-float(l9_2386))*(1.0-l9_2389)));
l9_2383=l9_2388;
l9_2379=l9_2383;
l9_2382=l9_2387;
}
l9_2336.x=l9_2379;
l9_2346=l9_2382;
float l9_2390=l9_2336.y;
int l9_2391=l9_2339.y;
bool l9_2392=l9_2345;
float l9_2393=l9_2346;
if ((l9_2391==0)||(l9_2391==3))
{
float l9_2394=l9_2390;
float l9_2395=0.0;
float l9_2396=1.0;
bool l9_2397=l9_2392;
float l9_2398=l9_2393;
float l9_2399=fast::clamp(l9_2394,l9_2395,l9_2396);
float l9_2400=step(abs(l9_2394-l9_2399),9.9999997e-06);
l9_2398*=(l9_2400+((1.0-float(l9_2397))*(1.0-l9_2400)));
l9_2394=l9_2399;
l9_2390=l9_2394;
l9_2393=l9_2398;
}
l9_2336.y=l9_2390;
l9_2346=l9_2393;
float2 l9_2401=l9_2336;
int l9_2402=l9_2334;
int l9_2403=l9_2335;
float l9_2404=l9_2344;
float2 l9_2405=l9_2401;
int l9_2406=l9_2402;
int l9_2407=l9_2403;
float3 l9_2408=float3(0.0);
if (l9_2406==0)
{
l9_2408=float3(l9_2405,0.0);
}
else
{
if (l9_2406==1)
{
l9_2408=float3(l9_2405.x,(l9_2405.y*0.5)+(0.5-(float(l9_2407)*0.5)),0.0);
}
else
{
l9_2408=float3(l9_2405,float(l9_2407));
}
}
float3 l9_2409=l9_2408;
float3 l9_2410=l9_2409;
float4 l9_2411=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_2410.xy,bias(l9_2404));
float4 l9_2412=l9_2411;
if (l9_2342)
{
l9_2412=mix(l9_2343,l9_2412,float4(l9_2346));
}
float4 l9_2413=l9_2412;
l9_2327=l9_2413;
float4 l9_2414=l9_2327;
l9_2222*=l9_2414;
}
}
}
float4 l9_2415=float4(0.0);
float3 l9_2416=float3(0.0);
float3 l9_2417=float3(0.0);
float l9_2418=0.0;
float l9_2419=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_2416=mix(N2_colorMinStart,N2_colorMaxStart,l9_2217);
l9_2417=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_2217);
}
else
{
l9_2416=N2_colorStart;
l9_2417=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_2418=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_2218);
l9_2419=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_2218);
}
else
{
l9_2418=N2_alphaStart;
l9_2419=N2_alphaEnd;
}
l9_2416=mix(l9_2416,l9_2417,float3(l9_2213));
l9_2418=mix(l9_2418,l9_2419,l9_2213);
l9_2415=float4(l9_2416,l9_2418);
float4 l9_2420=float4(0.0);
float2 l9_2421=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_2422=tempGlobals.Surface_UVCoord0;
l9_2421=l9_2422;
float2 l9_2423=l9_2421;
float l9_2424=fast::max(N2_timeValuesIn.x,1e-06);
float l9_2425=fast::max(N2_timeValuesIn.y,1e-06);
float l9_2426=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_2427=mix(l9_2424,l9_2425,l9_2220);
l9_2426/=l9_2427;
}
float l9_2428=floor((N2_flipBookRandomStart+1.0)*l9_2219);
float2 l9_2429=l9_2421;
float2 l9_2430=N2_gridSize;
float l9_2431=N2_numValidFrames;
float l9_2432=l9_2428;
float l9_2433=N2_flipBookSpeedMult;
float l9_2434=l9_2426;
float l9_2435=floor(l9_2430.x);
float l9_2436=floor(l9_2430.y);
float l9_2437=1.0/l9_2435;
float l9_2438=1.0/l9_2436;
float l9_2439=fast::min(l9_2435*l9_2436,floor(l9_2431));
float l9_2440=floor(mod((l9_2434*l9_2433)+floor(l9_2432),l9_2439));
float l9_2441=floor(l9_2440/l9_2435);
float l9_2442=mod(l9_2440,l9_2435);
float2 l9_2443=float2((l9_2437*l9_2429.x)+(l9_2442*l9_2437),((1.0-l9_2438)-(l9_2441*l9_2438))+(l9_2438*l9_2429.y));
l9_2421=l9_2443;
float2 l9_2444=l9_2421;
float4 l9_2445=float4(0.0);
int l9_2446;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2447=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2447=0;
}
else
{
l9_2447=in.varStereoViewID;
}
int l9_2448=l9_2447;
l9_2446=1-l9_2448;
}
else
{
int l9_2449=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2449=0;
}
else
{
l9_2449=in.varStereoViewID;
}
int l9_2450=l9_2449;
l9_2446=l9_2450;
}
int l9_2451=l9_2446;
int l9_2452=mainTextureLayout_tmp;
int l9_2453=l9_2451;
float2 l9_2454=l9_2444;
bool l9_2455=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2456=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2457=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2458=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2459=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2460=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2461=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2462=0.0;
bool l9_2463=l9_2460&&(!l9_2458);
float l9_2464=1.0;
float l9_2465=l9_2454.x;
int l9_2466=l9_2457.x;
if (l9_2466==1)
{
l9_2465=fract(l9_2465);
}
else
{
if (l9_2466==2)
{
float l9_2467=fract(l9_2465);
float l9_2468=l9_2465-l9_2467;
float l9_2469=step(0.25,fract(l9_2468*0.5));
l9_2465=mix(l9_2467,1.0-l9_2467,fast::clamp(l9_2469,0.0,1.0));
}
}
l9_2454.x=l9_2465;
float l9_2470=l9_2454.y;
int l9_2471=l9_2457.y;
if (l9_2471==1)
{
l9_2470=fract(l9_2470);
}
else
{
if (l9_2471==2)
{
float l9_2472=fract(l9_2470);
float l9_2473=l9_2470-l9_2472;
float l9_2474=step(0.25,fract(l9_2473*0.5));
l9_2470=mix(l9_2472,1.0-l9_2472,fast::clamp(l9_2474,0.0,1.0));
}
}
l9_2454.y=l9_2470;
if (l9_2458)
{
bool l9_2475=l9_2460;
bool l9_2476;
if (l9_2475)
{
l9_2476=l9_2457.x==3;
}
else
{
l9_2476=l9_2475;
}
float l9_2477=l9_2454.x;
float l9_2478=l9_2459.x;
float l9_2479=l9_2459.z;
bool l9_2480=l9_2476;
float l9_2481=l9_2464;
float l9_2482=fast::clamp(l9_2477,l9_2478,l9_2479);
float l9_2483=step(abs(l9_2477-l9_2482),9.9999997e-06);
l9_2481*=(l9_2483+((1.0-float(l9_2480))*(1.0-l9_2483)));
l9_2477=l9_2482;
l9_2454.x=l9_2477;
l9_2464=l9_2481;
bool l9_2484=l9_2460;
bool l9_2485;
if (l9_2484)
{
l9_2485=l9_2457.y==3;
}
else
{
l9_2485=l9_2484;
}
float l9_2486=l9_2454.y;
float l9_2487=l9_2459.y;
float l9_2488=l9_2459.w;
bool l9_2489=l9_2485;
float l9_2490=l9_2464;
float l9_2491=fast::clamp(l9_2486,l9_2487,l9_2488);
float l9_2492=step(abs(l9_2486-l9_2491),9.9999997e-06);
l9_2490*=(l9_2492+((1.0-float(l9_2489))*(1.0-l9_2492)));
l9_2486=l9_2491;
l9_2454.y=l9_2486;
l9_2464=l9_2490;
}
float2 l9_2493=l9_2454;
bool l9_2494=l9_2455;
float3x3 l9_2495=l9_2456;
if (l9_2494)
{
l9_2493=float2((l9_2495*float3(l9_2493,1.0)).xy);
}
float2 l9_2496=l9_2493;
l9_2454=l9_2496;
float l9_2497=l9_2454.x;
int l9_2498=l9_2457.x;
bool l9_2499=l9_2463;
float l9_2500=l9_2464;
if ((l9_2498==0)||(l9_2498==3))
{
float l9_2501=l9_2497;
float l9_2502=0.0;
float l9_2503=1.0;
bool l9_2504=l9_2499;
float l9_2505=l9_2500;
float l9_2506=fast::clamp(l9_2501,l9_2502,l9_2503);
float l9_2507=step(abs(l9_2501-l9_2506),9.9999997e-06);
l9_2505*=(l9_2507+((1.0-float(l9_2504))*(1.0-l9_2507)));
l9_2501=l9_2506;
l9_2497=l9_2501;
l9_2500=l9_2505;
}
l9_2454.x=l9_2497;
l9_2464=l9_2500;
float l9_2508=l9_2454.y;
int l9_2509=l9_2457.y;
bool l9_2510=l9_2463;
float l9_2511=l9_2464;
if ((l9_2509==0)||(l9_2509==3))
{
float l9_2512=l9_2508;
float l9_2513=0.0;
float l9_2514=1.0;
bool l9_2515=l9_2510;
float l9_2516=l9_2511;
float l9_2517=fast::clamp(l9_2512,l9_2513,l9_2514);
float l9_2518=step(abs(l9_2512-l9_2517),9.9999997e-06);
l9_2516*=(l9_2518+((1.0-float(l9_2515))*(1.0-l9_2518)));
l9_2512=l9_2517;
l9_2508=l9_2512;
l9_2511=l9_2516;
}
l9_2454.y=l9_2508;
l9_2464=l9_2511;
float2 l9_2519=l9_2454;
int l9_2520=l9_2452;
int l9_2521=l9_2453;
float l9_2522=l9_2462;
float2 l9_2523=l9_2519;
int l9_2524=l9_2520;
int l9_2525=l9_2521;
float3 l9_2526=float3(0.0);
if (l9_2524==0)
{
l9_2526=float3(l9_2523,0.0);
}
else
{
if (l9_2524==1)
{
l9_2526=float3(l9_2523.x,(l9_2523.y*0.5)+(0.5-(float(l9_2525)*0.5)),0.0);
}
else
{
l9_2526=float3(l9_2523,float(l9_2525));
}
}
float3 l9_2527=l9_2526;
float3 l9_2528=l9_2527;
float4 l9_2529=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2528.xy,bias(l9_2522));
float4 l9_2530=l9_2529;
if (l9_2460)
{
l9_2530=mix(l9_2461,l9_2530,float4(l9_2464));
}
float4 l9_2531=l9_2530;
l9_2445=l9_2531;
float4 l9_2532=l9_2445;
l9_2420=l9_2532;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_2533=l9_2423;
float2 l9_2534=N2_gridSize;
float l9_2535=N2_numValidFrames;
float l9_2536=floor(mod(l9_2428+1.0,N2_numValidFrames));
float l9_2537=N2_flipBookSpeedMult;
float l9_2538=l9_2426;
float l9_2539=floor(l9_2534.x);
float l9_2540=floor(l9_2534.y);
float l9_2541=1.0/l9_2539;
float l9_2542=1.0/l9_2540;
float l9_2543=fast::min(l9_2539*l9_2540,floor(l9_2535));
float l9_2544=floor(mod((l9_2538*l9_2537)+floor(l9_2536),l9_2543));
float l9_2545=floor(l9_2544/l9_2539);
float l9_2546=mod(l9_2544,l9_2539);
float2 l9_2547=float2((l9_2541*l9_2533.x)+(l9_2546*l9_2541),((1.0-l9_2542)-(l9_2545*l9_2542))+(l9_2542*l9_2533.y));
l9_2423=l9_2547;
float4 l9_2548=l9_2420;
float2 l9_2549=l9_2423;
float4 l9_2550=float4(0.0);
int l9_2551;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2552=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2552=0;
}
else
{
l9_2552=in.varStereoViewID;
}
int l9_2553=l9_2552;
l9_2551=1-l9_2553;
}
else
{
int l9_2554=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2554=0;
}
else
{
l9_2554=in.varStereoViewID;
}
int l9_2555=l9_2554;
l9_2551=l9_2555;
}
int l9_2556=l9_2551;
int l9_2557=mainTextureLayout_tmp;
int l9_2558=l9_2556;
float2 l9_2559=l9_2549;
bool l9_2560=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2561=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2562=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2563=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2564=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2565=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2566=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2567=0.0;
bool l9_2568=l9_2565&&(!l9_2563);
float l9_2569=1.0;
float l9_2570=l9_2559.x;
int l9_2571=l9_2562.x;
if (l9_2571==1)
{
l9_2570=fract(l9_2570);
}
else
{
if (l9_2571==2)
{
float l9_2572=fract(l9_2570);
float l9_2573=l9_2570-l9_2572;
float l9_2574=step(0.25,fract(l9_2573*0.5));
l9_2570=mix(l9_2572,1.0-l9_2572,fast::clamp(l9_2574,0.0,1.0));
}
}
l9_2559.x=l9_2570;
float l9_2575=l9_2559.y;
int l9_2576=l9_2562.y;
if (l9_2576==1)
{
l9_2575=fract(l9_2575);
}
else
{
if (l9_2576==2)
{
float l9_2577=fract(l9_2575);
float l9_2578=l9_2575-l9_2577;
float l9_2579=step(0.25,fract(l9_2578*0.5));
l9_2575=mix(l9_2577,1.0-l9_2577,fast::clamp(l9_2579,0.0,1.0));
}
}
l9_2559.y=l9_2575;
if (l9_2563)
{
bool l9_2580=l9_2565;
bool l9_2581;
if (l9_2580)
{
l9_2581=l9_2562.x==3;
}
else
{
l9_2581=l9_2580;
}
float l9_2582=l9_2559.x;
float l9_2583=l9_2564.x;
float l9_2584=l9_2564.z;
bool l9_2585=l9_2581;
float l9_2586=l9_2569;
float l9_2587=fast::clamp(l9_2582,l9_2583,l9_2584);
float l9_2588=step(abs(l9_2582-l9_2587),9.9999997e-06);
l9_2586*=(l9_2588+((1.0-float(l9_2585))*(1.0-l9_2588)));
l9_2582=l9_2587;
l9_2559.x=l9_2582;
l9_2569=l9_2586;
bool l9_2589=l9_2565;
bool l9_2590;
if (l9_2589)
{
l9_2590=l9_2562.y==3;
}
else
{
l9_2590=l9_2589;
}
float l9_2591=l9_2559.y;
float l9_2592=l9_2564.y;
float l9_2593=l9_2564.w;
bool l9_2594=l9_2590;
float l9_2595=l9_2569;
float l9_2596=fast::clamp(l9_2591,l9_2592,l9_2593);
float l9_2597=step(abs(l9_2591-l9_2596),9.9999997e-06);
l9_2595*=(l9_2597+((1.0-float(l9_2594))*(1.0-l9_2597)));
l9_2591=l9_2596;
l9_2559.y=l9_2591;
l9_2569=l9_2595;
}
float2 l9_2598=l9_2559;
bool l9_2599=l9_2560;
float3x3 l9_2600=l9_2561;
if (l9_2599)
{
l9_2598=float2((l9_2600*float3(l9_2598,1.0)).xy);
}
float2 l9_2601=l9_2598;
l9_2559=l9_2601;
float l9_2602=l9_2559.x;
int l9_2603=l9_2562.x;
bool l9_2604=l9_2568;
float l9_2605=l9_2569;
if ((l9_2603==0)||(l9_2603==3))
{
float l9_2606=l9_2602;
float l9_2607=0.0;
float l9_2608=1.0;
bool l9_2609=l9_2604;
float l9_2610=l9_2605;
float l9_2611=fast::clamp(l9_2606,l9_2607,l9_2608);
float l9_2612=step(abs(l9_2606-l9_2611),9.9999997e-06);
l9_2610*=(l9_2612+((1.0-float(l9_2609))*(1.0-l9_2612)));
l9_2606=l9_2611;
l9_2602=l9_2606;
l9_2605=l9_2610;
}
l9_2559.x=l9_2602;
l9_2569=l9_2605;
float l9_2613=l9_2559.y;
int l9_2614=l9_2562.y;
bool l9_2615=l9_2568;
float l9_2616=l9_2569;
if ((l9_2614==0)||(l9_2614==3))
{
float l9_2617=l9_2613;
float l9_2618=0.0;
float l9_2619=1.0;
bool l9_2620=l9_2615;
float l9_2621=l9_2616;
float l9_2622=fast::clamp(l9_2617,l9_2618,l9_2619);
float l9_2623=step(abs(l9_2617-l9_2622),9.9999997e-06);
l9_2621*=(l9_2623+((1.0-float(l9_2620))*(1.0-l9_2623)));
l9_2617=l9_2622;
l9_2613=l9_2617;
l9_2616=l9_2621;
}
l9_2559.y=l9_2613;
l9_2569=l9_2616;
float2 l9_2624=l9_2559;
int l9_2625=l9_2557;
int l9_2626=l9_2558;
float l9_2627=l9_2567;
float2 l9_2628=l9_2624;
int l9_2629=l9_2625;
int l9_2630=l9_2626;
float3 l9_2631=float3(0.0);
if (l9_2629==0)
{
l9_2631=float3(l9_2628,0.0);
}
else
{
if (l9_2629==1)
{
l9_2631=float3(l9_2628.x,(l9_2628.y*0.5)+(0.5-(float(l9_2630)*0.5)),0.0);
}
else
{
l9_2631=float3(l9_2628,float(l9_2630));
}
}
float3 l9_2632=l9_2631;
float3 l9_2633=l9_2632;
float4 l9_2634=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2633.xy,bias(l9_2627));
float4 l9_2635=l9_2634;
if (l9_2565)
{
l9_2635=mix(l9_2566,l9_2635,float4(l9_2569));
}
float4 l9_2636=l9_2635;
l9_2550=l9_2636;
float4 l9_2637=l9_2550;
l9_2420=mix(l9_2548,l9_2637,float4(fract((l9_2426*N2_flipBookSpeedMult)+l9_2428)));
}
}
}
float4 l9_2638=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_2639=ceil(l9_2213*N2_texSize.x)/N2_texSize.x;
float l9_2640=l9_2639;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_2641=tempGlobals.Surface_UVCoord0;
l9_2640+=(l9_2641.x/N2_texSize.x);
}
float2 l9_2642=float2(l9_2640,0.5);
float4 l9_2643=float4(0.0);
int l9_2644;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2645=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2645=0;
}
else
{
l9_2645=in.varStereoViewID;
}
int l9_2646=l9_2645;
l9_2644=1-l9_2646;
}
else
{
int l9_2647=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2647=0;
}
else
{
l9_2647=in.varStereoViewID;
}
int l9_2648=l9_2647;
l9_2644=l9_2648;
}
int l9_2649=l9_2644;
int l9_2650=colorRampTextureLayout_tmp;
int l9_2651=l9_2649;
float2 l9_2652=l9_2642;
bool l9_2653=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_2654=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_2655=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_2656=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_2657=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_2658=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_2659=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_2660=0.0;
bool l9_2661=l9_2658&&(!l9_2656);
float l9_2662=1.0;
float l9_2663=l9_2652.x;
int l9_2664=l9_2655.x;
if (l9_2664==1)
{
l9_2663=fract(l9_2663);
}
else
{
if (l9_2664==2)
{
float l9_2665=fract(l9_2663);
float l9_2666=l9_2663-l9_2665;
float l9_2667=step(0.25,fract(l9_2666*0.5));
l9_2663=mix(l9_2665,1.0-l9_2665,fast::clamp(l9_2667,0.0,1.0));
}
}
l9_2652.x=l9_2663;
float l9_2668=l9_2652.y;
int l9_2669=l9_2655.y;
if (l9_2669==1)
{
l9_2668=fract(l9_2668);
}
else
{
if (l9_2669==2)
{
float l9_2670=fract(l9_2668);
float l9_2671=l9_2668-l9_2670;
float l9_2672=step(0.25,fract(l9_2671*0.5));
l9_2668=mix(l9_2670,1.0-l9_2670,fast::clamp(l9_2672,0.0,1.0));
}
}
l9_2652.y=l9_2668;
if (l9_2656)
{
bool l9_2673=l9_2658;
bool l9_2674;
if (l9_2673)
{
l9_2674=l9_2655.x==3;
}
else
{
l9_2674=l9_2673;
}
float l9_2675=l9_2652.x;
float l9_2676=l9_2657.x;
float l9_2677=l9_2657.z;
bool l9_2678=l9_2674;
float l9_2679=l9_2662;
float l9_2680=fast::clamp(l9_2675,l9_2676,l9_2677);
float l9_2681=step(abs(l9_2675-l9_2680),9.9999997e-06);
l9_2679*=(l9_2681+((1.0-float(l9_2678))*(1.0-l9_2681)));
l9_2675=l9_2680;
l9_2652.x=l9_2675;
l9_2662=l9_2679;
bool l9_2682=l9_2658;
bool l9_2683;
if (l9_2682)
{
l9_2683=l9_2655.y==3;
}
else
{
l9_2683=l9_2682;
}
float l9_2684=l9_2652.y;
float l9_2685=l9_2657.y;
float l9_2686=l9_2657.w;
bool l9_2687=l9_2683;
float l9_2688=l9_2662;
float l9_2689=fast::clamp(l9_2684,l9_2685,l9_2686);
float l9_2690=step(abs(l9_2684-l9_2689),9.9999997e-06);
l9_2688*=(l9_2690+((1.0-float(l9_2687))*(1.0-l9_2690)));
l9_2684=l9_2689;
l9_2652.y=l9_2684;
l9_2662=l9_2688;
}
float2 l9_2691=l9_2652;
bool l9_2692=l9_2653;
float3x3 l9_2693=l9_2654;
if (l9_2692)
{
l9_2691=float2((l9_2693*float3(l9_2691,1.0)).xy);
}
float2 l9_2694=l9_2691;
l9_2652=l9_2694;
float l9_2695=l9_2652.x;
int l9_2696=l9_2655.x;
bool l9_2697=l9_2661;
float l9_2698=l9_2662;
if ((l9_2696==0)||(l9_2696==3))
{
float l9_2699=l9_2695;
float l9_2700=0.0;
float l9_2701=1.0;
bool l9_2702=l9_2697;
float l9_2703=l9_2698;
float l9_2704=fast::clamp(l9_2699,l9_2700,l9_2701);
float l9_2705=step(abs(l9_2699-l9_2704),9.9999997e-06);
l9_2703*=(l9_2705+((1.0-float(l9_2702))*(1.0-l9_2705)));
l9_2699=l9_2704;
l9_2695=l9_2699;
l9_2698=l9_2703;
}
l9_2652.x=l9_2695;
l9_2662=l9_2698;
float l9_2706=l9_2652.y;
int l9_2707=l9_2655.y;
bool l9_2708=l9_2661;
float l9_2709=l9_2662;
if ((l9_2707==0)||(l9_2707==3))
{
float l9_2710=l9_2706;
float l9_2711=0.0;
float l9_2712=1.0;
bool l9_2713=l9_2708;
float l9_2714=l9_2709;
float l9_2715=fast::clamp(l9_2710,l9_2711,l9_2712);
float l9_2716=step(abs(l9_2710-l9_2715),9.9999997e-06);
l9_2714*=(l9_2716+((1.0-float(l9_2713))*(1.0-l9_2716)));
l9_2710=l9_2715;
l9_2706=l9_2710;
l9_2709=l9_2714;
}
l9_2652.y=l9_2706;
l9_2662=l9_2709;
float2 l9_2717=l9_2652;
int l9_2718=l9_2650;
int l9_2719=l9_2651;
float l9_2720=l9_2660;
float2 l9_2721=l9_2717;
int l9_2722=l9_2718;
int l9_2723=l9_2719;
float3 l9_2724=float3(0.0);
if (l9_2722==0)
{
l9_2724=float3(l9_2721,0.0);
}
else
{
if (l9_2722==1)
{
l9_2724=float3(l9_2721.x,(l9_2721.y*0.5)+(0.5-(float(l9_2723)*0.5)),0.0);
}
else
{
l9_2724=float3(l9_2721,float(l9_2723));
}
}
float3 l9_2725=l9_2724;
float3 l9_2726=l9_2725;
float4 l9_2727=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_2726.xy,bias(l9_2720));
float4 l9_2728=l9_2727;
if (l9_2658)
{
l9_2728=mix(l9_2659,l9_2728,float4(l9_2662));
}
float4 l9_2729=l9_2728;
l9_2643=l9_2729;
float4 l9_2730=l9_2643;
l9_2638=l9_2730*N2_colorRampMult;
}
float4 l9_2731=float4(1.0);
float4 l9_2732=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_2421;
l9_2731=l9_2420;
}
else
{
float2 l9_2733=N2_uv;
float4 l9_2734=float4(0.0);
int l9_2735;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2736=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2736=0;
}
else
{
l9_2736=in.varStereoViewID;
}
int l9_2737=l9_2736;
l9_2735=1-l9_2737;
}
else
{
int l9_2738=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2738=0;
}
else
{
l9_2738=in.varStereoViewID;
}
int l9_2739=l9_2738;
l9_2735=l9_2739;
}
int l9_2740=l9_2735;
int l9_2741=mainTextureLayout_tmp;
int l9_2742=l9_2740;
float2 l9_2743=l9_2733;
bool l9_2744=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2745=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2746=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2747=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2748=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2749=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2750=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2751=0.0;
bool l9_2752=l9_2749&&(!l9_2747);
float l9_2753=1.0;
float l9_2754=l9_2743.x;
int l9_2755=l9_2746.x;
if (l9_2755==1)
{
l9_2754=fract(l9_2754);
}
else
{
if (l9_2755==2)
{
float l9_2756=fract(l9_2754);
float l9_2757=l9_2754-l9_2756;
float l9_2758=step(0.25,fract(l9_2757*0.5));
l9_2754=mix(l9_2756,1.0-l9_2756,fast::clamp(l9_2758,0.0,1.0));
}
}
l9_2743.x=l9_2754;
float l9_2759=l9_2743.y;
int l9_2760=l9_2746.y;
if (l9_2760==1)
{
l9_2759=fract(l9_2759);
}
else
{
if (l9_2760==2)
{
float l9_2761=fract(l9_2759);
float l9_2762=l9_2759-l9_2761;
float l9_2763=step(0.25,fract(l9_2762*0.5));
l9_2759=mix(l9_2761,1.0-l9_2761,fast::clamp(l9_2763,0.0,1.0));
}
}
l9_2743.y=l9_2759;
if (l9_2747)
{
bool l9_2764=l9_2749;
bool l9_2765;
if (l9_2764)
{
l9_2765=l9_2746.x==3;
}
else
{
l9_2765=l9_2764;
}
float l9_2766=l9_2743.x;
float l9_2767=l9_2748.x;
float l9_2768=l9_2748.z;
bool l9_2769=l9_2765;
float l9_2770=l9_2753;
float l9_2771=fast::clamp(l9_2766,l9_2767,l9_2768);
float l9_2772=step(abs(l9_2766-l9_2771),9.9999997e-06);
l9_2770*=(l9_2772+((1.0-float(l9_2769))*(1.0-l9_2772)));
l9_2766=l9_2771;
l9_2743.x=l9_2766;
l9_2753=l9_2770;
bool l9_2773=l9_2749;
bool l9_2774;
if (l9_2773)
{
l9_2774=l9_2746.y==3;
}
else
{
l9_2774=l9_2773;
}
float l9_2775=l9_2743.y;
float l9_2776=l9_2748.y;
float l9_2777=l9_2748.w;
bool l9_2778=l9_2774;
float l9_2779=l9_2753;
float l9_2780=fast::clamp(l9_2775,l9_2776,l9_2777);
float l9_2781=step(abs(l9_2775-l9_2780),9.9999997e-06);
l9_2779*=(l9_2781+((1.0-float(l9_2778))*(1.0-l9_2781)));
l9_2775=l9_2780;
l9_2743.y=l9_2775;
l9_2753=l9_2779;
}
float2 l9_2782=l9_2743;
bool l9_2783=l9_2744;
float3x3 l9_2784=l9_2745;
if (l9_2783)
{
l9_2782=float2((l9_2784*float3(l9_2782,1.0)).xy);
}
float2 l9_2785=l9_2782;
l9_2743=l9_2785;
float l9_2786=l9_2743.x;
int l9_2787=l9_2746.x;
bool l9_2788=l9_2752;
float l9_2789=l9_2753;
if ((l9_2787==0)||(l9_2787==3))
{
float l9_2790=l9_2786;
float l9_2791=0.0;
float l9_2792=1.0;
bool l9_2793=l9_2788;
float l9_2794=l9_2789;
float l9_2795=fast::clamp(l9_2790,l9_2791,l9_2792);
float l9_2796=step(abs(l9_2790-l9_2795),9.9999997e-06);
l9_2794*=(l9_2796+((1.0-float(l9_2793))*(1.0-l9_2796)));
l9_2790=l9_2795;
l9_2786=l9_2790;
l9_2789=l9_2794;
}
l9_2743.x=l9_2786;
l9_2753=l9_2789;
float l9_2797=l9_2743.y;
int l9_2798=l9_2746.y;
bool l9_2799=l9_2752;
float l9_2800=l9_2753;
if ((l9_2798==0)||(l9_2798==3))
{
float l9_2801=l9_2797;
float l9_2802=0.0;
float l9_2803=1.0;
bool l9_2804=l9_2799;
float l9_2805=l9_2800;
float l9_2806=fast::clamp(l9_2801,l9_2802,l9_2803);
float l9_2807=step(abs(l9_2801-l9_2806),9.9999997e-06);
l9_2805*=(l9_2807+((1.0-float(l9_2804))*(1.0-l9_2807)));
l9_2801=l9_2806;
l9_2797=l9_2801;
l9_2800=l9_2805;
}
l9_2743.y=l9_2797;
l9_2753=l9_2800;
float2 l9_2808=l9_2743;
int l9_2809=l9_2741;
int l9_2810=l9_2742;
float l9_2811=l9_2751;
float2 l9_2812=l9_2808;
int l9_2813=l9_2809;
int l9_2814=l9_2810;
float3 l9_2815=float3(0.0);
if (l9_2813==0)
{
l9_2815=float3(l9_2812,0.0);
}
else
{
if (l9_2813==1)
{
l9_2815=float3(l9_2812.x,(l9_2812.y*0.5)+(0.5-(float(l9_2814)*0.5)),0.0);
}
else
{
l9_2815=float3(l9_2812,float(l9_2814));
}
}
float3 l9_2816=l9_2815;
float3 l9_2817=l9_2816;
float4 l9_2818=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2817.xy,bias(l9_2811));
float4 l9_2819=l9_2818;
if (l9_2749)
{
l9_2819=mix(l9_2750,l9_2819,float4(l9_2753));
}
float4 l9_2820=l9_2819;
l9_2734=l9_2820;
float4 l9_2821=l9_2734;
l9_2731=l9_2821;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_2732=l9_2638;
}
}
N2_result=(l9_2731*l9_2415)*l9_2732;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_2222*l9_2415)*l9_2732;
N2_result.w*=l9_2221;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_2822=l9_2213*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_2822,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_2823=length(N2_result.xyz);
N2_result.w=l9_2823;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_2221;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_2824=N2_result.xyz*N2_result.w;
N2_result=float4(l9_2824.x,l9_2824.y,l9_2824.z,N2_result.w);
}
l9_2187=N2_result;
l9_2161=l9_2187;
param_1=l9_2161;
param_2=param_1;
}
Result_N158=param_2;
FinalColor=Result_N158;
float4 param_4=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_2825=param_4;
float4 l9_2826=l9_2825;
float l9_2827=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2827=l9_2826.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2827=fast::clamp(l9_2826.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2827=fast::clamp(dot(l9_2826.xyz,float3(l9_2826.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_2827=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_2827=(1.0-dot(l9_2826.xyz,float3(0.33333001)))*l9_2826.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2827=(1.0-fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0))*l9_2826.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2827=fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0)*l9_2826.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_2827=fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2827=fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0)*l9_2826.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_2827=dot(l9_2826.xyz,float3(0.33333001))*l9_2826.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_2827=1.0-fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_2827=fast::clamp(dot(l9_2826.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_2828=l9_2827;
float l9_2829=l9_2828;
float l9_2830=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_2829;
float3 l9_2831=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2825.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_2832=float4(l9_2831.x,l9_2831.y,l9_2831.z,l9_2830);
param_4=l9_2832;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_4=float4(param_4.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_2833=param_4;
float4 l9_2834=float4(0.0);
float4 l9_2835=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2836=out.sc_FragData0;
l9_2835=l9_2836;
}
else
{
float4 l9_2837=gl_FragCoord;
float2 l9_2838=l9_2837.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2839=l9_2838;
float2 l9_2840=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2841=1;
int l9_2842=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2842=0;
}
else
{
l9_2842=in.varStereoViewID;
}
int l9_2843=l9_2842;
int l9_2844=l9_2843;
float3 l9_2845=float3(l9_2839,0.0);
int l9_2846=l9_2841;
int l9_2847=l9_2844;
if (l9_2846==1)
{
l9_2845.y=((2.0*l9_2845.y)+float(l9_2847))-1.0;
}
float2 l9_2848=l9_2845.xy;
l9_2840=l9_2848;
}
else
{
l9_2840=l9_2839;
}
float2 l9_2849=l9_2840;
float2 l9_2850=l9_2849;
float2 l9_2851=l9_2850;
float2 l9_2852=l9_2851;
float l9_2853=0.0;
int l9_2854;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2855=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2855=0;
}
else
{
l9_2855=in.varStereoViewID;
}
int l9_2856=l9_2855;
l9_2854=1-l9_2856;
}
else
{
int l9_2857=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2857=0;
}
else
{
l9_2857=in.varStereoViewID;
}
int l9_2858=l9_2857;
l9_2854=l9_2858;
}
int l9_2859=l9_2854;
float2 l9_2860=l9_2852;
int l9_2861=sc_ScreenTextureLayout_tmp;
int l9_2862=l9_2859;
float l9_2863=l9_2853;
float2 l9_2864=l9_2860;
int l9_2865=l9_2861;
int l9_2866=l9_2862;
float3 l9_2867=float3(0.0);
if (l9_2865==0)
{
l9_2867=float3(l9_2864,0.0);
}
else
{
if (l9_2865==1)
{
l9_2867=float3(l9_2864.x,(l9_2864.y*0.5)+(0.5-(float(l9_2866)*0.5)),0.0);
}
else
{
l9_2867=float3(l9_2864,float(l9_2866));
}
}
float3 l9_2868=l9_2867;
float3 l9_2869=l9_2868;
float4 l9_2870=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2869.xy,bias(l9_2863));
float4 l9_2871=l9_2870;
float4 l9_2872=l9_2871;
l9_2835=l9_2872;
}
float4 l9_2873=l9_2835;
float3 l9_2874=l9_2873.xyz;
float3 l9_2875=l9_2874;
float3 l9_2876=l9_2833.xyz;
float3 l9_2877=definedBlend(l9_2875,l9_2876,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_2834=float4(l9_2877.x,l9_2877.y,l9_2877.z,l9_2834.w);
float3 l9_2878=mix(l9_2874,l9_2834.xyz,float3(l9_2833.w));
l9_2834=float4(l9_2878.x,l9_2878.y,l9_2878.z,l9_2834.w);
l9_2834.w=1.0;
float4 l9_2879=l9_2834;
param_4=l9_2879;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_2880=float4(in.varScreenPos.xyz,1.0);
param_4=l9_2880;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_2881=gl_FragCoord;
float l9_2882=fast::clamp(abs(l9_2881.z),0.0,1.0);
float4 l9_2883=float4(l9_2882,1.0-l9_2882,1.0,1.0);
param_4=l9_2883;
}
else
{
float4 l9_2884=param_4;
float4 l9_2885=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2885=float4(mix(float3(1.0),l9_2884.xyz,float3(l9_2884.w)),l9_2884.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_2886=l9_2884.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2886=fast::clamp(l9_2886,0.0,1.0);
}
l9_2885=float4(l9_2884.xyz*l9_2886,l9_2886);
}
else
{
l9_2885=l9_2884;
}
}
float4 l9_2887=l9_2885;
param_4=l9_2887;
}
}
}
}
}
float4 l9_2888=param_4;
FinalColor=l9_2888;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_2889=float4(0.0);
l9_2889=float4(0.0);
float4 l9_2890=l9_2889;
float4 Cost=l9_2890;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_5=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_5,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_6=FinalColor;
float4 l9_2891=param_6;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_2891.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_2891;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float4 VertexColor;
float gInstanceID;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float timeGlobal;
float externalTimeInput;
float externalSeed;
float lifeTimeConstant;
float2 lifeTimeMinMax;
float spawnDuration;
float trailLength;
float2 trailTaper;
float trailWidth;
float4 trailSizeRampTexSize;
float4 trailSizeRampTexDims;
float4 trailSizeRampTexView;
float3x3 trailSizeRampTexTransform;
float4 trailSizeRampTexUvMinMax;
float4 trailSizeRampTexBorderColor;
float3 spawnLocation;
float3 spawnBox;
float3 spawnSphere;
float3 noiseMult;
float3 noiseFrequency;
float3 sNoiseMult;
float3 sNoiseFrequency;
float3 velocityMin;
float3 velocityMax;
float3 velocityDrag;
float4 velRampTextureSize;
float4 velRampTextureDims;
float4 velRampTextureView;
float3x3 velRampTextureTransform;
float4 velRampTextureUvMinMax;
float4 velRampTextureBorderColor;
float2 sizeStart;
float3 sizeStart3D;
float2 sizeEnd;
float3 sizeEnd3D;
float2 sizeStartMin;
float3 sizeStartMin3D;
float2 sizeStartMax;
float3 sizeStartMax3D;
float2 sizeEndMin;
float3 sizeEndMin3D;
float2 sizeEndMax;
float3 sizeEndMax3D;
float sizeSpeed;
float4 sizeRampTextureSize;
float4 sizeRampTextureDims;
float4 sizeRampTextureView;
float3x3 sizeRampTextureTransform;
float4 sizeRampTextureUvMinMax;
float4 sizeRampTextureBorderColor;
float gravity;
float3 localForce;
float sizeVelScale;
int ALIGNTOX;
int ALIGNTOY;
int ALIGNTOZ;
float2 rotationRandomX;
float2 rotationRateX;
float2 randomRotationY;
float2 rotationRateY;
float2 rotationRandom;
float2 randomRotationZ;
float2 rotationRate;
float2 rotationRateZ;
float rotationDrag;
int CENTER_BBOX;
float fadeDistanceVisible;
float fadeDistanceInvisible;
float4 trailTexSize;
float4 trailTexDims;
float4 trailTexView;
float3x3 trailTexTransform;
float4 trailTexUvMinMax;
float4 trailTexBorderColor;
float4 trailColorRampTexSize;
float4 trailColorRampTexDims;
float4 trailColorRampTexView;
float3x3 trailColorRampTexTransform;
float4 trailColorRampTexUvMinMax;
float4 trailColorRampTexBorderColor;
float2 trailFadeStartEnd;
float2 trailFadeInOut;
float3 colorStart;
float3 colorEnd;
float3 colorMinStart;
float3 colorMinEnd;
float3 colorMaxStart;
float3 colorMaxEnd;
float alphaStart;
float alphaEnd;
float alphaMinStart;
float alphaMinEnd;
float alphaMaxStart;
float alphaMaxEnd;
float alphaDissolveMult;
float numValidFrames;
float2 gridSize;
float flipBookSpeedMult;
float flipBookRandomStart;
float4 colorRampTextureSize;
float4 colorRampTextureDims;
float4 colorRampTextureView;
float3x3 colorRampTextureTransform;
float4 colorRampTextureUvMinMax;
float4 colorRampTextureBorderColor;
float4 colorRampMult;
float4 mainTextureSize;
float4 mainTextureDims;
float4 mainTextureView;
float3x3 mainTextureTransform;
float4 mainTextureUvMinMax;
float4 mainTextureBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float metallic;
float roughness;
float Port_Input1_N119;
float2 Port_Input1_N138;
float2 Port_Input1_N139;
float2 Port_Input1_N140;
float2 Port_Input1_N144;
float Port_Input1_N069;
float Port_Input1_N068;
float Port_Input1_N110;
float Port_Input1_N154;
float Port_Input1_N216;
float3 Port_Default_N182;
float3 Port_Emissive_N014;
float3 Port_AO_N014;
float3 Port_SpecularAO_N014;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRampTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> mainTexture [[id(3)]];
texture2d<float> normalTex [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(15)]];
texture2d<float> sc_RayTracingReflections [[id(16)]];
texture2d<float> sc_RayTracingShadows [[id(17)]];
texture2d<float> sc_SSAOTexture [[id(18)]];
texture2d<float> sc_ScreenTexture [[id(19)]];
texture2d<float> sc_ShadowTexture [[id(20)]];
texture2d<float> sizeRampTexture [[id(22)]];
texture2d<float> trailColorRampTex [[id(23)]];
texture2d<float> trailSizeRampTex [[id(24)]];
texture2d<float> trailTex [[id(25)]];
texture2d<float> velRampTexture [[id(26)]];
sampler colorRampTextureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler mainTextureSmpSC [[id(29)]];
sampler normalTexSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler sizeRampTextureSmpSC [[id(41)]];
sampler trailColorRampTexSmpSC [[id(42)]];
sampler trailSizeRampTexSmpSC [[id(43)]];
sampler trailTexSmpSC [[id(44)]];
sampler velRampTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(46)]];
};
struct main_recv_out
{
uint4 sc_RayTracingPositionAndMask [[color(0)]];
uint4 sc_RayTracingNormalAndMore [[color(1)]];
};
struct main_recv_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float Interpolator_gInstanceID [[user(locn13)]];
float4 Interpolator0 [[user(locn14)]];
float4 Interpolator1 [[user(locn15)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
bool N2_isTrailCondition=false;
bool N2_ENABLE_TRAILS=false;
bool N2_ENABLE_INDEPENDENTTRAIL=false;
bool N2_ENABLE_TRAILTEXTURE=false;
bool N2_ENABLE_TRAILCOLORRAMP=false;
float4 N2_fadeInOut=float4(0.0);
float3 N2_colorStart=float3(0.0);
float3 N2_colorEnd=float3(0.0);
bool N2_ENABLE_COLORMINMAX=false;
float3 N2_colorMinStart=float3(0.0);
float3 N2_colorMinEnd=float3(0.0);
float3 N2_colorMaxStart=float3(0.0);
float3 N2_colorMaxEnd=float3(0.0);
bool N2_ENABLE_COLORMONOMIN=false;
float N2_alphaStart=0.0;
float N2_alphaEnd=0.0;
bool N2_ENABLE_ALPHAMINMAX=false;
float N2_alphaMinStart=0.0;
float N2_alphaMinEnd=0.0;
float N2_alphaMaxStart=0.0;
float N2_alphaMaxEnd=0.0;
bool N2_ENABLE_ALPHADISSOLVE=false;
float N2_alphaDissolveMult=0.0;
bool N2_ENABLE_PREMULTIPLIEDCOLOR=false;
bool N2_ENABLE_BLACKASALPHA=false;
bool N2_ENABLE_SCREENFADE=false;
bool N2_ENABLE_FLIPBOOK=false;
float N2_numValidFrames=0.0;
float2 N2_gridSize=float2(0.0);
float N2_flipBookSpeedMult=0.0;
float N2_flipBookRandomStart=0.0;
bool N2_ENABLE_FLIPBOOKBLEND=false;
bool N2_ENABLE_FLIPBOOKBYLIFE=false;
bool N2_ENABLE_COLORRAMP=false;
float2 N2_texSize=float2(0.0);
float4 N2_colorRampMult=float4(0.0);
bool N2_ENABLE_NORANDOFFSET=false;
bool N2_ENABLE_BASETEXTURE=false;
bool N2_ENABLE_WORLDPOSSEED=false;
float N2_externalSeed=0.0;
float4 N2_timeValuesIn=float4(0.0);
float4 N2_cameraFade_trailHeadTime_taper=float4(0.0);
float3 N2_particleSeed=float3(0.0);
float N2_globalSeed=0.0;
float4 N2_result=float4(0.0);
float2 N2_uv=float2(0.0);
float N2_isTrail=0.0;
float2 N2_trailHeadTime=float2(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.VertexColor=in.varColor;
Globals.gInstanceID=in.Interpolator_gInstanceID;
ssGlobals param=Globals;
ssGlobals tempGlobals;
if ((MESHTYPE_tmp==1)&&(int(PBR_tmp)!=0))
{
float l9_0=0.0;
float l9_1;
if ((int(TRAILS_tmp)!=0))
{
l9_1=1.001;
}
else
{
l9_1=0.001;
}
l9_1-=0.001;
l9_0=l9_1;
float4 l9_2=float4(0.0);
l9_2=param.VertexColor;
float l9_3=0.0;
l9_3=l9_2.x;
float l9_4=0.0;
float l9_5=l9_0;
bool l9_6=(l9_5*1.0)!=0.0;
bool l9_7;
if (l9_6)
{
l9_7=(l9_3*1.0)!=0.0;
}
else
{
l9_7=l9_6;
}
l9_4=float(l9_7);
float2 l9_8=float2(0.0);
float2 l9_9=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_8=l9_9;
float2 l9_10=float2(0.0);
float l9_11=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_12=float2(0.0);
float2 l9_13;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_13=float2(l9_11);
}
else
{
float2 l9_14=float2(0.0);
float2 l9_15=(*sc_set0.UserUniforms).trailFadeInOut;
l9_14=l9_15;
l9_12=l9_14;
l9_13=l9_12;
}
l9_10=l9_13;
float4 l9_16=float4(0.0);
l9_16=float4(l9_8.x,l9_8.y,l9_16.z,l9_16.w);
l9_16=float4(l9_16.x,l9_16.y,l9_10.x,l9_10.y);
float3 l9_17=float3(0.0);
float3 l9_18=(*sc_set0.UserUniforms).colorStart;
l9_17=l9_18;
float3 l9_19=float3(0.0);
float3 l9_20=(*sc_set0.UserUniforms).colorEnd;
l9_19=l9_20;
float3 l9_21=float3(0.0);
float3 l9_22=(*sc_set0.UserUniforms).colorMinStart;
l9_21=l9_22;
float3 l9_23=float3(0.0);
float3 l9_24=(*sc_set0.UserUniforms).colorMinEnd;
l9_23=l9_24;
float3 l9_25=float3(0.0);
float3 l9_26=(*sc_set0.UserUniforms).colorMaxStart;
l9_25=l9_26;
float3 l9_27=float3(0.0);
float3 l9_28=(*sc_set0.UserUniforms).colorMaxEnd;
l9_27=l9_28;
float l9_29=0.0;
float l9_30=(*sc_set0.UserUniforms).alphaStart;
l9_29=l9_30;
float l9_31=0.0;
float l9_32=(*sc_set0.UserUniforms).alphaEnd;
l9_31=l9_32;
float l9_33=0.0;
float l9_34=(*sc_set0.UserUniforms).alphaMinStart;
l9_33=l9_34;
float l9_35=0.0;
float l9_36=(*sc_set0.UserUniforms).alphaMinEnd;
l9_35=l9_36;
float l9_37=0.0;
float l9_38=(*sc_set0.UserUniforms).alphaMaxStart;
l9_37=l9_38;
float l9_39=0.0;
float l9_40=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_39=l9_40;
float l9_41=0.0;
float l9_42=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_41=l9_42;
float l9_43=0.0;
float l9_44=(*sc_set0.UserUniforms).numValidFrames;
l9_43=l9_44;
float2 l9_45=float2(0.0);
float2 l9_46=(*sc_set0.UserUniforms).gridSize;
l9_45=l9_46;
float l9_47=0.0;
float l9_48=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_47=l9_48;
float l9_49=0.0;
float l9_50=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_49=l9_50;
float2 l9_51=float2(0.0);
float2 l9_52=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_51=l9_52;
float4 l9_53=float4(0.0);
float4 l9_54=(*sc_set0.UserUniforms).colorRampMult;
l9_53=l9_54;
float l9_55=0.0;
float l9_56=(*sc_set0.UserUniforms).externalSeed;
l9_55=l9_56;
float4 l9_57=float4(0.0);
float4 l9_58;
l9_58.x=in.Interpolator0.x;
l9_58.y=in.Interpolator0.y;
l9_58.z=in.Interpolator0.z;
l9_58.w=in.Interpolator0.w;
l9_57=l9_58;
float4 l9_59=float4(0.0);
float4 l9_60;
l9_60.x=in.Interpolator1.x;
l9_60.y=in.Interpolator1.y;
l9_60.z=in.Interpolator1.z;
l9_60.w=in.Interpolator1.w;
l9_59=l9_60;
float4 l9_61=float4(0.0);
float l9_62=l9_4;
float4 l9_63=l9_16;
float3 l9_64=l9_17;
float3 l9_65=l9_19;
float3 l9_66=l9_21;
float3 l9_67=l9_23;
float3 l9_68=l9_25;
float3 l9_69=l9_27;
float l9_70=l9_29;
float l9_71=l9_31;
float l9_72=l9_33;
float l9_73=l9_35;
float l9_74=l9_37;
float l9_75=l9_39;
float l9_76=l9_41;
float l9_77=l9_43;
float2 l9_78=l9_45;
float l9_79=l9_47;
float l9_80=l9_49;
float2 l9_81=l9_51;
float4 l9_82=l9_53;
float l9_83=l9_55;
float4 l9_84=l9_57;
float4 l9_85=l9_59;
ssGlobals l9_86=param;
tempGlobals=l9_86;
float4 l9_87=float4(0.0);
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_62!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_63;
N2_colorStart=l9_64;
N2_colorEnd=l9_65;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_66;
N2_colorMinEnd=l9_67;
N2_colorMaxStart=l9_68;
N2_colorMaxEnd=l9_69;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_70;
N2_alphaEnd=l9_71;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_72;
N2_alphaMinEnd=l9_73;
N2_alphaMaxStart=l9_74;
N2_alphaMaxEnd=l9_75;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_76;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_77;
N2_gridSize=l9_78;
N2_flipBookSpeedMult=l9_79;
N2_flipBookRandomStart=l9_80;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_81;
N2_colorRampMult=l9_82;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_83;
N2_timeValuesIn=l9_84;
N2_cameraFade_trailHeadTime_taper=l9_85;
float l9_88=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_89=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_88=length(float4(1.0)*l9_89);
}
N2_globalSeed=N2_externalSeed+l9_88;
int l9_90=0;
l9_90=int(tempGlobals.gInstanceID+0.5);
int l9_91=l9_90;
float l9_92=float(l9_91);
int l9_93=int(l9_92);
int l9_94=l9_93^(l9_93*15299);
int l9_95=l9_94;
int l9_96=l9_95;
int l9_97=((l9_96*((l9_96*1471343)+101146501))+1559861749)&2147483647;
int l9_98=l9_97;
int l9_99=l9_95*1399;
int l9_100=((l9_99*((l9_99*1471343)+101146501))+1559861749)&2147483647;
int l9_101=l9_100;
int l9_102=l9_95*7177;
int l9_103=((l9_102*((l9_102*1471343)+101146501))+1559861749)&2147483647;
int l9_104=l9_103;
int l9_105=l9_98;
float l9_106=float(l9_105)*4.6566129e-10;
int l9_107=l9_101;
float l9_108=float(l9_107)*4.6566129e-10;
int l9_109=l9_104;
float l9_110=float(l9_109)*4.6566129e-10;
float3 l9_111=float3(l9_106,l9_108,l9_110);
float3 l9_112=l9_111;
N2_particleSeed=l9_112;
float l9_113=N2_timeValuesIn.w;
float l9_114=N2_particleSeed.x;
float l9_115=N2_particleSeed.y;
float l9_116=N2_particleSeed.z;
float3 l9_117=fract((float3(l9_114,l9_115,l9_116)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_117=fract((float3(l9_114,l9_114,l9_114)*27.21883)+float3(N2_globalSeed));
}
float l9_118=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_119=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_120=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_121=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_122=float4(1.0);
float2 l9_123=tempGlobals.Surface_UVCoord0;
N2_uv=l9_123;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_124=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_125=float2(0.5-(l9_124/2.0),0.5+(l9_124/2.0));
float l9_126=N2_uv.x;
float l9_127=l9_125.x;
bool l9_128=l9_126<l9_127;
bool l9_129;
if (!l9_128)
{
l9_129=N2_uv.x>l9_125.y;
}
else
{
l9_129=l9_128;
}
if (l9_129)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_125.x)*1.0)/((l9_125.y-l9_125.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_130=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_131=float4(0.0);
int l9_132;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_133=0;
}
else
{
l9_133=in.varStereoViewID;
}
int l9_134=l9_133;
l9_132=1-l9_134;
}
else
{
int l9_135=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_135=0;
}
else
{
l9_135=in.varStereoViewID;
}
int l9_136=l9_135;
l9_132=l9_136;
}
int l9_137=l9_132;
int l9_138=trailTexLayout_tmp;
int l9_139=l9_137;
float2 l9_140=l9_130;
bool l9_141=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_142=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_143=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_144=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_145=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_146=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_147=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_148=0.0;
bool l9_149=l9_146&&(!l9_144);
float l9_150=1.0;
float l9_151=l9_140.x;
int l9_152=l9_143.x;
if (l9_152==1)
{
l9_151=fract(l9_151);
}
else
{
if (l9_152==2)
{
float l9_153=fract(l9_151);
float l9_154=l9_151-l9_153;
float l9_155=step(0.25,fract(l9_154*0.5));
l9_151=mix(l9_153,1.0-l9_153,fast::clamp(l9_155,0.0,1.0));
}
}
l9_140.x=l9_151;
float l9_156=l9_140.y;
int l9_157=l9_143.y;
if (l9_157==1)
{
l9_156=fract(l9_156);
}
else
{
if (l9_157==2)
{
float l9_158=fract(l9_156);
float l9_159=l9_156-l9_158;
float l9_160=step(0.25,fract(l9_159*0.5));
l9_156=mix(l9_158,1.0-l9_158,fast::clamp(l9_160,0.0,1.0));
}
}
l9_140.y=l9_156;
if (l9_144)
{
bool l9_161=l9_146;
bool l9_162;
if (l9_161)
{
l9_162=l9_143.x==3;
}
else
{
l9_162=l9_161;
}
float l9_163=l9_140.x;
float l9_164=l9_145.x;
float l9_165=l9_145.z;
bool l9_166=l9_162;
float l9_167=l9_150;
float l9_168=fast::clamp(l9_163,l9_164,l9_165);
float l9_169=step(abs(l9_163-l9_168),9.9999997e-06);
l9_167*=(l9_169+((1.0-float(l9_166))*(1.0-l9_169)));
l9_163=l9_168;
l9_140.x=l9_163;
l9_150=l9_167;
bool l9_170=l9_146;
bool l9_171;
if (l9_170)
{
l9_171=l9_143.y==3;
}
else
{
l9_171=l9_170;
}
float l9_172=l9_140.y;
float l9_173=l9_145.y;
float l9_174=l9_145.w;
bool l9_175=l9_171;
float l9_176=l9_150;
float l9_177=fast::clamp(l9_172,l9_173,l9_174);
float l9_178=step(abs(l9_172-l9_177),9.9999997e-06);
l9_176*=(l9_178+((1.0-float(l9_175))*(1.0-l9_178)));
l9_172=l9_177;
l9_140.y=l9_172;
l9_150=l9_176;
}
float2 l9_179=l9_140;
bool l9_180=l9_141;
float3x3 l9_181=l9_142;
if (l9_180)
{
l9_179=float2((l9_181*float3(l9_179,1.0)).xy);
}
float2 l9_182=l9_179;
l9_140=l9_182;
float l9_183=l9_140.x;
int l9_184=l9_143.x;
bool l9_185=l9_149;
float l9_186=l9_150;
if ((l9_184==0)||(l9_184==3))
{
float l9_187=l9_183;
float l9_188=0.0;
float l9_189=1.0;
bool l9_190=l9_185;
float l9_191=l9_186;
float l9_192=fast::clamp(l9_187,l9_188,l9_189);
float l9_193=step(abs(l9_187-l9_192),9.9999997e-06);
l9_191*=(l9_193+((1.0-float(l9_190))*(1.0-l9_193)));
l9_187=l9_192;
l9_183=l9_187;
l9_186=l9_191;
}
l9_140.x=l9_183;
l9_150=l9_186;
float l9_194=l9_140.y;
int l9_195=l9_143.y;
bool l9_196=l9_149;
float l9_197=l9_150;
if ((l9_195==0)||(l9_195==3))
{
float l9_198=l9_194;
float l9_199=0.0;
float l9_200=1.0;
bool l9_201=l9_196;
float l9_202=l9_197;
float l9_203=fast::clamp(l9_198,l9_199,l9_200);
float l9_204=step(abs(l9_198-l9_203),9.9999997e-06);
l9_202*=(l9_204+((1.0-float(l9_201))*(1.0-l9_204)));
l9_198=l9_203;
l9_194=l9_198;
l9_197=l9_202;
}
l9_140.y=l9_194;
l9_150=l9_197;
float2 l9_205=l9_140;
int l9_206=l9_138;
int l9_207=l9_139;
float l9_208=l9_148;
float2 l9_209=l9_205;
int l9_210=l9_206;
int l9_211=l9_207;
float3 l9_212=float3(0.0);
if (l9_210==0)
{
l9_212=float3(l9_209,0.0);
}
else
{
if (l9_210==1)
{
l9_212=float3(l9_209.x,(l9_209.y*0.5)+(0.5-(float(l9_211)*0.5)),0.0);
}
else
{
l9_212=float3(l9_209,float(l9_211));
}
}
float3 l9_213=l9_212;
float3 l9_214=l9_213;
float4 l9_215=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_214.xy,bias(l9_208));
float4 l9_216=l9_215;
if (l9_146)
{
l9_216=mix(l9_147,l9_216,float4(l9_150));
}
float4 l9_217=l9_216;
l9_131=l9_217;
float4 l9_218=l9_131;
l9_122=l9_218;
}
float l9_219=fast::max(1e-06,N2_fadeInOut.x);
float l9_220=N2_timeValuesIn.w;
l9_121*=mix(0.0,1.0,fast::clamp(l9_220,0.0,l9_219)/l9_219);
l9_219=fast::max(1e-06,N2_fadeInOut.y);
l9_121*=mix(0.0,1.0,fast::clamp(1.0-l9_220,0.0,l9_219)/l9_219);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_113=N2_trailHeadTime.y;
l9_219=fast::max(1e-06,N2_fadeInOut.z);
l9_121*=mix(0.0,1.0,fast::clamp(l9_113,0.0,l9_219)/l9_219);
l9_219=fast::max(1e-06,N2_fadeInOut.w);
l9_121*=mix(0.0,1.0,fast::clamp(1.0-l9_113,0.0,l9_219)/l9_219);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_221=float2(0.0);
l9_221=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_222=l9_221;
float2 l9_223=float2(0.0);
l9_223=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_224=l9_223;
float l9_225=ceil(l9_113*l9_222.x)/l9_224.x;
float2 l9_226=float2(l9_225,0.5);
float4 l9_227=float4(0.0);
int l9_228;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=in.varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=in.varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=trailColorRampTexLayout_tmp;
int l9_235=l9_233;
float2 l9_236=l9_226;
bool l9_237=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_238=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_241=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_243=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
l9_227=l9_313;
float4 l9_314=l9_227;
l9_122*=l9_314;
}
}
}
float4 l9_315=float4(0.0);
float3 l9_316=float3(0.0);
float3 l9_317=float3(0.0);
float l9_318=0.0;
float l9_319=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_316=mix(N2_colorMinStart,N2_colorMaxStart,l9_117);
l9_317=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_117);
}
else
{
l9_316=N2_colorStart;
l9_317=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_318=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_118);
l9_319=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_118);
}
else
{
l9_318=N2_alphaStart;
l9_319=N2_alphaEnd;
}
l9_316=mix(l9_316,l9_317,float3(l9_113));
l9_318=mix(l9_318,l9_319,l9_113);
l9_315=float4(l9_316,l9_318);
float4 l9_320=float4(0.0);
float2 l9_321=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_322=tempGlobals.Surface_UVCoord0;
l9_321=l9_322;
float2 l9_323=l9_321;
float l9_324=fast::max(N2_timeValuesIn.x,1e-06);
float l9_325=fast::max(N2_timeValuesIn.y,1e-06);
float l9_326=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_327=mix(l9_324,l9_325,l9_120);
l9_326/=l9_327;
}
float l9_328=floor((N2_flipBookRandomStart+1.0)*l9_119);
float2 l9_329=l9_321;
float2 l9_330=N2_gridSize;
float l9_331=N2_numValidFrames;
float l9_332=l9_328;
float l9_333=N2_flipBookSpeedMult;
float l9_334=l9_326;
float l9_335=floor(l9_330.x);
float l9_336=floor(l9_330.y);
float l9_337=1.0/l9_335;
float l9_338=1.0/l9_336;
float l9_339=fast::min(l9_335*l9_336,floor(l9_331));
float l9_340=floor(mod((l9_334*l9_333)+floor(l9_332),l9_339));
float l9_341=floor(l9_340/l9_335);
float l9_342=mod(l9_340,l9_335);
float2 l9_343=float2((l9_337*l9_329.x)+(l9_342*l9_337),((1.0-l9_338)-(l9_341*l9_338))+(l9_338*l9_329.y));
l9_321=l9_343;
float2 l9_344=l9_321;
float4 l9_345=float4(0.0);
int l9_346;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_347=0;
}
else
{
l9_347=in.varStereoViewID;
}
int l9_348=l9_347;
l9_346=1-l9_348;
}
else
{
int l9_349=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_349=0;
}
else
{
l9_349=in.varStereoViewID;
}
int l9_350=l9_349;
l9_346=l9_350;
}
int l9_351=l9_346;
int l9_352=mainTextureLayout_tmp;
int l9_353=l9_351;
float2 l9_354=l9_344;
bool l9_355=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_356=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_357=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_358=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_359=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_360=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_361=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_362=0.0;
bool l9_363=l9_360&&(!l9_358);
float l9_364=1.0;
float l9_365=l9_354.x;
int l9_366=l9_357.x;
if (l9_366==1)
{
l9_365=fract(l9_365);
}
else
{
if (l9_366==2)
{
float l9_367=fract(l9_365);
float l9_368=l9_365-l9_367;
float l9_369=step(0.25,fract(l9_368*0.5));
l9_365=mix(l9_367,1.0-l9_367,fast::clamp(l9_369,0.0,1.0));
}
}
l9_354.x=l9_365;
float l9_370=l9_354.y;
int l9_371=l9_357.y;
if (l9_371==1)
{
l9_370=fract(l9_370);
}
else
{
if (l9_371==2)
{
float l9_372=fract(l9_370);
float l9_373=l9_370-l9_372;
float l9_374=step(0.25,fract(l9_373*0.5));
l9_370=mix(l9_372,1.0-l9_372,fast::clamp(l9_374,0.0,1.0));
}
}
l9_354.y=l9_370;
if (l9_358)
{
bool l9_375=l9_360;
bool l9_376;
if (l9_375)
{
l9_376=l9_357.x==3;
}
else
{
l9_376=l9_375;
}
float l9_377=l9_354.x;
float l9_378=l9_359.x;
float l9_379=l9_359.z;
bool l9_380=l9_376;
float l9_381=l9_364;
float l9_382=fast::clamp(l9_377,l9_378,l9_379);
float l9_383=step(abs(l9_377-l9_382),9.9999997e-06);
l9_381*=(l9_383+((1.0-float(l9_380))*(1.0-l9_383)));
l9_377=l9_382;
l9_354.x=l9_377;
l9_364=l9_381;
bool l9_384=l9_360;
bool l9_385;
if (l9_384)
{
l9_385=l9_357.y==3;
}
else
{
l9_385=l9_384;
}
float l9_386=l9_354.y;
float l9_387=l9_359.y;
float l9_388=l9_359.w;
bool l9_389=l9_385;
float l9_390=l9_364;
float l9_391=fast::clamp(l9_386,l9_387,l9_388);
float l9_392=step(abs(l9_386-l9_391),9.9999997e-06);
l9_390*=(l9_392+((1.0-float(l9_389))*(1.0-l9_392)));
l9_386=l9_391;
l9_354.y=l9_386;
l9_364=l9_390;
}
float2 l9_393=l9_354;
bool l9_394=l9_355;
float3x3 l9_395=l9_356;
if (l9_394)
{
l9_393=float2((l9_395*float3(l9_393,1.0)).xy);
}
float2 l9_396=l9_393;
l9_354=l9_396;
float l9_397=l9_354.x;
int l9_398=l9_357.x;
bool l9_399=l9_363;
float l9_400=l9_364;
if ((l9_398==0)||(l9_398==3))
{
float l9_401=l9_397;
float l9_402=0.0;
float l9_403=1.0;
bool l9_404=l9_399;
float l9_405=l9_400;
float l9_406=fast::clamp(l9_401,l9_402,l9_403);
float l9_407=step(abs(l9_401-l9_406),9.9999997e-06);
l9_405*=(l9_407+((1.0-float(l9_404))*(1.0-l9_407)));
l9_401=l9_406;
l9_397=l9_401;
l9_400=l9_405;
}
l9_354.x=l9_397;
l9_364=l9_400;
float l9_408=l9_354.y;
int l9_409=l9_357.y;
bool l9_410=l9_363;
float l9_411=l9_364;
if ((l9_409==0)||(l9_409==3))
{
float l9_412=l9_408;
float l9_413=0.0;
float l9_414=1.0;
bool l9_415=l9_410;
float l9_416=l9_411;
float l9_417=fast::clamp(l9_412,l9_413,l9_414);
float l9_418=step(abs(l9_412-l9_417),9.9999997e-06);
l9_416*=(l9_418+((1.0-float(l9_415))*(1.0-l9_418)));
l9_412=l9_417;
l9_408=l9_412;
l9_411=l9_416;
}
l9_354.y=l9_408;
l9_364=l9_411;
float2 l9_419=l9_354;
int l9_420=l9_352;
int l9_421=l9_353;
float l9_422=l9_362;
float2 l9_423=l9_419;
int l9_424=l9_420;
int l9_425=l9_421;
float3 l9_426=float3(0.0);
if (l9_424==0)
{
l9_426=float3(l9_423,0.0);
}
else
{
if (l9_424==1)
{
l9_426=float3(l9_423.x,(l9_423.y*0.5)+(0.5-(float(l9_425)*0.5)),0.0);
}
else
{
l9_426=float3(l9_423,float(l9_425));
}
}
float3 l9_427=l9_426;
float3 l9_428=l9_427;
float4 l9_429=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_428.xy,bias(l9_422));
float4 l9_430=l9_429;
if (l9_360)
{
l9_430=mix(l9_361,l9_430,float4(l9_364));
}
float4 l9_431=l9_430;
l9_345=l9_431;
float4 l9_432=l9_345;
l9_320=l9_432;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_433=l9_323;
float2 l9_434=N2_gridSize;
float l9_435=N2_numValidFrames;
float l9_436=floor(mod(l9_328+1.0,N2_numValidFrames));
float l9_437=N2_flipBookSpeedMult;
float l9_438=l9_326;
float l9_439=floor(l9_434.x);
float l9_440=floor(l9_434.y);
float l9_441=1.0/l9_439;
float l9_442=1.0/l9_440;
float l9_443=fast::min(l9_439*l9_440,floor(l9_435));
float l9_444=floor(mod((l9_438*l9_437)+floor(l9_436),l9_443));
float l9_445=floor(l9_444/l9_439);
float l9_446=mod(l9_444,l9_439);
float2 l9_447=float2((l9_441*l9_433.x)+(l9_446*l9_441),((1.0-l9_442)-(l9_445*l9_442))+(l9_442*l9_433.y));
l9_323=l9_447;
float4 l9_448=l9_320;
float2 l9_449=l9_323;
float4 l9_450=float4(0.0);
int l9_451;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=in.varStereoViewID;
}
int l9_453=l9_452;
l9_451=1-l9_453;
}
else
{
int l9_454=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_454=0;
}
else
{
l9_454=in.varStereoViewID;
}
int l9_455=l9_454;
l9_451=l9_455;
}
int l9_456=l9_451;
int l9_457=mainTextureLayout_tmp;
int l9_458=l9_456;
float2 l9_459=l9_449;
bool l9_460=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_461=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_462=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_463=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_464=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_465=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_466=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_467=0.0;
bool l9_468=l9_465&&(!l9_463);
float l9_469=1.0;
float l9_470=l9_459.x;
int l9_471=l9_462.x;
if (l9_471==1)
{
l9_470=fract(l9_470);
}
else
{
if (l9_471==2)
{
float l9_472=fract(l9_470);
float l9_473=l9_470-l9_472;
float l9_474=step(0.25,fract(l9_473*0.5));
l9_470=mix(l9_472,1.0-l9_472,fast::clamp(l9_474,0.0,1.0));
}
}
l9_459.x=l9_470;
float l9_475=l9_459.y;
int l9_476=l9_462.y;
if (l9_476==1)
{
l9_475=fract(l9_475);
}
else
{
if (l9_476==2)
{
float l9_477=fract(l9_475);
float l9_478=l9_475-l9_477;
float l9_479=step(0.25,fract(l9_478*0.5));
l9_475=mix(l9_477,1.0-l9_477,fast::clamp(l9_479,0.0,1.0));
}
}
l9_459.y=l9_475;
if (l9_463)
{
bool l9_480=l9_465;
bool l9_481;
if (l9_480)
{
l9_481=l9_462.x==3;
}
else
{
l9_481=l9_480;
}
float l9_482=l9_459.x;
float l9_483=l9_464.x;
float l9_484=l9_464.z;
bool l9_485=l9_481;
float l9_486=l9_469;
float l9_487=fast::clamp(l9_482,l9_483,l9_484);
float l9_488=step(abs(l9_482-l9_487),9.9999997e-06);
l9_486*=(l9_488+((1.0-float(l9_485))*(1.0-l9_488)));
l9_482=l9_487;
l9_459.x=l9_482;
l9_469=l9_486;
bool l9_489=l9_465;
bool l9_490;
if (l9_489)
{
l9_490=l9_462.y==3;
}
else
{
l9_490=l9_489;
}
float l9_491=l9_459.y;
float l9_492=l9_464.y;
float l9_493=l9_464.w;
bool l9_494=l9_490;
float l9_495=l9_469;
float l9_496=fast::clamp(l9_491,l9_492,l9_493);
float l9_497=step(abs(l9_491-l9_496),9.9999997e-06);
l9_495*=(l9_497+((1.0-float(l9_494))*(1.0-l9_497)));
l9_491=l9_496;
l9_459.y=l9_491;
l9_469=l9_495;
}
float2 l9_498=l9_459;
bool l9_499=l9_460;
float3x3 l9_500=l9_461;
if (l9_499)
{
l9_498=float2((l9_500*float3(l9_498,1.0)).xy);
}
float2 l9_501=l9_498;
l9_459=l9_501;
float l9_502=l9_459.x;
int l9_503=l9_462.x;
bool l9_504=l9_468;
float l9_505=l9_469;
if ((l9_503==0)||(l9_503==3))
{
float l9_506=l9_502;
float l9_507=0.0;
float l9_508=1.0;
bool l9_509=l9_504;
float l9_510=l9_505;
float l9_511=fast::clamp(l9_506,l9_507,l9_508);
float l9_512=step(abs(l9_506-l9_511),9.9999997e-06);
l9_510*=(l9_512+((1.0-float(l9_509))*(1.0-l9_512)));
l9_506=l9_511;
l9_502=l9_506;
l9_505=l9_510;
}
l9_459.x=l9_502;
l9_469=l9_505;
float l9_513=l9_459.y;
int l9_514=l9_462.y;
bool l9_515=l9_468;
float l9_516=l9_469;
if ((l9_514==0)||(l9_514==3))
{
float l9_517=l9_513;
float l9_518=0.0;
float l9_519=1.0;
bool l9_520=l9_515;
float l9_521=l9_516;
float l9_522=fast::clamp(l9_517,l9_518,l9_519);
float l9_523=step(abs(l9_517-l9_522),9.9999997e-06);
l9_521*=(l9_523+((1.0-float(l9_520))*(1.0-l9_523)));
l9_517=l9_522;
l9_513=l9_517;
l9_516=l9_521;
}
l9_459.y=l9_513;
l9_469=l9_516;
float2 l9_524=l9_459;
int l9_525=l9_457;
int l9_526=l9_458;
float l9_527=l9_467;
float2 l9_528=l9_524;
int l9_529=l9_525;
int l9_530=l9_526;
float3 l9_531=float3(0.0);
if (l9_529==0)
{
l9_531=float3(l9_528,0.0);
}
else
{
if (l9_529==1)
{
l9_531=float3(l9_528.x,(l9_528.y*0.5)+(0.5-(float(l9_530)*0.5)),0.0);
}
else
{
l9_531=float3(l9_528,float(l9_530));
}
}
float3 l9_532=l9_531;
float3 l9_533=l9_532;
float4 l9_534=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_533.xy,bias(l9_527));
float4 l9_535=l9_534;
if (l9_465)
{
l9_535=mix(l9_466,l9_535,float4(l9_469));
}
float4 l9_536=l9_535;
l9_450=l9_536;
float4 l9_537=l9_450;
l9_320=mix(l9_448,l9_537,float4(fract((l9_326*N2_flipBookSpeedMult)+l9_328)));
}
}
}
float4 l9_538=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_539=ceil(l9_113*N2_texSize.x)/N2_texSize.x;
float l9_540=l9_539;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_541=tempGlobals.Surface_UVCoord0;
l9_540+=(l9_541.x/N2_texSize.x);
}
float2 l9_542=float2(l9_540,0.5);
float4 l9_543=float4(0.0);
int l9_544;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_545=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_545=0;
}
else
{
l9_545=in.varStereoViewID;
}
int l9_546=l9_545;
l9_544=1-l9_546;
}
else
{
int l9_547=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_547=0;
}
else
{
l9_547=in.varStereoViewID;
}
int l9_548=l9_547;
l9_544=l9_548;
}
int l9_549=l9_544;
int l9_550=colorRampTextureLayout_tmp;
int l9_551=l9_549;
float2 l9_552=l9_542;
bool l9_553=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_554=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_555=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_556=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_557=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_558=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_559=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_560=0.0;
bool l9_561=l9_558&&(!l9_556);
float l9_562=1.0;
float l9_563=l9_552.x;
int l9_564=l9_555.x;
if (l9_564==1)
{
l9_563=fract(l9_563);
}
else
{
if (l9_564==2)
{
float l9_565=fract(l9_563);
float l9_566=l9_563-l9_565;
float l9_567=step(0.25,fract(l9_566*0.5));
l9_563=mix(l9_565,1.0-l9_565,fast::clamp(l9_567,0.0,1.0));
}
}
l9_552.x=l9_563;
float l9_568=l9_552.y;
int l9_569=l9_555.y;
if (l9_569==1)
{
l9_568=fract(l9_568);
}
else
{
if (l9_569==2)
{
float l9_570=fract(l9_568);
float l9_571=l9_568-l9_570;
float l9_572=step(0.25,fract(l9_571*0.5));
l9_568=mix(l9_570,1.0-l9_570,fast::clamp(l9_572,0.0,1.0));
}
}
l9_552.y=l9_568;
if (l9_556)
{
bool l9_573=l9_558;
bool l9_574;
if (l9_573)
{
l9_574=l9_555.x==3;
}
else
{
l9_574=l9_573;
}
float l9_575=l9_552.x;
float l9_576=l9_557.x;
float l9_577=l9_557.z;
bool l9_578=l9_574;
float l9_579=l9_562;
float l9_580=fast::clamp(l9_575,l9_576,l9_577);
float l9_581=step(abs(l9_575-l9_580),9.9999997e-06);
l9_579*=(l9_581+((1.0-float(l9_578))*(1.0-l9_581)));
l9_575=l9_580;
l9_552.x=l9_575;
l9_562=l9_579;
bool l9_582=l9_558;
bool l9_583;
if (l9_582)
{
l9_583=l9_555.y==3;
}
else
{
l9_583=l9_582;
}
float l9_584=l9_552.y;
float l9_585=l9_557.y;
float l9_586=l9_557.w;
bool l9_587=l9_583;
float l9_588=l9_562;
float l9_589=fast::clamp(l9_584,l9_585,l9_586);
float l9_590=step(abs(l9_584-l9_589),9.9999997e-06);
l9_588*=(l9_590+((1.0-float(l9_587))*(1.0-l9_590)));
l9_584=l9_589;
l9_552.y=l9_584;
l9_562=l9_588;
}
float2 l9_591=l9_552;
bool l9_592=l9_553;
float3x3 l9_593=l9_554;
if (l9_592)
{
l9_591=float2((l9_593*float3(l9_591,1.0)).xy);
}
float2 l9_594=l9_591;
l9_552=l9_594;
float l9_595=l9_552.x;
int l9_596=l9_555.x;
bool l9_597=l9_561;
float l9_598=l9_562;
if ((l9_596==0)||(l9_596==3))
{
float l9_599=l9_595;
float l9_600=0.0;
float l9_601=1.0;
bool l9_602=l9_597;
float l9_603=l9_598;
float l9_604=fast::clamp(l9_599,l9_600,l9_601);
float l9_605=step(abs(l9_599-l9_604),9.9999997e-06);
l9_603*=(l9_605+((1.0-float(l9_602))*(1.0-l9_605)));
l9_599=l9_604;
l9_595=l9_599;
l9_598=l9_603;
}
l9_552.x=l9_595;
l9_562=l9_598;
float l9_606=l9_552.y;
int l9_607=l9_555.y;
bool l9_608=l9_561;
float l9_609=l9_562;
if ((l9_607==0)||(l9_607==3))
{
float l9_610=l9_606;
float l9_611=0.0;
float l9_612=1.0;
bool l9_613=l9_608;
float l9_614=l9_609;
float l9_615=fast::clamp(l9_610,l9_611,l9_612);
float l9_616=step(abs(l9_610-l9_615),9.9999997e-06);
l9_614*=(l9_616+((1.0-float(l9_613))*(1.0-l9_616)));
l9_610=l9_615;
l9_606=l9_610;
l9_609=l9_614;
}
l9_552.y=l9_606;
l9_562=l9_609;
float2 l9_617=l9_552;
int l9_618=l9_550;
int l9_619=l9_551;
float l9_620=l9_560;
float2 l9_621=l9_617;
int l9_622=l9_618;
int l9_623=l9_619;
float3 l9_624=float3(0.0);
if (l9_622==0)
{
l9_624=float3(l9_621,0.0);
}
else
{
if (l9_622==1)
{
l9_624=float3(l9_621.x,(l9_621.y*0.5)+(0.5-(float(l9_623)*0.5)),0.0);
}
else
{
l9_624=float3(l9_621,float(l9_623));
}
}
float3 l9_625=l9_624;
float3 l9_626=l9_625;
float4 l9_627=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_626.xy,bias(l9_620));
float4 l9_628=l9_627;
if (l9_558)
{
l9_628=mix(l9_559,l9_628,float4(l9_562));
}
float4 l9_629=l9_628;
l9_543=l9_629;
float4 l9_630=l9_543;
l9_538=l9_630*N2_colorRampMult;
}
float4 l9_631=float4(1.0);
float4 l9_632=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_321;
l9_631=l9_320;
}
else
{
float2 l9_633=N2_uv;
float4 l9_634=float4(0.0);
int l9_635;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_636=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_636=0;
}
else
{
l9_636=in.varStereoViewID;
}
int l9_637=l9_636;
l9_635=1-l9_637;
}
else
{
int l9_638=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_638=0;
}
else
{
l9_638=in.varStereoViewID;
}
int l9_639=l9_638;
l9_635=l9_639;
}
int l9_640=l9_635;
int l9_641=mainTextureLayout_tmp;
int l9_642=l9_640;
float2 l9_643=l9_633;
bool l9_644=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_645=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_646=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_647=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_648=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_649=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_650=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_651=0.0;
bool l9_652=l9_649&&(!l9_647);
float l9_653=1.0;
float l9_654=l9_643.x;
int l9_655=l9_646.x;
if (l9_655==1)
{
l9_654=fract(l9_654);
}
else
{
if (l9_655==2)
{
float l9_656=fract(l9_654);
float l9_657=l9_654-l9_656;
float l9_658=step(0.25,fract(l9_657*0.5));
l9_654=mix(l9_656,1.0-l9_656,fast::clamp(l9_658,0.0,1.0));
}
}
l9_643.x=l9_654;
float l9_659=l9_643.y;
int l9_660=l9_646.y;
if (l9_660==1)
{
l9_659=fract(l9_659);
}
else
{
if (l9_660==2)
{
float l9_661=fract(l9_659);
float l9_662=l9_659-l9_661;
float l9_663=step(0.25,fract(l9_662*0.5));
l9_659=mix(l9_661,1.0-l9_661,fast::clamp(l9_663,0.0,1.0));
}
}
l9_643.y=l9_659;
if (l9_647)
{
bool l9_664=l9_649;
bool l9_665;
if (l9_664)
{
l9_665=l9_646.x==3;
}
else
{
l9_665=l9_664;
}
float l9_666=l9_643.x;
float l9_667=l9_648.x;
float l9_668=l9_648.z;
bool l9_669=l9_665;
float l9_670=l9_653;
float l9_671=fast::clamp(l9_666,l9_667,l9_668);
float l9_672=step(abs(l9_666-l9_671),9.9999997e-06);
l9_670*=(l9_672+((1.0-float(l9_669))*(1.0-l9_672)));
l9_666=l9_671;
l9_643.x=l9_666;
l9_653=l9_670;
bool l9_673=l9_649;
bool l9_674;
if (l9_673)
{
l9_674=l9_646.y==3;
}
else
{
l9_674=l9_673;
}
float l9_675=l9_643.y;
float l9_676=l9_648.y;
float l9_677=l9_648.w;
bool l9_678=l9_674;
float l9_679=l9_653;
float l9_680=fast::clamp(l9_675,l9_676,l9_677);
float l9_681=step(abs(l9_675-l9_680),9.9999997e-06);
l9_679*=(l9_681+((1.0-float(l9_678))*(1.0-l9_681)));
l9_675=l9_680;
l9_643.y=l9_675;
l9_653=l9_679;
}
float2 l9_682=l9_643;
bool l9_683=l9_644;
float3x3 l9_684=l9_645;
if (l9_683)
{
l9_682=float2((l9_684*float3(l9_682,1.0)).xy);
}
float2 l9_685=l9_682;
l9_643=l9_685;
float l9_686=l9_643.x;
int l9_687=l9_646.x;
bool l9_688=l9_652;
float l9_689=l9_653;
if ((l9_687==0)||(l9_687==3))
{
float l9_690=l9_686;
float l9_691=0.0;
float l9_692=1.0;
bool l9_693=l9_688;
float l9_694=l9_689;
float l9_695=fast::clamp(l9_690,l9_691,l9_692);
float l9_696=step(abs(l9_690-l9_695),9.9999997e-06);
l9_694*=(l9_696+((1.0-float(l9_693))*(1.0-l9_696)));
l9_690=l9_695;
l9_686=l9_690;
l9_689=l9_694;
}
l9_643.x=l9_686;
l9_653=l9_689;
float l9_697=l9_643.y;
int l9_698=l9_646.y;
bool l9_699=l9_652;
float l9_700=l9_653;
if ((l9_698==0)||(l9_698==3))
{
float l9_701=l9_697;
float l9_702=0.0;
float l9_703=1.0;
bool l9_704=l9_699;
float l9_705=l9_700;
float l9_706=fast::clamp(l9_701,l9_702,l9_703);
float l9_707=step(abs(l9_701-l9_706),9.9999997e-06);
l9_705*=(l9_707+((1.0-float(l9_704))*(1.0-l9_707)));
l9_701=l9_706;
l9_697=l9_701;
l9_700=l9_705;
}
l9_643.y=l9_697;
l9_653=l9_700;
float2 l9_708=l9_643;
int l9_709=l9_641;
int l9_710=l9_642;
float l9_711=l9_651;
float2 l9_712=l9_708;
int l9_713=l9_709;
int l9_714=l9_710;
float3 l9_715=float3(0.0);
if (l9_713==0)
{
l9_715=float3(l9_712,0.0);
}
else
{
if (l9_713==1)
{
l9_715=float3(l9_712.x,(l9_712.y*0.5)+(0.5-(float(l9_714)*0.5)),0.0);
}
else
{
l9_715=float3(l9_712,float(l9_714));
}
}
float3 l9_716=l9_715;
float3 l9_717=l9_716;
float4 l9_718=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_717.xy,bias(l9_711));
float4 l9_719=l9_718;
if (l9_649)
{
l9_719=mix(l9_650,l9_719,float4(l9_653));
}
float4 l9_720=l9_719;
l9_634=l9_720;
float4 l9_721=l9_634;
l9_631=l9_721;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_632=l9_538;
}
}
N2_result=(l9_631*l9_315)*l9_632;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_122*l9_315)*l9_632;
N2_result.w*=l9_121;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_722=l9_113*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_722,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_723=length(N2_result.xyz);
N2_result.w=l9_723;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_121;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_724=N2_result.xyz*N2_result.w;
N2_result=float4(l9_724.x,l9_724.y,l9_724.z,N2_result.w);
}
l9_87=N2_result;
l9_61=l9_87;
float l9_725=0.0;
float4 l9_726=l9_61;
float l9_727=l9_726.w;
l9_725=l9_727;
float3 l9_728=float3(0.0);
float3 l9_729=float3(0.0);
float3 l9_730=(*sc_set0.UserUniforms).Port_Default_N182;
ssGlobals l9_731=param;
float3 l9_732;
if ((int(PBRNORMALTEX_tmp)!=0))
{
float l9_733=0.0;
float l9_734;
if ((int(TRAILS_tmp)!=0))
{
l9_734=1.001;
}
else
{
l9_734=0.001;
}
l9_734-=0.001;
l9_733=l9_734;
float4 l9_735=float4(0.0);
l9_735=l9_731.VertexColor;
float l9_736=0.0;
l9_736=l9_735.x;
float l9_737=0.0;
float l9_738=l9_733;
bool l9_739=(l9_738*1.0)!=0.0;
bool l9_740;
if (l9_739)
{
l9_740=(l9_736*1.0)!=0.0;
}
else
{
l9_740=l9_739;
}
l9_737=float(l9_740);
float2 l9_741=float2(0.0);
float2 l9_742=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_741=l9_742;
float2 l9_743=float2(0.0);
float l9_744=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_745=float2(0.0);
float2 l9_746;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_746=float2(l9_744);
}
else
{
float2 l9_747=float2(0.0);
float2 l9_748=(*sc_set0.UserUniforms).trailFadeInOut;
l9_747=l9_748;
l9_745=l9_747;
l9_746=l9_745;
}
l9_743=l9_746;
float4 l9_749=float4(0.0);
l9_749=float4(l9_741.x,l9_741.y,l9_749.z,l9_749.w);
l9_749=float4(l9_749.x,l9_749.y,l9_743.x,l9_743.y);
float3 l9_750=float3(0.0);
float3 l9_751=(*sc_set0.UserUniforms).colorStart;
l9_750=l9_751;
float3 l9_752=float3(0.0);
float3 l9_753=(*sc_set0.UserUniforms).colorEnd;
l9_752=l9_753;
float3 l9_754=float3(0.0);
float3 l9_755=(*sc_set0.UserUniforms).colorMinStart;
l9_754=l9_755;
float3 l9_756=float3(0.0);
float3 l9_757=(*sc_set0.UserUniforms).colorMinEnd;
l9_756=l9_757;
float3 l9_758=float3(0.0);
float3 l9_759=(*sc_set0.UserUniforms).colorMaxStart;
l9_758=l9_759;
float3 l9_760=float3(0.0);
float3 l9_761=(*sc_set0.UserUniforms).colorMaxEnd;
l9_760=l9_761;
float l9_762=0.0;
float l9_763=(*sc_set0.UserUniforms).alphaStart;
l9_762=l9_763;
float l9_764=0.0;
float l9_765=(*sc_set0.UserUniforms).alphaEnd;
l9_764=l9_765;
float l9_766=0.0;
float l9_767=(*sc_set0.UserUniforms).alphaMinStart;
l9_766=l9_767;
float l9_768=0.0;
float l9_769=(*sc_set0.UserUniforms).alphaMinEnd;
l9_768=l9_769;
float l9_770=0.0;
float l9_771=(*sc_set0.UserUniforms).alphaMaxStart;
l9_770=l9_771;
float l9_772=0.0;
float l9_773=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_772=l9_773;
float l9_774=0.0;
float l9_775=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_774=l9_775;
float l9_776=0.0;
float l9_777=(*sc_set0.UserUniforms).numValidFrames;
l9_776=l9_777;
float2 l9_778=float2(0.0);
float2 l9_779=(*sc_set0.UserUniforms).gridSize;
l9_778=l9_779;
float l9_780=0.0;
float l9_781=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_780=l9_781;
float l9_782=0.0;
float l9_783=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_782=l9_783;
float2 l9_784=float2(0.0);
float2 l9_785=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_784=l9_785;
float4 l9_786=float4(0.0);
float4 l9_787=(*sc_set0.UserUniforms).colorRampMult;
l9_786=l9_787;
float l9_788=0.0;
float l9_789=(*sc_set0.UserUniforms).externalSeed;
l9_788=l9_789;
float4 l9_790=float4(0.0);
float4 l9_791;
l9_791.x=in.Interpolator0.x;
l9_791.y=in.Interpolator0.y;
l9_791.z=in.Interpolator0.z;
l9_791.w=in.Interpolator0.w;
l9_790=l9_791;
float4 l9_792=float4(0.0);
float4 l9_793;
l9_793.x=in.Interpolator1.x;
l9_793.y=in.Interpolator1.y;
l9_793.z=in.Interpolator1.z;
l9_793.w=in.Interpolator1.w;
l9_792=l9_793;
float2 l9_794=float2(0.0);
float l9_795=l9_737;
float4 l9_796=l9_749;
float3 l9_797=l9_750;
float3 l9_798=l9_752;
float3 l9_799=l9_754;
float3 l9_800=l9_756;
float3 l9_801=l9_758;
float3 l9_802=l9_760;
float l9_803=l9_762;
float l9_804=l9_764;
float l9_805=l9_766;
float l9_806=l9_768;
float l9_807=l9_770;
float l9_808=l9_772;
float l9_809=l9_774;
float l9_810=l9_776;
float2 l9_811=l9_778;
float l9_812=l9_780;
float l9_813=l9_782;
float2 l9_814=l9_784;
float4 l9_815=l9_786;
float l9_816=l9_788;
float4 l9_817=l9_790;
float4 l9_818=l9_792;
ssGlobals l9_819=l9_731;
tempGlobals=l9_819;
float2 l9_820=float2(0.0);
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_795!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_796;
N2_colorStart=l9_797;
N2_colorEnd=l9_798;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_799;
N2_colorMinEnd=l9_800;
N2_colorMaxStart=l9_801;
N2_colorMaxEnd=l9_802;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_803;
N2_alphaEnd=l9_804;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_805;
N2_alphaMinEnd=l9_806;
N2_alphaMaxStart=l9_807;
N2_alphaMaxEnd=l9_808;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_809;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_810;
N2_gridSize=l9_811;
N2_flipBookSpeedMult=l9_812;
N2_flipBookRandomStart=l9_813;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_814;
N2_colorRampMult=l9_815;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_816;
N2_timeValuesIn=l9_817;
N2_cameraFade_trailHeadTime_taper=l9_818;
float l9_821=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_822=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_821=length(float4(1.0)*l9_822);
}
N2_globalSeed=N2_externalSeed+l9_821;
int l9_823=0;
l9_823=int(tempGlobals.gInstanceID+0.5);
int l9_824=l9_823;
float l9_825=float(l9_824);
int l9_826=int(l9_825);
int l9_827=l9_826^(l9_826*15299);
int l9_828=l9_827;
int l9_829=l9_828;
int l9_830=((l9_829*((l9_829*1471343)+101146501))+1559861749)&2147483647;
int l9_831=l9_830;
int l9_832=l9_828*1399;
int l9_833=((l9_832*((l9_832*1471343)+101146501))+1559861749)&2147483647;
int l9_834=l9_833;
int l9_835=l9_828*7177;
int l9_836=((l9_835*((l9_835*1471343)+101146501))+1559861749)&2147483647;
int l9_837=l9_836;
int l9_838=l9_831;
float l9_839=float(l9_838)*4.6566129e-10;
int l9_840=l9_834;
float l9_841=float(l9_840)*4.6566129e-10;
int l9_842=l9_837;
float l9_843=float(l9_842)*4.6566129e-10;
float3 l9_844=float3(l9_839,l9_841,l9_843);
float3 l9_845=l9_844;
N2_particleSeed=l9_845;
float l9_846=N2_timeValuesIn.w;
float l9_847=N2_particleSeed.x;
float l9_848=N2_particleSeed.y;
float l9_849=N2_particleSeed.z;
float3 l9_850=fract((float3(l9_847,l9_848,l9_849)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_850=fract((float3(l9_847,l9_847,l9_847)*27.21883)+float3(N2_globalSeed));
}
float l9_851=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_852=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_853=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_854=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_855=float4(1.0);
float2 l9_856=tempGlobals.Surface_UVCoord0;
N2_uv=l9_856;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_857=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_858=float2(0.5-(l9_857/2.0),0.5+(l9_857/2.0));
float l9_859=N2_uv.x;
float l9_860=l9_858.x;
bool l9_861=l9_859<l9_860;
bool l9_862;
if (!l9_861)
{
l9_862=N2_uv.x>l9_858.y;
}
else
{
l9_862=l9_861;
}
if (l9_862)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_858.x)*1.0)/((l9_858.y-l9_858.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_863=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_864=float4(0.0);
int l9_865;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_866=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_866=0;
}
else
{
l9_866=in.varStereoViewID;
}
int l9_867=l9_866;
l9_865=1-l9_867;
}
else
{
int l9_868=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_868=0;
}
else
{
l9_868=in.varStereoViewID;
}
int l9_869=l9_868;
l9_865=l9_869;
}
int l9_870=l9_865;
int l9_871=trailTexLayout_tmp;
int l9_872=l9_870;
float2 l9_873=l9_863;
bool l9_874=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_875=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_876=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_877=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_878=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_879=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_880=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_881=0.0;
bool l9_882=l9_879&&(!l9_877);
float l9_883=1.0;
float l9_884=l9_873.x;
int l9_885=l9_876.x;
if (l9_885==1)
{
l9_884=fract(l9_884);
}
else
{
if (l9_885==2)
{
float l9_886=fract(l9_884);
float l9_887=l9_884-l9_886;
float l9_888=step(0.25,fract(l9_887*0.5));
l9_884=mix(l9_886,1.0-l9_886,fast::clamp(l9_888,0.0,1.0));
}
}
l9_873.x=l9_884;
float l9_889=l9_873.y;
int l9_890=l9_876.y;
if (l9_890==1)
{
l9_889=fract(l9_889);
}
else
{
if (l9_890==2)
{
float l9_891=fract(l9_889);
float l9_892=l9_889-l9_891;
float l9_893=step(0.25,fract(l9_892*0.5));
l9_889=mix(l9_891,1.0-l9_891,fast::clamp(l9_893,0.0,1.0));
}
}
l9_873.y=l9_889;
if (l9_877)
{
bool l9_894=l9_879;
bool l9_895;
if (l9_894)
{
l9_895=l9_876.x==3;
}
else
{
l9_895=l9_894;
}
float l9_896=l9_873.x;
float l9_897=l9_878.x;
float l9_898=l9_878.z;
bool l9_899=l9_895;
float l9_900=l9_883;
float l9_901=fast::clamp(l9_896,l9_897,l9_898);
float l9_902=step(abs(l9_896-l9_901),9.9999997e-06);
l9_900*=(l9_902+((1.0-float(l9_899))*(1.0-l9_902)));
l9_896=l9_901;
l9_873.x=l9_896;
l9_883=l9_900;
bool l9_903=l9_879;
bool l9_904;
if (l9_903)
{
l9_904=l9_876.y==3;
}
else
{
l9_904=l9_903;
}
float l9_905=l9_873.y;
float l9_906=l9_878.y;
float l9_907=l9_878.w;
bool l9_908=l9_904;
float l9_909=l9_883;
float l9_910=fast::clamp(l9_905,l9_906,l9_907);
float l9_911=step(abs(l9_905-l9_910),9.9999997e-06);
l9_909*=(l9_911+((1.0-float(l9_908))*(1.0-l9_911)));
l9_905=l9_910;
l9_873.y=l9_905;
l9_883=l9_909;
}
float2 l9_912=l9_873;
bool l9_913=l9_874;
float3x3 l9_914=l9_875;
if (l9_913)
{
l9_912=float2((l9_914*float3(l9_912,1.0)).xy);
}
float2 l9_915=l9_912;
l9_873=l9_915;
float l9_916=l9_873.x;
int l9_917=l9_876.x;
bool l9_918=l9_882;
float l9_919=l9_883;
if ((l9_917==0)||(l9_917==3))
{
float l9_920=l9_916;
float l9_921=0.0;
float l9_922=1.0;
bool l9_923=l9_918;
float l9_924=l9_919;
float l9_925=fast::clamp(l9_920,l9_921,l9_922);
float l9_926=step(abs(l9_920-l9_925),9.9999997e-06);
l9_924*=(l9_926+((1.0-float(l9_923))*(1.0-l9_926)));
l9_920=l9_925;
l9_916=l9_920;
l9_919=l9_924;
}
l9_873.x=l9_916;
l9_883=l9_919;
float l9_927=l9_873.y;
int l9_928=l9_876.y;
bool l9_929=l9_882;
float l9_930=l9_883;
if ((l9_928==0)||(l9_928==3))
{
float l9_931=l9_927;
float l9_932=0.0;
float l9_933=1.0;
bool l9_934=l9_929;
float l9_935=l9_930;
float l9_936=fast::clamp(l9_931,l9_932,l9_933);
float l9_937=step(abs(l9_931-l9_936),9.9999997e-06);
l9_935*=(l9_937+((1.0-float(l9_934))*(1.0-l9_937)));
l9_931=l9_936;
l9_927=l9_931;
l9_930=l9_935;
}
l9_873.y=l9_927;
l9_883=l9_930;
float2 l9_938=l9_873;
int l9_939=l9_871;
int l9_940=l9_872;
float l9_941=l9_881;
float2 l9_942=l9_938;
int l9_943=l9_939;
int l9_944=l9_940;
float3 l9_945=float3(0.0);
if (l9_943==0)
{
l9_945=float3(l9_942,0.0);
}
else
{
if (l9_943==1)
{
l9_945=float3(l9_942.x,(l9_942.y*0.5)+(0.5-(float(l9_944)*0.5)),0.0);
}
else
{
l9_945=float3(l9_942,float(l9_944));
}
}
float3 l9_946=l9_945;
float3 l9_947=l9_946;
float4 l9_948=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_947.xy,bias(l9_941));
float4 l9_949=l9_948;
if (l9_879)
{
l9_949=mix(l9_880,l9_949,float4(l9_883));
}
float4 l9_950=l9_949;
l9_864=l9_950;
float4 l9_951=l9_864;
l9_855=l9_951;
}
float l9_952=fast::max(1e-06,N2_fadeInOut.x);
float l9_953=N2_timeValuesIn.w;
l9_854*=mix(0.0,1.0,fast::clamp(l9_953,0.0,l9_952)/l9_952);
l9_952=fast::max(1e-06,N2_fadeInOut.y);
l9_854*=mix(0.0,1.0,fast::clamp(1.0-l9_953,0.0,l9_952)/l9_952);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_846=N2_trailHeadTime.y;
l9_952=fast::max(1e-06,N2_fadeInOut.z);
l9_854*=mix(0.0,1.0,fast::clamp(l9_846,0.0,l9_952)/l9_952);
l9_952=fast::max(1e-06,N2_fadeInOut.w);
l9_854*=mix(0.0,1.0,fast::clamp(1.0-l9_846,0.0,l9_952)/l9_952);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_954=float2(0.0);
l9_954=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_955=l9_954;
float2 l9_956=float2(0.0);
l9_956=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_957=l9_956;
float l9_958=ceil(l9_846*l9_955.x)/l9_957.x;
float2 l9_959=float2(l9_958,0.5);
float4 l9_960=float4(0.0);
int l9_961;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_962=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_962=0;
}
else
{
l9_962=in.varStereoViewID;
}
int l9_963=l9_962;
l9_961=1-l9_963;
}
else
{
int l9_964=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_964=0;
}
else
{
l9_964=in.varStereoViewID;
}
int l9_965=l9_964;
l9_961=l9_965;
}
int l9_966=l9_961;
int l9_967=trailColorRampTexLayout_tmp;
int l9_968=l9_966;
float2 l9_969=l9_959;
bool l9_970=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_971=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_972=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_973=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_974=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_975=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_976=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_977=0.0;
bool l9_978=l9_975&&(!l9_973);
float l9_979=1.0;
float l9_980=l9_969.x;
int l9_981=l9_972.x;
if (l9_981==1)
{
l9_980=fract(l9_980);
}
else
{
if (l9_981==2)
{
float l9_982=fract(l9_980);
float l9_983=l9_980-l9_982;
float l9_984=step(0.25,fract(l9_983*0.5));
l9_980=mix(l9_982,1.0-l9_982,fast::clamp(l9_984,0.0,1.0));
}
}
l9_969.x=l9_980;
float l9_985=l9_969.y;
int l9_986=l9_972.y;
if (l9_986==1)
{
l9_985=fract(l9_985);
}
else
{
if (l9_986==2)
{
float l9_987=fract(l9_985);
float l9_988=l9_985-l9_987;
float l9_989=step(0.25,fract(l9_988*0.5));
l9_985=mix(l9_987,1.0-l9_987,fast::clamp(l9_989,0.0,1.0));
}
}
l9_969.y=l9_985;
if (l9_973)
{
bool l9_990=l9_975;
bool l9_991;
if (l9_990)
{
l9_991=l9_972.x==3;
}
else
{
l9_991=l9_990;
}
float l9_992=l9_969.x;
float l9_993=l9_974.x;
float l9_994=l9_974.z;
bool l9_995=l9_991;
float l9_996=l9_979;
float l9_997=fast::clamp(l9_992,l9_993,l9_994);
float l9_998=step(abs(l9_992-l9_997),9.9999997e-06);
l9_996*=(l9_998+((1.0-float(l9_995))*(1.0-l9_998)));
l9_992=l9_997;
l9_969.x=l9_992;
l9_979=l9_996;
bool l9_999=l9_975;
bool l9_1000;
if (l9_999)
{
l9_1000=l9_972.y==3;
}
else
{
l9_1000=l9_999;
}
float l9_1001=l9_969.y;
float l9_1002=l9_974.y;
float l9_1003=l9_974.w;
bool l9_1004=l9_1000;
float l9_1005=l9_979;
float l9_1006=fast::clamp(l9_1001,l9_1002,l9_1003);
float l9_1007=step(abs(l9_1001-l9_1006),9.9999997e-06);
l9_1005*=(l9_1007+((1.0-float(l9_1004))*(1.0-l9_1007)));
l9_1001=l9_1006;
l9_969.y=l9_1001;
l9_979=l9_1005;
}
float2 l9_1008=l9_969;
bool l9_1009=l9_970;
float3x3 l9_1010=l9_971;
if (l9_1009)
{
l9_1008=float2((l9_1010*float3(l9_1008,1.0)).xy);
}
float2 l9_1011=l9_1008;
l9_969=l9_1011;
float l9_1012=l9_969.x;
int l9_1013=l9_972.x;
bool l9_1014=l9_978;
float l9_1015=l9_979;
if ((l9_1013==0)||(l9_1013==3))
{
float l9_1016=l9_1012;
float l9_1017=0.0;
float l9_1018=1.0;
bool l9_1019=l9_1014;
float l9_1020=l9_1015;
float l9_1021=fast::clamp(l9_1016,l9_1017,l9_1018);
float l9_1022=step(abs(l9_1016-l9_1021),9.9999997e-06);
l9_1020*=(l9_1022+((1.0-float(l9_1019))*(1.0-l9_1022)));
l9_1016=l9_1021;
l9_1012=l9_1016;
l9_1015=l9_1020;
}
l9_969.x=l9_1012;
l9_979=l9_1015;
float l9_1023=l9_969.y;
int l9_1024=l9_972.y;
bool l9_1025=l9_978;
float l9_1026=l9_979;
if ((l9_1024==0)||(l9_1024==3))
{
float l9_1027=l9_1023;
float l9_1028=0.0;
float l9_1029=1.0;
bool l9_1030=l9_1025;
float l9_1031=l9_1026;
float l9_1032=fast::clamp(l9_1027,l9_1028,l9_1029);
float l9_1033=step(abs(l9_1027-l9_1032),9.9999997e-06);
l9_1031*=(l9_1033+((1.0-float(l9_1030))*(1.0-l9_1033)));
l9_1027=l9_1032;
l9_1023=l9_1027;
l9_1026=l9_1031;
}
l9_969.y=l9_1023;
l9_979=l9_1026;
float2 l9_1034=l9_969;
int l9_1035=l9_967;
int l9_1036=l9_968;
float l9_1037=l9_977;
float2 l9_1038=l9_1034;
int l9_1039=l9_1035;
int l9_1040=l9_1036;
float3 l9_1041=float3(0.0);
if (l9_1039==0)
{
l9_1041=float3(l9_1038,0.0);
}
else
{
if (l9_1039==1)
{
l9_1041=float3(l9_1038.x,(l9_1038.y*0.5)+(0.5-(float(l9_1040)*0.5)),0.0);
}
else
{
l9_1041=float3(l9_1038,float(l9_1040));
}
}
float3 l9_1042=l9_1041;
float3 l9_1043=l9_1042;
float4 l9_1044=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_1043.xy,bias(l9_1037));
float4 l9_1045=l9_1044;
if (l9_975)
{
l9_1045=mix(l9_976,l9_1045,float4(l9_979));
}
float4 l9_1046=l9_1045;
l9_960=l9_1046;
float4 l9_1047=l9_960;
l9_855*=l9_1047;
}
}
}
float4 l9_1048=float4(0.0);
float3 l9_1049=float3(0.0);
float3 l9_1050=float3(0.0);
float l9_1051=0.0;
float l9_1052=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_1049=mix(N2_colorMinStart,N2_colorMaxStart,l9_850);
l9_1050=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_850);
}
else
{
l9_1049=N2_colorStart;
l9_1050=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_1051=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_851);
l9_1052=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_851);
}
else
{
l9_1051=N2_alphaStart;
l9_1052=N2_alphaEnd;
}
l9_1049=mix(l9_1049,l9_1050,float3(l9_846));
l9_1051=mix(l9_1051,l9_1052,l9_846);
l9_1048=float4(l9_1049,l9_1051);
float4 l9_1053=float4(0.0);
float2 l9_1054=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_1055=tempGlobals.Surface_UVCoord0;
l9_1054=l9_1055;
float2 l9_1056=l9_1054;
float l9_1057=fast::max(N2_timeValuesIn.x,1e-06);
float l9_1058=fast::max(N2_timeValuesIn.y,1e-06);
float l9_1059=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_1060=mix(l9_1057,l9_1058,l9_853);
l9_1059/=l9_1060;
}
float l9_1061=floor((N2_flipBookRandomStart+1.0)*l9_852);
float2 l9_1062=l9_1054;
float2 l9_1063=N2_gridSize;
float l9_1064=N2_numValidFrames;
float l9_1065=l9_1061;
float l9_1066=N2_flipBookSpeedMult;
float l9_1067=l9_1059;
float l9_1068=floor(l9_1063.x);
float l9_1069=floor(l9_1063.y);
float l9_1070=1.0/l9_1068;
float l9_1071=1.0/l9_1069;
float l9_1072=fast::min(l9_1068*l9_1069,floor(l9_1064));
float l9_1073=floor(mod((l9_1067*l9_1066)+floor(l9_1065),l9_1072));
float l9_1074=floor(l9_1073/l9_1068);
float l9_1075=mod(l9_1073,l9_1068);
float2 l9_1076=float2((l9_1070*l9_1062.x)+(l9_1075*l9_1070),((1.0-l9_1071)-(l9_1074*l9_1071))+(l9_1071*l9_1062.y));
l9_1054=l9_1076;
float2 l9_1077=l9_1054;
float4 l9_1078=float4(0.0);
int l9_1079;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1080=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1080=0;
}
else
{
l9_1080=in.varStereoViewID;
}
int l9_1081=l9_1080;
l9_1079=1-l9_1081;
}
else
{
int l9_1082=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1082=0;
}
else
{
l9_1082=in.varStereoViewID;
}
int l9_1083=l9_1082;
l9_1079=l9_1083;
}
int l9_1084=l9_1079;
int l9_1085=mainTextureLayout_tmp;
int l9_1086=l9_1084;
float2 l9_1087=l9_1077;
bool l9_1088=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1089=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1090=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1091=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1092=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1093=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1094=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1095=0.0;
bool l9_1096=l9_1093&&(!l9_1091);
float l9_1097=1.0;
float l9_1098=l9_1087.x;
int l9_1099=l9_1090.x;
if (l9_1099==1)
{
l9_1098=fract(l9_1098);
}
else
{
if (l9_1099==2)
{
float l9_1100=fract(l9_1098);
float l9_1101=l9_1098-l9_1100;
float l9_1102=step(0.25,fract(l9_1101*0.5));
l9_1098=mix(l9_1100,1.0-l9_1100,fast::clamp(l9_1102,0.0,1.0));
}
}
l9_1087.x=l9_1098;
float l9_1103=l9_1087.y;
int l9_1104=l9_1090.y;
if (l9_1104==1)
{
l9_1103=fract(l9_1103);
}
else
{
if (l9_1104==2)
{
float l9_1105=fract(l9_1103);
float l9_1106=l9_1103-l9_1105;
float l9_1107=step(0.25,fract(l9_1106*0.5));
l9_1103=mix(l9_1105,1.0-l9_1105,fast::clamp(l9_1107,0.0,1.0));
}
}
l9_1087.y=l9_1103;
if (l9_1091)
{
bool l9_1108=l9_1093;
bool l9_1109;
if (l9_1108)
{
l9_1109=l9_1090.x==3;
}
else
{
l9_1109=l9_1108;
}
float l9_1110=l9_1087.x;
float l9_1111=l9_1092.x;
float l9_1112=l9_1092.z;
bool l9_1113=l9_1109;
float l9_1114=l9_1097;
float l9_1115=fast::clamp(l9_1110,l9_1111,l9_1112);
float l9_1116=step(abs(l9_1110-l9_1115),9.9999997e-06);
l9_1114*=(l9_1116+((1.0-float(l9_1113))*(1.0-l9_1116)));
l9_1110=l9_1115;
l9_1087.x=l9_1110;
l9_1097=l9_1114;
bool l9_1117=l9_1093;
bool l9_1118;
if (l9_1117)
{
l9_1118=l9_1090.y==3;
}
else
{
l9_1118=l9_1117;
}
float l9_1119=l9_1087.y;
float l9_1120=l9_1092.y;
float l9_1121=l9_1092.w;
bool l9_1122=l9_1118;
float l9_1123=l9_1097;
float l9_1124=fast::clamp(l9_1119,l9_1120,l9_1121);
float l9_1125=step(abs(l9_1119-l9_1124),9.9999997e-06);
l9_1123*=(l9_1125+((1.0-float(l9_1122))*(1.0-l9_1125)));
l9_1119=l9_1124;
l9_1087.y=l9_1119;
l9_1097=l9_1123;
}
float2 l9_1126=l9_1087;
bool l9_1127=l9_1088;
float3x3 l9_1128=l9_1089;
if (l9_1127)
{
l9_1126=float2((l9_1128*float3(l9_1126,1.0)).xy);
}
float2 l9_1129=l9_1126;
l9_1087=l9_1129;
float l9_1130=l9_1087.x;
int l9_1131=l9_1090.x;
bool l9_1132=l9_1096;
float l9_1133=l9_1097;
if ((l9_1131==0)||(l9_1131==3))
{
float l9_1134=l9_1130;
float l9_1135=0.0;
float l9_1136=1.0;
bool l9_1137=l9_1132;
float l9_1138=l9_1133;
float l9_1139=fast::clamp(l9_1134,l9_1135,l9_1136);
float l9_1140=step(abs(l9_1134-l9_1139),9.9999997e-06);
l9_1138*=(l9_1140+((1.0-float(l9_1137))*(1.0-l9_1140)));
l9_1134=l9_1139;
l9_1130=l9_1134;
l9_1133=l9_1138;
}
l9_1087.x=l9_1130;
l9_1097=l9_1133;
float l9_1141=l9_1087.y;
int l9_1142=l9_1090.y;
bool l9_1143=l9_1096;
float l9_1144=l9_1097;
if ((l9_1142==0)||(l9_1142==3))
{
float l9_1145=l9_1141;
float l9_1146=0.0;
float l9_1147=1.0;
bool l9_1148=l9_1143;
float l9_1149=l9_1144;
float l9_1150=fast::clamp(l9_1145,l9_1146,l9_1147);
float l9_1151=step(abs(l9_1145-l9_1150),9.9999997e-06);
l9_1149*=(l9_1151+((1.0-float(l9_1148))*(1.0-l9_1151)));
l9_1145=l9_1150;
l9_1141=l9_1145;
l9_1144=l9_1149;
}
l9_1087.y=l9_1141;
l9_1097=l9_1144;
float2 l9_1152=l9_1087;
int l9_1153=l9_1085;
int l9_1154=l9_1086;
float l9_1155=l9_1095;
float2 l9_1156=l9_1152;
int l9_1157=l9_1153;
int l9_1158=l9_1154;
float3 l9_1159=float3(0.0);
if (l9_1157==0)
{
l9_1159=float3(l9_1156,0.0);
}
else
{
if (l9_1157==1)
{
l9_1159=float3(l9_1156.x,(l9_1156.y*0.5)+(0.5-(float(l9_1158)*0.5)),0.0);
}
else
{
l9_1159=float3(l9_1156,float(l9_1158));
}
}
float3 l9_1160=l9_1159;
float3 l9_1161=l9_1160;
float4 l9_1162=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1161.xy,bias(l9_1155));
float4 l9_1163=l9_1162;
if (l9_1093)
{
l9_1163=mix(l9_1094,l9_1163,float4(l9_1097));
}
float4 l9_1164=l9_1163;
l9_1078=l9_1164;
float4 l9_1165=l9_1078;
l9_1053=l9_1165;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_1166=l9_1056;
float2 l9_1167=N2_gridSize;
float l9_1168=N2_numValidFrames;
float l9_1169=floor(mod(l9_1061+1.0,N2_numValidFrames));
float l9_1170=N2_flipBookSpeedMult;
float l9_1171=l9_1059;
float l9_1172=floor(l9_1167.x);
float l9_1173=floor(l9_1167.y);
float l9_1174=1.0/l9_1172;
float l9_1175=1.0/l9_1173;
float l9_1176=fast::min(l9_1172*l9_1173,floor(l9_1168));
float l9_1177=floor(mod((l9_1171*l9_1170)+floor(l9_1169),l9_1176));
float l9_1178=floor(l9_1177/l9_1172);
float l9_1179=mod(l9_1177,l9_1172);
float2 l9_1180=float2((l9_1174*l9_1166.x)+(l9_1179*l9_1174),((1.0-l9_1175)-(l9_1178*l9_1175))+(l9_1175*l9_1166.y));
l9_1056=l9_1180;
float4 l9_1181=l9_1053;
float2 l9_1182=l9_1056;
float4 l9_1183=float4(0.0);
int l9_1184;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1185=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1185=0;
}
else
{
l9_1185=in.varStereoViewID;
}
int l9_1186=l9_1185;
l9_1184=1-l9_1186;
}
else
{
int l9_1187=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1187=0;
}
else
{
l9_1187=in.varStereoViewID;
}
int l9_1188=l9_1187;
l9_1184=l9_1188;
}
int l9_1189=l9_1184;
int l9_1190=mainTextureLayout_tmp;
int l9_1191=l9_1189;
float2 l9_1192=l9_1182;
bool l9_1193=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1194=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1195=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1196=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1197=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1198=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1199=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1200=0.0;
bool l9_1201=l9_1198&&(!l9_1196);
float l9_1202=1.0;
float l9_1203=l9_1192.x;
int l9_1204=l9_1195.x;
if (l9_1204==1)
{
l9_1203=fract(l9_1203);
}
else
{
if (l9_1204==2)
{
float l9_1205=fract(l9_1203);
float l9_1206=l9_1203-l9_1205;
float l9_1207=step(0.25,fract(l9_1206*0.5));
l9_1203=mix(l9_1205,1.0-l9_1205,fast::clamp(l9_1207,0.0,1.0));
}
}
l9_1192.x=l9_1203;
float l9_1208=l9_1192.y;
int l9_1209=l9_1195.y;
if (l9_1209==1)
{
l9_1208=fract(l9_1208);
}
else
{
if (l9_1209==2)
{
float l9_1210=fract(l9_1208);
float l9_1211=l9_1208-l9_1210;
float l9_1212=step(0.25,fract(l9_1211*0.5));
l9_1208=mix(l9_1210,1.0-l9_1210,fast::clamp(l9_1212,0.0,1.0));
}
}
l9_1192.y=l9_1208;
if (l9_1196)
{
bool l9_1213=l9_1198;
bool l9_1214;
if (l9_1213)
{
l9_1214=l9_1195.x==3;
}
else
{
l9_1214=l9_1213;
}
float l9_1215=l9_1192.x;
float l9_1216=l9_1197.x;
float l9_1217=l9_1197.z;
bool l9_1218=l9_1214;
float l9_1219=l9_1202;
float l9_1220=fast::clamp(l9_1215,l9_1216,l9_1217);
float l9_1221=step(abs(l9_1215-l9_1220),9.9999997e-06);
l9_1219*=(l9_1221+((1.0-float(l9_1218))*(1.0-l9_1221)));
l9_1215=l9_1220;
l9_1192.x=l9_1215;
l9_1202=l9_1219;
bool l9_1222=l9_1198;
bool l9_1223;
if (l9_1222)
{
l9_1223=l9_1195.y==3;
}
else
{
l9_1223=l9_1222;
}
float l9_1224=l9_1192.y;
float l9_1225=l9_1197.y;
float l9_1226=l9_1197.w;
bool l9_1227=l9_1223;
float l9_1228=l9_1202;
float l9_1229=fast::clamp(l9_1224,l9_1225,l9_1226);
float l9_1230=step(abs(l9_1224-l9_1229),9.9999997e-06);
l9_1228*=(l9_1230+((1.0-float(l9_1227))*(1.0-l9_1230)));
l9_1224=l9_1229;
l9_1192.y=l9_1224;
l9_1202=l9_1228;
}
float2 l9_1231=l9_1192;
bool l9_1232=l9_1193;
float3x3 l9_1233=l9_1194;
if (l9_1232)
{
l9_1231=float2((l9_1233*float3(l9_1231,1.0)).xy);
}
float2 l9_1234=l9_1231;
l9_1192=l9_1234;
float l9_1235=l9_1192.x;
int l9_1236=l9_1195.x;
bool l9_1237=l9_1201;
float l9_1238=l9_1202;
if ((l9_1236==0)||(l9_1236==3))
{
float l9_1239=l9_1235;
float l9_1240=0.0;
float l9_1241=1.0;
bool l9_1242=l9_1237;
float l9_1243=l9_1238;
float l9_1244=fast::clamp(l9_1239,l9_1240,l9_1241);
float l9_1245=step(abs(l9_1239-l9_1244),9.9999997e-06);
l9_1243*=(l9_1245+((1.0-float(l9_1242))*(1.0-l9_1245)));
l9_1239=l9_1244;
l9_1235=l9_1239;
l9_1238=l9_1243;
}
l9_1192.x=l9_1235;
l9_1202=l9_1238;
float l9_1246=l9_1192.y;
int l9_1247=l9_1195.y;
bool l9_1248=l9_1201;
float l9_1249=l9_1202;
if ((l9_1247==0)||(l9_1247==3))
{
float l9_1250=l9_1246;
float l9_1251=0.0;
float l9_1252=1.0;
bool l9_1253=l9_1248;
float l9_1254=l9_1249;
float l9_1255=fast::clamp(l9_1250,l9_1251,l9_1252);
float l9_1256=step(abs(l9_1250-l9_1255),9.9999997e-06);
l9_1254*=(l9_1256+((1.0-float(l9_1253))*(1.0-l9_1256)));
l9_1250=l9_1255;
l9_1246=l9_1250;
l9_1249=l9_1254;
}
l9_1192.y=l9_1246;
l9_1202=l9_1249;
float2 l9_1257=l9_1192;
int l9_1258=l9_1190;
int l9_1259=l9_1191;
float l9_1260=l9_1200;
float2 l9_1261=l9_1257;
int l9_1262=l9_1258;
int l9_1263=l9_1259;
float3 l9_1264=float3(0.0);
if (l9_1262==0)
{
l9_1264=float3(l9_1261,0.0);
}
else
{
if (l9_1262==1)
{
l9_1264=float3(l9_1261.x,(l9_1261.y*0.5)+(0.5-(float(l9_1263)*0.5)),0.0);
}
else
{
l9_1264=float3(l9_1261,float(l9_1263));
}
}
float3 l9_1265=l9_1264;
float3 l9_1266=l9_1265;
float4 l9_1267=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1266.xy,bias(l9_1260));
float4 l9_1268=l9_1267;
if (l9_1198)
{
l9_1268=mix(l9_1199,l9_1268,float4(l9_1202));
}
float4 l9_1269=l9_1268;
l9_1183=l9_1269;
float4 l9_1270=l9_1183;
l9_1053=mix(l9_1181,l9_1270,float4(fract((l9_1059*N2_flipBookSpeedMult)+l9_1061)));
}
}
}
float4 l9_1271=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_1272=ceil(l9_846*N2_texSize.x)/N2_texSize.x;
float l9_1273=l9_1272;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_1274=tempGlobals.Surface_UVCoord0;
l9_1273+=(l9_1274.x/N2_texSize.x);
}
float2 l9_1275=float2(l9_1273,0.5);
float4 l9_1276=float4(0.0);
int l9_1277;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1278=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1278=0;
}
else
{
l9_1278=in.varStereoViewID;
}
int l9_1279=l9_1278;
l9_1277=1-l9_1279;
}
else
{
int l9_1280=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1280=0;
}
else
{
l9_1280=in.varStereoViewID;
}
int l9_1281=l9_1280;
l9_1277=l9_1281;
}
int l9_1282=l9_1277;
int l9_1283=colorRampTextureLayout_tmp;
int l9_1284=l9_1282;
float2 l9_1285=l9_1275;
bool l9_1286=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_1287=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_1288=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_1289=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_1290=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_1291=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_1292=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_1293=0.0;
bool l9_1294=l9_1291&&(!l9_1289);
float l9_1295=1.0;
float l9_1296=l9_1285.x;
int l9_1297=l9_1288.x;
if (l9_1297==1)
{
l9_1296=fract(l9_1296);
}
else
{
if (l9_1297==2)
{
float l9_1298=fract(l9_1296);
float l9_1299=l9_1296-l9_1298;
float l9_1300=step(0.25,fract(l9_1299*0.5));
l9_1296=mix(l9_1298,1.0-l9_1298,fast::clamp(l9_1300,0.0,1.0));
}
}
l9_1285.x=l9_1296;
float l9_1301=l9_1285.y;
int l9_1302=l9_1288.y;
if (l9_1302==1)
{
l9_1301=fract(l9_1301);
}
else
{
if (l9_1302==2)
{
float l9_1303=fract(l9_1301);
float l9_1304=l9_1301-l9_1303;
float l9_1305=step(0.25,fract(l9_1304*0.5));
l9_1301=mix(l9_1303,1.0-l9_1303,fast::clamp(l9_1305,0.0,1.0));
}
}
l9_1285.y=l9_1301;
if (l9_1289)
{
bool l9_1306=l9_1291;
bool l9_1307;
if (l9_1306)
{
l9_1307=l9_1288.x==3;
}
else
{
l9_1307=l9_1306;
}
float l9_1308=l9_1285.x;
float l9_1309=l9_1290.x;
float l9_1310=l9_1290.z;
bool l9_1311=l9_1307;
float l9_1312=l9_1295;
float l9_1313=fast::clamp(l9_1308,l9_1309,l9_1310);
float l9_1314=step(abs(l9_1308-l9_1313),9.9999997e-06);
l9_1312*=(l9_1314+((1.0-float(l9_1311))*(1.0-l9_1314)));
l9_1308=l9_1313;
l9_1285.x=l9_1308;
l9_1295=l9_1312;
bool l9_1315=l9_1291;
bool l9_1316;
if (l9_1315)
{
l9_1316=l9_1288.y==3;
}
else
{
l9_1316=l9_1315;
}
float l9_1317=l9_1285.y;
float l9_1318=l9_1290.y;
float l9_1319=l9_1290.w;
bool l9_1320=l9_1316;
float l9_1321=l9_1295;
float l9_1322=fast::clamp(l9_1317,l9_1318,l9_1319);
float l9_1323=step(abs(l9_1317-l9_1322),9.9999997e-06);
l9_1321*=(l9_1323+((1.0-float(l9_1320))*(1.0-l9_1323)));
l9_1317=l9_1322;
l9_1285.y=l9_1317;
l9_1295=l9_1321;
}
float2 l9_1324=l9_1285;
bool l9_1325=l9_1286;
float3x3 l9_1326=l9_1287;
if (l9_1325)
{
l9_1324=float2((l9_1326*float3(l9_1324,1.0)).xy);
}
float2 l9_1327=l9_1324;
l9_1285=l9_1327;
float l9_1328=l9_1285.x;
int l9_1329=l9_1288.x;
bool l9_1330=l9_1294;
float l9_1331=l9_1295;
if ((l9_1329==0)||(l9_1329==3))
{
float l9_1332=l9_1328;
float l9_1333=0.0;
float l9_1334=1.0;
bool l9_1335=l9_1330;
float l9_1336=l9_1331;
float l9_1337=fast::clamp(l9_1332,l9_1333,l9_1334);
float l9_1338=step(abs(l9_1332-l9_1337),9.9999997e-06);
l9_1336*=(l9_1338+((1.0-float(l9_1335))*(1.0-l9_1338)));
l9_1332=l9_1337;
l9_1328=l9_1332;
l9_1331=l9_1336;
}
l9_1285.x=l9_1328;
l9_1295=l9_1331;
float l9_1339=l9_1285.y;
int l9_1340=l9_1288.y;
bool l9_1341=l9_1294;
float l9_1342=l9_1295;
if ((l9_1340==0)||(l9_1340==3))
{
float l9_1343=l9_1339;
float l9_1344=0.0;
float l9_1345=1.0;
bool l9_1346=l9_1341;
float l9_1347=l9_1342;
float l9_1348=fast::clamp(l9_1343,l9_1344,l9_1345);
float l9_1349=step(abs(l9_1343-l9_1348),9.9999997e-06);
l9_1347*=(l9_1349+((1.0-float(l9_1346))*(1.0-l9_1349)));
l9_1343=l9_1348;
l9_1339=l9_1343;
l9_1342=l9_1347;
}
l9_1285.y=l9_1339;
l9_1295=l9_1342;
float2 l9_1350=l9_1285;
int l9_1351=l9_1283;
int l9_1352=l9_1284;
float l9_1353=l9_1293;
float2 l9_1354=l9_1350;
int l9_1355=l9_1351;
int l9_1356=l9_1352;
float3 l9_1357=float3(0.0);
if (l9_1355==0)
{
l9_1357=float3(l9_1354,0.0);
}
else
{
if (l9_1355==1)
{
l9_1357=float3(l9_1354.x,(l9_1354.y*0.5)+(0.5-(float(l9_1356)*0.5)),0.0);
}
else
{
l9_1357=float3(l9_1354,float(l9_1356));
}
}
float3 l9_1358=l9_1357;
float3 l9_1359=l9_1358;
float4 l9_1360=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_1359.xy,bias(l9_1353));
float4 l9_1361=l9_1360;
if (l9_1291)
{
l9_1361=mix(l9_1292,l9_1361,float4(l9_1295));
}
float4 l9_1362=l9_1361;
l9_1276=l9_1362;
float4 l9_1363=l9_1276;
l9_1271=l9_1363*N2_colorRampMult;
}
float4 l9_1364=float4(1.0);
float4 l9_1365=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_1054;
l9_1364=l9_1053;
}
else
{
float2 l9_1366=N2_uv;
float4 l9_1367=float4(0.0);
int l9_1368;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1369=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1369=0;
}
else
{
l9_1369=in.varStereoViewID;
}
int l9_1370=l9_1369;
l9_1368=1-l9_1370;
}
else
{
int l9_1371=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1371=0;
}
else
{
l9_1371=in.varStereoViewID;
}
int l9_1372=l9_1371;
l9_1368=l9_1372;
}
int l9_1373=l9_1368;
int l9_1374=mainTextureLayout_tmp;
int l9_1375=l9_1373;
float2 l9_1376=l9_1366;
bool l9_1377=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1378=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1379=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1380=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1381=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1382=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1383=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1384=0.0;
bool l9_1385=l9_1382&&(!l9_1380);
float l9_1386=1.0;
float l9_1387=l9_1376.x;
int l9_1388=l9_1379.x;
if (l9_1388==1)
{
l9_1387=fract(l9_1387);
}
else
{
if (l9_1388==2)
{
float l9_1389=fract(l9_1387);
float l9_1390=l9_1387-l9_1389;
float l9_1391=step(0.25,fract(l9_1390*0.5));
l9_1387=mix(l9_1389,1.0-l9_1389,fast::clamp(l9_1391,0.0,1.0));
}
}
l9_1376.x=l9_1387;
float l9_1392=l9_1376.y;
int l9_1393=l9_1379.y;
if (l9_1393==1)
{
l9_1392=fract(l9_1392);
}
else
{
if (l9_1393==2)
{
float l9_1394=fract(l9_1392);
float l9_1395=l9_1392-l9_1394;
float l9_1396=step(0.25,fract(l9_1395*0.5));
l9_1392=mix(l9_1394,1.0-l9_1394,fast::clamp(l9_1396,0.0,1.0));
}
}
l9_1376.y=l9_1392;
if (l9_1380)
{
bool l9_1397=l9_1382;
bool l9_1398;
if (l9_1397)
{
l9_1398=l9_1379.x==3;
}
else
{
l9_1398=l9_1397;
}
float l9_1399=l9_1376.x;
float l9_1400=l9_1381.x;
float l9_1401=l9_1381.z;
bool l9_1402=l9_1398;
float l9_1403=l9_1386;
float l9_1404=fast::clamp(l9_1399,l9_1400,l9_1401);
float l9_1405=step(abs(l9_1399-l9_1404),9.9999997e-06);
l9_1403*=(l9_1405+((1.0-float(l9_1402))*(1.0-l9_1405)));
l9_1399=l9_1404;
l9_1376.x=l9_1399;
l9_1386=l9_1403;
bool l9_1406=l9_1382;
bool l9_1407;
if (l9_1406)
{
l9_1407=l9_1379.y==3;
}
else
{
l9_1407=l9_1406;
}
float l9_1408=l9_1376.y;
float l9_1409=l9_1381.y;
float l9_1410=l9_1381.w;
bool l9_1411=l9_1407;
float l9_1412=l9_1386;
float l9_1413=fast::clamp(l9_1408,l9_1409,l9_1410);
float l9_1414=step(abs(l9_1408-l9_1413),9.9999997e-06);
l9_1412*=(l9_1414+((1.0-float(l9_1411))*(1.0-l9_1414)));
l9_1408=l9_1413;
l9_1376.y=l9_1408;
l9_1386=l9_1412;
}
float2 l9_1415=l9_1376;
bool l9_1416=l9_1377;
float3x3 l9_1417=l9_1378;
if (l9_1416)
{
l9_1415=float2((l9_1417*float3(l9_1415,1.0)).xy);
}
float2 l9_1418=l9_1415;
l9_1376=l9_1418;
float l9_1419=l9_1376.x;
int l9_1420=l9_1379.x;
bool l9_1421=l9_1385;
float l9_1422=l9_1386;
if ((l9_1420==0)||(l9_1420==3))
{
float l9_1423=l9_1419;
float l9_1424=0.0;
float l9_1425=1.0;
bool l9_1426=l9_1421;
float l9_1427=l9_1422;
float l9_1428=fast::clamp(l9_1423,l9_1424,l9_1425);
float l9_1429=step(abs(l9_1423-l9_1428),9.9999997e-06);
l9_1427*=(l9_1429+((1.0-float(l9_1426))*(1.0-l9_1429)));
l9_1423=l9_1428;
l9_1419=l9_1423;
l9_1422=l9_1427;
}
l9_1376.x=l9_1419;
l9_1386=l9_1422;
float l9_1430=l9_1376.y;
int l9_1431=l9_1379.y;
bool l9_1432=l9_1385;
float l9_1433=l9_1386;
if ((l9_1431==0)||(l9_1431==3))
{
float l9_1434=l9_1430;
float l9_1435=0.0;
float l9_1436=1.0;
bool l9_1437=l9_1432;
float l9_1438=l9_1433;
float l9_1439=fast::clamp(l9_1434,l9_1435,l9_1436);
float l9_1440=step(abs(l9_1434-l9_1439),9.9999997e-06);
l9_1438*=(l9_1440+((1.0-float(l9_1437))*(1.0-l9_1440)));
l9_1434=l9_1439;
l9_1430=l9_1434;
l9_1433=l9_1438;
}
l9_1376.y=l9_1430;
l9_1386=l9_1433;
float2 l9_1441=l9_1376;
int l9_1442=l9_1374;
int l9_1443=l9_1375;
float l9_1444=l9_1384;
float2 l9_1445=l9_1441;
int l9_1446=l9_1442;
int l9_1447=l9_1443;
float3 l9_1448=float3(0.0);
if (l9_1446==0)
{
l9_1448=float3(l9_1445,0.0);
}
else
{
if (l9_1446==1)
{
l9_1448=float3(l9_1445.x,(l9_1445.y*0.5)+(0.5-(float(l9_1447)*0.5)),0.0);
}
else
{
l9_1448=float3(l9_1445,float(l9_1447));
}
}
float3 l9_1449=l9_1448;
float3 l9_1450=l9_1449;
float4 l9_1451=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1450.xy,bias(l9_1444));
float4 l9_1452=l9_1451;
if (l9_1382)
{
l9_1452=mix(l9_1383,l9_1452,float4(l9_1386));
}
float4 l9_1453=l9_1452;
l9_1367=l9_1453;
float4 l9_1454=l9_1367;
l9_1364=l9_1454;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_1365=l9_1271;
}
}
N2_result=(l9_1364*l9_1048)*l9_1365;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_855*l9_1048)*l9_1365;
N2_result.w*=l9_854;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_1455=l9_846*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_1455,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_1456=length(N2_result.xyz);
N2_result.w=l9_1456;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_854;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_1457=N2_result.xyz*N2_result.w;
N2_result=float4(l9_1457.x,l9_1457.y,l9_1457.z,N2_result.w);
}
l9_820=N2_uv;
l9_794=l9_820;
float4 l9_1458=float4(0.0);
float2 l9_1459=l9_794;
int l9_1460;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1461=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1461=0;
}
else
{
l9_1461=in.varStereoViewID;
}
int l9_1462=l9_1461;
l9_1460=1-l9_1462;
}
else
{
int l9_1463=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1463=0;
}
else
{
l9_1463=in.varStereoViewID;
}
int l9_1464=l9_1463;
l9_1460=l9_1464;
}
int l9_1465=l9_1460;
int l9_1466=normalTexLayout_tmp;
int l9_1467=l9_1465;
float2 l9_1468=l9_1459;
bool l9_1469=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1470=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1471=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1472=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1473=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1474=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1475=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1476=0.0;
bool l9_1477=l9_1474&&(!l9_1472);
float l9_1478=1.0;
float l9_1479=l9_1468.x;
int l9_1480=l9_1471.x;
if (l9_1480==1)
{
l9_1479=fract(l9_1479);
}
else
{
if (l9_1480==2)
{
float l9_1481=fract(l9_1479);
float l9_1482=l9_1479-l9_1481;
float l9_1483=step(0.25,fract(l9_1482*0.5));
l9_1479=mix(l9_1481,1.0-l9_1481,fast::clamp(l9_1483,0.0,1.0));
}
}
l9_1468.x=l9_1479;
float l9_1484=l9_1468.y;
int l9_1485=l9_1471.y;
if (l9_1485==1)
{
l9_1484=fract(l9_1484);
}
else
{
if (l9_1485==2)
{
float l9_1486=fract(l9_1484);
float l9_1487=l9_1484-l9_1486;
float l9_1488=step(0.25,fract(l9_1487*0.5));
l9_1484=mix(l9_1486,1.0-l9_1486,fast::clamp(l9_1488,0.0,1.0));
}
}
l9_1468.y=l9_1484;
if (l9_1472)
{
bool l9_1489=l9_1474;
bool l9_1490;
if (l9_1489)
{
l9_1490=l9_1471.x==3;
}
else
{
l9_1490=l9_1489;
}
float l9_1491=l9_1468.x;
float l9_1492=l9_1473.x;
float l9_1493=l9_1473.z;
bool l9_1494=l9_1490;
float l9_1495=l9_1478;
float l9_1496=fast::clamp(l9_1491,l9_1492,l9_1493);
float l9_1497=step(abs(l9_1491-l9_1496),9.9999997e-06);
l9_1495*=(l9_1497+((1.0-float(l9_1494))*(1.0-l9_1497)));
l9_1491=l9_1496;
l9_1468.x=l9_1491;
l9_1478=l9_1495;
bool l9_1498=l9_1474;
bool l9_1499;
if (l9_1498)
{
l9_1499=l9_1471.y==3;
}
else
{
l9_1499=l9_1498;
}
float l9_1500=l9_1468.y;
float l9_1501=l9_1473.y;
float l9_1502=l9_1473.w;
bool l9_1503=l9_1499;
float l9_1504=l9_1478;
float l9_1505=fast::clamp(l9_1500,l9_1501,l9_1502);
float l9_1506=step(abs(l9_1500-l9_1505),9.9999997e-06);
l9_1504*=(l9_1506+((1.0-float(l9_1503))*(1.0-l9_1506)));
l9_1500=l9_1505;
l9_1468.y=l9_1500;
l9_1478=l9_1504;
}
float2 l9_1507=l9_1468;
bool l9_1508=l9_1469;
float3x3 l9_1509=l9_1470;
if (l9_1508)
{
l9_1507=float2((l9_1509*float3(l9_1507,1.0)).xy);
}
float2 l9_1510=l9_1507;
l9_1468=l9_1510;
float l9_1511=l9_1468.x;
int l9_1512=l9_1471.x;
bool l9_1513=l9_1477;
float l9_1514=l9_1478;
if ((l9_1512==0)||(l9_1512==3))
{
float l9_1515=l9_1511;
float l9_1516=0.0;
float l9_1517=1.0;
bool l9_1518=l9_1513;
float l9_1519=l9_1514;
float l9_1520=fast::clamp(l9_1515,l9_1516,l9_1517);
float l9_1521=step(abs(l9_1515-l9_1520),9.9999997e-06);
l9_1519*=(l9_1521+((1.0-float(l9_1518))*(1.0-l9_1521)));
l9_1515=l9_1520;
l9_1511=l9_1515;
l9_1514=l9_1519;
}
l9_1468.x=l9_1511;
l9_1478=l9_1514;
float l9_1522=l9_1468.y;
int l9_1523=l9_1471.y;
bool l9_1524=l9_1477;
float l9_1525=l9_1478;
if ((l9_1523==0)||(l9_1523==3))
{
float l9_1526=l9_1522;
float l9_1527=0.0;
float l9_1528=1.0;
bool l9_1529=l9_1524;
float l9_1530=l9_1525;
float l9_1531=fast::clamp(l9_1526,l9_1527,l9_1528);
float l9_1532=step(abs(l9_1526-l9_1531),9.9999997e-06);
l9_1530*=(l9_1532+((1.0-float(l9_1529))*(1.0-l9_1532)));
l9_1526=l9_1531;
l9_1522=l9_1526;
l9_1525=l9_1530;
}
l9_1468.y=l9_1522;
l9_1478=l9_1525;
float2 l9_1533=l9_1468;
int l9_1534=l9_1466;
int l9_1535=l9_1467;
float l9_1536=l9_1476;
float2 l9_1537=l9_1533;
int l9_1538=l9_1534;
int l9_1539=l9_1535;
float3 l9_1540=float3(0.0);
if (l9_1538==0)
{
l9_1540=float3(l9_1537,0.0);
}
else
{
if (l9_1538==1)
{
l9_1540=float3(l9_1537.x,(l9_1537.y*0.5)+(0.5-(float(l9_1539)*0.5)),0.0);
}
else
{
l9_1540=float3(l9_1537,float(l9_1539));
}
}
float3 l9_1541=l9_1540;
float3 l9_1542=l9_1541;
float4 l9_1543=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1542.xy,bias(l9_1536));
float4 l9_1544=l9_1543;
if (l9_1474)
{
l9_1544=mix(l9_1475,l9_1544,float4(l9_1478));
}
float4 l9_1545=l9_1544;
float4 l9_1546=l9_1545;
float3 l9_1547=(l9_1546.xyz*1.9921875)-float3(1.0);
l9_1546=float4(l9_1547.x,l9_1547.y,l9_1547.z,l9_1546.w);
l9_1458=l9_1546;
l9_729=l9_1458.xyz;
l9_732=l9_729;
}
else
{
l9_732=l9_730;
}
l9_728=l9_732;
float l9_1548=0.0;
float l9_1549=(*sc_set0.UserUniforms).roughness;
l9_1548=l9_1549;
float l9_1550=l9_725;
float3 l9_1551=l9_728;
float l9_1552=l9_1548;
ssGlobals l9_1553=param;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1553.BumpedNormal=float3x3(float3(l9_1553.VertexTangent_WorldSpace),float3(l9_1553.VertexBinormal_WorldSpace),float3(l9_1553.VertexNormal_WorldSpace))*l9_1551;
}
l9_1550=fast::clamp(l9_1550,0.0,1.0);
float l9_1554=l9_1550;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1554<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1555=gl_FragCoord;
float2 l9_1556=floor(mod(l9_1555.xy,float2(4.0)));
float l9_1557=(mod(dot(l9_1556,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1554<l9_1557)
{
discard_fragment();
}
}
float3 l9_1558=l9_1553.PositionWS;
float3 l9_1559=l9_1553.BumpedNormal;
float l9_1560=l9_1552;
float3 l9_1561=l9_1558;
float3 l9_1562=l9_1559;
float l9_1563=l9_1560;
uint l9_1564=0u;
uint3 l9_1565=uint3(round((l9_1561-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_1565.x,l9_1565.y,l9_1565.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_1566=l9_1562;
float l9_1567=dot(abs(l9_1566),float3(1.0));
l9_1566/=float3(l9_1567);
float2 l9_1568=float2(fast::clamp(-l9_1566.z,0.0,1.0));
float2 l9_1569=l9_1566.xy+mix(-l9_1568,l9_1568,step(float2(0.0),l9_1566.xy));
uint l9_1570=as_type<uint>(half2(l9_1569));
uint2 l9_1571=uint2(l9_1570&65535u,l9_1570>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_1571.x,l9_1571.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_1564;
uint l9_1572=uint(fast::clamp(l9_1563,0.0,1.0)*1000.0);
l9_1572 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_1572;
}
else
{
float l9_1573=0.0;
float l9_1574;
if ((int(TRAILS_tmp)!=0))
{
l9_1574=1.001;
}
else
{
l9_1574=0.001;
}
l9_1574-=0.001;
l9_1573=l9_1574;
float4 l9_1575=float4(0.0);
l9_1575=param.VertexColor;
float l9_1576=0.0;
l9_1576=l9_1575.x;
float l9_1577=0.0;
float l9_1578=l9_1573;
bool l9_1579=(l9_1578*1.0)!=0.0;
bool l9_1580;
if (l9_1579)
{
l9_1580=(l9_1576*1.0)!=0.0;
}
else
{
l9_1580=l9_1579;
}
l9_1577=float(l9_1580);
float2 l9_1581=float2(0.0);
float2 l9_1582=(*sc_set0.UserUniforms).trailFadeStartEnd;
l9_1581=l9_1582;
float2 l9_1583=float2(0.0);
float l9_1584=(*sc_set0.UserUniforms).Port_Input1_N216;
float2 l9_1585=float2(0.0);
float2 l9_1586;
if (TRAILBEHAVIOR_tmp!=0)
{
l9_1586=float2(l9_1584);
}
else
{
float2 l9_1587=float2(0.0);
float2 l9_1588=(*sc_set0.UserUniforms).trailFadeInOut;
l9_1587=l9_1588;
l9_1585=l9_1587;
l9_1586=l9_1585;
}
l9_1583=l9_1586;
float4 l9_1589=float4(0.0);
l9_1589=float4(l9_1581.x,l9_1581.y,l9_1589.z,l9_1589.w);
l9_1589=float4(l9_1589.x,l9_1589.y,l9_1583.x,l9_1583.y);
float3 l9_1590=float3(0.0);
float3 l9_1591=(*sc_set0.UserUniforms).colorStart;
l9_1590=l9_1591;
float3 l9_1592=float3(0.0);
float3 l9_1593=(*sc_set0.UserUniforms).colorEnd;
l9_1592=l9_1593;
float3 l9_1594=float3(0.0);
float3 l9_1595=(*sc_set0.UserUniforms).colorMinStart;
l9_1594=l9_1595;
float3 l9_1596=float3(0.0);
float3 l9_1597=(*sc_set0.UserUniforms).colorMinEnd;
l9_1596=l9_1597;
float3 l9_1598=float3(0.0);
float3 l9_1599=(*sc_set0.UserUniforms).colorMaxStart;
l9_1598=l9_1599;
float3 l9_1600=float3(0.0);
float3 l9_1601=(*sc_set0.UserUniforms).colorMaxEnd;
l9_1600=l9_1601;
float l9_1602=0.0;
float l9_1603=(*sc_set0.UserUniforms).alphaStart;
l9_1602=l9_1603;
float l9_1604=0.0;
float l9_1605=(*sc_set0.UserUniforms).alphaEnd;
l9_1604=l9_1605;
float l9_1606=0.0;
float l9_1607=(*sc_set0.UserUniforms).alphaMinStart;
l9_1606=l9_1607;
float l9_1608=0.0;
float l9_1609=(*sc_set0.UserUniforms).alphaMinEnd;
l9_1608=l9_1609;
float l9_1610=0.0;
float l9_1611=(*sc_set0.UserUniforms).alphaMaxStart;
l9_1610=l9_1611;
float l9_1612=0.0;
float l9_1613=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_1612=l9_1613;
float l9_1614=0.0;
float l9_1615=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_1614=l9_1615;
float l9_1616=0.0;
float l9_1617=(*sc_set0.UserUniforms).numValidFrames;
l9_1616=l9_1617;
float2 l9_1618=float2(0.0);
float2 l9_1619=(*sc_set0.UserUniforms).gridSize;
l9_1618=l9_1619;
float l9_1620=0.0;
float l9_1621=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_1620=l9_1621;
float l9_1622=0.0;
float l9_1623=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_1622=l9_1623;
float2 l9_1624=float2(0.0);
float2 l9_1625=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_1624=l9_1625;
float4 l9_1626=float4(0.0);
float4 l9_1627=(*sc_set0.UserUniforms).colorRampMult;
l9_1626=l9_1627;
float l9_1628=0.0;
float l9_1629=(*sc_set0.UserUniforms).externalSeed;
l9_1628=l9_1629;
float4 l9_1630=float4(0.0);
float4 l9_1631;
l9_1631.x=in.Interpolator0.x;
l9_1631.y=in.Interpolator0.y;
l9_1631.z=in.Interpolator0.z;
l9_1631.w=in.Interpolator0.w;
l9_1630=l9_1631;
float4 l9_1632=float4(0.0);
float4 l9_1633;
l9_1633.x=in.Interpolator1.x;
l9_1633.y=in.Interpolator1.y;
l9_1633.z=in.Interpolator1.z;
l9_1633.w=in.Interpolator1.w;
l9_1632=l9_1633;
float l9_1634=l9_1577;
float4 l9_1635=l9_1589;
float3 l9_1636=l9_1590;
float3 l9_1637=l9_1592;
float3 l9_1638=l9_1594;
float3 l9_1639=l9_1596;
float3 l9_1640=l9_1598;
float3 l9_1641=l9_1600;
float l9_1642=l9_1602;
float l9_1643=l9_1604;
float l9_1644=l9_1606;
float l9_1645=l9_1608;
float l9_1646=l9_1610;
float l9_1647=l9_1612;
float l9_1648=l9_1614;
float l9_1649=l9_1616;
float2 l9_1650=l9_1618;
float l9_1651=l9_1620;
float l9_1652=l9_1622;
float2 l9_1653=l9_1624;
float4 l9_1654=l9_1626;
float l9_1655=l9_1628;
float4 l9_1656=l9_1630;
float4 l9_1657=l9_1632;
ssGlobals l9_1658=param;
tempGlobals=l9_1658;
N2_ENABLE_TRAILS=(int(TRAILS_tmp)!=0);
N2_ENABLE_INDEPENDENTTRAIL=TRAILBEHAVIOR_tmp!=0;
N2_isTrailCondition=l9_1634!=0.0;
N2_ENABLE_TRAILTEXTURE=(int(TRAILTEXTURE_tmp)!=0);
N2_ENABLE_TRAILCOLORRAMP=(int(TRAILCOLORRAMP_tmp)!=0);
N2_fadeInOut=l9_1635;
N2_colorStart=l9_1636;
N2_colorEnd=l9_1637;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_1638;
N2_colorMinEnd=l9_1639;
N2_colorMaxStart=l9_1640;
N2_colorMaxEnd=l9_1641;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_1642;
N2_alphaEnd=l9_1643;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_1644;
N2_alphaMinEnd=l9_1645;
N2_alphaMaxStart=l9_1646;
N2_alphaMaxEnd=l9_1647;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_1648;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_1649;
N2_gridSize=l9_1650;
N2_flipBookSpeedMult=l9_1651;
N2_flipBookRandomStart=l9_1652;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_1653;
N2_colorRampMult=l9_1654;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_1655;
N2_timeValuesIn=l9_1656;
N2_cameraFade_trailHeadTime_taper=l9_1657;
float l9_1659=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_1660=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1659=length(float4(1.0)*l9_1660);
}
N2_globalSeed=N2_externalSeed+l9_1659;
int l9_1661=0;
l9_1661=int(tempGlobals.gInstanceID+0.5);
int l9_1662=l9_1661;
float l9_1663=float(l9_1662);
int l9_1664=int(l9_1663);
int l9_1665=l9_1664^(l9_1664*15299);
int l9_1666=l9_1665;
int l9_1667=l9_1666;
int l9_1668=((l9_1667*((l9_1667*1471343)+101146501))+1559861749)&2147483647;
int l9_1669=l9_1668;
int l9_1670=l9_1666*1399;
int l9_1671=((l9_1670*((l9_1670*1471343)+101146501))+1559861749)&2147483647;
int l9_1672=l9_1671;
int l9_1673=l9_1666*7177;
int l9_1674=((l9_1673*((l9_1673*1471343)+101146501))+1559861749)&2147483647;
int l9_1675=l9_1674;
int l9_1676=l9_1669;
float l9_1677=float(l9_1676)*4.6566129e-10;
int l9_1678=l9_1672;
float l9_1679=float(l9_1678)*4.6566129e-10;
int l9_1680=l9_1675;
float l9_1681=float(l9_1680)*4.6566129e-10;
float3 l9_1682=float3(l9_1677,l9_1679,l9_1681);
float3 l9_1683=l9_1682;
N2_particleSeed=l9_1683;
float l9_1684=N2_timeValuesIn.w;
float l9_1685=N2_particleSeed.x;
float l9_1686=N2_particleSeed.y;
float l9_1687=N2_particleSeed.z;
float3 l9_1688=fract((float3(l9_1685,l9_1686,l9_1687)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_1688=fract((float3(l9_1685,l9_1685,l9_1685)*27.21883)+float3(N2_globalSeed));
}
float l9_1689=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_1690=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_1691=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
N2_isTrail=0.0;
float l9_1692=1.0;
N2_trailHeadTime=N2_cameraFade_trailHeadTime_taper.yz;
float4 l9_1693=float4(1.0);
float2 l9_1694=tempGlobals.Surface_UVCoord0;
N2_uv=l9_1694;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrailCondition)
{
N2_isTrail=1.0;
float l9_1695=N2_cameraFade_trailHeadTime_taper.w;
float2 l9_1696=float2(0.5-(l9_1695/2.0),0.5+(l9_1695/2.0));
float l9_1697=N2_uv.x;
float l9_1698=l9_1696.x;
bool l9_1699=l9_1697<l9_1698;
bool l9_1700;
if (!l9_1699)
{
l9_1700=N2_uv.x>l9_1696.y;
}
else
{
l9_1700=l9_1699;
}
if (l9_1700)
{
discard_fragment();
}
N2_uv=float2(0.0+(((N2_uv.x-l9_1696.x)*1.0)/((l9_1696.y-l9_1696.x)+1e-06)),N2_uv.y);
if (N2_ENABLE_TRAILTEXTURE)
{
float2 l9_1701=float2(N2_uv.x,1.0-N2_uv.y);
float4 l9_1702=float4(0.0);
int l9_1703;
if ((int(trailTexHasSwappedViews_tmp)!=0))
{
int l9_1704=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1704=0;
}
else
{
l9_1704=in.varStereoViewID;
}
int l9_1705=l9_1704;
l9_1703=1-l9_1705;
}
else
{
int l9_1706=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1706=0;
}
else
{
l9_1706=in.varStereoViewID;
}
int l9_1707=l9_1706;
l9_1703=l9_1707;
}
int l9_1708=l9_1703;
int l9_1709=trailTexLayout_tmp;
int l9_1710=l9_1708;
float2 l9_1711=l9_1701;
bool l9_1712=(int(SC_USE_UV_TRANSFORM_trailTex_tmp)!=0);
float3x3 l9_1713=(*sc_set0.UserUniforms).trailTexTransform;
int2 l9_1714=int2(SC_SOFTWARE_WRAP_MODE_U_trailTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailTex_tmp);
bool l9_1715=(int(SC_USE_UV_MIN_MAX_trailTex_tmp)!=0);
float4 l9_1716=(*sc_set0.UserUniforms).trailTexUvMinMax;
bool l9_1717=(int(SC_USE_CLAMP_TO_BORDER_trailTex_tmp)!=0);
float4 l9_1718=(*sc_set0.UserUniforms).trailTexBorderColor;
float l9_1719=0.0;
bool l9_1720=l9_1717&&(!l9_1715);
float l9_1721=1.0;
float l9_1722=l9_1711.x;
int l9_1723=l9_1714.x;
if (l9_1723==1)
{
l9_1722=fract(l9_1722);
}
else
{
if (l9_1723==2)
{
float l9_1724=fract(l9_1722);
float l9_1725=l9_1722-l9_1724;
float l9_1726=step(0.25,fract(l9_1725*0.5));
l9_1722=mix(l9_1724,1.0-l9_1724,fast::clamp(l9_1726,0.0,1.0));
}
}
l9_1711.x=l9_1722;
float l9_1727=l9_1711.y;
int l9_1728=l9_1714.y;
if (l9_1728==1)
{
l9_1727=fract(l9_1727);
}
else
{
if (l9_1728==2)
{
float l9_1729=fract(l9_1727);
float l9_1730=l9_1727-l9_1729;
float l9_1731=step(0.25,fract(l9_1730*0.5));
l9_1727=mix(l9_1729,1.0-l9_1729,fast::clamp(l9_1731,0.0,1.0));
}
}
l9_1711.y=l9_1727;
if (l9_1715)
{
bool l9_1732=l9_1717;
bool l9_1733;
if (l9_1732)
{
l9_1733=l9_1714.x==3;
}
else
{
l9_1733=l9_1732;
}
float l9_1734=l9_1711.x;
float l9_1735=l9_1716.x;
float l9_1736=l9_1716.z;
bool l9_1737=l9_1733;
float l9_1738=l9_1721;
float l9_1739=fast::clamp(l9_1734,l9_1735,l9_1736);
float l9_1740=step(abs(l9_1734-l9_1739),9.9999997e-06);
l9_1738*=(l9_1740+((1.0-float(l9_1737))*(1.0-l9_1740)));
l9_1734=l9_1739;
l9_1711.x=l9_1734;
l9_1721=l9_1738;
bool l9_1741=l9_1717;
bool l9_1742;
if (l9_1741)
{
l9_1742=l9_1714.y==3;
}
else
{
l9_1742=l9_1741;
}
float l9_1743=l9_1711.y;
float l9_1744=l9_1716.y;
float l9_1745=l9_1716.w;
bool l9_1746=l9_1742;
float l9_1747=l9_1721;
float l9_1748=fast::clamp(l9_1743,l9_1744,l9_1745);
float l9_1749=step(abs(l9_1743-l9_1748),9.9999997e-06);
l9_1747*=(l9_1749+((1.0-float(l9_1746))*(1.0-l9_1749)));
l9_1743=l9_1748;
l9_1711.y=l9_1743;
l9_1721=l9_1747;
}
float2 l9_1750=l9_1711;
bool l9_1751=l9_1712;
float3x3 l9_1752=l9_1713;
if (l9_1751)
{
l9_1750=float2((l9_1752*float3(l9_1750,1.0)).xy);
}
float2 l9_1753=l9_1750;
l9_1711=l9_1753;
float l9_1754=l9_1711.x;
int l9_1755=l9_1714.x;
bool l9_1756=l9_1720;
float l9_1757=l9_1721;
if ((l9_1755==0)||(l9_1755==3))
{
float l9_1758=l9_1754;
float l9_1759=0.0;
float l9_1760=1.0;
bool l9_1761=l9_1756;
float l9_1762=l9_1757;
float l9_1763=fast::clamp(l9_1758,l9_1759,l9_1760);
float l9_1764=step(abs(l9_1758-l9_1763),9.9999997e-06);
l9_1762*=(l9_1764+((1.0-float(l9_1761))*(1.0-l9_1764)));
l9_1758=l9_1763;
l9_1754=l9_1758;
l9_1757=l9_1762;
}
l9_1711.x=l9_1754;
l9_1721=l9_1757;
float l9_1765=l9_1711.y;
int l9_1766=l9_1714.y;
bool l9_1767=l9_1720;
float l9_1768=l9_1721;
if ((l9_1766==0)||(l9_1766==3))
{
float l9_1769=l9_1765;
float l9_1770=0.0;
float l9_1771=1.0;
bool l9_1772=l9_1767;
float l9_1773=l9_1768;
float l9_1774=fast::clamp(l9_1769,l9_1770,l9_1771);
float l9_1775=step(abs(l9_1769-l9_1774),9.9999997e-06);
l9_1773*=(l9_1775+((1.0-float(l9_1772))*(1.0-l9_1775)));
l9_1769=l9_1774;
l9_1765=l9_1769;
l9_1768=l9_1773;
}
l9_1711.y=l9_1765;
l9_1721=l9_1768;
float2 l9_1776=l9_1711;
int l9_1777=l9_1709;
int l9_1778=l9_1710;
float l9_1779=l9_1719;
float2 l9_1780=l9_1776;
int l9_1781=l9_1777;
int l9_1782=l9_1778;
float3 l9_1783=float3(0.0);
if (l9_1781==0)
{
l9_1783=float3(l9_1780,0.0);
}
else
{
if (l9_1781==1)
{
l9_1783=float3(l9_1780.x,(l9_1780.y*0.5)+(0.5-(float(l9_1782)*0.5)),0.0);
}
else
{
l9_1783=float3(l9_1780,float(l9_1782));
}
}
float3 l9_1784=l9_1783;
float3 l9_1785=l9_1784;
float4 l9_1786=sc_set0.trailTex.sample(sc_set0.trailTexSmpSC,l9_1785.xy,bias(l9_1779));
float4 l9_1787=l9_1786;
if (l9_1717)
{
l9_1787=mix(l9_1718,l9_1787,float4(l9_1721));
}
float4 l9_1788=l9_1787;
l9_1702=l9_1788;
float4 l9_1789=l9_1702;
l9_1693=l9_1789;
}
float l9_1790=fast::max(1e-06,N2_fadeInOut.x);
float l9_1791=N2_timeValuesIn.w;
l9_1692*=mix(0.0,1.0,fast::clamp(l9_1791,0.0,l9_1790)/l9_1790);
l9_1790=fast::max(1e-06,N2_fadeInOut.y);
l9_1692*=mix(0.0,1.0,fast::clamp(1.0-l9_1791,0.0,l9_1790)/l9_1790);
if (!N2_ENABLE_INDEPENDENTTRAIL)
{
l9_1684=N2_trailHeadTime.y;
l9_1790=fast::max(1e-06,N2_fadeInOut.z);
l9_1692*=mix(0.0,1.0,fast::clamp(l9_1684,0.0,l9_1790)/l9_1790);
l9_1790=fast::max(1e-06,N2_fadeInOut.w);
l9_1692*=mix(0.0,1.0,fast::clamp(1.0-l9_1684,0.0,l9_1790)/l9_1790);
}
if (N2_ENABLE_TRAILCOLORRAMP)
{
float2 l9_1792=float2(0.0);
l9_1792=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_1793=l9_1792;
float2 l9_1794=float2(0.0);
l9_1794=(*sc_set0.UserUniforms).trailColorRampTexSize.xy;
float2 l9_1795=l9_1794;
float l9_1796=ceil(l9_1684*l9_1793.x)/l9_1795.x;
float2 l9_1797=float2(l9_1796,0.5);
float4 l9_1798=float4(0.0);
int l9_1799;
if ((int(trailColorRampTexHasSwappedViews_tmp)!=0))
{
int l9_1800=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1800=0;
}
else
{
l9_1800=in.varStereoViewID;
}
int l9_1801=l9_1800;
l9_1799=1-l9_1801;
}
else
{
int l9_1802=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1802=0;
}
else
{
l9_1802=in.varStereoViewID;
}
int l9_1803=l9_1802;
l9_1799=l9_1803;
}
int l9_1804=l9_1799;
int l9_1805=trailColorRampTexLayout_tmp;
int l9_1806=l9_1804;
float2 l9_1807=l9_1797;
bool l9_1808=(int(SC_USE_UV_TRANSFORM_trailColorRampTex_tmp)!=0);
float3x3 l9_1809=(*sc_set0.UserUniforms).trailColorRampTexTransform;
int2 l9_1810=int2(SC_SOFTWARE_WRAP_MODE_U_trailColorRampTex_tmp,SC_SOFTWARE_WRAP_MODE_V_trailColorRampTex_tmp);
bool l9_1811=(int(SC_USE_UV_MIN_MAX_trailColorRampTex_tmp)!=0);
float4 l9_1812=(*sc_set0.UserUniforms).trailColorRampTexUvMinMax;
bool l9_1813=(int(SC_USE_CLAMP_TO_BORDER_trailColorRampTex_tmp)!=0);
float4 l9_1814=(*sc_set0.UserUniforms).trailColorRampTexBorderColor;
float l9_1815=0.0;
bool l9_1816=l9_1813&&(!l9_1811);
float l9_1817=1.0;
float l9_1818=l9_1807.x;
int l9_1819=l9_1810.x;
if (l9_1819==1)
{
l9_1818=fract(l9_1818);
}
else
{
if (l9_1819==2)
{
float l9_1820=fract(l9_1818);
float l9_1821=l9_1818-l9_1820;
float l9_1822=step(0.25,fract(l9_1821*0.5));
l9_1818=mix(l9_1820,1.0-l9_1820,fast::clamp(l9_1822,0.0,1.0));
}
}
l9_1807.x=l9_1818;
float l9_1823=l9_1807.y;
int l9_1824=l9_1810.y;
if (l9_1824==1)
{
l9_1823=fract(l9_1823);
}
else
{
if (l9_1824==2)
{
float l9_1825=fract(l9_1823);
float l9_1826=l9_1823-l9_1825;
float l9_1827=step(0.25,fract(l9_1826*0.5));
l9_1823=mix(l9_1825,1.0-l9_1825,fast::clamp(l9_1827,0.0,1.0));
}
}
l9_1807.y=l9_1823;
if (l9_1811)
{
bool l9_1828=l9_1813;
bool l9_1829;
if (l9_1828)
{
l9_1829=l9_1810.x==3;
}
else
{
l9_1829=l9_1828;
}
float l9_1830=l9_1807.x;
float l9_1831=l9_1812.x;
float l9_1832=l9_1812.z;
bool l9_1833=l9_1829;
float l9_1834=l9_1817;
float l9_1835=fast::clamp(l9_1830,l9_1831,l9_1832);
float l9_1836=step(abs(l9_1830-l9_1835),9.9999997e-06);
l9_1834*=(l9_1836+((1.0-float(l9_1833))*(1.0-l9_1836)));
l9_1830=l9_1835;
l9_1807.x=l9_1830;
l9_1817=l9_1834;
bool l9_1837=l9_1813;
bool l9_1838;
if (l9_1837)
{
l9_1838=l9_1810.y==3;
}
else
{
l9_1838=l9_1837;
}
float l9_1839=l9_1807.y;
float l9_1840=l9_1812.y;
float l9_1841=l9_1812.w;
bool l9_1842=l9_1838;
float l9_1843=l9_1817;
float l9_1844=fast::clamp(l9_1839,l9_1840,l9_1841);
float l9_1845=step(abs(l9_1839-l9_1844),9.9999997e-06);
l9_1843*=(l9_1845+((1.0-float(l9_1842))*(1.0-l9_1845)));
l9_1839=l9_1844;
l9_1807.y=l9_1839;
l9_1817=l9_1843;
}
float2 l9_1846=l9_1807;
bool l9_1847=l9_1808;
float3x3 l9_1848=l9_1809;
if (l9_1847)
{
l9_1846=float2((l9_1848*float3(l9_1846,1.0)).xy);
}
float2 l9_1849=l9_1846;
l9_1807=l9_1849;
float l9_1850=l9_1807.x;
int l9_1851=l9_1810.x;
bool l9_1852=l9_1816;
float l9_1853=l9_1817;
if ((l9_1851==0)||(l9_1851==3))
{
float l9_1854=l9_1850;
float l9_1855=0.0;
float l9_1856=1.0;
bool l9_1857=l9_1852;
float l9_1858=l9_1853;
float l9_1859=fast::clamp(l9_1854,l9_1855,l9_1856);
float l9_1860=step(abs(l9_1854-l9_1859),9.9999997e-06);
l9_1858*=(l9_1860+((1.0-float(l9_1857))*(1.0-l9_1860)));
l9_1854=l9_1859;
l9_1850=l9_1854;
l9_1853=l9_1858;
}
l9_1807.x=l9_1850;
l9_1817=l9_1853;
float l9_1861=l9_1807.y;
int l9_1862=l9_1810.y;
bool l9_1863=l9_1816;
float l9_1864=l9_1817;
if ((l9_1862==0)||(l9_1862==3))
{
float l9_1865=l9_1861;
float l9_1866=0.0;
float l9_1867=1.0;
bool l9_1868=l9_1863;
float l9_1869=l9_1864;
float l9_1870=fast::clamp(l9_1865,l9_1866,l9_1867);
float l9_1871=step(abs(l9_1865-l9_1870),9.9999997e-06);
l9_1869*=(l9_1871+((1.0-float(l9_1868))*(1.0-l9_1871)));
l9_1865=l9_1870;
l9_1861=l9_1865;
l9_1864=l9_1869;
}
l9_1807.y=l9_1861;
l9_1817=l9_1864;
float2 l9_1872=l9_1807;
int l9_1873=l9_1805;
int l9_1874=l9_1806;
float l9_1875=l9_1815;
float2 l9_1876=l9_1872;
int l9_1877=l9_1873;
int l9_1878=l9_1874;
float3 l9_1879=float3(0.0);
if (l9_1877==0)
{
l9_1879=float3(l9_1876,0.0);
}
else
{
if (l9_1877==1)
{
l9_1879=float3(l9_1876.x,(l9_1876.y*0.5)+(0.5-(float(l9_1878)*0.5)),0.0);
}
else
{
l9_1879=float3(l9_1876,float(l9_1878));
}
}
float3 l9_1880=l9_1879;
float3 l9_1881=l9_1880;
float4 l9_1882=sc_set0.trailColorRampTex.sample(sc_set0.trailColorRampTexSmpSC,l9_1881.xy,bias(l9_1875));
float4 l9_1883=l9_1882;
if (l9_1813)
{
l9_1883=mix(l9_1814,l9_1883,float4(l9_1817));
}
float4 l9_1884=l9_1883;
l9_1798=l9_1884;
float4 l9_1885=l9_1798;
l9_1693*=l9_1885;
}
}
}
float4 l9_1886=float4(0.0);
float3 l9_1887=float3(0.0);
float3 l9_1888=float3(0.0);
float l9_1889=0.0;
float l9_1890=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_1887=mix(N2_colorMinStart,N2_colorMaxStart,l9_1688);
l9_1888=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_1688);
}
else
{
l9_1887=N2_colorStart;
l9_1888=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_1889=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_1689);
l9_1890=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_1689);
}
else
{
l9_1889=N2_alphaStart;
l9_1890=N2_alphaEnd;
}
l9_1887=mix(l9_1887,l9_1888,float3(l9_1684));
l9_1889=mix(l9_1889,l9_1890,l9_1684);
l9_1886=float4(l9_1887,l9_1889);
float4 l9_1891=float4(0.0);
float2 l9_1892=float2(0.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
float2 l9_1893=tempGlobals.Surface_UVCoord0;
l9_1892=l9_1893;
float2 l9_1894=l9_1892;
float l9_1895=fast::max(N2_timeValuesIn.x,1e-06);
float l9_1896=fast::max(N2_timeValuesIn.y,1e-06);
float l9_1897=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_1898=mix(l9_1895,l9_1896,l9_1691);
l9_1897/=l9_1898;
}
float l9_1899=floor((N2_flipBookRandomStart+1.0)*l9_1690);
float2 l9_1900=l9_1892;
float2 l9_1901=N2_gridSize;
float l9_1902=N2_numValidFrames;
float l9_1903=l9_1899;
float l9_1904=N2_flipBookSpeedMult;
float l9_1905=l9_1897;
float l9_1906=floor(l9_1901.x);
float l9_1907=floor(l9_1901.y);
float l9_1908=1.0/l9_1906;
float l9_1909=1.0/l9_1907;
float l9_1910=fast::min(l9_1906*l9_1907,floor(l9_1902));
float l9_1911=floor(mod((l9_1905*l9_1904)+floor(l9_1903),l9_1910));
float l9_1912=floor(l9_1911/l9_1906);
float l9_1913=mod(l9_1911,l9_1906);
float2 l9_1914=float2((l9_1908*l9_1900.x)+(l9_1913*l9_1908),((1.0-l9_1909)-(l9_1912*l9_1909))+(l9_1909*l9_1900.y));
l9_1892=l9_1914;
float2 l9_1915=l9_1892;
float4 l9_1916=float4(0.0);
int l9_1917;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1918=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1918=0;
}
else
{
l9_1918=in.varStereoViewID;
}
int l9_1919=l9_1918;
l9_1917=1-l9_1919;
}
else
{
int l9_1920=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1920=0;
}
else
{
l9_1920=in.varStereoViewID;
}
int l9_1921=l9_1920;
l9_1917=l9_1921;
}
int l9_1922=l9_1917;
int l9_1923=mainTextureLayout_tmp;
int l9_1924=l9_1922;
float2 l9_1925=l9_1915;
bool l9_1926=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1927=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1928=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1929=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1930=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1931=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1932=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1933=0.0;
bool l9_1934=l9_1931&&(!l9_1929);
float l9_1935=1.0;
float l9_1936=l9_1925.x;
int l9_1937=l9_1928.x;
if (l9_1937==1)
{
l9_1936=fract(l9_1936);
}
else
{
if (l9_1937==2)
{
float l9_1938=fract(l9_1936);
float l9_1939=l9_1936-l9_1938;
float l9_1940=step(0.25,fract(l9_1939*0.5));
l9_1936=mix(l9_1938,1.0-l9_1938,fast::clamp(l9_1940,0.0,1.0));
}
}
l9_1925.x=l9_1936;
float l9_1941=l9_1925.y;
int l9_1942=l9_1928.y;
if (l9_1942==1)
{
l9_1941=fract(l9_1941);
}
else
{
if (l9_1942==2)
{
float l9_1943=fract(l9_1941);
float l9_1944=l9_1941-l9_1943;
float l9_1945=step(0.25,fract(l9_1944*0.5));
l9_1941=mix(l9_1943,1.0-l9_1943,fast::clamp(l9_1945,0.0,1.0));
}
}
l9_1925.y=l9_1941;
if (l9_1929)
{
bool l9_1946=l9_1931;
bool l9_1947;
if (l9_1946)
{
l9_1947=l9_1928.x==3;
}
else
{
l9_1947=l9_1946;
}
float l9_1948=l9_1925.x;
float l9_1949=l9_1930.x;
float l9_1950=l9_1930.z;
bool l9_1951=l9_1947;
float l9_1952=l9_1935;
float l9_1953=fast::clamp(l9_1948,l9_1949,l9_1950);
float l9_1954=step(abs(l9_1948-l9_1953),9.9999997e-06);
l9_1952*=(l9_1954+((1.0-float(l9_1951))*(1.0-l9_1954)));
l9_1948=l9_1953;
l9_1925.x=l9_1948;
l9_1935=l9_1952;
bool l9_1955=l9_1931;
bool l9_1956;
if (l9_1955)
{
l9_1956=l9_1928.y==3;
}
else
{
l9_1956=l9_1955;
}
float l9_1957=l9_1925.y;
float l9_1958=l9_1930.y;
float l9_1959=l9_1930.w;
bool l9_1960=l9_1956;
float l9_1961=l9_1935;
float l9_1962=fast::clamp(l9_1957,l9_1958,l9_1959);
float l9_1963=step(abs(l9_1957-l9_1962),9.9999997e-06);
l9_1961*=(l9_1963+((1.0-float(l9_1960))*(1.0-l9_1963)));
l9_1957=l9_1962;
l9_1925.y=l9_1957;
l9_1935=l9_1961;
}
float2 l9_1964=l9_1925;
bool l9_1965=l9_1926;
float3x3 l9_1966=l9_1927;
if (l9_1965)
{
l9_1964=float2((l9_1966*float3(l9_1964,1.0)).xy);
}
float2 l9_1967=l9_1964;
l9_1925=l9_1967;
float l9_1968=l9_1925.x;
int l9_1969=l9_1928.x;
bool l9_1970=l9_1934;
float l9_1971=l9_1935;
if ((l9_1969==0)||(l9_1969==3))
{
float l9_1972=l9_1968;
float l9_1973=0.0;
float l9_1974=1.0;
bool l9_1975=l9_1970;
float l9_1976=l9_1971;
float l9_1977=fast::clamp(l9_1972,l9_1973,l9_1974);
float l9_1978=step(abs(l9_1972-l9_1977),9.9999997e-06);
l9_1976*=(l9_1978+((1.0-float(l9_1975))*(1.0-l9_1978)));
l9_1972=l9_1977;
l9_1968=l9_1972;
l9_1971=l9_1976;
}
l9_1925.x=l9_1968;
l9_1935=l9_1971;
float l9_1979=l9_1925.y;
int l9_1980=l9_1928.y;
bool l9_1981=l9_1934;
float l9_1982=l9_1935;
if ((l9_1980==0)||(l9_1980==3))
{
float l9_1983=l9_1979;
float l9_1984=0.0;
float l9_1985=1.0;
bool l9_1986=l9_1981;
float l9_1987=l9_1982;
float l9_1988=fast::clamp(l9_1983,l9_1984,l9_1985);
float l9_1989=step(abs(l9_1983-l9_1988),9.9999997e-06);
l9_1987*=(l9_1989+((1.0-float(l9_1986))*(1.0-l9_1989)));
l9_1983=l9_1988;
l9_1979=l9_1983;
l9_1982=l9_1987;
}
l9_1925.y=l9_1979;
l9_1935=l9_1982;
float2 l9_1990=l9_1925;
int l9_1991=l9_1923;
int l9_1992=l9_1924;
float l9_1993=l9_1933;
float2 l9_1994=l9_1990;
int l9_1995=l9_1991;
int l9_1996=l9_1992;
float3 l9_1997=float3(0.0);
if (l9_1995==0)
{
l9_1997=float3(l9_1994,0.0);
}
else
{
if (l9_1995==1)
{
l9_1997=float3(l9_1994.x,(l9_1994.y*0.5)+(0.5-(float(l9_1996)*0.5)),0.0);
}
else
{
l9_1997=float3(l9_1994,float(l9_1996));
}
}
float3 l9_1998=l9_1997;
float3 l9_1999=l9_1998;
float4 l9_2000=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1999.xy,bias(l9_1993));
float4 l9_2001=l9_2000;
if (l9_1931)
{
l9_2001=mix(l9_1932,l9_2001,float4(l9_1935));
}
float4 l9_2002=l9_2001;
l9_1916=l9_2002;
float4 l9_2003=l9_1916;
l9_1891=l9_2003;
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_2004=l9_1894;
float2 l9_2005=N2_gridSize;
float l9_2006=N2_numValidFrames;
float l9_2007=floor(mod(l9_1899+1.0,N2_numValidFrames));
float l9_2008=N2_flipBookSpeedMult;
float l9_2009=l9_1897;
float l9_2010=floor(l9_2005.x);
float l9_2011=floor(l9_2005.y);
float l9_2012=1.0/l9_2010;
float l9_2013=1.0/l9_2011;
float l9_2014=fast::min(l9_2010*l9_2011,floor(l9_2006));
float l9_2015=floor(mod((l9_2009*l9_2008)+floor(l9_2007),l9_2014));
float l9_2016=floor(l9_2015/l9_2010);
float l9_2017=mod(l9_2015,l9_2010);
float2 l9_2018=float2((l9_2012*l9_2004.x)+(l9_2017*l9_2012),((1.0-l9_2013)-(l9_2016*l9_2013))+(l9_2013*l9_2004.y));
l9_1894=l9_2018;
float4 l9_2019=l9_1891;
float2 l9_2020=l9_1894;
float4 l9_2021=float4(0.0);
int l9_2022;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2023=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2023=0;
}
else
{
l9_2023=in.varStereoViewID;
}
int l9_2024=l9_2023;
l9_2022=1-l9_2024;
}
else
{
int l9_2025=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2025=0;
}
else
{
l9_2025=in.varStereoViewID;
}
int l9_2026=l9_2025;
l9_2022=l9_2026;
}
int l9_2027=l9_2022;
int l9_2028=mainTextureLayout_tmp;
int l9_2029=l9_2027;
float2 l9_2030=l9_2020;
bool l9_2031=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2032=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2033=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2034=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2035=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2036=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2037=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2038=0.0;
bool l9_2039=l9_2036&&(!l9_2034);
float l9_2040=1.0;
float l9_2041=l9_2030.x;
int l9_2042=l9_2033.x;
if (l9_2042==1)
{
l9_2041=fract(l9_2041);
}
else
{
if (l9_2042==2)
{
float l9_2043=fract(l9_2041);
float l9_2044=l9_2041-l9_2043;
float l9_2045=step(0.25,fract(l9_2044*0.5));
l9_2041=mix(l9_2043,1.0-l9_2043,fast::clamp(l9_2045,0.0,1.0));
}
}
l9_2030.x=l9_2041;
float l9_2046=l9_2030.y;
int l9_2047=l9_2033.y;
if (l9_2047==1)
{
l9_2046=fract(l9_2046);
}
else
{
if (l9_2047==2)
{
float l9_2048=fract(l9_2046);
float l9_2049=l9_2046-l9_2048;
float l9_2050=step(0.25,fract(l9_2049*0.5));
l9_2046=mix(l9_2048,1.0-l9_2048,fast::clamp(l9_2050,0.0,1.0));
}
}
l9_2030.y=l9_2046;
if (l9_2034)
{
bool l9_2051=l9_2036;
bool l9_2052;
if (l9_2051)
{
l9_2052=l9_2033.x==3;
}
else
{
l9_2052=l9_2051;
}
float l9_2053=l9_2030.x;
float l9_2054=l9_2035.x;
float l9_2055=l9_2035.z;
bool l9_2056=l9_2052;
float l9_2057=l9_2040;
float l9_2058=fast::clamp(l9_2053,l9_2054,l9_2055);
float l9_2059=step(abs(l9_2053-l9_2058),9.9999997e-06);
l9_2057*=(l9_2059+((1.0-float(l9_2056))*(1.0-l9_2059)));
l9_2053=l9_2058;
l9_2030.x=l9_2053;
l9_2040=l9_2057;
bool l9_2060=l9_2036;
bool l9_2061;
if (l9_2060)
{
l9_2061=l9_2033.y==3;
}
else
{
l9_2061=l9_2060;
}
float l9_2062=l9_2030.y;
float l9_2063=l9_2035.y;
float l9_2064=l9_2035.w;
bool l9_2065=l9_2061;
float l9_2066=l9_2040;
float l9_2067=fast::clamp(l9_2062,l9_2063,l9_2064);
float l9_2068=step(abs(l9_2062-l9_2067),9.9999997e-06);
l9_2066*=(l9_2068+((1.0-float(l9_2065))*(1.0-l9_2068)));
l9_2062=l9_2067;
l9_2030.y=l9_2062;
l9_2040=l9_2066;
}
float2 l9_2069=l9_2030;
bool l9_2070=l9_2031;
float3x3 l9_2071=l9_2032;
if (l9_2070)
{
l9_2069=float2((l9_2071*float3(l9_2069,1.0)).xy);
}
float2 l9_2072=l9_2069;
l9_2030=l9_2072;
float l9_2073=l9_2030.x;
int l9_2074=l9_2033.x;
bool l9_2075=l9_2039;
float l9_2076=l9_2040;
if ((l9_2074==0)||(l9_2074==3))
{
float l9_2077=l9_2073;
float l9_2078=0.0;
float l9_2079=1.0;
bool l9_2080=l9_2075;
float l9_2081=l9_2076;
float l9_2082=fast::clamp(l9_2077,l9_2078,l9_2079);
float l9_2083=step(abs(l9_2077-l9_2082),9.9999997e-06);
l9_2081*=(l9_2083+((1.0-float(l9_2080))*(1.0-l9_2083)));
l9_2077=l9_2082;
l9_2073=l9_2077;
l9_2076=l9_2081;
}
l9_2030.x=l9_2073;
l9_2040=l9_2076;
float l9_2084=l9_2030.y;
int l9_2085=l9_2033.y;
bool l9_2086=l9_2039;
float l9_2087=l9_2040;
if ((l9_2085==0)||(l9_2085==3))
{
float l9_2088=l9_2084;
float l9_2089=0.0;
float l9_2090=1.0;
bool l9_2091=l9_2086;
float l9_2092=l9_2087;
float l9_2093=fast::clamp(l9_2088,l9_2089,l9_2090);
float l9_2094=step(abs(l9_2088-l9_2093),9.9999997e-06);
l9_2092*=(l9_2094+((1.0-float(l9_2091))*(1.0-l9_2094)));
l9_2088=l9_2093;
l9_2084=l9_2088;
l9_2087=l9_2092;
}
l9_2030.y=l9_2084;
l9_2040=l9_2087;
float2 l9_2095=l9_2030;
int l9_2096=l9_2028;
int l9_2097=l9_2029;
float l9_2098=l9_2038;
float2 l9_2099=l9_2095;
int l9_2100=l9_2096;
int l9_2101=l9_2097;
float3 l9_2102=float3(0.0);
if (l9_2100==0)
{
l9_2102=float3(l9_2099,0.0);
}
else
{
if (l9_2100==1)
{
l9_2102=float3(l9_2099.x,(l9_2099.y*0.5)+(0.5-(float(l9_2101)*0.5)),0.0);
}
else
{
l9_2102=float3(l9_2099,float(l9_2101));
}
}
float3 l9_2103=l9_2102;
float3 l9_2104=l9_2103;
float4 l9_2105=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2104.xy,bias(l9_2098));
float4 l9_2106=l9_2105;
if (l9_2036)
{
l9_2106=mix(l9_2037,l9_2106,float4(l9_2040));
}
float4 l9_2107=l9_2106;
l9_2021=l9_2107;
float4 l9_2108=l9_2021;
l9_1891=mix(l9_2019,l9_2108,float4(fract((l9_1897*N2_flipBookSpeedMult)+l9_1899)));
}
}
}
float4 l9_2109=float4(1.0);
if (N2_ENABLE_COLORRAMP)
{
float l9_2110=ceil(l9_1684*N2_texSize.x)/N2_texSize.x;
float l9_2111=l9_2110;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_2112=tempGlobals.Surface_UVCoord0;
l9_2111+=(l9_2112.x/N2_texSize.x);
}
float2 l9_2113=float2(l9_2111,0.5);
float4 l9_2114=float4(0.0);
int l9_2115;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2116=0;
}
else
{
l9_2116=in.varStereoViewID;
}
int l9_2117=l9_2116;
l9_2115=1-l9_2117;
}
else
{
int l9_2118=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2118=0;
}
else
{
l9_2118=in.varStereoViewID;
}
int l9_2119=l9_2118;
l9_2115=l9_2119;
}
int l9_2120=l9_2115;
int l9_2121=colorRampTextureLayout_tmp;
int l9_2122=l9_2120;
float2 l9_2123=l9_2113;
bool l9_2124=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_2125=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_2126=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_2127=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_2128=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_2129=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_2130=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_2131=0.0;
bool l9_2132=l9_2129&&(!l9_2127);
float l9_2133=1.0;
float l9_2134=l9_2123.x;
int l9_2135=l9_2126.x;
if (l9_2135==1)
{
l9_2134=fract(l9_2134);
}
else
{
if (l9_2135==2)
{
float l9_2136=fract(l9_2134);
float l9_2137=l9_2134-l9_2136;
float l9_2138=step(0.25,fract(l9_2137*0.5));
l9_2134=mix(l9_2136,1.0-l9_2136,fast::clamp(l9_2138,0.0,1.0));
}
}
l9_2123.x=l9_2134;
float l9_2139=l9_2123.y;
int l9_2140=l9_2126.y;
if (l9_2140==1)
{
l9_2139=fract(l9_2139);
}
else
{
if (l9_2140==2)
{
float l9_2141=fract(l9_2139);
float l9_2142=l9_2139-l9_2141;
float l9_2143=step(0.25,fract(l9_2142*0.5));
l9_2139=mix(l9_2141,1.0-l9_2141,fast::clamp(l9_2143,0.0,1.0));
}
}
l9_2123.y=l9_2139;
if (l9_2127)
{
bool l9_2144=l9_2129;
bool l9_2145;
if (l9_2144)
{
l9_2145=l9_2126.x==3;
}
else
{
l9_2145=l9_2144;
}
float l9_2146=l9_2123.x;
float l9_2147=l9_2128.x;
float l9_2148=l9_2128.z;
bool l9_2149=l9_2145;
float l9_2150=l9_2133;
float l9_2151=fast::clamp(l9_2146,l9_2147,l9_2148);
float l9_2152=step(abs(l9_2146-l9_2151),9.9999997e-06);
l9_2150*=(l9_2152+((1.0-float(l9_2149))*(1.0-l9_2152)));
l9_2146=l9_2151;
l9_2123.x=l9_2146;
l9_2133=l9_2150;
bool l9_2153=l9_2129;
bool l9_2154;
if (l9_2153)
{
l9_2154=l9_2126.y==3;
}
else
{
l9_2154=l9_2153;
}
float l9_2155=l9_2123.y;
float l9_2156=l9_2128.y;
float l9_2157=l9_2128.w;
bool l9_2158=l9_2154;
float l9_2159=l9_2133;
float l9_2160=fast::clamp(l9_2155,l9_2156,l9_2157);
float l9_2161=step(abs(l9_2155-l9_2160),9.9999997e-06);
l9_2159*=(l9_2161+((1.0-float(l9_2158))*(1.0-l9_2161)));
l9_2155=l9_2160;
l9_2123.y=l9_2155;
l9_2133=l9_2159;
}
float2 l9_2162=l9_2123;
bool l9_2163=l9_2124;
float3x3 l9_2164=l9_2125;
if (l9_2163)
{
l9_2162=float2((l9_2164*float3(l9_2162,1.0)).xy);
}
float2 l9_2165=l9_2162;
l9_2123=l9_2165;
float l9_2166=l9_2123.x;
int l9_2167=l9_2126.x;
bool l9_2168=l9_2132;
float l9_2169=l9_2133;
if ((l9_2167==0)||(l9_2167==3))
{
float l9_2170=l9_2166;
float l9_2171=0.0;
float l9_2172=1.0;
bool l9_2173=l9_2168;
float l9_2174=l9_2169;
float l9_2175=fast::clamp(l9_2170,l9_2171,l9_2172);
float l9_2176=step(abs(l9_2170-l9_2175),9.9999997e-06);
l9_2174*=(l9_2176+((1.0-float(l9_2173))*(1.0-l9_2176)));
l9_2170=l9_2175;
l9_2166=l9_2170;
l9_2169=l9_2174;
}
l9_2123.x=l9_2166;
l9_2133=l9_2169;
float l9_2177=l9_2123.y;
int l9_2178=l9_2126.y;
bool l9_2179=l9_2132;
float l9_2180=l9_2133;
if ((l9_2178==0)||(l9_2178==3))
{
float l9_2181=l9_2177;
float l9_2182=0.0;
float l9_2183=1.0;
bool l9_2184=l9_2179;
float l9_2185=l9_2180;
float l9_2186=fast::clamp(l9_2181,l9_2182,l9_2183);
float l9_2187=step(abs(l9_2181-l9_2186),9.9999997e-06);
l9_2185*=(l9_2187+((1.0-float(l9_2184))*(1.0-l9_2187)));
l9_2181=l9_2186;
l9_2177=l9_2181;
l9_2180=l9_2185;
}
l9_2123.y=l9_2177;
l9_2133=l9_2180;
float2 l9_2188=l9_2123;
int l9_2189=l9_2121;
int l9_2190=l9_2122;
float l9_2191=l9_2131;
float2 l9_2192=l9_2188;
int l9_2193=l9_2189;
int l9_2194=l9_2190;
float3 l9_2195=float3(0.0);
if (l9_2193==0)
{
l9_2195=float3(l9_2192,0.0);
}
else
{
if (l9_2193==1)
{
l9_2195=float3(l9_2192.x,(l9_2192.y*0.5)+(0.5-(float(l9_2194)*0.5)),0.0);
}
else
{
l9_2195=float3(l9_2192,float(l9_2194));
}
}
float3 l9_2196=l9_2195;
float3 l9_2197=l9_2196;
float4 l9_2198=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_2197.xy,bias(l9_2191));
float4 l9_2199=l9_2198;
if (l9_2129)
{
l9_2199=mix(l9_2130,l9_2199,float4(l9_2133));
}
float4 l9_2200=l9_2199;
l9_2114=l9_2200;
float4 l9_2201=l9_2114;
l9_2109=l9_2201*N2_colorRampMult;
}
float4 l9_2202=float4(1.0);
float4 l9_2203=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
if (N2_ENABLE_FLIPBOOK)
{
N2_uv=l9_1892;
l9_2202=l9_1891;
}
else
{
float2 l9_2204=N2_uv;
float4 l9_2205=float4(0.0);
int l9_2206;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2207=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2207=0;
}
else
{
l9_2207=in.varStereoViewID;
}
int l9_2208=l9_2207;
l9_2206=1-l9_2208;
}
else
{
int l9_2209=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2209=0;
}
else
{
l9_2209=in.varStereoViewID;
}
int l9_2210=l9_2209;
l9_2206=l9_2210;
}
int l9_2211=l9_2206;
int l9_2212=mainTextureLayout_tmp;
int l9_2213=l9_2211;
float2 l9_2214=l9_2204;
bool l9_2215=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2216=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2217=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2218=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2219=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2220=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2221=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2222=0.0;
bool l9_2223=l9_2220&&(!l9_2218);
float l9_2224=1.0;
float l9_2225=l9_2214.x;
int l9_2226=l9_2217.x;
if (l9_2226==1)
{
l9_2225=fract(l9_2225);
}
else
{
if (l9_2226==2)
{
float l9_2227=fract(l9_2225);
float l9_2228=l9_2225-l9_2227;
float l9_2229=step(0.25,fract(l9_2228*0.5));
l9_2225=mix(l9_2227,1.0-l9_2227,fast::clamp(l9_2229,0.0,1.0));
}
}
l9_2214.x=l9_2225;
float l9_2230=l9_2214.y;
int l9_2231=l9_2217.y;
if (l9_2231==1)
{
l9_2230=fract(l9_2230);
}
else
{
if (l9_2231==2)
{
float l9_2232=fract(l9_2230);
float l9_2233=l9_2230-l9_2232;
float l9_2234=step(0.25,fract(l9_2233*0.5));
l9_2230=mix(l9_2232,1.0-l9_2232,fast::clamp(l9_2234,0.0,1.0));
}
}
l9_2214.y=l9_2230;
if (l9_2218)
{
bool l9_2235=l9_2220;
bool l9_2236;
if (l9_2235)
{
l9_2236=l9_2217.x==3;
}
else
{
l9_2236=l9_2235;
}
float l9_2237=l9_2214.x;
float l9_2238=l9_2219.x;
float l9_2239=l9_2219.z;
bool l9_2240=l9_2236;
float l9_2241=l9_2224;
float l9_2242=fast::clamp(l9_2237,l9_2238,l9_2239);
float l9_2243=step(abs(l9_2237-l9_2242),9.9999997e-06);
l9_2241*=(l9_2243+((1.0-float(l9_2240))*(1.0-l9_2243)));
l9_2237=l9_2242;
l9_2214.x=l9_2237;
l9_2224=l9_2241;
bool l9_2244=l9_2220;
bool l9_2245;
if (l9_2244)
{
l9_2245=l9_2217.y==3;
}
else
{
l9_2245=l9_2244;
}
float l9_2246=l9_2214.y;
float l9_2247=l9_2219.y;
float l9_2248=l9_2219.w;
bool l9_2249=l9_2245;
float l9_2250=l9_2224;
float l9_2251=fast::clamp(l9_2246,l9_2247,l9_2248);
float l9_2252=step(abs(l9_2246-l9_2251),9.9999997e-06);
l9_2250*=(l9_2252+((1.0-float(l9_2249))*(1.0-l9_2252)));
l9_2246=l9_2251;
l9_2214.y=l9_2246;
l9_2224=l9_2250;
}
float2 l9_2253=l9_2214;
bool l9_2254=l9_2215;
float3x3 l9_2255=l9_2216;
if (l9_2254)
{
l9_2253=float2((l9_2255*float3(l9_2253,1.0)).xy);
}
float2 l9_2256=l9_2253;
l9_2214=l9_2256;
float l9_2257=l9_2214.x;
int l9_2258=l9_2217.x;
bool l9_2259=l9_2223;
float l9_2260=l9_2224;
if ((l9_2258==0)||(l9_2258==3))
{
float l9_2261=l9_2257;
float l9_2262=0.0;
float l9_2263=1.0;
bool l9_2264=l9_2259;
float l9_2265=l9_2260;
float l9_2266=fast::clamp(l9_2261,l9_2262,l9_2263);
float l9_2267=step(abs(l9_2261-l9_2266),9.9999997e-06);
l9_2265*=(l9_2267+((1.0-float(l9_2264))*(1.0-l9_2267)));
l9_2261=l9_2266;
l9_2257=l9_2261;
l9_2260=l9_2265;
}
l9_2214.x=l9_2257;
l9_2224=l9_2260;
float l9_2268=l9_2214.y;
int l9_2269=l9_2217.y;
bool l9_2270=l9_2223;
float l9_2271=l9_2224;
if ((l9_2269==0)||(l9_2269==3))
{
float l9_2272=l9_2268;
float l9_2273=0.0;
float l9_2274=1.0;
bool l9_2275=l9_2270;
float l9_2276=l9_2271;
float l9_2277=fast::clamp(l9_2272,l9_2273,l9_2274);
float l9_2278=step(abs(l9_2272-l9_2277),9.9999997e-06);
l9_2276*=(l9_2278+((1.0-float(l9_2275))*(1.0-l9_2278)));
l9_2272=l9_2277;
l9_2268=l9_2272;
l9_2271=l9_2276;
}
l9_2214.y=l9_2268;
l9_2224=l9_2271;
float2 l9_2279=l9_2214;
int l9_2280=l9_2212;
int l9_2281=l9_2213;
float l9_2282=l9_2222;
float2 l9_2283=l9_2279;
int l9_2284=l9_2280;
int l9_2285=l9_2281;
float3 l9_2286=float3(0.0);
if (l9_2284==0)
{
l9_2286=float3(l9_2283,0.0);
}
else
{
if (l9_2284==1)
{
l9_2286=float3(l9_2283.x,(l9_2283.y*0.5)+(0.5-(float(l9_2285)*0.5)),0.0);
}
else
{
l9_2286=float3(l9_2283,float(l9_2285));
}
}
float3 l9_2287=l9_2286;
float3 l9_2288=l9_2287;
float4 l9_2289=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2288.xy,bias(l9_2282));
float4 l9_2290=l9_2289;
if (l9_2220)
{
l9_2290=mix(l9_2221,l9_2290,float4(l9_2224));
}
float4 l9_2291=l9_2290;
l9_2205=l9_2291;
float4 l9_2292=l9_2205;
l9_2202=l9_2292;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_2203=l9_2109;
}
}
N2_result=(l9_2202*l9_1886)*l9_2203;
if (N2_ENABLE_TRAILS)
{
if (N2_isTrail>0.0)
{
N2_result=(l9_1693*l9_1886)*l9_2203;
N2_result.w*=l9_1692;
}
}
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_cameraFade_trailHeadTime_taper.x;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_2293=l9_1684*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_2293,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_2294=length(N2_result.xyz);
N2_result.w=l9_2294;
if (N2_ENABLE_TRAILS)
{
N2_result.w*=l9_1692;
}
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_2295=N2_result.xyz*N2_result.w;
N2_result=float4(l9_2295.x,l9_2295.y,l9_2295.z,N2_result.w);
}
}
return out;
}
} // RECEIVER MODE SHADER
