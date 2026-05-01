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
//sampler sampler colorRampTextureSmpSC 0:24
//sampler sampler intensityTextureSmpSC 0:25
//sampler sampler mainTextureSmpSC 0:26
//sampler sampler normalTexSmpSC 0:27
//sampler sampler sc_EnvmapDiffuseSmpSC 0:28
//sampler sampler sc_EnvmapSpecularSmpSC 0:29
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:31
//sampler sampler sc_RayTracingReflectionsSmpSC 0:32
//sampler sampler sc_RayTracingShadowsSmpSC 0:33
//sampler sampler sc_SSAOTextureSmpSC 0:34
//sampler sampler sc_ScreenTextureSmpSC 0:35
//sampler sampler sc_ShadowTextureSmpSC 0:36
//sampler sampler sizeRampTextureSmpSC 0:38
//sampler sampler velRampTextureSmpSC 0:39
//texture texture2D colorRampTexture 0:1:0:24
//texture texture2D intensityTexture 0:2:0:25
//texture texture2D mainTexture 0:3:0:26
//texture texture2D normalTex 0:4:0:27
//texture texture2D sc_EnvmapDiffuse 0:5:0:28
//texture texture2D sc_EnvmapSpecular 0:6:0:29
//texture texture2D sc_RayTracingGlobalIllumination 0:15:0:31
//texture texture2D sc_RayTracingReflections 0:16:0:32
//texture texture2D sc_RayTracingShadows 0:17:0:33
//texture texture2D sc_SSAOTexture 0:18:0:34
//texture texture2D sc_ScreenTexture 0:19:0:35
//texture texture2D sc_ShadowTexture 0:20:0:36
//texture texture2D sizeRampTexture 0:22:0:38
//texture texture2D velRampTexture 0:23:0:39
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:40:5952 {
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
//float3 spawnLocation 4528
//float3 spawnBox 4544
//float3 spawnSphere 4560
//float3 noiseMult 4576
//float3 noiseFrequency 4592
//float3 sNoiseMult 4608
//float3 sNoiseFrequency 4624
//float3 velocityMin 4640
//float3 velocityMax 4656
//float3 velocityDrag 4672
//float3x3 velRampTextureTransform 4736
//float4 velRampTextureUvMinMax 4784
//float4 velRampTextureBorderColor 4800
//float2 sizeStart 4816
//float3 sizeStart3D 4832
//float2 sizeEnd 4848
//float3 sizeEnd3D 4864
//float2 sizeStartMin 4880
//float3 sizeStartMin3D 4896
//float2 sizeStartMax 4912
//float3 sizeStartMax3D 4928
//float2 sizeEndMin 4944
//float3 sizeEndMin3D 4960
//float2 sizeEndMax 4976
//float3 sizeEndMax3D 4992
//float sizeSpeed 5008
//float3x3 sizeRampTextureTransform 5072
//float4 sizeRampTextureUvMinMax 5120
//float4 sizeRampTextureBorderColor 5136
//float gravity 5152
//float3 localForce 5168
//float sizeVelScale 5184
//bool ALIGNTOX 5188
//bool ALIGNTOY 5192
//bool ALIGNTOZ 5196
//float2 rotationRandomX 5200
//float2 rotationRateX 5208
//float2 randomRotationY 5216
//float2 rotationRateY 5224
//float2 rotationRandom 5232
//float2 randomRotationZ 5240
//float2 rotationRate 5248
//float2 rotationRateZ 5256
//float rotationDrag 5264
//bool CENTER_BBOX 5268
//float fadeDistanceVisible 5272
//float fadeDistanceInvisible 5276
//float3 colorStart 5280
//float3 colorEnd 5296
//float3 colorMinStart 5312
//float3 colorMinEnd 5328
//float3 colorMaxStart 5344
//float3 colorMaxEnd 5360
//float alphaStart 5376
//float alphaEnd 5380
//float alphaMinStart 5384
//float alphaMinEnd 5388
//float alphaMaxStart 5392
//float alphaMaxEnd 5396
//float alphaDissolveMult 5400
//float numValidFrames 5404
//float2 gridSize 5408
//float flipBookSpeedMult 5416
//float flipBookRandomStart 5420
//float4 colorRampTextureSize 5424
//float3x3 colorRampTextureTransform 5472
//float4 colorRampTextureUvMinMax 5520
//float4 colorRampTextureBorderColor 5536
//float4 colorRampMult 5552
//float3x3 mainTextureTransform 5616
//float4 mainTextureUvMinMax 5664
//float4 mainTextureBorderColor 5680
//float3x3 normalTexTransform 5744
//float4 normalTexUvMinMax 5792
//float4 normalTexBorderColor 5808
//float metallic 5824
//float roughness 5828
//float2 Port_Input1_N138 5840
//float2 Port_Input1_N139 5848
//float2 Port_Input1_N140 5856
//float2 Port_Input1_N144 5864
//float Port_Input1_N110 5880
//float3 Port_Default_N167 5888
//float3 Port_Emissive_N014 5904
//float3 Port_AO_N014 5920
//float3 Port_SpecularAO_N014 5936
//}
//spec_const bool ALPHADISSOLVE 0 0
//spec_const bool ALPHAMINMAX 1 0
//spec_const bool BASETEXTURE 2 0
//spec_const bool BLACKASALPHA 3 0
//spec_const bool BLEND_MODE_AVERAGE 4 0
//spec_const bool BLEND_MODE_BRIGHT 5 0
//spec_const bool BLEND_MODE_COLOR_BURN 6 0
//spec_const bool BLEND_MODE_COLOR_DODGE 7 0
//spec_const bool BLEND_MODE_COLOR 8 0
//spec_const bool BLEND_MODE_DARKEN 9 0
//spec_const bool BLEND_MODE_DIFFERENCE 10 0
//spec_const bool BLEND_MODE_DIVIDE 11 0
//spec_const bool BLEND_MODE_DIVISION 12 0
//spec_const bool BLEND_MODE_EXCLUSION 13 0
//spec_const bool BLEND_MODE_FORGRAY 14 0
//spec_const bool BLEND_MODE_HARD_GLOW 15 0
//spec_const bool BLEND_MODE_HARD_LIGHT 16 0
//spec_const bool BLEND_MODE_HARD_MIX 17 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 18 0
//spec_const bool BLEND_MODE_HARD_REFLECT 19 0
//spec_const bool BLEND_MODE_HUE 20 0
//spec_const bool BLEND_MODE_INTENSE 21 0
//spec_const bool BLEND_MODE_LIGHTEN 22 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 23 0
//spec_const bool BLEND_MODE_LUMINOSITY 24 0
//spec_const bool BLEND_MODE_NEGATION 25 0
//spec_const bool BLEND_MODE_NOTBRIGHT 26 0
//spec_const bool BLEND_MODE_OVERLAY 27 0
//spec_const bool BLEND_MODE_PIN_LIGHT 28 0
//spec_const bool BLEND_MODE_REALISTIC 29 0
//spec_const bool BLEND_MODE_SATURATION 30 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 31 0
//spec_const bool BLEND_MODE_SUBTRACT 32 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 33 0
//spec_const bool BOXSPAWN 34 0
//spec_const bool COLORMINMAX 35 0
//spec_const bool COLORMONOMIN 36 0
//spec_const bool COLORRAMP 37 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 38 0
//spec_const bool EXTERNALTIME 39 0
//spec_const bool FLIPBOOKBLEND 40 0
//spec_const bool FLIPBOOKBYLIFE 41 0
//spec_const bool FLIPBOOK 42 0
//spec_const bool FORCE 43 0
//spec_const bool IGNORETRANSFORMSCALE 44 0
//spec_const bool IGNOREVEL 45 0
//spec_const bool INILOCATION 46 0
//spec_const bool INSTANTSPAWN 47 0
//spec_const bool LIFETIMEMINMAX 48 0
//spec_const bool NOISE 49 0
//spec_const bool NORANDOFFSET 50 0
//spec_const bool NORMALTEX 51 0
//spec_const bool PBR 52 0
//spec_const bool PREMULTIPLIEDCOLOR 53 0
//spec_const bool SCREENFADE 54 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_colorRampTexture 55 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 56 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_mainTexture 57 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 58 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture 59 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_velRampTexture 60 0
//spec_const bool SC_USE_UV_MIN_MAX_colorRampTexture 61 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 62 0
//spec_const bool SC_USE_UV_MIN_MAX_mainTexture 63 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 64 0
//spec_const bool SC_USE_UV_MIN_MAX_sizeRampTexture 65 0
//spec_const bool SC_USE_UV_MIN_MAX_velRampTexture 66 0
//spec_const bool SC_USE_UV_TRANSFORM_colorRampTexture 67 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 68 0
//spec_const bool SC_USE_UV_TRANSFORM_mainTexture 69 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 70 0
//spec_const bool SC_USE_UV_TRANSFORM_sizeRampTexture 71 0
//spec_const bool SC_USE_UV_TRANSFORM_velRampTexture 72 0
//spec_const bool SIZEMINMAX 73 0
//spec_const bool SIZERAMP 74 0
//spec_const bool SNOISE 75 0
//spec_const bool SPHERESPAWN 76 0
//spec_const bool UseViewSpaceDepthVariant 77 1
//spec_const bool VELOCITYDIR 78 0
//spec_const bool VELRAMP 79 0
//spec_const bool WORLDPOSSEED 80 0
//spec_const bool colorRampTextureHasSwappedViews 81 0
//spec_const bool intensityTextureHasSwappedViews 82 0
//spec_const bool mainTextureHasSwappedViews 83 0
//spec_const bool normalTexHasSwappedViews 84 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 85 0
//spec_const bool sc_BlendMode_Add 86 0
//spec_const bool sc_BlendMode_AlphaTest 87 0
//spec_const bool sc_BlendMode_AlphaToCoverage 88 0
//spec_const bool sc_BlendMode_ColoredGlass 89 0
//spec_const bool sc_BlendMode_Custom 90 0
//spec_const bool sc_BlendMode_Max 91 0
//spec_const bool sc_BlendMode_Min 92 0
//spec_const bool sc_BlendMode_MultiplyOriginal 93 0
//spec_const bool sc_BlendMode_Multiply 94 0
//spec_const bool sc_BlendMode_Normal 95 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 96 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 97 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 98 0
//spec_const bool sc_BlendMode_Screen 99 0
//spec_const bool sc_DepthOnly 100 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 101 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 102 0
//spec_const bool sc_FramebufferFetch 103 0
//spec_const bool sc_HasDiffuseEnvmap 104 0
//spec_const bool sc_IsEditor 105 0
//spec_const bool sc_LightEstimation 106 0
//spec_const bool sc_MotionVectorsPass 107 0
//spec_const bool sc_OITCompositingPass 108 0
//spec_const bool sc_OITDepthBoundsPass 109 0
//spec_const bool sc_OITDepthGatherPass 110 0
//spec_const bool sc_OutputBounds 111 0
//spec_const bool sc_ProjectiveShadowsCaster 112 0
//spec_const bool sc_ProjectiveShadowsReceiver 113 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 114 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 115 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 116 0
//spec_const bool sc_RenderAlphaToColor 117 0
//spec_const bool sc_SSAOEnabled 118 0
//spec_const bool sc_ScreenTextureHasSwappedViews 119 0
//spec_const bool sc_TAAEnabled 120 0
//spec_const bool sc_VertexBlendingUseNormals 121 0
//spec_const bool sc_VertexBlending 122 0
//spec_const bool sc_Voxelization 123 0
//spec_const bool sizeRampTextureHasSwappedViews 124 0
//spec_const bool velRampTextureHasSwappedViews 125 0
//spec_const int MESHTYPE 126 0
//spec_const int SC_DEVICE_CLASS 127 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture 128 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 129 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_mainTexture 130 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 131 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture 132 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_velRampTexture 133 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture 134 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 135 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_mainTexture 136 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 137 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture 138 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_velRampTexture 139 -1
//spec_const int colorRampTextureLayout 140 0
//spec_const int intensityTextureLayout 141 0
//spec_const int mainTextureLayout 142 0
//spec_const int normalTexLayout 143 0
//spec_const int rotationSpace 144 0
//spec_const int sc_AmbientLightMode0 145 0
//spec_const int sc_AmbientLightMode1 146 0
//spec_const int sc_AmbientLightMode2 147 0
//spec_const int sc_AmbientLightMode_Constant 148 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 149 0
//spec_const int sc_AmbientLightMode_FromCamera 150 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 151 0
//spec_const int sc_AmbientLightsCount 152 0
//spec_const int sc_DepthBufferMode 153 0
//spec_const int sc_DirectionalLightsCount 154 0
//spec_const int sc_EnvLightMode 155 0
//spec_const int sc_EnvmapDiffuseLayout 156 0
//spec_const int sc_EnvmapSpecularLayout 157 0
//spec_const int sc_LightEstimationSGCount 158 0
//spec_const int sc_PointLightsCount 159 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 160 0
//spec_const int sc_RayTracingReflectionsLayout 161 0
//spec_const int sc_RayTracingShadowsLayout 162 0
//spec_const int sc_RenderingSpace 163 -1
//spec_const int sc_ScreenTextureLayout 164 0
//spec_const int sc_ShaderCacheConstant 165 0
//spec_const int sc_SkinBonesCount 166 0
//spec_const int sc_StereoRenderingMode 167 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 168 0
//spec_const int sizeRampTextureLayout 169 0
//spec_const int velRampTextureLayout 170 0
//SG_REFLECTION_END
constant bool ALPHADISSOLVE [[function_constant(0)]];
constant bool ALPHADISSOLVE_tmp = is_function_constant_defined(ALPHADISSOLVE) ? ALPHADISSOLVE : false;
constant bool ALPHAMINMAX [[function_constant(1)]];
constant bool ALPHAMINMAX_tmp = is_function_constant_defined(ALPHAMINMAX) ? ALPHAMINMAX : false;
constant bool BASETEXTURE [[function_constant(2)]];
constant bool BASETEXTURE_tmp = is_function_constant_defined(BASETEXTURE) ? BASETEXTURE : false;
constant bool BLACKASALPHA [[function_constant(3)]];
constant bool BLACKASALPHA_tmp = is_function_constant_defined(BLACKASALPHA) ? BLACKASALPHA : false;
constant bool BLEND_MODE_AVERAGE [[function_constant(4)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(5)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(6)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(7)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(8)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(9)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(10)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(11)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(12)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(13)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(14)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(15)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(16)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(17)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(18)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(19)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(20)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(21)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(22)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(23)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(24)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(25)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(26)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(27)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(28)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(29)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(30)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(31)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(32)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(33)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool BOXSPAWN [[function_constant(34)]];
constant bool BOXSPAWN_tmp = is_function_constant_defined(BOXSPAWN) ? BOXSPAWN : false;
constant bool COLORMINMAX [[function_constant(35)]];
constant bool COLORMINMAX_tmp = is_function_constant_defined(COLORMINMAX) ? COLORMINMAX : false;
constant bool COLORMONOMIN [[function_constant(36)]];
constant bool COLORMONOMIN_tmp = is_function_constant_defined(COLORMONOMIN) ? COLORMONOMIN : false;
constant bool COLORRAMP [[function_constant(37)]];
constant bool COLORRAMP_tmp = is_function_constant_defined(COLORRAMP) ? COLORRAMP : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(38)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool EXTERNALTIME [[function_constant(39)]];
constant bool EXTERNALTIME_tmp = is_function_constant_defined(EXTERNALTIME) ? EXTERNALTIME : false;
constant bool FLIPBOOKBLEND [[function_constant(40)]];
constant bool FLIPBOOKBLEND_tmp = is_function_constant_defined(FLIPBOOKBLEND) ? FLIPBOOKBLEND : false;
constant bool FLIPBOOKBYLIFE [[function_constant(41)]];
constant bool FLIPBOOKBYLIFE_tmp = is_function_constant_defined(FLIPBOOKBYLIFE) ? FLIPBOOKBYLIFE : false;
constant bool FLIPBOOK [[function_constant(42)]];
constant bool FLIPBOOK_tmp = is_function_constant_defined(FLIPBOOK) ? FLIPBOOK : false;
constant bool FORCE [[function_constant(43)]];
constant bool FORCE_tmp = is_function_constant_defined(FORCE) ? FORCE : false;
constant bool IGNORETRANSFORMSCALE [[function_constant(44)]];
constant bool IGNORETRANSFORMSCALE_tmp = is_function_constant_defined(IGNORETRANSFORMSCALE) ? IGNORETRANSFORMSCALE : false;
constant bool IGNOREVEL [[function_constant(45)]];
constant bool IGNOREVEL_tmp = is_function_constant_defined(IGNOREVEL) ? IGNOREVEL : false;
constant bool INILOCATION [[function_constant(46)]];
constant bool INILOCATION_tmp = is_function_constant_defined(INILOCATION) ? INILOCATION : false;
constant bool INSTANTSPAWN [[function_constant(47)]];
constant bool INSTANTSPAWN_tmp = is_function_constant_defined(INSTANTSPAWN) ? INSTANTSPAWN : false;
constant bool LIFETIMEMINMAX [[function_constant(48)]];
constant bool LIFETIMEMINMAX_tmp = is_function_constant_defined(LIFETIMEMINMAX) ? LIFETIMEMINMAX : false;
constant bool NOISE [[function_constant(49)]];
constant bool NOISE_tmp = is_function_constant_defined(NOISE) ? NOISE : false;
constant bool NORANDOFFSET [[function_constant(50)]];
constant bool NORANDOFFSET_tmp = is_function_constant_defined(NORANDOFFSET) ? NORANDOFFSET : false;
constant bool NORMALTEX [[function_constant(51)]];
constant bool NORMALTEX_tmp = is_function_constant_defined(NORMALTEX) ? NORMALTEX : false;
constant bool PBR [[function_constant(52)]];
constant bool PBR_tmp = is_function_constant_defined(PBR) ? PBR : false;
constant bool PREMULTIPLIEDCOLOR [[function_constant(53)]];
constant bool PREMULTIPLIEDCOLOR_tmp = is_function_constant_defined(PREMULTIPLIEDCOLOR) ? PREMULTIPLIEDCOLOR : false;
constant bool SCREENFADE [[function_constant(54)]];
constant bool SCREENFADE_tmp = is_function_constant_defined(SCREENFADE) ? SCREENFADE : false;
constant bool SC_USE_CLAMP_TO_BORDER_colorRampTexture [[function_constant(55)]];
constant bool SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_colorRampTexture) ? SC_USE_CLAMP_TO_BORDER_colorRampTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(56)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_mainTexture [[function_constant(57)]];
constant bool SC_USE_CLAMP_TO_BORDER_mainTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_mainTexture) ? SC_USE_CLAMP_TO_BORDER_mainTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(58)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture [[function_constant(59)]];
constant bool SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sizeRampTexture) ? SC_USE_CLAMP_TO_BORDER_sizeRampTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_velRampTexture [[function_constant(60)]];
constant bool SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_velRampTexture) ? SC_USE_CLAMP_TO_BORDER_velRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_colorRampTexture [[function_constant(61)]];
constant bool SC_USE_UV_MIN_MAX_colorRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_colorRampTexture) ? SC_USE_UV_MIN_MAX_colorRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(62)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_mainTexture [[function_constant(63)]];
constant bool SC_USE_UV_MIN_MAX_mainTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_mainTexture) ? SC_USE_UV_MIN_MAX_mainTexture : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(64)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_sizeRampTexture [[function_constant(65)]];
constant bool SC_USE_UV_MIN_MAX_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sizeRampTexture) ? SC_USE_UV_MIN_MAX_sizeRampTexture : false;
constant bool SC_USE_UV_MIN_MAX_velRampTexture [[function_constant(66)]];
constant bool SC_USE_UV_MIN_MAX_velRampTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_velRampTexture) ? SC_USE_UV_MIN_MAX_velRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_colorRampTexture [[function_constant(67)]];
constant bool SC_USE_UV_TRANSFORM_colorRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_colorRampTexture) ? SC_USE_UV_TRANSFORM_colorRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(68)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_mainTexture [[function_constant(69)]];
constant bool SC_USE_UV_TRANSFORM_mainTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_mainTexture) ? SC_USE_UV_TRANSFORM_mainTexture : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(70)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_sizeRampTexture [[function_constant(71)]];
constant bool SC_USE_UV_TRANSFORM_sizeRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sizeRampTexture) ? SC_USE_UV_TRANSFORM_sizeRampTexture : false;
constant bool SC_USE_UV_TRANSFORM_velRampTexture [[function_constant(72)]];
constant bool SC_USE_UV_TRANSFORM_velRampTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_velRampTexture) ? SC_USE_UV_TRANSFORM_velRampTexture : false;
constant bool SIZEMINMAX [[function_constant(73)]];
constant bool SIZEMINMAX_tmp = is_function_constant_defined(SIZEMINMAX) ? SIZEMINMAX : false;
constant bool SIZERAMP [[function_constant(74)]];
constant bool SIZERAMP_tmp = is_function_constant_defined(SIZERAMP) ? SIZERAMP : false;
constant bool SNOISE [[function_constant(75)]];
constant bool SNOISE_tmp = is_function_constant_defined(SNOISE) ? SNOISE : false;
constant bool SPHERESPAWN [[function_constant(76)]];
constant bool SPHERESPAWN_tmp = is_function_constant_defined(SPHERESPAWN) ? SPHERESPAWN : false;
constant bool UseViewSpaceDepthVariant [[function_constant(77)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool VELOCITYDIR [[function_constant(78)]];
constant bool VELOCITYDIR_tmp = is_function_constant_defined(VELOCITYDIR) ? VELOCITYDIR : false;
constant bool VELRAMP [[function_constant(79)]];
constant bool VELRAMP_tmp = is_function_constant_defined(VELRAMP) ? VELRAMP : false;
constant bool WORLDPOSSEED [[function_constant(80)]];
constant bool WORLDPOSSEED_tmp = is_function_constant_defined(WORLDPOSSEED) ? WORLDPOSSEED : false;
constant bool colorRampTextureHasSwappedViews [[function_constant(81)]];
constant bool colorRampTextureHasSwappedViews_tmp = is_function_constant_defined(colorRampTextureHasSwappedViews) ? colorRampTextureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(82)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool mainTextureHasSwappedViews [[function_constant(83)]];
constant bool mainTextureHasSwappedViews_tmp = is_function_constant_defined(mainTextureHasSwappedViews) ? mainTextureHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(84)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(85)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(86)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(87)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(88)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(89)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(90)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(91)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(92)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(93)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(94)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(95)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(96)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(97)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(98)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(99)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(100)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(101)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(102)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(103)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(104)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(105)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(106)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(107)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(108)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(109)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(110)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(111)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(112)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(113)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(114)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(115)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(116)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(117)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(118)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(119)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(120)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(121)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(122)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(123)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool sizeRampTextureHasSwappedViews [[function_constant(124)]];
constant bool sizeRampTextureHasSwappedViews_tmp = is_function_constant_defined(sizeRampTextureHasSwappedViews) ? sizeRampTextureHasSwappedViews : false;
constant bool velRampTextureHasSwappedViews [[function_constant(125)]];
constant bool velRampTextureHasSwappedViews_tmp = is_function_constant_defined(velRampTextureHasSwappedViews) ? velRampTextureHasSwappedViews : false;
constant int MESHTYPE [[function_constant(126)]];
constant int MESHTYPE_tmp = is_function_constant_defined(MESHTYPE) ? MESHTYPE : 0;
constant int SC_DEVICE_CLASS [[function_constant(127)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture [[function_constant(128)]];
constant int SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_colorRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(129)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_mainTexture [[function_constant(130)]];
constant int SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_mainTexture) ? SC_SOFTWARE_WRAP_MODE_U_mainTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(131)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture [[function_constant(132)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_velRampTexture [[function_constant(133)]];
constant int SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_velRampTexture) ? SC_SOFTWARE_WRAP_MODE_U_velRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture [[function_constant(134)]];
constant int SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_colorRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_colorRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(135)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_mainTexture [[function_constant(136)]];
constant int SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_mainTexture) ? SC_SOFTWARE_WRAP_MODE_V_mainTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(137)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture [[function_constant(138)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_velRampTexture [[function_constant(139)]];
constant int SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_velRampTexture) ? SC_SOFTWARE_WRAP_MODE_V_velRampTexture : -1;
constant int colorRampTextureLayout [[function_constant(140)]];
constant int colorRampTextureLayout_tmp = is_function_constant_defined(colorRampTextureLayout) ? colorRampTextureLayout : 0;
constant int intensityTextureLayout [[function_constant(141)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int mainTextureLayout [[function_constant(142)]];
constant int mainTextureLayout_tmp = is_function_constant_defined(mainTextureLayout) ? mainTextureLayout : 0;
constant int normalTexLayout [[function_constant(143)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int rotationSpace [[function_constant(144)]];
constant int rotationSpace_tmp = is_function_constant_defined(rotationSpace) ? rotationSpace : 0;
constant int sc_AmbientLightMode0 [[function_constant(145)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(146)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(147)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(148)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(149)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(150)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(151)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(152)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(153)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(154)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(155)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(156)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(157)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(158)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(159)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(160)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(161)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(162)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(163)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(164)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(165)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(166)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(167)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(168)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int sizeRampTextureLayout [[function_constant(169)]];
constant int sizeRampTextureLayout_tmp = is_function_constant_defined(sizeRampTextureLayout) ? sizeRampTextureLayout : 0;
constant int velRampTextureLayout [[function_constant(170)]];
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
float3 Port_Default_N167;
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
texture2d<float> velRampTexture [[id(23)]];
sampler colorRampTextureSmpSC [[id(24)]];
sampler intensityTextureSmpSC [[id(25)]];
sampler mainTextureSmpSC [[id(26)]];
sampler normalTexSmpSC [[id(27)]];
sampler sc_EnvmapDiffuseSmpSC [[id(28)]];
sampler sc_EnvmapSpecularSmpSC [[id(29)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(31)]];
sampler sc_RayTracingReflectionsSmpSC [[id(32)]];
sampler sc_RayTracingShadowsSmpSC [[id(33)]];
sampler sc_SSAOTextureSmpSC [[id(34)]];
sampler sc_ScreenTextureSmpSC [[id(35)]];
sampler sc_ShadowTextureSmpSC [[id(36)]];
sampler sizeRampTextureSmpSC [[id(38)]];
sampler velRampTextureSmpSC [[id(39)]];
constant userUniformsObj* UserUniforms [[id(40)]];
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
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
int ssInstanceID=0;
bool N111_ENABLE_ALIGNTOX=false;
bool N111_ENABLE_ALIGNTOY=false;
bool N111_ENABLE_ALIGNTOZ=false;
bool N111_ENABLE_CENTER_IN_BBOX=false;
bool N111_MESHTYPE_QUAD=false;
float3 N111_particleSeedIn=float3(0.0);
float N111_globalSeedIn=0.0;
float N111_dieTrigger=0.0;
float4 N111_timeValuesIn=float4(0.0);
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
float N111_gravity=0.0;
bool N111_ENABLE_FORCE=false;
float3 N111_localForce=float3(0.0);
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
float N111_nearCameraFade=0.0;
float3 N111_position=float3(0.0);
float3 N111_normal=float3(0.0);
float N111_EPSILON=1e-06;
float N111_PI=3.1415927;
float N173_timeGlobal=0.0;
bool N173_ENABLE_EXTERNALTIME=false;
float N173_externalTime=0.0;
bool N173_ENABLE_WORLDPOSSEED=false;
float N173_externalSeed=0.0;
bool N173_ENABLE_LIFETIMEMINMAX=false;
float N173_lifeTimeConstant=0.0;
float2 N173_lifeTimeMinMax=float2(0.0);
bool N173_ENABLE_INSTANTSPAWN=false;
float N173_spawnDuration=0.0;
float3 N173_particleSeed=float3(0.0);
float N173_globalSeed=0.0;
float N173_dieTrigger=0.0;
float4 N173_timeValues=float4(0.0);
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
float3 particleSeed_N173=float3(0.0);
float globalSeed_N173=0.0;
float dieTrigger_N173=0.0;
float4 timeValues_N173=float4(0.0);
float param_7=Output_N3;
float param_8=Output_N5;
float param_9=Output_N7;
float param_10=Output_N9;
float2 param_11=Output_N10;
float param_12=Output_N12;
ssGlobals param_17=Globals;
ssGlobals tempGlobals=param_17;
float3 param_13=float3(0.0);
float param_14=0.0;
float param_15=0.0;
float4 param_16=float4(0.0);
N173_timeGlobal=param_7;
N173_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N173_externalTime=param_8;
N173_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N173_externalSeed=param_9;
N173_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N173_lifeTimeConstant=param_10;
N173_lifeTimeMinMax=param_11;
N173_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N173_spawnDuration=param_12;
float l9_123=0.0;
if (N173_ENABLE_WORLDPOSSEED)
{
float4x4 l9_124=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_123=length(float4(1.0)*l9_124);
}
N173_globalSeed=N173_externalSeed+l9_123;
float l9_125=2000.0;
int l9_126=0;
l9_126=ssInstanceID;
int l9_127=l9_126;
float l9_128=float(l9_127);
float2 l9_129=float2(mod(l9_128,l9_125),floor(l9_128/l9_125));
l9_129/=float2(l9_125);
float2 l9_130=l9_129;
float l9_131=dot(l9_130,float2(0.38253,0.42662001));
float3 l9_132=float3(0.457831,0.62343299,0.97625297)*l9_131;
l9_132=sin(l9_132)*float3(479.371,389.53101,513.03497);
l9_132=fract(l9_132);
l9_132=floor(l9_132*10000.0)*9.9999997e-05;
float3 l9_133=l9_132;
float3 l9_134=l9_133;
N173_particleSeed=l9_134;
float l9_135=fract((N173_particleSeed.y*12.12358)+N173_globalSeed);
float l9_136=fract((N173_particleSeed.z*3.5358)+N173_globalSeed);
float2 l9_137=float2(N173_lifeTimeConstant);
if (N173_ENABLE_LIFETIMEMINMAX)
{
l9_137=N173_lifeTimeMinMax;
}
float l9_138=fast::max(l9_137.x,0.0099999998);
float l9_139=fast::max(l9_137.y,0.0099999998);
float l9_140=tempGlobals.gTimeElapsed;
float l9_141=l9_140;
if (N173_ENABLE_EXTERNALTIME)
{
l9_141=N173_externalTime;
}
float l9_142=l9_141;
if (N173_ENABLE_INSTANTSPAWN)
{
l9_142=N173_timeGlobal*l9_141;
}
else
{
float l9_143=fract(((l9_141*N173_timeGlobal)*(1.0/l9_137.y))+l9_135);
l9_142=l9_143*l9_137.y;
}
float l9_144=mix(l9_142/l9_138,l9_142/l9_139,l9_136);
float l9_145=fast::clamp(l9_144,0.0,1.0);
float l9_146=0.0;
if (!N173_ENABLE_INSTANTSPAWN)
{
if (N173_spawnDuration>0.0)
{
if ((l9_141-N173_spawnDuration)>=l9_142)
{
l9_146=1.0;
}
}
}
float l9_147=l9_144+l9_146;
N173_dieTrigger=1.0;
if (l9_147>0.99989998)
{
N173_dieTrigger=0.0;
}
N173_timeValues=float4(l9_137,l9_142,l9_145);
param_13=N173_particleSeed;
param_14=N173_globalSeed;
param_15=N173_dieTrigger;
param_16=N173_timeValues;
particleSeed_N173=param_13;
globalSeed_N173=param_14;
dieTrigger_N173=param_15;
timeValues_N173=param_16;
float3 Position_N114=float3(0.0);
Position_N114=Globals.SurfacePosition_ObjectSpace;
float3 Normal_N172=float3(0.0);
Normal_N172=Globals.VertexNormal_ObjectSpace;
float3 Output_N16=float3(0.0);
float3 param_18=(*sc_set0.UserUniforms).spawnLocation;
Output_N16=param_18;
float3 Output_N18=float3(0.0);
float3 param_19=(*sc_set0.UserUniforms).spawnBox;
Output_N18=param_19;
float3 Output_N20=float3(0.0);
float3 param_20=(*sc_set0.UserUniforms).spawnSphere;
Output_N20=param_20;
float3 Output_N39=float3(0.0);
float3 param_21=(*sc_set0.UserUniforms).noiseMult;
Output_N39=param_21;
float3 Output_N40=float3(0.0);
float3 param_22=(*sc_set0.UserUniforms).noiseFrequency;
Output_N40=param_22;
float3 Output_N41=float3(0.0);
float3 param_23=(*sc_set0.UserUniforms).sNoiseMult;
Output_N41=param_23;
float3 Output_N42=float3(0.0);
float3 param_24=(*sc_set0.UserUniforms).sNoiseFrequency;
Output_N42=param_24;
float3 Output_N34=float3(0.0);
float3 param_25=(*sc_set0.UserUniforms).velocityMin;
Output_N34=param_25;
float3 Output_N35=float3(0.0);
float3 param_26=(*sc_set0.UserUniforms).velocityMax;
Output_N35=param_26;
float3 Output_N36=float3(0.0);
float3 param_27=(*sc_set0.UserUniforms).velocityDrag;
Output_N36=param_27;
float3 Result_N70=float3(0.0);
float3 param_28=float3(0.0);
float3 param_29=float3(0.0);
float3 param_30;
if (MESHTYPE_tmp==0)
{
float2 l9_148=float2(0.0);
float2 l9_149=(*sc_set0.UserUniforms).sizeStart;
l9_148=l9_149;
param_28=float3(l9_148,0.0);
param_30=param_28;
}
else
{
float3 l9_150=float3(0.0);
float3 l9_151=(*sc_set0.UserUniforms).sizeStart3D;
l9_150=l9_151;
param_29=l9_150;
param_30=param_29;
}
Result_N70=param_30;
float3 Result_N121=float3(0.0);
float3 param_31=float3(0.0);
float3 param_32=float3(0.0);
float3 param_33;
if (MESHTYPE_tmp==0)
{
float2 l9_152=float2(0.0);
float2 l9_153=(*sc_set0.UserUniforms).sizeEnd;
l9_152=l9_153;
param_31=float3(l9_152,0.0);
param_33=param_31;
}
else
{
float3 l9_154=float3(0.0);
float3 l9_155=(*sc_set0.UserUniforms).sizeEnd3D;
l9_154=l9_155;
param_32=l9_154;
param_33=param_32;
}
Result_N121=param_33;
float3 Result_N124=float3(0.0);
float3 param_34=float3(0.0);
float3 param_35=float3(0.0);
float3 param_36;
if (MESHTYPE_tmp==0)
{
float2 l9_156=float2(0.0);
float2 l9_157=(*sc_set0.UserUniforms).sizeStartMin;
l9_156=l9_157;
param_34=float3(l9_156,0.0);
param_36=param_34;
}
else
{
float3 l9_158=float3(0.0);
float3 l9_159=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_158=l9_159;
param_35=l9_158;
param_36=param_35;
}
Result_N124=param_36;
float3 Result_N123=float3(0.0);
float3 param_37=float3(0.0);
float3 param_38=float3(0.0);
float3 param_39;
if (MESHTYPE_tmp==0)
{
float2 l9_160=float2(0.0);
float2 l9_161=(*sc_set0.UserUniforms).sizeStartMax;
l9_160=l9_161;
param_37=float3(l9_160,0.0);
param_39=param_37;
}
else
{
float3 l9_162=float3(0.0);
float3 l9_163=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_162=l9_163;
param_38=l9_162;
param_39=param_38;
}
Result_N123=param_39;
float3 Result_N125=float3(0.0);
float3 param_40=float3(0.0);
float3 param_41=float3(0.0);
float3 param_42;
if (MESHTYPE_tmp==0)
{
float2 l9_164=float2(0.0);
float2 l9_165=(*sc_set0.UserUniforms).sizeEndMin;
l9_164=l9_165;
param_40=float3(l9_164,0.0);
param_42=param_40;
}
else
{
float3 l9_166=float3(0.0);
float3 l9_167=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_166=l9_167;
param_41=l9_166;
param_42=param_41;
}
Result_N125=param_42;
float3 Result_N126=float3(0.0);
float3 param_43=float3(0.0);
float3 param_44=float3(0.0);
float3 param_45;
if (MESHTYPE_tmp==0)
{
float2 l9_168=float2(0.0);
float2 l9_169=(*sc_set0.UserUniforms).sizeEndMax;
l9_168=l9_169;
param_43=float3(l9_168,0.0);
param_45=param_43;
}
else
{
float3 l9_170=float3(0.0);
float3 l9_171=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_170=l9_171;
param_44=l9_170;
param_45=param_44;
}
Result_N126=param_45;
float Output_N27=0.0;
float param_46=(*sc_set0.UserUniforms).sizeSpeed;
Output_N27=param_46;
float Output_N55=0.0;
float param_47=(*sc_set0.UserUniforms).gravity;
Output_N55=param_47;
float3 Output_N46=float3(0.0);
float3 param_48=(*sc_set0.UserUniforms).localForce;
Output_N46=param_48;
float Output_N51=0.0;
float param_49=(*sc_set0.UserUniforms).sizeVelScale;
Output_N51=param_49;
float Output_N48=0.0;
float param_50=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
Output_N48=param_50;
float Output_N49=0.0;
float param_51=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
Output_N49=param_51;
float Output_N50=0.0;
float param_52=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
Output_N50=param_52;
float2 Output_N138=float2(0.0);
float2 param_53=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 param_54=float2(0.0);
float2 param_55;
if (MESHTYPE_tmp==0)
{
param_55=param_53;
}
else
{
float2 l9_172=float2(0.0);
float2 l9_173=(*sc_set0.UserUniforms).rotationRandomX;
l9_172=l9_173;
param_54=l9_172;
param_55=param_54;
}
Output_N138=param_55;
float2 Output_N139=float2(0.0);
float2 param_56=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 param_57=float2(0.0);
float2 param_58;
if (MESHTYPE_tmp==0)
{
param_58=param_56;
}
else
{
float2 l9_174=float2(0.0);
float2 l9_175=(*sc_set0.UserUniforms).rotationRateX;
l9_174=l9_175;
param_57=l9_174;
param_58=param_57;
}
Output_N139=param_58;
float2 Output_N140=float2(0.0);
float2 param_59=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 param_60=float2(0.0);
float2 param_61;
if (MESHTYPE_tmp==0)
{
param_61=param_59;
}
else
{
float2 l9_176=float2(0.0);
float2 l9_177=(*sc_set0.UserUniforms).randomRotationY;
l9_176=l9_177;
param_60=l9_176;
param_61=param_60;
}
Output_N140=param_61;
float2 Output_N144=float2(0.0);
float2 param_62=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 param_63=float2(0.0);
float2 param_64;
if (MESHTYPE_tmp==0)
{
param_64=param_62;
}
else
{
float2 l9_178=float2(0.0);
float2 l9_179=(*sc_set0.UserUniforms).rotationRateY;
l9_178=l9_179;
param_63=l9_178;
param_64=param_63;
}
Output_N144=param_64;
float2 Output_N135=float2(0.0);
float2 param_65=float2(1.0);
float2 param_66=float2(0.0);
float2 param_67;
if (MESHTYPE_tmp==0)
{
float2 l9_180=float2(0.0);
float2 l9_181=(*sc_set0.UserUniforms).rotationRandom;
l9_180=l9_181;
param_65=l9_180;
param_67=param_65;
}
else
{
float2 l9_182=float2(0.0);
float2 l9_183=(*sc_set0.UserUniforms).randomRotationZ;
l9_182=l9_183;
param_66=l9_182;
param_67=param_66;
}
Output_N135=param_67;
float2 Output_N137=float2(0.0);
float2 param_68=float2(1.0);
float2 param_69=float2(0.0);
float2 param_70;
if (MESHTYPE_tmp==0)
{
float2 l9_184=float2(0.0);
float2 l9_185=(*sc_set0.UserUniforms).rotationRate;
l9_184=l9_185;
param_68=l9_184;
param_70=param_68;
}
else
{
float2 l9_186=float2(0.0);
float2 l9_187=(*sc_set0.UserUniforms).rotationRateZ;
l9_186=l9_187;
param_69=l9_186;
param_70=param_69;
}
Output_N137=param_70;
float Output_N54=0.0;
float param_71=(*sc_set0.UserUniforms).rotationDrag;
Output_N54=param_71;
float Output_N110=0.0;
float param_72=(*sc_set0.UserUniforms).Port_Input1_N110;
float param_73=0.0;
float param_74;
if (MESHTYPE_tmp==0)
{
param_74=param_72;
}
else
{
float l9_188=0.0;
float l9_189=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_188=l9_189;
param_73=l9_188;
param_74=param_73;
}
Output_N110=param_74;
float Output_N176=0.0;
float param_75=(*sc_set0.UserUniforms).fadeDistanceVisible;
Output_N176=param_75;
float Output_N178=0.0;
float param_76=(*sc_set0.UserUniforms).fadeDistanceInvisible;
Output_N178=param_76;
float3 position_N111=float3(0.0);
float3 param_77=particleSeed_N173;
float param_78=globalSeed_N173;
float param_79=dieTrigger_N173;
float4 param_80=timeValues_N173;
float3 param_81=Position_N114;
float3 param_82=Normal_N172;
float3 param_83=Output_N16;
float3 param_84=Output_N18;
float3 param_85=Output_N20;
float3 param_86=Output_N39;
float3 param_87=Output_N40;
float3 param_88=Output_N41;
float3 param_89=Output_N42;
float3 param_90=Output_N34;
float3 param_91=Output_N35;
float3 param_92=Output_N36;
float3 param_93=Result_N70;
float3 param_94=Result_N121;
float3 param_95=Result_N124;
float3 param_96=Result_N123;
float3 param_97=Result_N125;
float3 param_98=Result_N126;
float param_99=Output_N27;
float param_100=Output_N55;
float3 param_101=Output_N46;
float param_102=Output_N51;
float param_103=Output_N48;
float param_104=Output_N49;
float param_105=Output_N50;
float2 param_106=Output_N138;
float2 param_107=Output_N139;
float2 param_108=Output_N140;
float2 param_109=Output_N144;
float2 param_110=Output_N135;
float2 param_111=Output_N137;
float param_112=Output_N54;
float param_113=Output_N110;
float param_114=Output_N176;
float param_115=Output_N178;
ssGlobals param_117=Globals;
tempGlobals=param_117;
float3 param_116=float3(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=param_77;
N111_globalSeedIn=param_78;
N111_dieTrigger=param_79;
N111_timeValuesIn=param_80;
N111_positionObjectSpace=param_81;
N111_normalObjectSpace=param_82;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=param_83;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=param_84;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=param_85;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=param_86;
N111_noiseFrequency=param_87;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=param_88;
N111_sNoiseFrequency=param_89;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=param_90;
N111_velocityMax=param_91;
N111_velocityDrag=param_92;
N111_sizeStart=param_93;
N111_sizeEnd=param_94;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=param_95;
N111_sizeStartMax=param_96;
N111_sizeEndMin=param_97;
N111_sizeEndMax=param_98;
N111_sizeSpeed=param_99;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_gravity=param_100;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=param_101;
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=param_102;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=param_103!=0.0;
N111_ENABLE_ALIGNTOY=param_104!=0.0;
N111_ENABLE_ALIGNTOZ=param_105!=0.0;
N111_rotationRandomX=param_106;
N111_rotationRateX=param_107;
N111_rotationRandomY=param_108;
N111_rotationRateY=param_109;
N111_rotationRandomZ=param_110;
N111_rotationRateZ=param_111;
N111_rotationDrag=param_112;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=param_113!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=param_114;
N111_fadeDistanceInvisible=param_115;
float3 l9_190=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_191=N111_particleSeed.x;
float l9_192=N111_particleSeed.y;
float l9_193=N111_particleSeed.z;
float3 l9_194=fract((float3(l9_191,l9_192,l9_193)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_195=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_196=normalize(l9_195+float3(N111_EPSILON));
float l9_197=fract(N111_particleSeed.x+N111_globalSeed);
float l9_198=l9_197;
float l9_199=0.33333334;
float l9_200;
if (l9_198<=0.0)
{
l9_200=0.0;
}
else
{
l9_200=pow(l9_198,l9_199);
}
float l9_201=l9_200;
float l9_202=l9_201;
l9_196*=l9_202;
l9_196/=float3(2.0);
float l9_203=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_204=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_205=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_206=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_207=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_208=(float3(l9_206,l9_207,l9_205)-float3(0.5))*2.0;
float3 l9_209=float3(l9_206,l9_207,l9_205);
float l9_210=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_211=N111_timeValuesIn.xy;
float l9_212=N111_timeValuesIn.z;
float l9_213=N111_timeValuesIn.w;
float3 l9_214=l9_190;
float3 l9_215=l9_190;
float3 l9_216=l9_190;
if (N111_ENABLE_INILOCATION)
{
l9_216=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_214=N111_spawnBox*l9_194;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_215=N111_spawnSphere*l9_196;
}
float3 l9_217=(l9_216+l9_215)+l9_214;
float3 l9_218=l9_190;
if (N111_ENABLE_NOISE)
{
float3 l9_219=N111_noiseFrequency;
float3 l9_220=N111_noiseMult;
float3 l9_221=l9_208;
float l9_222=l9_213;
float l9_223=sin(l9_222*l9_219.x);
float l9_224=sin(l9_222*l9_219.y);
float l9_225=sin(l9_222*l9_219.z);
float3 l9_226=(float3(l9_223,l9_224,l9_225)*l9_220)*l9_221;
float3 l9_227=l9_226;
l9_218+=l9_227;
}
if (N111_ENABLE_SNOISE)
{
float l9_228=l9_205;
float l9_229=l9_206;
float l9_230=l9_207;
float3 l9_231=N111_sNoiseFrequency;
float3 l9_232=N111_sNoiseMult;
float3 l9_233=l9_208;
float l9_234=l9_212;
float2 l9_235=float2(l9_228*l9_234,l9_231.x);
float2 l9_236=floor(l9_235+float2(dot(l9_235,float2(0.36602542))));
float2 l9_237=(l9_235-l9_236)+float2(dot(l9_236,float2(0.21132487)));
float2 l9_238=float2(0.0);
bool2 l9_239=bool2(l9_237.x>l9_237.y);
l9_238=float2(l9_239.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_239.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_240=l9_237.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_241=l9_240.xy-l9_238;
l9_240=float4(l9_241.x,l9_241.y,l9_240.z,l9_240.w);
l9_236=mod(l9_236,float2(289.0));
float3 l9_242=float3(l9_236.y)+float3(0.0,l9_238.y,1.0);
float3 l9_243=mod(((l9_242*34.0)+float3(1.0))*l9_242,float3(289.0));
float3 l9_244=(l9_243+float3(l9_236.x))+float3(0.0,l9_238.x,1.0);
float3 l9_245=mod(((l9_244*34.0)+float3(1.0))*l9_244,float3(289.0));
float3 l9_246=l9_245;
float3 l9_247=fast::max(float3(0.5)-float3(dot(l9_237,l9_237),dot(l9_240.xy,l9_240.xy),dot(l9_240.zw,l9_240.zw)),float3(0.0));
l9_247*=l9_247;
l9_247*=l9_247;
float3 l9_248=(fract(l9_246*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_249=abs(l9_248)-float3(0.5);
float3 l9_250=floor(l9_248+float3(0.5));
float3 l9_251=l9_248-l9_250;
l9_247*=(float3(1.7928429)-(((l9_251*l9_251)+(l9_249*l9_249))*0.85373473));
float3 l9_252=float3(0.0);
l9_252.x=(l9_251.x*l9_237.x)+(l9_249.x*l9_237.y);
float2 l9_253=(l9_251.yz*l9_240.xz)+(l9_249.yz*l9_240.yw);
l9_252=float3(l9_252.x,l9_253.x,l9_253.y);
float l9_254=130.0*dot(l9_247,l9_252);
float l9_255=l9_254;
float2 l9_256=float2(l9_229*l9_234,l9_231.y);
float2 l9_257=floor(l9_256+float2(dot(l9_256,float2(0.36602542))));
float2 l9_258=(l9_256-l9_257)+float2(dot(l9_257,float2(0.21132487)));
float2 l9_259=float2(0.0);
bool2 l9_260=bool2(l9_258.x>l9_258.y);
l9_259=float2(l9_260.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_260.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_261=l9_258.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_262=l9_261.xy-l9_259;
l9_261=float4(l9_262.x,l9_262.y,l9_261.z,l9_261.w);
l9_257=mod(l9_257,float2(289.0));
float3 l9_263=float3(l9_257.y)+float3(0.0,l9_259.y,1.0);
float3 l9_264=mod(((l9_263*34.0)+float3(1.0))*l9_263,float3(289.0));
float3 l9_265=(l9_264+float3(l9_257.x))+float3(0.0,l9_259.x,1.0);
float3 l9_266=mod(((l9_265*34.0)+float3(1.0))*l9_265,float3(289.0));
float3 l9_267=l9_266;
float3 l9_268=fast::max(float3(0.5)-float3(dot(l9_258,l9_258),dot(l9_261.xy,l9_261.xy),dot(l9_261.zw,l9_261.zw)),float3(0.0));
l9_268*=l9_268;
l9_268*=l9_268;
float3 l9_269=(fract(l9_267*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_270=abs(l9_269)-float3(0.5);
float3 l9_271=floor(l9_269+float3(0.5));
float3 l9_272=l9_269-l9_271;
l9_268*=(float3(1.7928429)-(((l9_272*l9_272)+(l9_270*l9_270))*0.85373473));
float3 l9_273=float3(0.0);
l9_273.x=(l9_272.x*l9_258.x)+(l9_270.x*l9_258.y);
float2 l9_274=(l9_272.yz*l9_261.xz)+(l9_270.yz*l9_261.yw);
l9_273=float3(l9_273.x,l9_274.x,l9_274.y);
float l9_275=130.0*dot(l9_268,l9_273);
float l9_276=l9_275;
float2 l9_277=float2(l9_230*l9_234,l9_231.z);
float2 l9_278=floor(l9_277+float2(dot(l9_277,float2(0.36602542))));
float2 l9_279=(l9_277-l9_278)+float2(dot(l9_278,float2(0.21132487)));
float2 l9_280=float2(0.0);
bool2 l9_281=bool2(l9_279.x>l9_279.y);
l9_280=float2(l9_281.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_281.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_282=l9_279.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_283=l9_282.xy-l9_280;
l9_282=float4(l9_283.x,l9_283.y,l9_282.z,l9_282.w);
l9_278=mod(l9_278,float2(289.0));
float3 l9_284=float3(l9_278.y)+float3(0.0,l9_280.y,1.0);
float3 l9_285=mod(((l9_284*34.0)+float3(1.0))*l9_284,float3(289.0));
float3 l9_286=(l9_285+float3(l9_278.x))+float3(0.0,l9_280.x,1.0);
float3 l9_287=mod(((l9_286*34.0)+float3(1.0))*l9_286,float3(289.0));
float3 l9_288=l9_287;
float3 l9_289=fast::max(float3(0.5)-float3(dot(l9_279,l9_279),dot(l9_282.xy,l9_282.xy),dot(l9_282.zw,l9_282.zw)),float3(0.0));
l9_289*=l9_289;
l9_289*=l9_289;
float3 l9_290=(fract(l9_288*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_291=abs(l9_290)-float3(0.5);
float3 l9_292=floor(l9_290+float3(0.5));
float3 l9_293=l9_290-l9_292;
l9_289*=(float3(1.7928429)-(((l9_293*l9_293)+(l9_291*l9_291))*0.85373473));
float3 l9_294=float3(0.0);
l9_294.x=(l9_293.x*l9_279.x)+(l9_291.x*l9_279.y);
float2 l9_295=(l9_293.yz*l9_282.xz)+(l9_291.yz*l9_282.yw);
l9_294=float3(l9_294.x,l9_295.x,l9_295.y);
float l9_296=130.0*dot(l9_289,l9_294);
float l9_297=l9_296;
float3 l9_298=(float3(l9_255,l9_276,l9_297)*l9_232)*l9_233;
l9_218+=l9_298;
}
float3 l9_299=float3(0.0,((N111_gravity/2.0)*l9_212)*l9_212,0.0);
float3 l9_300=l9_190;
if (N111_ENABLE_FORCE)
{
l9_300=((N111_localForce/float3(2.0))*l9_212)*l9_212;
}
float3 l9_301=l9_190;
float3 l9_302=N111_velocityMin+(((l9_208+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_302=mix(N111_velocityMin,N111_velocityMax,l9_209);
}
float3 l9_303=l9_302;
float l9_304=l9_212;
float3 l9_305=N111_velocityDrag;
float3 l9_306=l9_218;
float l9_307=l9_213;
float3 l9_308=float3(l9_304,l9_304,l9_304);
float3 l9_309=l9_305;
float l9_310;
if (l9_308.x<=0.0)
{
l9_310=0.0;
}
else
{
l9_310=pow(l9_308.x,l9_309.x);
}
float l9_311=l9_310;
float l9_312;
if (l9_308.y<=0.0)
{
l9_312=0.0;
}
else
{
l9_312=pow(l9_308.y,l9_309.y);
}
float l9_313=l9_312;
float l9_314;
if (l9_308.z<=0.0)
{
l9_314=0.0;
}
else
{
l9_314=pow(l9_308.z,l9_309.z);
}
float3 l9_315=float3(l9_311,l9_313,l9_314);
float3 l9_316=l9_315;
float3 l9_317=(l9_303+l9_306)*l9_316;
if (N111_ENABLE_VELRAMP)
{
float l9_318=floor(l9_307*10000.0)/10000.0;
float2 l9_319=tempGlobals.Surface_UVCoord0;
float2 l9_320=(l9_319/float2(10000.0,1.0))+float2(l9_318,0.0);
float2 l9_321=l9_320;
float4 l9_322=float4(0.0);
int l9_323;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_324=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_324=0;
}
else
{
l9_324=gl_InstanceIndex%2;
}
int l9_325=l9_324;
l9_323=1-l9_325;
}
else
{
int l9_326=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_326=0;
}
else
{
l9_326=gl_InstanceIndex%2;
}
int l9_327=l9_326;
l9_323=l9_327;
}
int l9_328=l9_323;
int l9_329=velRampTextureLayout_tmp;
int l9_330=l9_328;
float2 l9_331=l9_321;
bool l9_332=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_333=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_334=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_335=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_336=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_337=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_338=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_339=0.0;
bool l9_340=l9_337&&(!l9_335);
float l9_341=1.0;
float l9_342=l9_331.x;
int l9_343=l9_334.x;
if (l9_343==1)
{
l9_342=fract(l9_342);
}
else
{
if (l9_343==2)
{
float l9_344=fract(l9_342);
float l9_345=l9_342-l9_344;
float l9_346=step(0.25,fract(l9_345*0.5));
l9_342=mix(l9_344,1.0-l9_344,fast::clamp(l9_346,0.0,1.0));
}
}
l9_331.x=l9_342;
float l9_347=l9_331.y;
int l9_348=l9_334.y;
if (l9_348==1)
{
l9_347=fract(l9_347);
}
else
{
if (l9_348==2)
{
float l9_349=fract(l9_347);
float l9_350=l9_347-l9_349;
float l9_351=step(0.25,fract(l9_350*0.5));
l9_347=mix(l9_349,1.0-l9_349,fast::clamp(l9_351,0.0,1.0));
}
}
l9_331.y=l9_347;
if (l9_335)
{
bool l9_352=l9_337;
bool l9_353;
if (l9_352)
{
l9_353=l9_334.x==3;
}
else
{
l9_353=l9_352;
}
float l9_354=l9_331.x;
float l9_355=l9_336.x;
float l9_356=l9_336.z;
bool l9_357=l9_353;
float l9_358=l9_341;
float l9_359=fast::clamp(l9_354,l9_355,l9_356);
float l9_360=step(abs(l9_354-l9_359),9.9999997e-06);
l9_358*=(l9_360+((1.0-float(l9_357))*(1.0-l9_360)));
l9_354=l9_359;
l9_331.x=l9_354;
l9_341=l9_358;
bool l9_361=l9_337;
bool l9_362;
if (l9_361)
{
l9_362=l9_334.y==3;
}
else
{
l9_362=l9_361;
}
float l9_363=l9_331.y;
float l9_364=l9_336.y;
float l9_365=l9_336.w;
bool l9_366=l9_362;
float l9_367=l9_341;
float l9_368=fast::clamp(l9_363,l9_364,l9_365);
float l9_369=step(abs(l9_363-l9_368),9.9999997e-06);
l9_367*=(l9_369+((1.0-float(l9_366))*(1.0-l9_369)));
l9_363=l9_368;
l9_331.y=l9_363;
l9_341=l9_367;
}
float2 l9_370=l9_331;
bool l9_371=l9_332;
float3x3 l9_372=l9_333;
if (l9_371)
{
l9_370=float2((l9_372*float3(l9_370,1.0)).xy);
}
float2 l9_373=l9_370;
l9_331=l9_373;
float l9_374=l9_331.x;
int l9_375=l9_334.x;
bool l9_376=l9_340;
float l9_377=l9_341;
if ((l9_375==0)||(l9_375==3))
{
float l9_378=l9_374;
float l9_379=0.0;
float l9_380=1.0;
bool l9_381=l9_376;
float l9_382=l9_377;
float l9_383=fast::clamp(l9_378,l9_379,l9_380);
float l9_384=step(abs(l9_378-l9_383),9.9999997e-06);
l9_382*=(l9_384+((1.0-float(l9_381))*(1.0-l9_384)));
l9_378=l9_383;
l9_374=l9_378;
l9_377=l9_382;
}
l9_331.x=l9_374;
l9_341=l9_377;
float l9_385=l9_331.y;
int l9_386=l9_334.y;
bool l9_387=l9_340;
float l9_388=l9_341;
if ((l9_386==0)||(l9_386==3))
{
float l9_389=l9_385;
float l9_390=0.0;
float l9_391=1.0;
bool l9_392=l9_387;
float l9_393=l9_388;
float l9_394=fast::clamp(l9_389,l9_390,l9_391);
float l9_395=step(abs(l9_389-l9_394),9.9999997e-06);
l9_393*=(l9_395+((1.0-float(l9_392))*(1.0-l9_395)));
l9_389=l9_394;
l9_385=l9_389;
l9_388=l9_393;
}
l9_331.y=l9_385;
l9_341=l9_388;
float2 l9_396=l9_331;
int l9_397=l9_329;
int l9_398=l9_330;
float l9_399=l9_339;
float2 l9_400=l9_396;
int l9_401=l9_397;
int l9_402=l9_398;
float3 l9_403=float3(0.0);
if (l9_401==0)
{
l9_403=float3(l9_400,0.0);
}
else
{
if (l9_401==1)
{
l9_403=float3(l9_400.x,(l9_400.y*0.5)+(0.5-(float(l9_402)*0.5)),0.0);
}
else
{
l9_403=float3(l9_400,float(l9_402));
}
}
float3 l9_404=l9_403;
float3 l9_405=l9_404;
float4 l9_406=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_405.xy,level(l9_399));
float4 l9_407=l9_406;
if (l9_337)
{
l9_407=mix(l9_338,l9_407,float4(l9_341));
}
float4 l9_408=l9_407;
l9_322=l9_408;
float4 l9_409=l9_322;
float3 l9_410=l9_409.xyz;
l9_317=(l9_303+l9_306)*l9_410;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_317=l9_303*l9_316;
}
}
float3 l9_411=l9_317;
l9_301=l9_411;
float4x4 l9_412=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_413=length(l9_412[0].xyz);
float4x4 l9_414=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_415=length(l9_414[1].xyz);
float4x4 l9_416=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_417=length(l9_416[2].xyz);
float3 l9_418=float3(l9_413,l9_415,l9_417);
float4x4 l9_419=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_420=l9_419;
float4 l9_421=l9_420[0];
float4 l9_422=l9_420[1];
float4 l9_423=l9_420[2];
float3x3 l9_424=float3x3(float3(float3(l9_421.x,l9_422.x,l9_423.x)),float3(float3(l9_421.y,l9_422.y,l9_423.y)),float3(float3(l9_421.z,l9_422.z,l9_423.z)));
float3x3 l9_425=l9_424;
float3 l9_426=((l9_301+l9_299)+l9_300)*l9_425;
if (N111_WORLDFORCE)
{
float4x4 l9_427=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_428=l9_427;
float4 l9_429=l9_428[0];
float4 l9_430=l9_428[1];
float4 l9_431=l9_428[2];
float3x3 l9_432=float3x3(float3(float3(l9_429.x,l9_430.x,l9_431.x)),float3(float3(l9_429.y,l9_430.y,l9_431.y)),float3(float3(l9_429.z,l9_430.z,l9_431.z)));
float3x3 l9_433=l9_432;
l9_426=((l9_301*l9_433)+l9_299)+l9_300;
}
if (N111_WORLDSPACE)
{
l9_426=((l9_301*l9_418)+l9_299)+l9_300;
}
float4x4 l9_434=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_435=(l9_434*float4(l9_217,1.0)).xyz+l9_426;
float l9_436=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_210);
float l9_437=1.0-l9_213;
float l9_438=N111_rotationDrag;
float l9_439;
if (l9_437<=0.0)
{
l9_439=0.0;
}
else
{
l9_439=pow(l9_437,l9_438);
}
float l9_440=l9_439;
float l9_441=l9_440;
float l9_442=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_210);
float l9_443=((l9_442*l9_441)*l9_213)*2.0;
float l9_444=N111_PI*((l9_443+l9_436)-0.5);
float l9_445=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_446=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_447=l9_446-l9_435;
float l9_448=dot(l9_447,l9_447);
float l9_449=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_450=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_451=fast::min(l9_449,l9_450);
float l9_452=fast::max(l9_449,l9_450);
N111_nearCameraFade=smoothstep(l9_451,l9_452,l9_448);
float l9_453;
if (l9_449>l9_450)
{
l9_453=1.0-N111_nearCameraFade;
}
else
{
l9_453=N111_nearCameraFade;
}
N111_nearCameraFade=l9_453;
if (N111_nearCameraFade<=N111_EPSILON)
{
l9_445=0.0;
}
}
if (N111_MESHTYPE_QUAD)
{
int l9_454=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_454=0;
}
else
{
l9_454=gl_InstanceIndex%2;
}
int l9_455=l9_454;
float4x4 l9_456=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_455];
float3 l9_457=l9_456[2].xyz;
int l9_458=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_458=0;
}
else
{
l9_458=gl_InstanceIndex%2;
}
int l9_459=l9_458;
float3 l9_460=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_459][1].xyz;
float3 l9_461=-l9_460;
float3 l9_462=normalize(cross(l9_457,l9_461));
float l9_463=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_462=float3(0.0,0.0,1.0);
l9_461=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_462=float3(1.0,0.0,0.0);
l9_461=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_462=float3(1.0,0.0,0.0);
l9_461=float3(0.0,1.0,0.0);
}
float2 l9_464=float2(cos(l9_444),sin(l9_444));
float2 l9_465=float2(-sin(l9_444),cos(l9_444));
float3 l9_466=float3((l9_462*l9_464.x)+(l9_461*l9_464.y));
float3 l9_467=float3((l9_462*l9_465.x)+(l9_461*l9_465.y));
if (N111_ENABLE_ALIGNTOVEL)
{
float3 l9_468=normalize(((l9_426+l9_299)+l9_300)+float3(N111_EPSILON));
float3 l9_469=l9_426*(l9_212-0.0099999998);
float3 l9_470=l9_426*(l9_212+0.0099999998);
if (N111_ENABLE_IGNOREVEL)
{
l9_463=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_463=length(l9_470-l9_469)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_471=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_463=(length(l9_470-l9_469)/length(l9_471[0].xyz))*N111_sizeVelScale;
}
}
l9_466=l9_468;
l9_467=normalize(cross(l9_466,l9_457));
}
float4x4 l9_472=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_473=length(l9_472[0].xyz);
float2 l9_474=tempGlobals.Surface_UVCoord0;
float2 l9_475=l9_474;
float l9_476=N111_dieTrigger;
float l9_477=l9_445;
float2 l9_478=l9_475;
float l9_479=l9_203;
float l9_480=l9_204;
float l9_481=l9_213;
float l9_482=N111_sizeSpeed;
float2 l9_483=N111_sizeStart.xy;
float2 l9_484=N111_sizeEnd.xy;
float l9_485=l9_481;
float l9_486=l9_482;
float l9_487;
if (l9_485<=0.0)
{
l9_487=0.0;
}
else
{
l9_487=pow(l9_485,l9_486);
}
float l9_488=l9_487;
float l9_489=l9_488;
if (N111_ENABLE_SIZEMINMAX)
{
l9_483=mix(N111_sizeStartMin.xy,N111_sizeStartMax.xy,float2(l9_479));
l9_484=mix(N111_sizeEndMin.xy,N111_sizeEndMax.xy,float2(l9_480));
}
float2 l9_490=mix(l9_483,l9_484,float2(l9_489));
if (N111_ENABLE_SIZERAMP)
{
float l9_491=ceil(l9_481*10000.0)/10000.0;
float2 l9_492=tempGlobals.Surface_UVCoord0;
float2 l9_493=(l9_492/float2(10000.0,1.0))+float2(l9_491,0.0);
float2 l9_494=l9_493;
float4 l9_495=float4(0.0);
int l9_496;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_497=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_497=0;
}
else
{
l9_497=gl_InstanceIndex%2;
}
int l9_498=l9_497;
l9_496=1-l9_498;
}
else
{
int l9_499=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_499=0;
}
else
{
l9_499=gl_InstanceIndex%2;
}
int l9_500=l9_499;
l9_496=l9_500;
}
int l9_501=l9_496;
int l9_502=sizeRampTextureLayout_tmp;
int l9_503=l9_501;
float2 l9_504=l9_494;
bool l9_505=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_506=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_507=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_508=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_509=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_510=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_511=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_512=0.0;
bool l9_513=l9_510&&(!l9_508);
float l9_514=1.0;
float l9_515=l9_504.x;
int l9_516=l9_507.x;
if (l9_516==1)
{
l9_515=fract(l9_515);
}
else
{
if (l9_516==2)
{
float l9_517=fract(l9_515);
float l9_518=l9_515-l9_517;
float l9_519=step(0.25,fract(l9_518*0.5));
l9_515=mix(l9_517,1.0-l9_517,fast::clamp(l9_519,0.0,1.0));
}
}
l9_504.x=l9_515;
float l9_520=l9_504.y;
int l9_521=l9_507.y;
if (l9_521==1)
{
l9_520=fract(l9_520);
}
else
{
if (l9_521==2)
{
float l9_522=fract(l9_520);
float l9_523=l9_520-l9_522;
float l9_524=step(0.25,fract(l9_523*0.5));
l9_520=mix(l9_522,1.0-l9_522,fast::clamp(l9_524,0.0,1.0));
}
}
l9_504.y=l9_520;
if (l9_508)
{
bool l9_525=l9_510;
bool l9_526;
if (l9_525)
{
l9_526=l9_507.x==3;
}
else
{
l9_526=l9_525;
}
float l9_527=l9_504.x;
float l9_528=l9_509.x;
float l9_529=l9_509.z;
bool l9_530=l9_526;
float l9_531=l9_514;
float l9_532=fast::clamp(l9_527,l9_528,l9_529);
float l9_533=step(abs(l9_527-l9_532),9.9999997e-06);
l9_531*=(l9_533+((1.0-float(l9_530))*(1.0-l9_533)));
l9_527=l9_532;
l9_504.x=l9_527;
l9_514=l9_531;
bool l9_534=l9_510;
bool l9_535;
if (l9_534)
{
l9_535=l9_507.y==3;
}
else
{
l9_535=l9_534;
}
float l9_536=l9_504.y;
float l9_537=l9_509.y;
float l9_538=l9_509.w;
bool l9_539=l9_535;
float l9_540=l9_514;
float l9_541=fast::clamp(l9_536,l9_537,l9_538);
float l9_542=step(abs(l9_536-l9_541),9.9999997e-06);
l9_540*=(l9_542+((1.0-float(l9_539))*(1.0-l9_542)));
l9_536=l9_541;
l9_504.y=l9_536;
l9_514=l9_540;
}
float2 l9_543=l9_504;
bool l9_544=l9_505;
float3x3 l9_545=l9_506;
if (l9_544)
{
l9_543=float2((l9_545*float3(l9_543,1.0)).xy);
}
float2 l9_546=l9_543;
l9_504=l9_546;
float l9_547=l9_504.x;
int l9_548=l9_507.x;
bool l9_549=l9_513;
float l9_550=l9_514;
if ((l9_548==0)||(l9_548==3))
{
float l9_551=l9_547;
float l9_552=0.0;
float l9_553=1.0;
bool l9_554=l9_549;
float l9_555=l9_550;
float l9_556=fast::clamp(l9_551,l9_552,l9_553);
float l9_557=step(abs(l9_551-l9_556),9.9999997e-06);
l9_555*=(l9_557+((1.0-float(l9_554))*(1.0-l9_557)));
l9_551=l9_556;
l9_547=l9_551;
l9_550=l9_555;
}
l9_504.x=l9_547;
l9_514=l9_550;
float l9_558=l9_504.y;
int l9_559=l9_507.y;
bool l9_560=l9_513;
float l9_561=l9_514;
if ((l9_559==0)||(l9_559==3))
{
float l9_562=l9_558;
float l9_563=0.0;
float l9_564=1.0;
bool l9_565=l9_560;
float l9_566=l9_561;
float l9_567=fast::clamp(l9_562,l9_563,l9_564);
float l9_568=step(abs(l9_562-l9_567),9.9999997e-06);
l9_566*=(l9_568+((1.0-float(l9_565))*(1.0-l9_568)));
l9_562=l9_567;
l9_558=l9_562;
l9_561=l9_566;
}
l9_504.y=l9_558;
l9_514=l9_561;
float2 l9_569=l9_504;
int l9_570=l9_502;
int l9_571=l9_503;
float l9_572=l9_512;
float2 l9_573=l9_569;
int l9_574=l9_570;
int l9_575=l9_571;
float3 l9_576=float3(0.0);
if (l9_574==0)
{
l9_576=float3(l9_573,0.0);
}
else
{
if (l9_574==1)
{
l9_576=float3(l9_573.x,(l9_573.y*0.5)+(0.5-(float(l9_575)*0.5)),0.0);
}
else
{
l9_576=float3(l9_573,float(l9_575));
}
}
float3 l9_577=l9_576;
float3 l9_578=l9_577;
float4 l9_579=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_578.xy,level(l9_572));
float4 l9_580=l9_579;
if (l9_510)
{
l9_580=mix(l9_511,l9_580,float4(l9_514));
}
float4 l9_581=l9_580;
l9_495=l9_581;
float4 l9_582=l9_495;
float2 l9_583=l9_582.xy;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_583=float2(1.0);
}
l9_490=l9_583*l9_483;
}
float2 l9_584=l9_490;
float2 l9_585=(((l9_478-float2(0.5))*(l9_476*l9_477))*l9_584)*l9_473;
float3 l9_586=(l9_435+(l9_467*l9_585.x))+(l9_466*(l9_585.y*l9_463));
N111_position=l9_586;
N111_normal=l9_457;
}
else
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_587=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_588=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_589=(l9_587+l9_588)/float3(2.0);
N111_position-=l9_589;
}
float3 l9_590=N111_position;
float3 l9_591=l9_418;
float l9_592=l9_203;
float l9_593=l9_204;
float l9_594=l9_213;
float l9_595=N111_sizeSpeed;
float3 l9_596=N111_sizeStart;
float3 l9_597=N111_sizeEnd;
float l9_598=l9_594;
float l9_599=l9_595;
float l9_600;
if (l9_598<=0.0)
{
l9_600=0.0;
}
else
{
l9_600=pow(l9_598,l9_599);
}
float l9_601=l9_600;
float l9_602=l9_601;
if (N111_ENABLE_SIZEMINMAX)
{
l9_596=mix(N111_sizeStartMin,N111_sizeStartMax,float3(l9_592));
l9_597=mix(N111_sizeEndMin,N111_sizeEndMax,float3(l9_593));
}
float3 l9_603=mix(l9_596,l9_597,float3(l9_602));
if (N111_ENABLE_SIZERAMP)
{
float l9_604=ceil(l9_594*10000.0)/10000.0;
float2 l9_605=tempGlobals.Surface_UVCoord0;
float2 l9_606=(l9_605/float2(10000.0,1.0))+float2(l9_604,0.0);
float2 l9_607=l9_606;
float4 l9_608=float4(0.0);
int l9_609;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_610=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_610=0;
}
else
{
l9_610=gl_InstanceIndex%2;
}
int l9_611=l9_610;
l9_609=1-l9_611;
}
else
{
int l9_612=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_612=0;
}
else
{
l9_612=gl_InstanceIndex%2;
}
int l9_613=l9_612;
l9_609=l9_613;
}
int l9_614=l9_609;
int l9_615=sizeRampTextureLayout_tmp;
int l9_616=l9_614;
float2 l9_617=l9_607;
bool l9_618=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_619=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_620=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_621=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_622=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_623=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_624=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_625=0.0;
bool l9_626=l9_623&&(!l9_621);
float l9_627=1.0;
float l9_628=l9_617.x;
int l9_629=l9_620.x;
if (l9_629==1)
{
l9_628=fract(l9_628);
}
else
{
if (l9_629==2)
{
float l9_630=fract(l9_628);
float l9_631=l9_628-l9_630;
float l9_632=step(0.25,fract(l9_631*0.5));
l9_628=mix(l9_630,1.0-l9_630,fast::clamp(l9_632,0.0,1.0));
}
}
l9_617.x=l9_628;
float l9_633=l9_617.y;
int l9_634=l9_620.y;
if (l9_634==1)
{
l9_633=fract(l9_633);
}
else
{
if (l9_634==2)
{
float l9_635=fract(l9_633);
float l9_636=l9_633-l9_635;
float l9_637=step(0.25,fract(l9_636*0.5));
l9_633=mix(l9_635,1.0-l9_635,fast::clamp(l9_637,0.0,1.0));
}
}
l9_617.y=l9_633;
if (l9_621)
{
bool l9_638=l9_623;
bool l9_639;
if (l9_638)
{
l9_639=l9_620.x==3;
}
else
{
l9_639=l9_638;
}
float l9_640=l9_617.x;
float l9_641=l9_622.x;
float l9_642=l9_622.z;
bool l9_643=l9_639;
float l9_644=l9_627;
float l9_645=fast::clamp(l9_640,l9_641,l9_642);
float l9_646=step(abs(l9_640-l9_645),9.9999997e-06);
l9_644*=(l9_646+((1.0-float(l9_643))*(1.0-l9_646)));
l9_640=l9_645;
l9_617.x=l9_640;
l9_627=l9_644;
bool l9_647=l9_623;
bool l9_648;
if (l9_647)
{
l9_648=l9_620.y==3;
}
else
{
l9_648=l9_647;
}
float l9_649=l9_617.y;
float l9_650=l9_622.y;
float l9_651=l9_622.w;
bool l9_652=l9_648;
float l9_653=l9_627;
float l9_654=fast::clamp(l9_649,l9_650,l9_651);
float l9_655=step(abs(l9_649-l9_654),9.9999997e-06);
l9_653*=(l9_655+((1.0-float(l9_652))*(1.0-l9_655)));
l9_649=l9_654;
l9_617.y=l9_649;
l9_627=l9_653;
}
float2 l9_656=l9_617;
bool l9_657=l9_618;
float3x3 l9_658=l9_619;
if (l9_657)
{
l9_656=float2((l9_658*float3(l9_656,1.0)).xy);
}
float2 l9_659=l9_656;
l9_617=l9_659;
float l9_660=l9_617.x;
int l9_661=l9_620.x;
bool l9_662=l9_626;
float l9_663=l9_627;
if ((l9_661==0)||(l9_661==3))
{
float l9_664=l9_660;
float l9_665=0.0;
float l9_666=1.0;
bool l9_667=l9_662;
float l9_668=l9_663;
float l9_669=fast::clamp(l9_664,l9_665,l9_666);
float l9_670=step(abs(l9_664-l9_669),9.9999997e-06);
l9_668*=(l9_670+((1.0-float(l9_667))*(1.0-l9_670)));
l9_664=l9_669;
l9_660=l9_664;
l9_663=l9_668;
}
l9_617.x=l9_660;
l9_627=l9_663;
float l9_671=l9_617.y;
int l9_672=l9_620.y;
bool l9_673=l9_626;
float l9_674=l9_627;
if ((l9_672==0)||(l9_672==3))
{
float l9_675=l9_671;
float l9_676=0.0;
float l9_677=1.0;
bool l9_678=l9_673;
float l9_679=l9_674;
float l9_680=fast::clamp(l9_675,l9_676,l9_677);
float l9_681=step(abs(l9_675-l9_680),9.9999997e-06);
l9_679*=(l9_681+((1.0-float(l9_678))*(1.0-l9_681)));
l9_675=l9_680;
l9_671=l9_675;
l9_674=l9_679;
}
l9_617.y=l9_671;
l9_627=l9_674;
float2 l9_682=l9_617;
int l9_683=l9_615;
int l9_684=l9_616;
float l9_685=l9_625;
float2 l9_686=l9_682;
int l9_687=l9_683;
int l9_688=l9_684;
float3 l9_689=float3(0.0);
if (l9_687==0)
{
l9_689=float3(l9_686,0.0);
}
else
{
if (l9_687==1)
{
l9_689=float3(l9_686.x,(l9_686.y*0.5)+(0.5-(float(l9_688)*0.5)),0.0);
}
else
{
l9_689=float3(l9_686,float(l9_688));
}
}
float3 l9_690=l9_689;
float3 l9_691=l9_690;
float4 l9_692=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_691.xy,level(l9_685));
float4 l9_693=l9_692;
if (l9_623)
{
l9_693=mix(l9_624,l9_693,float4(l9_627));
}
float4 l9_694=l9_693;
l9_608=l9_694;
float4 l9_695=l9_608;
float3 l9_696=l9_695.xyz;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_696=float3(1.0);
}
l9_603=l9_696*l9_596;
}
float3 l9_697=l9_603;
N111_position=(l9_590*l9_591)*l9_697;
if ((N111_dieTrigger<0.5)||(l9_445<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_698;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_698=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_699=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_699=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_699=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_700=0.001;
float3 l9_701=l9_302;
float l9_702=l9_212-l9_700;
float3 l9_703=N111_velocityDrag;
float3 l9_704=l9_218;
float l9_705=l9_213-l9_700;
float3 l9_706=float3(l9_702,l9_702,l9_702);
float3 l9_707=l9_703;
float l9_708;
if (l9_706.x<=0.0)
{
l9_708=0.0;
}
else
{
l9_708=pow(l9_706.x,l9_707.x);
}
float l9_709=l9_708;
float l9_710;
if (l9_706.y<=0.0)
{
l9_710=0.0;
}
else
{
l9_710=pow(l9_706.y,l9_707.y);
}
float l9_711=l9_710;
float l9_712;
if (l9_706.z<=0.0)
{
l9_712=0.0;
}
else
{
l9_712=pow(l9_706.z,l9_707.z);
}
float3 l9_713=float3(l9_709,l9_711,l9_712);
float3 l9_714=l9_713;
float3 l9_715=(l9_701+l9_704)*l9_714;
if (N111_ENABLE_VELRAMP)
{
float l9_716=floor(l9_705*10000.0)/10000.0;
float2 l9_717=tempGlobals.Surface_UVCoord0;
float2 l9_718=(l9_717/float2(10000.0,1.0))+float2(l9_716,0.0);
float2 l9_719=l9_718;
float4 l9_720=float4(0.0);
int l9_721;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_722=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_722=0;
}
else
{
l9_722=gl_InstanceIndex%2;
}
int l9_723=l9_722;
l9_721=1-l9_723;
}
else
{
int l9_724=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_724=0;
}
else
{
l9_724=gl_InstanceIndex%2;
}
int l9_725=l9_724;
l9_721=l9_725;
}
int l9_726=l9_721;
int l9_727=velRampTextureLayout_tmp;
int l9_728=l9_726;
float2 l9_729=l9_719;
bool l9_730=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_731=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_732=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_733=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_734=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_735=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_736=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_737=0.0;
bool l9_738=l9_735&&(!l9_733);
float l9_739=1.0;
float l9_740=l9_729.x;
int l9_741=l9_732.x;
if (l9_741==1)
{
l9_740=fract(l9_740);
}
else
{
if (l9_741==2)
{
float l9_742=fract(l9_740);
float l9_743=l9_740-l9_742;
float l9_744=step(0.25,fract(l9_743*0.5));
l9_740=mix(l9_742,1.0-l9_742,fast::clamp(l9_744,0.0,1.0));
}
}
l9_729.x=l9_740;
float l9_745=l9_729.y;
int l9_746=l9_732.y;
if (l9_746==1)
{
l9_745=fract(l9_745);
}
else
{
if (l9_746==2)
{
float l9_747=fract(l9_745);
float l9_748=l9_745-l9_747;
float l9_749=step(0.25,fract(l9_748*0.5));
l9_745=mix(l9_747,1.0-l9_747,fast::clamp(l9_749,0.0,1.0));
}
}
l9_729.y=l9_745;
if (l9_733)
{
bool l9_750=l9_735;
bool l9_751;
if (l9_750)
{
l9_751=l9_732.x==3;
}
else
{
l9_751=l9_750;
}
float l9_752=l9_729.x;
float l9_753=l9_734.x;
float l9_754=l9_734.z;
bool l9_755=l9_751;
float l9_756=l9_739;
float l9_757=fast::clamp(l9_752,l9_753,l9_754);
float l9_758=step(abs(l9_752-l9_757),9.9999997e-06);
l9_756*=(l9_758+((1.0-float(l9_755))*(1.0-l9_758)));
l9_752=l9_757;
l9_729.x=l9_752;
l9_739=l9_756;
bool l9_759=l9_735;
bool l9_760;
if (l9_759)
{
l9_760=l9_732.y==3;
}
else
{
l9_760=l9_759;
}
float l9_761=l9_729.y;
float l9_762=l9_734.y;
float l9_763=l9_734.w;
bool l9_764=l9_760;
float l9_765=l9_739;
float l9_766=fast::clamp(l9_761,l9_762,l9_763);
float l9_767=step(abs(l9_761-l9_766),9.9999997e-06);
l9_765*=(l9_767+((1.0-float(l9_764))*(1.0-l9_767)));
l9_761=l9_766;
l9_729.y=l9_761;
l9_739=l9_765;
}
float2 l9_768=l9_729;
bool l9_769=l9_730;
float3x3 l9_770=l9_731;
if (l9_769)
{
l9_768=float2((l9_770*float3(l9_768,1.0)).xy);
}
float2 l9_771=l9_768;
l9_729=l9_771;
float l9_772=l9_729.x;
int l9_773=l9_732.x;
bool l9_774=l9_738;
float l9_775=l9_739;
if ((l9_773==0)||(l9_773==3))
{
float l9_776=l9_772;
float l9_777=0.0;
float l9_778=1.0;
bool l9_779=l9_774;
float l9_780=l9_775;
float l9_781=fast::clamp(l9_776,l9_777,l9_778);
float l9_782=step(abs(l9_776-l9_781),9.9999997e-06);
l9_780*=(l9_782+((1.0-float(l9_779))*(1.0-l9_782)));
l9_776=l9_781;
l9_772=l9_776;
l9_775=l9_780;
}
l9_729.x=l9_772;
l9_739=l9_775;
float l9_783=l9_729.y;
int l9_784=l9_732.y;
bool l9_785=l9_738;
float l9_786=l9_739;
if ((l9_784==0)||(l9_784==3))
{
float l9_787=l9_783;
float l9_788=0.0;
float l9_789=1.0;
bool l9_790=l9_785;
float l9_791=l9_786;
float l9_792=fast::clamp(l9_787,l9_788,l9_789);
float l9_793=step(abs(l9_787-l9_792),9.9999997e-06);
l9_791*=(l9_793+((1.0-float(l9_790))*(1.0-l9_793)));
l9_787=l9_792;
l9_783=l9_787;
l9_786=l9_791;
}
l9_729.y=l9_783;
l9_739=l9_786;
float2 l9_794=l9_729;
int l9_795=l9_727;
int l9_796=l9_728;
float l9_797=l9_737;
float2 l9_798=l9_794;
int l9_799=l9_795;
int l9_800=l9_796;
float3 l9_801=float3(0.0);
if (l9_799==0)
{
l9_801=float3(l9_798,0.0);
}
else
{
if (l9_799==1)
{
l9_801=float3(l9_798.x,(l9_798.y*0.5)+(0.5-(float(l9_800)*0.5)),0.0);
}
else
{
l9_801=float3(l9_798,float(l9_800));
}
}
float3 l9_802=l9_801;
float3 l9_803=l9_802;
float4 l9_804=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_803.xy,level(l9_797));
float4 l9_805=l9_804;
if (l9_735)
{
l9_805=mix(l9_736,l9_805,float4(l9_739));
}
float4 l9_806=l9_805;
l9_720=l9_806;
float4 l9_807=l9_720;
float3 l9_808=l9_807.xyz;
l9_715=(l9_701+l9_704)*l9_808;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_715=l9_701*l9_714;
}
}
float3 l9_809=l9_715;
float3 l9_810=l9_809;
float l9_811=((N111_gravity/2.0)*(l9_212-l9_700))*(l9_212-l9_700);
l9_299.y-=l9_811;
if (N111_ENABLE_FORCE)
{
float3 l9_812=float3(((N111_localForce/float3(2.0))*(l9_212-l9_700))*(l9_212-l9_700));
l9_300-=l9_812;
}
if (N111_WORLDFORCE)
{
float4x4 l9_813=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_814=l9_813;
float4 l9_815=l9_814[0];
float4 l9_816=l9_814[1];
float4 l9_817=l9_814[2];
float3x3 l9_818=float3x3(float3(float3(l9_815.x,l9_816.x,l9_817.x)),float3(float3(l9_815.y,l9_816.y,l9_817.y)),float3(float3(l9_815.z,l9_816.z,l9_817.z)));
float3x3 l9_819=l9_818;
l9_699=(((l9_301-l9_810)*l9_819)+l9_299)+l9_300;
}
else
{
if (N111_WORLDSPACE)
{
l9_699=((l9_301-l9_810)+l9_299)+l9_300;
}
else
{
float4x4 l9_820=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_821=l9_820;
float4 l9_822=l9_821[0];
float4 l9_823=l9_821[1];
float4 l9_824=l9_821[2];
float3x3 l9_825=float3x3(float3(float3(l9_822.x,l9_823.x,l9_824.x)),float3(float3(l9_822.y,l9_823.y,l9_824.y)),float3(float3(l9_822.z,l9_823.z,l9_824.z)));
float3x3 l9_826=l9_825;
l9_699=(((l9_301-l9_810)+l9_300)+l9_299)*l9_826;
}
}
l9_699=normalize(l9_699+float3(N111_EPSILON));
}
float3 l9_827=float3(0.0,0.0,1.0);
float3 l9_828=cross(l9_699,l9_827);
float3 l9_829=normalize(l9_828);
float l9_830=length(l9_828);
float l9_831=dot(l9_827,l9_699);
float l9_832=1.0-l9_831;
l9_698=float3x3(float3(((l9_832*l9_829.x)*l9_829.x)+l9_831,((l9_832*l9_829.x)*l9_829.y)-(l9_829.z*l9_830),((l9_832*l9_829.z)*l9_829.x)+(l9_829.y*l9_830)),float3(((l9_832*l9_829.x)*l9_829.y)+(l9_829.z*l9_830),((l9_832*l9_829.y)*l9_829.y)+l9_831,((l9_832*l9_829.y)*l9_829.z)-(l9_829.x*l9_830)),float3(((l9_832*l9_829.z)*l9_829.x)-(l9_829.y*l9_830),((l9_832*l9_829.y)*l9_829.z)+(l9_829.x*l9_830),((l9_832*l9_829.z)*l9_829.z)+l9_831));
}
float3x3 l9_833=float3x3(float3(cos(l9_444),-sin(l9_444),0.0),float3(sin(l9_444),cos(l9_444),0.0),float3(0.0,0.0,1.0));
l9_698=l9_698*l9_833;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_834=l9_426*(l9_212-0.0099999998);
float3 l9_835=l9_426*(l9_212+0.0099999998);
N111_position.z*=(length(l9_835-l9_834)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_836=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_837=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_836);
float l9_838=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_836);
float l9_839=((l9_838*l9_441)*l9_213)*2.0;
float l9_840=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_841=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_840);
float l9_842=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_840);
float l9_843=((l9_842*l9_441)*l9_213)*2.0;
float l9_844=N111_PI*(l9_839+l9_837);
float l9_845=N111_PI*(l9_843+l9_841);
float l9_846=N111_PI*(l9_443+l9_436);
float3 l9_847=float3(l9_844,l9_845,l9_846);
float l9_848=cos(l9_847.x);
float l9_849=sin(l9_847.x);
float l9_850=cos(l9_847.y);
float l9_851=sin(l9_847.y);
float l9_852=cos(l9_847.z);
float l9_853=sin(l9_847.z);
l9_698=float3x3(float3(l9_850*l9_852,(l9_848*l9_853)+((l9_849*l9_851)*l9_852),(l9_849*l9_853)-((l9_848*l9_851)*l9_852)),float3((-l9_850)*l9_853,(l9_848*l9_852)-((l9_849*l9_851)*l9_853),(l9_849*l9_852)+((l9_848*l9_851)*l9_853)),float3(l9_851,(-l9_849)*l9_850,l9_848*l9_850));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_854=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_855=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_856=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_857=float3x3(float3(l9_854[0].xyz/float3(l9_418.x)),float3(l9_855[1].xyz/float3(l9_418.y)),float3(l9_856[2].xyz/float3(l9_418.z)));
l9_698=l9_857*l9_698;
}
N111_position=l9_698*N111_position;
N111_normal=normalize(l9_698*N111_normalObjectSpace);
N111_position+=l9_435;
}
N111_timeValues=float4(l9_211,l9_212,l9_213);
param_116=N111_position;
position_N111=param_116;
WorldPosition=position_N111;
float Output_N3_1=0.0;
float param_118=(*sc_set0.UserUniforms).timeGlobal;
Output_N3_1=param_118;
float Output_N5_1=0.0;
float param_119=(*sc_set0.UserUniforms).externalTimeInput;
Output_N5_1=param_119;
float Output_N7_1=0.0;
float param_120=(*sc_set0.UserUniforms).externalSeed;
Output_N7_1=param_120;
float Output_N9_1=0.0;
float param_121=(*sc_set0.UserUniforms).lifeTimeConstant;
Output_N9_1=param_121;
float2 Output_N10_1=float2(0.0);
float2 param_122=(*sc_set0.UserUniforms).lifeTimeMinMax;
Output_N10_1=param_122;
float Output_N12_1=0.0;
float param_123=(*sc_set0.UserUniforms).spawnDuration;
Output_N12_1=param_123;
float3 particleSeed_N173_1=float3(0.0);
float globalSeed_N173_1=0.0;
float dieTrigger_N173_1=0.0;
float4 timeValues_N173_1=float4(0.0);
float param_124=Output_N3_1;
float param_125=Output_N5_1;
float param_126=Output_N7_1;
float param_127=Output_N9_1;
float2 param_128=Output_N10_1;
float param_129=Output_N12_1;
ssGlobals param_134=Globals;
tempGlobals=param_134;
float3 param_130=float3(0.0);
float param_131=0.0;
float param_132=0.0;
float4 param_133=float4(0.0);
N173_timeGlobal=param_124;
N173_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N173_externalTime=param_125;
N173_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N173_externalSeed=param_126;
N173_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N173_lifeTimeConstant=param_127;
N173_lifeTimeMinMax=param_128;
N173_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N173_spawnDuration=param_129;
float l9_858=0.0;
if (N173_ENABLE_WORLDPOSSEED)
{
float4x4 l9_859=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_858=length(float4(1.0)*l9_859);
}
N173_globalSeed=N173_externalSeed+l9_858;
float l9_860=2000.0;
int l9_861=0;
l9_861=ssInstanceID;
int l9_862=l9_861;
float l9_863=float(l9_862);
float2 l9_864=float2(mod(l9_863,l9_860),floor(l9_863/l9_860));
l9_864/=float2(l9_860);
float2 l9_865=l9_864;
float l9_866=dot(l9_865,float2(0.38253,0.42662001));
float3 l9_867=float3(0.457831,0.62343299,0.97625297)*l9_866;
l9_867=sin(l9_867)*float3(479.371,389.53101,513.03497);
l9_867=fract(l9_867);
l9_867=floor(l9_867*10000.0)*9.9999997e-05;
float3 l9_868=l9_867;
float3 l9_869=l9_868;
N173_particleSeed=l9_869;
float l9_870=fract((N173_particleSeed.y*12.12358)+N173_globalSeed);
float l9_871=fract((N173_particleSeed.z*3.5358)+N173_globalSeed);
float2 l9_872=float2(N173_lifeTimeConstant);
if (N173_ENABLE_LIFETIMEMINMAX)
{
l9_872=N173_lifeTimeMinMax;
}
float l9_873=fast::max(l9_872.x,0.0099999998);
float l9_874=fast::max(l9_872.y,0.0099999998);
float l9_875=tempGlobals.gTimeElapsed;
float l9_876=l9_875;
if (N173_ENABLE_EXTERNALTIME)
{
l9_876=N173_externalTime;
}
float l9_877=l9_876;
if (N173_ENABLE_INSTANTSPAWN)
{
l9_877=N173_timeGlobal*l9_876;
}
else
{
float l9_878=fract(((l9_876*N173_timeGlobal)*(1.0/l9_872.y))+l9_870);
l9_877=l9_878*l9_872.y;
}
float l9_879=mix(l9_877/l9_873,l9_877/l9_874,l9_871);
float l9_880=fast::clamp(l9_879,0.0,1.0);
float l9_881=0.0;
if (!N173_ENABLE_INSTANTSPAWN)
{
if (N173_spawnDuration>0.0)
{
if ((l9_876-N173_spawnDuration)>=l9_877)
{
l9_881=1.0;
}
}
}
float l9_882=l9_879+l9_881;
N173_dieTrigger=1.0;
if (l9_882>0.99989998)
{
N173_dieTrigger=0.0;
}
N173_timeValues=float4(l9_872,l9_877,l9_880);
param_130=N173_particleSeed;
param_131=N173_globalSeed;
param_132=N173_dieTrigger;
param_133=N173_timeValues;
particleSeed_N173_1=param_130;
globalSeed_N173_1=param_131;
dieTrigger_N173_1=param_132;
timeValues_N173_1=param_133;
float3 Position_N114_1=float3(0.0);
Position_N114_1=Globals.SurfacePosition_ObjectSpace;
float3 Normal_N172_1=float3(0.0);
Normal_N172_1=Globals.VertexNormal_ObjectSpace;
float3 Output_N16_1=float3(0.0);
float3 param_135=(*sc_set0.UserUniforms).spawnLocation;
Output_N16_1=param_135;
float3 Output_N18_1=float3(0.0);
float3 param_136=(*sc_set0.UserUniforms).spawnBox;
Output_N18_1=param_136;
float3 Output_N20_1=float3(0.0);
float3 param_137=(*sc_set0.UserUniforms).spawnSphere;
Output_N20_1=param_137;
float3 Output_N39_1=float3(0.0);
float3 param_138=(*sc_set0.UserUniforms).noiseMult;
Output_N39_1=param_138;
float3 Output_N40_1=float3(0.0);
float3 param_139=(*sc_set0.UserUniforms).noiseFrequency;
Output_N40_1=param_139;
float3 Output_N41_1=float3(0.0);
float3 param_140=(*sc_set0.UserUniforms).sNoiseMult;
Output_N41_1=param_140;
float3 Output_N42_1=float3(0.0);
float3 param_141=(*sc_set0.UserUniforms).sNoiseFrequency;
Output_N42_1=param_141;
float3 Output_N34_1=float3(0.0);
float3 param_142=(*sc_set0.UserUniforms).velocityMin;
Output_N34_1=param_142;
float3 Output_N35_1=float3(0.0);
float3 param_143=(*sc_set0.UserUniforms).velocityMax;
Output_N35_1=param_143;
float3 Output_N36_1=float3(0.0);
float3 param_144=(*sc_set0.UserUniforms).velocityDrag;
Output_N36_1=param_144;
float3 Result_N70_1=float3(0.0);
float3 param_145=float3(0.0);
float3 param_146=float3(0.0);
float3 param_147;
if (MESHTYPE_tmp==0)
{
float2 l9_883=float2(0.0);
float2 l9_884=(*sc_set0.UserUniforms).sizeStart;
l9_883=l9_884;
param_145=float3(l9_883,0.0);
param_147=param_145;
}
else
{
float3 l9_885=float3(0.0);
float3 l9_886=(*sc_set0.UserUniforms).sizeStart3D;
l9_885=l9_886;
param_146=l9_885;
param_147=param_146;
}
Result_N70_1=param_147;
float3 Result_N121_1=float3(0.0);
float3 param_148=float3(0.0);
float3 param_149=float3(0.0);
float3 param_150;
if (MESHTYPE_tmp==0)
{
float2 l9_887=float2(0.0);
float2 l9_888=(*sc_set0.UserUniforms).sizeEnd;
l9_887=l9_888;
param_148=float3(l9_887,0.0);
param_150=param_148;
}
else
{
float3 l9_889=float3(0.0);
float3 l9_890=(*sc_set0.UserUniforms).sizeEnd3D;
l9_889=l9_890;
param_149=l9_889;
param_150=param_149;
}
Result_N121_1=param_150;
float3 Result_N124_1=float3(0.0);
float3 param_151=float3(0.0);
float3 param_152=float3(0.0);
float3 param_153;
if (MESHTYPE_tmp==0)
{
float2 l9_891=float2(0.0);
float2 l9_892=(*sc_set0.UserUniforms).sizeStartMin;
l9_891=l9_892;
param_151=float3(l9_891,0.0);
param_153=param_151;
}
else
{
float3 l9_893=float3(0.0);
float3 l9_894=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_893=l9_894;
param_152=l9_893;
param_153=param_152;
}
Result_N124_1=param_153;
float3 Result_N123_1=float3(0.0);
float3 param_154=float3(0.0);
float3 param_155=float3(0.0);
float3 param_156;
if (MESHTYPE_tmp==0)
{
float2 l9_895=float2(0.0);
float2 l9_896=(*sc_set0.UserUniforms).sizeStartMax;
l9_895=l9_896;
param_154=float3(l9_895,0.0);
param_156=param_154;
}
else
{
float3 l9_897=float3(0.0);
float3 l9_898=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_897=l9_898;
param_155=l9_897;
param_156=param_155;
}
Result_N123_1=param_156;
float3 Result_N125_1=float3(0.0);
float3 param_157=float3(0.0);
float3 param_158=float3(0.0);
float3 param_159;
if (MESHTYPE_tmp==0)
{
float2 l9_899=float2(0.0);
float2 l9_900=(*sc_set0.UserUniforms).sizeEndMin;
l9_899=l9_900;
param_157=float3(l9_899,0.0);
param_159=param_157;
}
else
{
float3 l9_901=float3(0.0);
float3 l9_902=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_901=l9_902;
param_158=l9_901;
param_159=param_158;
}
Result_N125_1=param_159;
float3 Result_N126_1=float3(0.0);
float3 param_160=float3(0.0);
float3 param_161=float3(0.0);
float3 param_162;
if (MESHTYPE_tmp==0)
{
float2 l9_903=float2(0.0);
float2 l9_904=(*sc_set0.UserUniforms).sizeEndMax;
l9_903=l9_904;
param_160=float3(l9_903,0.0);
param_162=param_160;
}
else
{
float3 l9_905=float3(0.0);
float3 l9_906=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_905=l9_906;
param_161=l9_905;
param_162=param_161;
}
Result_N126_1=param_162;
float Output_N27_1=0.0;
float param_163=(*sc_set0.UserUniforms).sizeSpeed;
Output_N27_1=param_163;
float Output_N55_1=0.0;
float param_164=(*sc_set0.UserUniforms).gravity;
Output_N55_1=param_164;
float3 Output_N46_1=float3(0.0);
float3 param_165=(*sc_set0.UserUniforms).localForce;
Output_N46_1=param_165;
float Output_N51_1=0.0;
float param_166=(*sc_set0.UserUniforms).sizeVelScale;
Output_N51_1=param_166;
float Output_N48_1=0.0;
float param_167=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
Output_N48_1=param_167;
float Output_N49_1=0.0;
float param_168=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
Output_N49_1=param_168;
float Output_N50_1=0.0;
float param_169=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
Output_N50_1=param_169;
float2 Output_N138_1=float2(0.0);
float2 param_170=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 param_171=float2(0.0);
float2 param_172;
if (MESHTYPE_tmp==0)
{
param_172=param_170;
}
else
{
float2 l9_907=float2(0.0);
float2 l9_908=(*sc_set0.UserUniforms).rotationRandomX;
l9_907=l9_908;
param_171=l9_907;
param_172=param_171;
}
Output_N138_1=param_172;
float2 Output_N139_1=float2(0.0);
float2 param_173=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 param_174=float2(0.0);
float2 param_175;
if (MESHTYPE_tmp==0)
{
param_175=param_173;
}
else
{
float2 l9_909=float2(0.0);
float2 l9_910=(*sc_set0.UserUniforms).rotationRateX;
l9_909=l9_910;
param_174=l9_909;
param_175=param_174;
}
Output_N139_1=param_175;
float2 Output_N140_1=float2(0.0);
float2 param_176=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 param_177=float2(0.0);
float2 param_178;
if (MESHTYPE_tmp==0)
{
param_178=param_176;
}
else
{
float2 l9_911=float2(0.0);
float2 l9_912=(*sc_set0.UserUniforms).randomRotationY;
l9_911=l9_912;
param_177=l9_911;
param_178=param_177;
}
Output_N140_1=param_178;
float2 Output_N144_1=float2(0.0);
float2 param_179=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 param_180=float2(0.0);
float2 param_181;
if (MESHTYPE_tmp==0)
{
param_181=param_179;
}
else
{
float2 l9_913=float2(0.0);
float2 l9_914=(*sc_set0.UserUniforms).rotationRateY;
l9_913=l9_914;
param_180=l9_913;
param_181=param_180;
}
Output_N144_1=param_181;
float2 Output_N135_1=float2(0.0);
float2 param_182=float2(1.0);
float2 param_183=float2(0.0);
float2 param_184;
if (MESHTYPE_tmp==0)
{
float2 l9_915=float2(0.0);
float2 l9_916=(*sc_set0.UserUniforms).rotationRandom;
l9_915=l9_916;
param_182=l9_915;
param_184=param_182;
}
else
{
float2 l9_917=float2(0.0);
float2 l9_918=(*sc_set0.UserUniforms).randomRotationZ;
l9_917=l9_918;
param_183=l9_917;
param_184=param_183;
}
Output_N135_1=param_184;
float2 Output_N137_1=float2(0.0);
float2 param_185=float2(1.0);
float2 param_186=float2(0.0);
float2 param_187;
if (MESHTYPE_tmp==0)
{
float2 l9_919=float2(0.0);
float2 l9_920=(*sc_set0.UserUniforms).rotationRate;
l9_919=l9_920;
param_185=l9_919;
param_187=param_185;
}
else
{
float2 l9_921=float2(0.0);
float2 l9_922=(*sc_set0.UserUniforms).rotationRateZ;
l9_921=l9_922;
param_186=l9_921;
param_187=param_186;
}
Output_N137_1=param_187;
float Output_N54_1=0.0;
float param_188=(*sc_set0.UserUniforms).rotationDrag;
Output_N54_1=param_188;
float Output_N110_1=0.0;
float param_189=(*sc_set0.UserUniforms).Port_Input1_N110;
float param_190=0.0;
float param_191;
if (MESHTYPE_tmp==0)
{
param_191=param_189;
}
else
{
float l9_923=0.0;
float l9_924=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_923=l9_924;
param_190=l9_923;
param_191=param_190;
}
Output_N110_1=param_191;
float Output_N176_1=0.0;
float param_192=(*sc_set0.UserUniforms).fadeDistanceVisible;
Output_N176_1=param_192;
float Output_N178_1=0.0;
float param_193=(*sc_set0.UserUniforms).fadeDistanceInvisible;
Output_N178_1=param_193;
float3 normal_N111=float3(0.0);
float3 param_194=particleSeed_N173_1;
float param_195=globalSeed_N173_1;
float param_196=dieTrigger_N173_1;
float4 param_197=timeValues_N173_1;
float3 param_198=Position_N114_1;
float3 param_199=Normal_N172_1;
float3 param_200=Output_N16_1;
float3 param_201=Output_N18_1;
float3 param_202=Output_N20_1;
float3 param_203=Output_N39_1;
float3 param_204=Output_N40_1;
float3 param_205=Output_N41_1;
float3 param_206=Output_N42_1;
float3 param_207=Output_N34_1;
float3 param_208=Output_N35_1;
float3 param_209=Output_N36_1;
float3 param_210=Result_N70_1;
float3 param_211=Result_N121_1;
float3 param_212=Result_N124_1;
float3 param_213=Result_N123_1;
float3 param_214=Result_N125_1;
float3 param_215=Result_N126_1;
float param_216=Output_N27_1;
float param_217=Output_N55_1;
float3 param_218=Output_N46_1;
float param_219=Output_N51_1;
float param_220=Output_N48_1;
float param_221=Output_N49_1;
float param_222=Output_N50_1;
float2 param_223=Output_N138_1;
float2 param_224=Output_N139_1;
float2 param_225=Output_N140_1;
float2 param_226=Output_N144_1;
float2 param_227=Output_N135_1;
float2 param_228=Output_N137_1;
float param_229=Output_N54_1;
float param_230=Output_N110_1;
float param_231=Output_N176_1;
float param_232=Output_N178_1;
ssGlobals param_234=Globals;
tempGlobals=param_234;
float3 param_233=float3(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=param_194;
N111_globalSeedIn=param_195;
N111_dieTrigger=param_196;
N111_timeValuesIn=param_197;
N111_positionObjectSpace=param_198;
N111_normalObjectSpace=param_199;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=param_200;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=param_201;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=param_202;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=param_203;
N111_noiseFrequency=param_204;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=param_205;
N111_sNoiseFrequency=param_206;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=param_207;
N111_velocityMax=param_208;
N111_velocityDrag=param_209;
N111_sizeStart=param_210;
N111_sizeEnd=param_211;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=param_212;
N111_sizeStartMax=param_213;
N111_sizeEndMin=param_214;
N111_sizeEndMax=param_215;
N111_sizeSpeed=param_216;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_gravity=param_217;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=param_218;
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=param_219;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=param_220!=0.0;
N111_ENABLE_ALIGNTOY=param_221!=0.0;
N111_ENABLE_ALIGNTOZ=param_222!=0.0;
N111_rotationRandomX=param_223;
N111_rotationRateX=param_224;
N111_rotationRandomY=param_225;
N111_rotationRateY=param_226;
N111_rotationRandomZ=param_227;
N111_rotationRateZ=param_228;
N111_rotationDrag=param_229;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=param_230!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=param_231;
N111_fadeDistanceInvisible=param_232;
float3 l9_925=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_926=N111_particleSeed.x;
float l9_927=N111_particleSeed.y;
float l9_928=N111_particleSeed.z;
float3 l9_929=fract((float3(l9_926,l9_927,l9_928)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_930=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_931=normalize(l9_930+float3(N111_EPSILON));
float l9_932=fract(N111_particleSeed.x+N111_globalSeed);
float l9_933=l9_932;
float l9_934=0.33333334;
float l9_935;
if (l9_933<=0.0)
{
l9_935=0.0;
}
else
{
l9_935=pow(l9_933,l9_934);
}
float l9_936=l9_935;
float l9_937=l9_936;
l9_931*=l9_937;
l9_931/=float3(2.0);
float l9_938=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_939=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_940=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_941=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_942=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_943=(float3(l9_941,l9_942,l9_940)-float3(0.5))*2.0;
float3 l9_944=float3(l9_941,l9_942,l9_940);
float l9_945=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_946=N111_timeValuesIn.xy;
float l9_947=N111_timeValuesIn.z;
float l9_948=N111_timeValuesIn.w;
float3 l9_949=l9_925;
float3 l9_950=l9_925;
float3 l9_951=l9_925;
if (N111_ENABLE_INILOCATION)
{
l9_951=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_949=N111_spawnBox*l9_929;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_950=N111_spawnSphere*l9_931;
}
float3 l9_952=(l9_951+l9_950)+l9_949;
float3 l9_953=l9_925;
if (N111_ENABLE_NOISE)
{
float3 l9_954=N111_noiseFrequency;
float3 l9_955=N111_noiseMult;
float3 l9_956=l9_943;
float l9_957=l9_948;
float l9_958=sin(l9_957*l9_954.x);
float l9_959=sin(l9_957*l9_954.y);
float l9_960=sin(l9_957*l9_954.z);
float3 l9_961=(float3(l9_958,l9_959,l9_960)*l9_955)*l9_956;
float3 l9_962=l9_961;
l9_953+=l9_962;
}
if (N111_ENABLE_SNOISE)
{
float l9_963=l9_940;
float l9_964=l9_941;
float l9_965=l9_942;
float3 l9_966=N111_sNoiseFrequency;
float3 l9_967=N111_sNoiseMult;
float3 l9_968=l9_943;
float l9_969=l9_947;
float2 l9_970=float2(l9_963*l9_969,l9_966.x);
float2 l9_971=floor(l9_970+float2(dot(l9_970,float2(0.36602542))));
float2 l9_972=(l9_970-l9_971)+float2(dot(l9_971,float2(0.21132487)));
float2 l9_973=float2(0.0);
bool2 l9_974=bool2(l9_972.x>l9_972.y);
l9_973=float2(l9_974.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_974.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_975=l9_972.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_976=l9_975.xy-l9_973;
l9_975=float4(l9_976.x,l9_976.y,l9_975.z,l9_975.w);
l9_971=mod(l9_971,float2(289.0));
float3 l9_977=float3(l9_971.y)+float3(0.0,l9_973.y,1.0);
float3 l9_978=mod(((l9_977*34.0)+float3(1.0))*l9_977,float3(289.0));
float3 l9_979=(l9_978+float3(l9_971.x))+float3(0.0,l9_973.x,1.0);
float3 l9_980=mod(((l9_979*34.0)+float3(1.0))*l9_979,float3(289.0));
float3 l9_981=l9_980;
float3 l9_982=fast::max(float3(0.5)-float3(dot(l9_972,l9_972),dot(l9_975.xy,l9_975.xy),dot(l9_975.zw,l9_975.zw)),float3(0.0));
l9_982*=l9_982;
l9_982*=l9_982;
float3 l9_983=(fract(l9_981*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_984=abs(l9_983)-float3(0.5);
float3 l9_985=floor(l9_983+float3(0.5));
float3 l9_986=l9_983-l9_985;
l9_982*=(float3(1.7928429)-(((l9_986*l9_986)+(l9_984*l9_984))*0.85373473));
float3 l9_987=float3(0.0);
l9_987.x=(l9_986.x*l9_972.x)+(l9_984.x*l9_972.y);
float2 l9_988=(l9_986.yz*l9_975.xz)+(l9_984.yz*l9_975.yw);
l9_987=float3(l9_987.x,l9_988.x,l9_988.y);
float l9_989=130.0*dot(l9_982,l9_987);
float l9_990=l9_989;
float2 l9_991=float2(l9_964*l9_969,l9_966.y);
float2 l9_992=floor(l9_991+float2(dot(l9_991,float2(0.36602542))));
float2 l9_993=(l9_991-l9_992)+float2(dot(l9_992,float2(0.21132487)));
float2 l9_994=float2(0.0);
bool2 l9_995=bool2(l9_993.x>l9_993.y);
l9_994=float2(l9_995.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_995.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_996=l9_993.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_997=l9_996.xy-l9_994;
l9_996=float4(l9_997.x,l9_997.y,l9_996.z,l9_996.w);
l9_992=mod(l9_992,float2(289.0));
float3 l9_998=float3(l9_992.y)+float3(0.0,l9_994.y,1.0);
float3 l9_999=mod(((l9_998*34.0)+float3(1.0))*l9_998,float3(289.0));
float3 l9_1000=(l9_999+float3(l9_992.x))+float3(0.0,l9_994.x,1.0);
float3 l9_1001=mod(((l9_1000*34.0)+float3(1.0))*l9_1000,float3(289.0));
float3 l9_1002=l9_1001;
float3 l9_1003=fast::max(float3(0.5)-float3(dot(l9_993,l9_993),dot(l9_996.xy,l9_996.xy),dot(l9_996.zw,l9_996.zw)),float3(0.0));
l9_1003*=l9_1003;
l9_1003*=l9_1003;
float3 l9_1004=(fract(l9_1002*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_1005=abs(l9_1004)-float3(0.5);
float3 l9_1006=floor(l9_1004+float3(0.5));
float3 l9_1007=l9_1004-l9_1006;
l9_1003*=(float3(1.7928429)-(((l9_1007*l9_1007)+(l9_1005*l9_1005))*0.85373473));
float3 l9_1008=float3(0.0);
l9_1008.x=(l9_1007.x*l9_993.x)+(l9_1005.x*l9_993.y);
float2 l9_1009=(l9_1007.yz*l9_996.xz)+(l9_1005.yz*l9_996.yw);
l9_1008=float3(l9_1008.x,l9_1009.x,l9_1009.y);
float l9_1010=130.0*dot(l9_1003,l9_1008);
float l9_1011=l9_1010;
float2 l9_1012=float2(l9_965*l9_969,l9_966.z);
float2 l9_1013=floor(l9_1012+float2(dot(l9_1012,float2(0.36602542))));
float2 l9_1014=(l9_1012-l9_1013)+float2(dot(l9_1013,float2(0.21132487)));
float2 l9_1015=float2(0.0);
bool2 l9_1016=bool2(l9_1014.x>l9_1014.y);
l9_1015=float2(l9_1016.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_1016.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_1017=l9_1014.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_1018=l9_1017.xy-l9_1015;
l9_1017=float4(l9_1018.x,l9_1018.y,l9_1017.z,l9_1017.w);
l9_1013=mod(l9_1013,float2(289.0));
float3 l9_1019=float3(l9_1013.y)+float3(0.0,l9_1015.y,1.0);
float3 l9_1020=mod(((l9_1019*34.0)+float3(1.0))*l9_1019,float3(289.0));
float3 l9_1021=(l9_1020+float3(l9_1013.x))+float3(0.0,l9_1015.x,1.0);
float3 l9_1022=mod(((l9_1021*34.0)+float3(1.0))*l9_1021,float3(289.0));
float3 l9_1023=l9_1022;
float3 l9_1024=fast::max(float3(0.5)-float3(dot(l9_1014,l9_1014),dot(l9_1017.xy,l9_1017.xy),dot(l9_1017.zw,l9_1017.zw)),float3(0.0));
l9_1024*=l9_1024;
l9_1024*=l9_1024;
float3 l9_1025=(fract(l9_1023*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_1026=abs(l9_1025)-float3(0.5);
float3 l9_1027=floor(l9_1025+float3(0.5));
float3 l9_1028=l9_1025-l9_1027;
l9_1024*=(float3(1.7928429)-(((l9_1028*l9_1028)+(l9_1026*l9_1026))*0.85373473));
float3 l9_1029=float3(0.0);
l9_1029.x=(l9_1028.x*l9_1014.x)+(l9_1026.x*l9_1014.y);
float2 l9_1030=(l9_1028.yz*l9_1017.xz)+(l9_1026.yz*l9_1017.yw);
l9_1029=float3(l9_1029.x,l9_1030.x,l9_1030.y);
float l9_1031=130.0*dot(l9_1024,l9_1029);
float l9_1032=l9_1031;
float3 l9_1033=(float3(l9_990,l9_1011,l9_1032)*l9_967)*l9_968;
l9_953+=l9_1033;
}
float3 l9_1034=float3(0.0,((N111_gravity/2.0)*l9_947)*l9_947,0.0);
float3 l9_1035=l9_925;
if (N111_ENABLE_FORCE)
{
l9_1035=((N111_localForce/float3(2.0))*l9_947)*l9_947;
}
float3 l9_1036=l9_925;
float3 l9_1037=N111_velocityMin+(((l9_943+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_1037=mix(N111_velocityMin,N111_velocityMax,l9_944);
}
float3 l9_1038=l9_1037;
float l9_1039=l9_947;
float3 l9_1040=N111_velocityDrag;
float3 l9_1041=l9_953;
float l9_1042=l9_948;
float3 l9_1043=float3(l9_1039,l9_1039,l9_1039);
float3 l9_1044=l9_1040;
float l9_1045;
if (l9_1043.x<=0.0)
{
l9_1045=0.0;
}
else
{
l9_1045=pow(l9_1043.x,l9_1044.x);
}
float l9_1046=l9_1045;
float l9_1047;
if (l9_1043.y<=0.0)
{
l9_1047=0.0;
}
else
{
l9_1047=pow(l9_1043.y,l9_1044.y);
}
float l9_1048=l9_1047;
float l9_1049;
if (l9_1043.z<=0.0)
{
l9_1049=0.0;
}
else
{
l9_1049=pow(l9_1043.z,l9_1044.z);
}
float3 l9_1050=float3(l9_1046,l9_1048,l9_1049);
float3 l9_1051=l9_1050;
float3 l9_1052=(l9_1038+l9_1041)*l9_1051;
if (N111_ENABLE_VELRAMP)
{
float l9_1053=floor(l9_1042*10000.0)/10000.0;
float2 l9_1054=tempGlobals.Surface_UVCoord0;
float2 l9_1055=(l9_1054/float2(10000.0,1.0))+float2(l9_1053,0.0);
float2 l9_1056=l9_1055;
float4 l9_1057=float4(0.0);
int l9_1058;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1059=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1059=0;
}
else
{
l9_1059=gl_InstanceIndex%2;
}
int l9_1060=l9_1059;
l9_1058=1-l9_1060;
}
else
{
int l9_1061=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1061=0;
}
else
{
l9_1061=gl_InstanceIndex%2;
}
int l9_1062=l9_1061;
l9_1058=l9_1062;
}
int l9_1063=l9_1058;
int l9_1064=velRampTextureLayout_tmp;
int l9_1065=l9_1063;
float2 l9_1066=l9_1056;
bool l9_1067=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_1068=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_1069=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_1070=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_1071=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_1072=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_1073=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_1074=0.0;
bool l9_1075=l9_1072&&(!l9_1070);
float l9_1076=1.0;
float l9_1077=l9_1066.x;
int l9_1078=l9_1069.x;
if (l9_1078==1)
{
l9_1077=fract(l9_1077);
}
else
{
if (l9_1078==2)
{
float l9_1079=fract(l9_1077);
float l9_1080=l9_1077-l9_1079;
float l9_1081=step(0.25,fract(l9_1080*0.5));
l9_1077=mix(l9_1079,1.0-l9_1079,fast::clamp(l9_1081,0.0,1.0));
}
}
l9_1066.x=l9_1077;
float l9_1082=l9_1066.y;
int l9_1083=l9_1069.y;
if (l9_1083==1)
{
l9_1082=fract(l9_1082);
}
else
{
if (l9_1083==2)
{
float l9_1084=fract(l9_1082);
float l9_1085=l9_1082-l9_1084;
float l9_1086=step(0.25,fract(l9_1085*0.5));
l9_1082=mix(l9_1084,1.0-l9_1084,fast::clamp(l9_1086,0.0,1.0));
}
}
l9_1066.y=l9_1082;
if (l9_1070)
{
bool l9_1087=l9_1072;
bool l9_1088;
if (l9_1087)
{
l9_1088=l9_1069.x==3;
}
else
{
l9_1088=l9_1087;
}
float l9_1089=l9_1066.x;
float l9_1090=l9_1071.x;
float l9_1091=l9_1071.z;
bool l9_1092=l9_1088;
float l9_1093=l9_1076;
float l9_1094=fast::clamp(l9_1089,l9_1090,l9_1091);
float l9_1095=step(abs(l9_1089-l9_1094),9.9999997e-06);
l9_1093*=(l9_1095+((1.0-float(l9_1092))*(1.0-l9_1095)));
l9_1089=l9_1094;
l9_1066.x=l9_1089;
l9_1076=l9_1093;
bool l9_1096=l9_1072;
bool l9_1097;
if (l9_1096)
{
l9_1097=l9_1069.y==3;
}
else
{
l9_1097=l9_1096;
}
float l9_1098=l9_1066.y;
float l9_1099=l9_1071.y;
float l9_1100=l9_1071.w;
bool l9_1101=l9_1097;
float l9_1102=l9_1076;
float l9_1103=fast::clamp(l9_1098,l9_1099,l9_1100);
float l9_1104=step(abs(l9_1098-l9_1103),9.9999997e-06);
l9_1102*=(l9_1104+((1.0-float(l9_1101))*(1.0-l9_1104)));
l9_1098=l9_1103;
l9_1066.y=l9_1098;
l9_1076=l9_1102;
}
float2 l9_1105=l9_1066;
bool l9_1106=l9_1067;
float3x3 l9_1107=l9_1068;
if (l9_1106)
{
l9_1105=float2((l9_1107*float3(l9_1105,1.0)).xy);
}
float2 l9_1108=l9_1105;
l9_1066=l9_1108;
float l9_1109=l9_1066.x;
int l9_1110=l9_1069.x;
bool l9_1111=l9_1075;
float l9_1112=l9_1076;
if ((l9_1110==0)||(l9_1110==3))
{
float l9_1113=l9_1109;
float l9_1114=0.0;
float l9_1115=1.0;
bool l9_1116=l9_1111;
float l9_1117=l9_1112;
float l9_1118=fast::clamp(l9_1113,l9_1114,l9_1115);
float l9_1119=step(abs(l9_1113-l9_1118),9.9999997e-06);
l9_1117*=(l9_1119+((1.0-float(l9_1116))*(1.0-l9_1119)));
l9_1113=l9_1118;
l9_1109=l9_1113;
l9_1112=l9_1117;
}
l9_1066.x=l9_1109;
l9_1076=l9_1112;
float l9_1120=l9_1066.y;
int l9_1121=l9_1069.y;
bool l9_1122=l9_1075;
float l9_1123=l9_1076;
if ((l9_1121==0)||(l9_1121==3))
{
float l9_1124=l9_1120;
float l9_1125=0.0;
float l9_1126=1.0;
bool l9_1127=l9_1122;
float l9_1128=l9_1123;
float l9_1129=fast::clamp(l9_1124,l9_1125,l9_1126);
float l9_1130=step(abs(l9_1124-l9_1129),9.9999997e-06);
l9_1128*=(l9_1130+((1.0-float(l9_1127))*(1.0-l9_1130)));
l9_1124=l9_1129;
l9_1120=l9_1124;
l9_1123=l9_1128;
}
l9_1066.y=l9_1120;
l9_1076=l9_1123;
float2 l9_1131=l9_1066;
int l9_1132=l9_1064;
int l9_1133=l9_1065;
float l9_1134=l9_1074;
float2 l9_1135=l9_1131;
int l9_1136=l9_1132;
int l9_1137=l9_1133;
float3 l9_1138=float3(0.0);
if (l9_1136==0)
{
l9_1138=float3(l9_1135,0.0);
}
else
{
if (l9_1136==1)
{
l9_1138=float3(l9_1135.x,(l9_1135.y*0.5)+(0.5-(float(l9_1137)*0.5)),0.0);
}
else
{
l9_1138=float3(l9_1135,float(l9_1137));
}
}
float3 l9_1139=l9_1138;
float3 l9_1140=l9_1139;
float4 l9_1141=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_1140.xy,level(l9_1134));
float4 l9_1142=l9_1141;
if (l9_1072)
{
l9_1142=mix(l9_1073,l9_1142,float4(l9_1076));
}
float4 l9_1143=l9_1142;
l9_1057=l9_1143;
float4 l9_1144=l9_1057;
float3 l9_1145=l9_1144.xyz;
l9_1052=(l9_1038+l9_1041)*l9_1145;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1052=l9_1038*l9_1051;
}
}
float3 l9_1146=l9_1052;
l9_1036=l9_1146;
float4x4 l9_1147=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_1148=length(l9_1147[0].xyz);
float4x4 l9_1149=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_1150=length(l9_1149[1].xyz);
float4x4 l9_1151=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_1152=length(l9_1151[2].xyz);
float3 l9_1153=float3(l9_1148,l9_1150,l9_1152);
float4x4 l9_1154=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1155=l9_1154;
float4 l9_1156=l9_1155[0];
float4 l9_1157=l9_1155[1];
float4 l9_1158=l9_1155[2];
float3x3 l9_1159=float3x3(float3(float3(l9_1156.x,l9_1157.x,l9_1158.x)),float3(float3(l9_1156.y,l9_1157.y,l9_1158.y)),float3(float3(l9_1156.z,l9_1157.z,l9_1158.z)));
float3x3 l9_1160=l9_1159;
float3 l9_1161=((l9_1036+l9_1034)+l9_1035)*l9_1160;
if (N111_WORLDFORCE)
{
float4x4 l9_1162=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1163=l9_1162;
float4 l9_1164=l9_1163[0];
float4 l9_1165=l9_1163[1];
float4 l9_1166=l9_1163[2];
float3x3 l9_1167=float3x3(float3(float3(l9_1164.x,l9_1165.x,l9_1166.x)),float3(float3(l9_1164.y,l9_1165.y,l9_1166.y)),float3(float3(l9_1164.z,l9_1165.z,l9_1166.z)));
float3x3 l9_1168=l9_1167;
l9_1161=((l9_1036*l9_1168)+l9_1034)+l9_1035;
}
if (N111_WORLDSPACE)
{
l9_1161=((l9_1036*l9_1153)+l9_1034)+l9_1035;
}
float4x4 l9_1169=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_1170=(l9_1169*float4(l9_952,1.0)).xyz+l9_1161;
float l9_1171=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_945);
float l9_1172=1.0-l9_948;
float l9_1173=N111_rotationDrag;
float l9_1174;
if (l9_1172<=0.0)
{
l9_1174=0.0;
}
else
{
l9_1174=pow(l9_1172,l9_1173);
}
float l9_1175=l9_1174;
float l9_1176=l9_1175;
float l9_1177=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_945);
float l9_1178=((l9_1177*l9_1176)*l9_948)*2.0;
float l9_1179=N111_PI*((l9_1178+l9_1171)-0.5);
float l9_1180=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_1181=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_1182=l9_1181-l9_1170;
float l9_1183=dot(l9_1182,l9_1182);
float l9_1184=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_1185=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_1186=fast::min(l9_1184,l9_1185);
float l9_1187=fast::max(l9_1184,l9_1185);
N111_nearCameraFade=smoothstep(l9_1186,l9_1187,l9_1183);
float l9_1188;
if (l9_1184>l9_1185)
{
l9_1188=1.0-N111_nearCameraFade;
}
else
{
l9_1188=N111_nearCameraFade;
}
N111_nearCameraFade=l9_1188;
if (N111_nearCameraFade<=N111_EPSILON)
{
l9_1180=0.0;
}
}
if (N111_MESHTYPE_QUAD)
{
int l9_1189=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1189=0;
}
else
{
l9_1189=gl_InstanceIndex%2;
}
int l9_1190=l9_1189;
float4x4 l9_1191=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1190];
float3 l9_1192=l9_1191[2].xyz;
int l9_1193=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1193=0;
}
else
{
l9_1193=gl_InstanceIndex%2;
}
int l9_1194=l9_1193;
float3 l9_1195=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1194][1].xyz;
float3 l9_1196=-l9_1195;
float3 l9_1197=normalize(cross(l9_1192,l9_1196));
float l9_1198=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_1197=float3(0.0,0.0,1.0);
l9_1196=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_1197=float3(1.0,0.0,0.0);
l9_1196=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_1197=float3(1.0,0.0,0.0);
l9_1196=float3(0.0,1.0,0.0);
}
float2 l9_1199=float2(cos(l9_1179),sin(l9_1179));
float2 l9_1200=float2(-sin(l9_1179),cos(l9_1179));
float3 l9_1201=float3((l9_1197*l9_1199.x)+(l9_1196*l9_1199.y));
float3 l9_1202=float3((l9_1197*l9_1200.x)+(l9_1196*l9_1200.y));
if (N111_ENABLE_ALIGNTOVEL)
{
float3 l9_1203=normalize(((l9_1161+l9_1034)+l9_1035)+float3(N111_EPSILON));
float3 l9_1204=l9_1161*(l9_947-0.0099999998);
float3 l9_1205=l9_1161*(l9_947+0.0099999998);
if (N111_ENABLE_IGNOREVEL)
{
l9_1198=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_1198=length(l9_1205-l9_1204)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_1206=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1198=(length(l9_1205-l9_1204)/length(l9_1206[0].xyz))*N111_sizeVelScale;
}
}
l9_1201=l9_1203;
l9_1202=normalize(cross(l9_1201,l9_1192));
}
float4x4 l9_1207=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_1208=length(l9_1207[0].xyz);
float2 l9_1209=tempGlobals.Surface_UVCoord0;
float2 l9_1210=l9_1209;
float l9_1211=N111_dieTrigger;
float l9_1212=l9_1180;
float2 l9_1213=l9_1210;
float l9_1214=l9_938;
float l9_1215=l9_939;
float l9_1216=l9_948;
float l9_1217=N111_sizeSpeed;
float2 l9_1218=N111_sizeStart.xy;
float2 l9_1219=N111_sizeEnd.xy;
float l9_1220=l9_1216;
float l9_1221=l9_1217;
float l9_1222;
if (l9_1220<=0.0)
{
l9_1222=0.0;
}
else
{
l9_1222=pow(l9_1220,l9_1221);
}
float l9_1223=l9_1222;
float l9_1224=l9_1223;
if (N111_ENABLE_SIZEMINMAX)
{
l9_1218=mix(N111_sizeStartMin.xy,N111_sizeStartMax.xy,float2(l9_1214));
l9_1219=mix(N111_sizeEndMin.xy,N111_sizeEndMax.xy,float2(l9_1215));
}
float2 l9_1225=mix(l9_1218,l9_1219,float2(l9_1224));
if (N111_ENABLE_SIZERAMP)
{
float l9_1226=ceil(l9_1216*10000.0)/10000.0;
float2 l9_1227=tempGlobals.Surface_UVCoord0;
float2 l9_1228=(l9_1227/float2(10000.0,1.0))+float2(l9_1226,0.0);
float2 l9_1229=l9_1228;
float4 l9_1230=float4(0.0);
int l9_1231;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1232=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1232=0;
}
else
{
l9_1232=gl_InstanceIndex%2;
}
int l9_1233=l9_1232;
l9_1231=1-l9_1233;
}
else
{
int l9_1234=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1234=0;
}
else
{
l9_1234=gl_InstanceIndex%2;
}
int l9_1235=l9_1234;
l9_1231=l9_1235;
}
int l9_1236=l9_1231;
int l9_1237=sizeRampTextureLayout_tmp;
int l9_1238=l9_1236;
float2 l9_1239=l9_1229;
bool l9_1240=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_1241=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_1242=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_1243=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_1244=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_1245=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_1246=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_1247=0.0;
bool l9_1248=l9_1245&&(!l9_1243);
float l9_1249=1.0;
float l9_1250=l9_1239.x;
int l9_1251=l9_1242.x;
if (l9_1251==1)
{
l9_1250=fract(l9_1250);
}
else
{
if (l9_1251==2)
{
float l9_1252=fract(l9_1250);
float l9_1253=l9_1250-l9_1252;
float l9_1254=step(0.25,fract(l9_1253*0.5));
l9_1250=mix(l9_1252,1.0-l9_1252,fast::clamp(l9_1254,0.0,1.0));
}
}
l9_1239.x=l9_1250;
float l9_1255=l9_1239.y;
int l9_1256=l9_1242.y;
if (l9_1256==1)
{
l9_1255=fract(l9_1255);
}
else
{
if (l9_1256==2)
{
float l9_1257=fract(l9_1255);
float l9_1258=l9_1255-l9_1257;
float l9_1259=step(0.25,fract(l9_1258*0.5));
l9_1255=mix(l9_1257,1.0-l9_1257,fast::clamp(l9_1259,0.0,1.0));
}
}
l9_1239.y=l9_1255;
if (l9_1243)
{
bool l9_1260=l9_1245;
bool l9_1261;
if (l9_1260)
{
l9_1261=l9_1242.x==3;
}
else
{
l9_1261=l9_1260;
}
float l9_1262=l9_1239.x;
float l9_1263=l9_1244.x;
float l9_1264=l9_1244.z;
bool l9_1265=l9_1261;
float l9_1266=l9_1249;
float l9_1267=fast::clamp(l9_1262,l9_1263,l9_1264);
float l9_1268=step(abs(l9_1262-l9_1267),9.9999997e-06);
l9_1266*=(l9_1268+((1.0-float(l9_1265))*(1.0-l9_1268)));
l9_1262=l9_1267;
l9_1239.x=l9_1262;
l9_1249=l9_1266;
bool l9_1269=l9_1245;
bool l9_1270;
if (l9_1269)
{
l9_1270=l9_1242.y==3;
}
else
{
l9_1270=l9_1269;
}
float l9_1271=l9_1239.y;
float l9_1272=l9_1244.y;
float l9_1273=l9_1244.w;
bool l9_1274=l9_1270;
float l9_1275=l9_1249;
float l9_1276=fast::clamp(l9_1271,l9_1272,l9_1273);
float l9_1277=step(abs(l9_1271-l9_1276),9.9999997e-06);
l9_1275*=(l9_1277+((1.0-float(l9_1274))*(1.0-l9_1277)));
l9_1271=l9_1276;
l9_1239.y=l9_1271;
l9_1249=l9_1275;
}
float2 l9_1278=l9_1239;
bool l9_1279=l9_1240;
float3x3 l9_1280=l9_1241;
if (l9_1279)
{
l9_1278=float2((l9_1280*float3(l9_1278,1.0)).xy);
}
float2 l9_1281=l9_1278;
l9_1239=l9_1281;
float l9_1282=l9_1239.x;
int l9_1283=l9_1242.x;
bool l9_1284=l9_1248;
float l9_1285=l9_1249;
if ((l9_1283==0)||(l9_1283==3))
{
float l9_1286=l9_1282;
float l9_1287=0.0;
float l9_1288=1.0;
bool l9_1289=l9_1284;
float l9_1290=l9_1285;
float l9_1291=fast::clamp(l9_1286,l9_1287,l9_1288);
float l9_1292=step(abs(l9_1286-l9_1291),9.9999997e-06);
l9_1290*=(l9_1292+((1.0-float(l9_1289))*(1.0-l9_1292)));
l9_1286=l9_1291;
l9_1282=l9_1286;
l9_1285=l9_1290;
}
l9_1239.x=l9_1282;
l9_1249=l9_1285;
float l9_1293=l9_1239.y;
int l9_1294=l9_1242.y;
bool l9_1295=l9_1248;
float l9_1296=l9_1249;
if ((l9_1294==0)||(l9_1294==3))
{
float l9_1297=l9_1293;
float l9_1298=0.0;
float l9_1299=1.0;
bool l9_1300=l9_1295;
float l9_1301=l9_1296;
float l9_1302=fast::clamp(l9_1297,l9_1298,l9_1299);
float l9_1303=step(abs(l9_1297-l9_1302),9.9999997e-06);
l9_1301*=(l9_1303+((1.0-float(l9_1300))*(1.0-l9_1303)));
l9_1297=l9_1302;
l9_1293=l9_1297;
l9_1296=l9_1301;
}
l9_1239.y=l9_1293;
l9_1249=l9_1296;
float2 l9_1304=l9_1239;
int l9_1305=l9_1237;
int l9_1306=l9_1238;
float l9_1307=l9_1247;
float2 l9_1308=l9_1304;
int l9_1309=l9_1305;
int l9_1310=l9_1306;
float3 l9_1311=float3(0.0);
if (l9_1309==0)
{
l9_1311=float3(l9_1308,0.0);
}
else
{
if (l9_1309==1)
{
l9_1311=float3(l9_1308.x,(l9_1308.y*0.5)+(0.5-(float(l9_1310)*0.5)),0.0);
}
else
{
l9_1311=float3(l9_1308,float(l9_1310));
}
}
float3 l9_1312=l9_1311;
float3 l9_1313=l9_1312;
float4 l9_1314=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_1313.xy,level(l9_1307));
float4 l9_1315=l9_1314;
if (l9_1245)
{
l9_1315=mix(l9_1246,l9_1315,float4(l9_1249));
}
float4 l9_1316=l9_1315;
l9_1230=l9_1316;
float4 l9_1317=l9_1230;
float2 l9_1318=l9_1317.xy;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1318=float2(1.0);
}
l9_1225=l9_1318*l9_1218;
}
float2 l9_1319=l9_1225;
float2 l9_1320=(((l9_1213-float2(0.5))*(l9_1211*l9_1212))*l9_1319)*l9_1208;
float3 l9_1321=(l9_1170+(l9_1202*l9_1320.x))+(l9_1201*(l9_1320.y*l9_1198));
N111_position=l9_1321;
N111_normal=l9_1192;
}
else
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_1322=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_1323=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_1324=(l9_1322+l9_1323)/float3(2.0);
N111_position-=l9_1324;
}
float3 l9_1325=N111_position;
float3 l9_1326=l9_1153;
float l9_1327=l9_938;
float l9_1328=l9_939;
float l9_1329=l9_948;
float l9_1330=N111_sizeSpeed;
float3 l9_1331=N111_sizeStart;
float3 l9_1332=N111_sizeEnd;
float l9_1333=l9_1329;
float l9_1334=l9_1330;
float l9_1335;
if (l9_1333<=0.0)
{
l9_1335=0.0;
}
else
{
l9_1335=pow(l9_1333,l9_1334);
}
float l9_1336=l9_1335;
float l9_1337=l9_1336;
if (N111_ENABLE_SIZEMINMAX)
{
l9_1331=mix(N111_sizeStartMin,N111_sizeStartMax,float3(l9_1327));
l9_1332=mix(N111_sizeEndMin,N111_sizeEndMax,float3(l9_1328));
}
float3 l9_1338=mix(l9_1331,l9_1332,float3(l9_1337));
if (N111_ENABLE_SIZERAMP)
{
float l9_1339=ceil(l9_1329*10000.0)/10000.0;
float2 l9_1340=tempGlobals.Surface_UVCoord0;
float2 l9_1341=(l9_1340/float2(10000.0,1.0))+float2(l9_1339,0.0);
float2 l9_1342=l9_1341;
float4 l9_1343=float4(0.0);
int l9_1344;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1345=0;
}
else
{
l9_1345=gl_InstanceIndex%2;
}
int l9_1346=l9_1345;
l9_1344=1-l9_1346;
}
else
{
int l9_1347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1347=0;
}
else
{
l9_1347=gl_InstanceIndex%2;
}
int l9_1348=l9_1347;
l9_1344=l9_1348;
}
int l9_1349=l9_1344;
int l9_1350=sizeRampTextureLayout_tmp;
int l9_1351=l9_1349;
float2 l9_1352=l9_1342;
bool l9_1353=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_1354=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_1355=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_1356=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_1357=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_1358=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_1359=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_1360=0.0;
bool l9_1361=l9_1358&&(!l9_1356);
float l9_1362=1.0;
float l9_1363=l9_1352.x;
int l9_1364=l9_1355.x;
if (l9_1364==1)
{
l9_1363=fract(l9_1363);
}
else
{
if (l9_1364==2)
{
float l9_1365=fract(l9_1363);
float l9_1366=l9_1363-l9_1365;
float l9_1367=step(0.25,fract(l9_1366*0.5));
l9_1363=mix(l9_1365,1.0-l9_1365,fast::clamp(l9_1367,0.0,1.0));
}
}
l9_1352.x=l9_1363;
float l9_1368=l9_1352.y;
int l9_1369=l9_1355.y;
if (l9_1369==1)
{
l9_1368=fract(l9_1368);
}
else
{
if (l9_1369==2)
{
float l9_1370=fract(l9_1368);
float l9_1371=l9_1368-l9_1370;
float l9_1372=step(0.25,fract(l9_1371*0.5));
l9_1368=mix(l9_1370,1.0-l9_1370,fast::clamp(l9_1372,0.0,1.0));
}
}
l9_1352.y=l9_1368;
if (l9_1356)
{
bool l9_1373=l9_1358;
bool l9_1374;
if (l9_1373)
{
l9_1374=l9_1355.x==3;
}
else
{
l9_1374=l9_1373;
}
float l9_1375=l9_1352.x;
float l9_1376=l9_1357.x;
float l9_1377=l9_1357.z;
bool l9_1378=l9_1374;
float l9_1379=l9_1362;
float l9_1380=fast::clamp(l9_1375,l9_1376,l9_1377);
float l9_1381=step(abs(l9_1375-l9_1380),9.9999997e-06);
l9_1379*=(l9_1381+((1.0-float(l9_1378))*(1.0-l9_1381)));
l9_1375=l9_1380;
l9_1352.x=l9_1375;
l9_1362=l9_1379;
bool l9_1382=l9_1358;
bool l9_1383;
if (l9_1382)
{
l9_1383=l9_1355.y==3;
}
else
{
l9_1383=l9_1382;
}
float l9_1384=l9_1352.y;
float l9_1385=l9_1357.y;
float l9_1386=l9_1357.w;
bool l9_1387=l9_1383;
float l9_1388=l9_1362;
float l9_1389=fast::clamp(l9_1384,l9_1385,l9_1386);
float l9_1390=step(abs(l9_1384-l9_1389),9.9999997e-06);
l9_1388*=(l9_1390+((1.0-float(l9_1387))*(1.0-l9_1390)));
l9_1384=l9_1389;
l9_1352.y=l9_1384;
l9_1362=l9_1388;
}
float2 l9_1391=l9_1352;
bool l9_1392=l9_1353;
float3x3 l9_1393=l9_1354;
if (l9_1392)
{
l9_1391=float2((l9_1393*float3(l9_1391,1.0)).xy);
}
float2 l9_1394=l9_1391;
l9_1352=l9_1394;
float l9_1395=l9_1352.x;
int l9_1396=l9_1355.x;
bool l9_1397=l9_1361;
float l9_1398=l9_1362;
if ((l9_1396==0)||(l9_1396==3))
{
float l9_1399=l9_1395;
float l9_1400=0.0;
float l9_1401=1.0;
bool l9_1402=l9_1397;
float l9_1403=l9_1398;
float l9_1404=fast::clamp(l9_1399,l9_1400,l9_1401);
float l9_1405=step(abs(l9_1399-l9_1404),9.9999997e-06);
l9_1403*=(l9_1405+((1.0-float(l9_1402))*(1.0-l9_1405)));
l9_1399=l9_1404;
l9_1395=l9_1399;
l9_1398=l9_1403;
}
l9_1352.x=l9_1395;
l9_1362=l9_1398;
float l9_1406=l9_1352.y;
int l9_1407=l9_1355.y;
bool l9_1408=l9_1361;
float l9_1409=l9_1362;
if ((l9_1407==0)||(l9_1407==3))
{
float l9_1410=l9_1406;
float l9_1411=0.0;
float l9_1412=1.0;
bool l9_1413=l9_1408;
float l9_1414=l9_1409;
float l9_1415=fast::clamp(l9_1410,l9_1411,l9_1412);
float l9_1416=step(abs(l9_1410-l9_1415),9.9999997e-06);
l9_1414*=(l9_1416+((1.0-float(l9_1413))*(1.0-l9_1416)));
l9_1410=l9_1415;
l9_1406=l9_1410;
l9_1409=l9_1414;
}
l9_1352.y=l9_1406;
l9_1362=l9_1409;
float2 l9_1417=l9_1352;
int l9_1418=l9_1350;
int l9_1419=l9_1351;
float l9_1420=l9_1360;
float2 l9_1421=l9_1417;
int l9_1422=l9_1418;
int l9_1423=l9_1419;
float3 l9_1424=float3(0.0);
if (l9_1422==0)
{
l9_1424=float3(l9_1421,0.0);
}
else
{
if (l9_1422==1)
{
l9_1424=float3(l9_1421.x,(l9_1421.y*0.5)+(0.5-(float(l9_1423)*0.5)),0.0);
}
else
{
l9_1424=float3(l9_1421,float(l9_1423));
}
}
float3 l9_1425=l9_1424;
float3 l9_1426=l9_1425;
float4 l9_1427=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_1426.xy,level(l9_1420));
float4 l9_1428=l9_1427;
if (l9_1358)
{
l9_1428=mix(l9_1359,l9_1428,float4(l9_1362));
}
float4 l9_1429=l9_1428;
l9_1343=l9_1429;
float4 l9_1430=l9_1343;
float3 l9_1431=l9_1430.xyz;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1431=float3(1.0);
}
l9_1338=l9_1431*l9_1331;
}
float3 l9_1432=l9_1338;
N111_position=(l9_1325*l9_1326)*l9_1432;
if ((N111_dieTrigger<0.5)||(l9_1180<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_1433;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_1433=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_1434=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_1434=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_1434=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_1435=0.001;
float3 l9_1436=l9_1037;
float l9_1437=l9_947-l9_1435;
float3 l9_1438=N111_velocityDrag;
float3 l9_1439=l9_953;
float l9_1440=l9_948-l9_1435;
float3 l9_1441=float3(l9_1437,l9_1437,l9_1437);
float3 l9_1442=l9_1438;
float l9_1443;
if (l9_1441.x<=0.0)
{
l9_1443=0.0;
}
else
{
l9_1443=pow(l9_1441.x,l9_1442.x);
}
float l9_1444=l9_1443;
float l9_1445;
if (l9_1441.y<=0.0)
{
l9_1445=0.0;
}
else
{
l9_1445=pow(l9_1441.y,l9_1442.y);
}
float l9_1446=l9_1445;
float l9_1447;
if (l9_1441.z<=0.0)
{
l9_1447=0.0;
}
else
{
l9_1447=pow(l9_1441.z,l9_1442.z);
}
float3 l9_1448=float3(l9_1444,l9_1446,l9_1447);
float3 l9_1449=l9_1448;
float3 l9_1450=(l9_1436+l9_1439)*l9_1449;
if (N111_ENABLE_VELRAMP)
{
float l9_1451=floor(l9_1440*10000.0)/10000.0;
float2 l9_1452=tempGlobals.Surface_UVCoord0;
float2 l9_1453=(l9_1452/float2(10000.0,1.0))+float2(l9_1451,0.0);
float2 l9_1454=l9_1453;
float4 l9_1455=float4(0.0);
int l9_1456;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1457=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1457=0;
}
else
{
l9_1457=gl_InstanceIndex%2;
}
int l9_1458=l9_1457;
l9_1456=1-l9_1458;
}
else
{
int l9_1459=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1459=0;
}
else
{
l9_1459=gl_InstanceIndex%2;
}
int l9_1460=l9_1459;
l9_1456=l9_1460;
}
int l9_1461=l9_1456;
int l9_1462=velRampTextureLayout_tmp;
int l9_1463=l9_1461;
float2 l9_1464=l9_1454;
bool l9_1465=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_1466=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_1467=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_1468=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_1469=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_1470=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_1471=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_1472=0.0;
bool l9_1473=l9_1470&&(!l9_1468);
float l9_1474=1.0;
float l9_1475=l9_1464.x;
int l9_1476=l9_1467.x;
if (l9_1476==1)
{
l9_1475=fract(l9_1475);
}
else
{
if (l9_1476==2)
{
float l9_1477=fract(l9_1475);
float l9_1478=l9_1475-l9_1477;
float l9_1479=step(0.25,fract(l9_1478*0.5));
l9_1475=mix(l9_1477,1.0-l9_1477,fast::clamp(l9_1479,0.0,1.0));
}
}
l9_1464.x=l9_1475;
float l9_1480=l9_1464.y;
int l9_1481=l9_1467.y;
if (l9_1481==1)
{
l9_1480=fract(l9_1480);
}
else
{
if (l9_1481==2)
{
float l9_1482=fract(l9_1480);
float l9_1483=l9_1480-l9_1482;
float l9_1484=step(0.25,fract(l9_1483*0.5));
l9_1480=mix(l9_1482,1.0-l9_1482,fast::clamp(l9_1484,0.0,1.0));
}
}
l9_1464.y=l9_1480;
if (l9_1468)
{
bool l9_1485=l9_1470;
bool l9_1486;
if (l9_1485)
{
l9_1486=l9_1467.x==3;
}
else
{
l9_1486=l9_1485;
}
float l9_1487=l9_1464.x;
float l9_1488=l9_1469.x;
float l9_1489=l9_1469.z;
bool l9_1490=l9_1486;
float l9_1491=l9_1474;
float l9_1492=fast::clamp(l9_1487,l9_1488,l9_1489);
float l9_1493=step(abs(l9_1487-l9_1492),9.9999997e-06);
l9_1491*=(l9_1493+((1.0-float(l9_1490))*(1.0-l9_1493)));
l9_1487=l9_1492;
l9_1464.x=l9_1487;
l9_1474=l9_1491;
bool l9_1494=l9_1470;
bool l9_1495;
if (l9_1494)
{
l9_1495=l9_1467.y==3;
}
else
{
l9_1495=l9_1494;
}
float l9_1496=l9_1464.y;
float l9_1497=l9_1469.y;
float l9_1498=l9_1469.w;
bool l9_1499=l9_1495;
float l9_1500=l9_1474;
float l9_1501=fast::clamp(l9_1496,l9_1497,l9_1498);
float l9_1502=step(abs(l9_1496-l9_1501),9.9999997e-06);
l9_1500*=(l9_1502+((1.0-float(l9_1499))*(1.0-l9_1502)));
l9_1496=l9_1501;
l9_1464.y=l9_1496;
l9_1474=l9_1500;
}
float2 l9_1503=l9_1464;
bool l9_1504=l9_1465;
float3x3 l9_1505=l9_1466;
if (l9_1504)
{
l9_1503=float2((l9_1505*float3(l9_1503,1.0)).xy);
}
float2 l9_1506=l9_1503;
l9_1464=l9_1506;
float l9_1507=l9_1464.x;
int l9_1508=l9_1467.x;
bool l9_1509=l9_1473;
float l9_1510=l9_1474;
if ((l9_1508==0)||(l9_1508==3))
{
float l9_1511=l9_1507;
float l9_1512=0.0;
float l9_1513=1.0;
bool l9_1514=l9_1509;
float l9_1515=l9_1510;
float l9_1516=fast::clamp(l9_1511,l9_1512,l9_1513);
float l9_1517=step(abs(l9_1511-l9_1516),9.9999997e-06);
l9_1515*=(l9_1517+((1.0-float(l9_1514))*(1.0-l9_1517)));
l9_1511=l9_1516;
l9_1507=l9_1511;
l9_1510=l9_1515;
}
l9_1464.x=l9_1507;
l9_1474=l9_1510;
float l9_1518=l9_1464.y;
int l9_1519=l9_1467.y;
bool l9_1520=l9_1473;
float l9_1521=l9_1474;
if ((l9_1519==0)||(l9_1519==3))
{
float l9_1522=l9_1518;
float l9_1523=0.0;
float l9_1524=1.0;
bool l9_1525=l9_1520;
float l9_1526=l9_1521;
float l9_1527=fast::clamp(l9_1522,l9_1523,l9_1524);
float l9_1528=step(abs(l9_1522-l9_1527),9.9999997e-06);
l9_1526*=(l9_1528+((1.0-float(l9_1525))*(1.0-l9_1528)));
l9_1522=l9_1527;
l9_1518=l9_1522;
l9_1521=l9_1526;
}
l9_1464.y=l9_1518;
l9_1474=l9_1521;
float2 l9_1529=l9_1464;
int l9_1530=l9_1462;
int l9_1531=l9_1463;
float l9_1532=l9_1472;
float2 l9_1533=l9_1529;
int l9_1534=l9_1530;
int l9_1535=l9_1531;
float3 l9_1536=float3(0.0);
if (l9_1534==0)
{
l9_1536=float3(l9_1533,0.0);
}
else
{
if (l9_1534==1)
{
l9_1536=float3(l9_1533.x,(l9_1533.y*0.5)+(0.5-(float(l9_1535)*0.5)),0.0);
}
else
{
l9_1536=float3(l9_1533,float(l9_1535));
}
}
float3 l9_1537=l9_1536;
float3 l9_1538=l9_1537;
float4 l9_1539=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_1538.xy,level(l9_1532));
float4 l9_1540=l9_1539;
if (l9_1470)
{
l9_1540=mix(l9_1471,l9_1540,float4(l9_1474));
}
float4 l9_1541=l9_1540;
l9_1455=l9_1541;
float4 l9_1542=l9_1455;
float3 l9_1543=l9_1542.xyz;
l9_1450=(l9_1436+l9_1439)*l9_1543;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_1450=l9_1436*l9_1449;
}
}
float3 l9_1544=l9_1450;
float3 l9_1545=l9_1544;
float l9_1546=((N111_gravity/2.0)*(l9_947-l9_1435))*(l9_947-l9_1435);
l9_1034.y-=l9_1546;
if (N111_ENABLE_FORCE)
{
float3 l9_1547=float3(((N111_localForce/float3(2.0))*(l9_947-l9_1435))*(l9_947-l9_1435));
l9_1035-=l9_1547;
}
if (N111_WORLDFORCE)
{
float4x4 l9_1548=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1549=l9_1548;
float4 l9_1550=l9_1549[0];
float4 l9_1551=l9_1549[1];
float4 l9_1552=l9_1549[2];
float3x3 l9_1553=float3x3(float3(float3(l9_1550.x,l9_1551.x,l9_1552.x)),float3(float3(l9_1550.y,l9_1551.y,l9_1552.y)),float3(float3(l9_1550.z,l9_1551.z,l9_1552.z)));
float3x3 l9_1554=l9_1553;
l9_1434=(((l9_1036-l9_1545)*l9_1554)+l9_1034)+l9_1035;
}
else
{
if (N111_WORLDSPACE)
{
l9_1434=((l9_1036-l9_1545)+l9_1034)+l9_1035;
}
else
{
float4x4 l9_1555=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1556=l9_1555;
float4 l9_1557=l9_1556[0];
float4 l9_1558=l9_1556[1];
float4 l9_1559=l9_1556[2];
float3x3 l9_1560=float3x3(float3(float3(l9_1557.x,l9_1558.x,l9_1559.x)),float3(float3(l9_1557.y,l9_1558.y,l9_1559.y)),float3(float3(l9_1557.z,l9_1558.z,l9_1559.z)));
float3x3 l9_1561=l9_1560;
l9_1434=(((l9_1036-l9_1545)+l9_1035)+l9_1034)*l9_1561;
}
}
l9_1434=normalize(l9_1434+float3(N111_EPSILON));
}
float3 l9_1562=float3(0.0,0.0,1.0);
float3 l9_1563=cross(l9_1434,l9_1562);
float3 l9_1564=normalize(l9_1563);
float l9_1565=length(l9_1563);
float l9_1566=dot(l9_1562,l9_1434);
float l9_1567=1.0-l9_1566;
l9_1433=float3x3(float3(((l9_1567*l9_1564.x)*l9_1564.x)+l9_1566,((l9_1567*l9_1564.x)*l9_1564.y)-(l9_1564.z*l9_1565),((l9_1567*l9_1564.z)*l9_1564.x)+(l9_1564.y*l9_1565)),float3(((l9_1567*l9_1564.x)*l9_1564.y)+(l9_1564.z*l9_1565),((l9_1567*l9_1564.y)*l9_1564.y)+l9_1566,((l9_1567*l9_1564.y)*l9_1564.z)-(l9_1564.x*l9_1565)),float3(((l9_1567*l9_1564.z)*l9_1564.x)-(l9_1564.y*l9_1565),((l9_1567*l9_1564.y)*l9_1564.z)+(l9_1564.x*l9_1565),((l9_1567*l9_1564.z)*l9_1564.z)+l9_1566));
}
float3x3 l9_1568=float3x3(float3(cos(l9_1179),-sin(l9_1179),0.0),float3(sin(l9_1179),cos(l9_1179),0.0),float3(0.0,0.0,1.0));
l9_1433=l9_1433*l9_1568;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_1569=l9_1161*(l9_947-0.0099999998);
float3 l9_1570=l9_1161*(l9_947+0.0099999998);
N111_position.z*=(length(l9_1570-l9_1569)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_1571=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_1572=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_1571);
float l9_1573=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_1571);
float l9_1574=((l9_1573*l9_1176)*l9_948)*2.0;
float l9_1575=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_1576=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_1575);
float l9_1577=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_1575);
float l9_1578=((l9_1577*l9_1176)*l9_948)*2.0;
float l9_1579=N111_PI*(l9_1574+l9_1572);
float l9_1580=N111_PI*(l9_1578+l9_1576);
float l9_1581=N111_PI*(l9_1178+l9_1171);
float3 l9_1582=float3(l9_1579,l9_1580,l9_1581);
float l9_1583=cos(l9_1582.x);
float l9_1584=sin(l9_1582.x);
float l9_1585=cos(l9_1582.y);
float l9_1586=sin(l9_1582.y);
float l9_1587=cos(l9_1582.z);
float l9_1588=sin(l9_1582.z);
l9_1433=float3x3(float3(l9_1585*l9_1587,(l9_1583*l9_1588)+((l9_1584*l9_1586)*l9_1587),(l9_1584*l9_1588)-((l9_1583*l9_1586)*l9_1587)),float3((-l9_1585)*l9_1588,(l9_1583*l9_1587)-((l9_1584*l9_1586)*l9_1588),(l9_1584*l9_1587)+((l9_1583*l9_1586)*l9_1588)),float3(l9_1586,(-l9_1584)*l9_1585,l9_1583*l9_1585));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_1589=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1590=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_1591=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_1592=float3x3(float3(l9_1589[0].xyz/float3(l9_1153.x)),float3(l9_1590[1].xyz/float3(l9_1153.y)),float3(l9_1591[2].xyz/float3(l9_1153.z)));
l9_1433=l9_1592*l9_1433;
}
N111_position=l9_1433*N111_position;
N111_normal=normalize(l9_1433*N111_normalObjectSpace);
N111_position+=l9_1170;
}
N111_timeValues=float4(l9_946,l9_947,l9_948);
param_233=N111_normal;
normal_N111=param_233;
WorldNormal=normal_N111;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_235=v;
float3 param_236=WorldPosition;
float3 param_237=WorldNormal;
float3 param_238=WorldTangent;
float4 param_239=v.position;
out.varPosAndMotion=float4(param_236.x,param_236.y,param_236.z,out.varPosAndMotion.w);
float3 l9_1593=normalize(param_237);
out.varNormalAndMotion=float4(l9_1593.x,l9_1593.y,l9_1593.z,out.varNormalAndMotion.w);
float3 l9_1594=normalize(param_238);
out.varTangent=float4(l9_1594.x,l9_1594.y,l9_1594.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_1595=param_235.position;
float4 l9_1596=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_1597=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1597=0;
}
else
{
l9_1597=gl_InstanceIndex%2;
}
int l9_1598=l9_1597;
l9_1596=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_1598]*l9_1595;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1599=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1599=0;
}
else
{
l9_1599=gl_InstanceIndex%2;
}
int l9_1600=l9_1599;
l9_1596=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_1600]*l9_1595;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1601=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1601=0;
}
else
{
l9_1601=gl_InstanceIndex%2;
}
int l9_1602=l9_1601;
l9_1596=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1602]*l9_1595;
}
else
{
l9_1596=l9_1595;
}
}
}
float4 l9_1603=l9_1596;
out.varViewSpaceDepth=-l9_1603.z;
}
float4 l9_1604=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_1604=param_239;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_1605=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1605=0;
}
else
{
l9_1605=gl_InstanceIndex%2;
}
int l9_1606=l9_1605;
l9_1604=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1606]*param_235.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1607=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1607=0;
}
else
{
l9_1607=gl_InstanceIndex%2;
}
int l9_1608=l9_1607;
l9_1604=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1608]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1609=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1609=0;
}
else
{
l9_1609=gl_InstanceIndex%2;
}
int l9_1610=l9_1609;
l9_1604=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1610]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_235.texture0,param_235.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_1611=param_235.position;
float4 l9_1612=l9_1611;
if (sc_RenderingSpace_tmp==1)
{
l9_1612=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_1611;
}
float4 l9_1613=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_1612;
float2 l9_1614=((l9_1613.xy/float2(l9_1613.w))*0.5)+float2(0.5);
out.varShadowTex=l9_1614;
}
float4 l9_1615=l9_1604;
if (sc_DepthBufferMode_tmp==1)
{
int l9_1616=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1616=0;
}
else
{
l9_1616=gl_InstanceIndex%2;
}
int l9_1617=l9_1616;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_1617][2].w!=0.0)
{
float l9_1618=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_1615.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_1615.w))*l9_1618)-1.0)*l9_1615.w;
}
}
float4 l9_1619=l9_1615;
l9_1604=l9_1619;
float4 l9_1620=l9_1604;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_1621=l9_1620.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_1620.w);
l9_1620=float4(l9_1621.x,l9_1621.y,l9_1620.z,l9_1620.w);
}
float4 l9_1622=l9_1620;
l9_1604=l9_1622;
float4 l9_1623=l9_1604;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1623.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1624=l9_1623;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1625=dot(l9_1624,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1626=l9_1625;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1626;
}
}
float4 l9_1627=float4(l9_1623.x,-l9_1623.y,(l9_1623.z*0.5)+(l9_1623.w*0.5),l9_1623.w);
out.gl_Position=l9_1627;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_1629=param_235;
sc_Vertex_t l9_1630=l9_1629;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_1631=l9_1630;
float3 l9_1632=in.blendShape0Pos;
float3 l9_1633=in.blendShape0Normal;
float l9_1634=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_1635=l9_1631;
float3 l9_1636=l9_1632;
float l9_1637=l9_1634;
float3 l9_1638=l9_1635.position.xyz+(l9_1636*l9_1637);
l9_1635.position=float4(l9_1638.x,l9_1638.y,l9_1638.z,l9_1635.position.w);
l9_1631=l9_1635;
l9_1631.normal+=(l9_1633*l9_1634);
l9_1630=l9_1631;
sc_Vertex_t l9_1639=l9_1630;
float3 l9_1640=in.blendShape1Pos;
float3 l9_1641=in.blendShape1Normal;
float l9_1642=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_1643=l9_1639;
float3 l9_1644=l9_1640;
float l9_1645=l9_1642;
float3 l9_1646=l9_1643.position.xyz+(l9_1644*l9_1645);
l9_1643.position=float4(l9_1646.x,l9_1646.y,l9_1646.z,l9_1643.position.w);
l9_1639=l9_1643;
l9_1639.normal+=(l9_1641*l9_1642);
l9_1630=l9_1639;
sc_Vertex_t l9_1647=l9_1630;
float3 l9_1648=in.blendShape2Pos;
float3 l9_1649=in.blendShape2Normal;
float l9_1650=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_1651=l9_1647;
float3 l9_1652=l9_1648;
float l9_1653=l9_1650;
float3 l9_1654=l9_1651.position.xyz+(l9_1652*l9_1653);
l9_1651.position=float4(l9_1654.x,l9_1654.y,l9_1654.z,l9_1651.position.w);
l9_1647=l9_1651;
l9_1647.normal+=(l9_1649*l9_1650);
l9_1630=l9_1647;
}
else
{
sc_Vertex_t l9_1655=l9_1630;
float3 l9_1656=in.blendShape0Pos;
float l9_1657=(*sc_set0.UserUniforms).weights0.x;
float3 l9_1658=l9_1655.position.xyz+(l9_1656*l9_1657);
l9_1655.position=float4(l9_1658.x,l9_1658.y,l9_1658.z,l9_1655.position.w);
l9_1630=l9_1655;
sc_Vertex_t l9_1659=l9_1630;
float3 l9_1660=in.blendShape1Pos;
float l9_1661=(*sc_set0.UserUniforms).weights0.y;
float3 l9_1662=l9_1659.position.xyz+(l9_1660*l9_1661);
l9_1659.position=float4(l9_1662.x,l9_1662.y,l9_1662.z,l9_1659.position.w);
l9_1630=l9_1659;
sc_Vertex_t l9_1663=l9_1630;
float3 l9_1664=in.blendShape2Pos;
float l9_1665=(*sc_set0.UserUniforms).weights0.z;
float3 l9_1666=l9_1663.position.xyz+(l9_1664*l9_1665);
l9_1663.position=float4(l9_1666.x,l9_1666.y,l9_1666.z,l9_1663.position.w);
l9_1630=l9_1663;
sc_Vertex_t l9_1667=l9_1630;
float3 l9_1668=in.blendShape3Pos;
float l9_1669=(*sc_set0.UserUniforms).weights0.w;
float3 l9_1670=l9_1667.position.xyz+(l9_1668*l9_1669);
l9_1667.position=float4(l9_1670.x,l9_1670.y,l9_1670.z,l9_1667.position.w);
l9_1630=l9_1667;
sc_Vertex_t l9_1671=l9_1630;
float3 l9_1672=in.blendShape4Pos;
float l9_1673=(*sc_set0.UserUniforms).weights1.x;
float3 l9_1674=l9_1671.position.xyz+(l9_1672*l9_1673);
l9_1671.position=float4(l9_1674.x,l9_1674.y,l9_1674.z,l9_1671.position.w);
l9_1630=l9_1671;
sc_Vertex_t l9_1675=l9_1630;
float3 l9_1676=in.blendShape5Pos;
float l9_1677=(*sc_set0.UserUniforms).weights1.y;
float3 l9_1678=l9_1675.position.xyz+(l9_1676*l9_1677);
l9_1675.position=float4(l9_1678.x,l9_1678.y,l9_1678.z,l9_1675.position.w);
l9_1630=l9_1675;
}
}
l9_1629=l9_1630;
sc_Vertex_t l9_1679=l9_1629;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_1680=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_1680=float4(1.0,fract(in.boneData.yzw));
l9_1680.x-=dot(l9_1680.yzw,float3(1.0));
}
float4 l9_1681=l9_1680;
float4 l9_1682=l9_1681;
int l9_1683=int(in.boneData.x);
int l9_1684=int(in.boneData.y);
int l9_1685=int(in.boneData.z);
int l9_1686=int(in.boneData.w);
int l9_1687=l9_1683;
float4 l9_1688=l9_1679.position;
float3 l9_1689=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1690=l9_1687;
float4 l9_1691=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1690].boneMatrix[0];
float4 l9_1692=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1690].boneMatrix[1];
float4 l9_1693=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1690].boneMatrix[2];
float4 l9_1694[3];
l9_1694[0]=l9_1691;
l9_1694[1]=l9_1692;
l9_1694[2]=l9_1693;
l9_1689=float3(dot(l9_1688,l9_1694[0]),dot(l9_1688,l9_1694[1]),dot(l9_1688,l9_1694[2]));
}
else
{
l9_1689=l9_1688.xyz;
}
float3 l9_1695=l9_1689;
float3 l9_1696=l9_1695;
float l9_1697=l9_1682.x;
int l9_1698=l9_1684;
float4 l9_1699=l9_1679.position;
float3 l9_1700=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1701=l9_1698;
float4 l9_1702=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1701].boneMatrix[0];
float4 l9_1703=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1701].boneMatrix[1];
float4 l9_1704=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1701].boneMatrix[2];
float4 l9_1705[3];
l9_1705[0]=l9_1702;
l9_1705[1]=l9_1703;
l9_1705[2]=l9_1704;
l9_1700=float3(dot(l9_1699,l9_1705[0]),dot(l9_1699,l9_1705[1]),dot(l9_1699,l9_1705[2]));
}
else
{
l9_1700=l9_1699.xyz;
}
float3 l9_1706=l9_1700;
float3 l9_1707=l9_1706;
float l9_1708=l9_1682.y;
int l9_1709=l9_1685;
float4 l9_1710=l9_1679.position;
float3 l9_1711=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1712=l9_1709;
float4 l9_1713=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1712].boneMatrix[0];
float4 l9_1714=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1712].boneMatrix[1];
float4 l9_1715=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1712].boneMatrix[2];
float4 l9_1716[3];
l9_1716[0]=l9_1713;
l9_1716[1]=l9_1714;
l9_1716[2]=l9_1715;
l9_1711=float3(dot(l9_1710,l9_1716[0]),dot(l9_1710,l9_1716[1]),dot(l9_1710,l9_1716[2]));
}
else
{
l9_1711=l9_1710.xyz;
}
float3 l9_1717=l9_1711;
float3 l9_1718=l9_1717;
float l9_1719=l9_1682.z;
int l9_1720=l9_1686;
float4 l9_1721=l9_1679.position;
float3 l9_1722=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1723=l9_1720;
float4 l9_1724=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1723].boneMatrix[0];
float4 l9_1725=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1723].boneMatrix[1];
float4 l9_1726=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1723].boneMatrix[2];
float4 l9_1727[3];
l9_1727[0]=l9_1724;
l9_1727[1]=l9_1725;
l9_1727[2]=l9_1726;
l9_1722=float3(dot(l9_1721,l9_1727[0]),dot(l9_1721,l9_1727[1]),dot(l9_1721,l9_1727[2]));
}
else
{
l9_1722=l9_1721.xyz;
}
float3 l9_1728=l9_1722;
float3 l9_1729=(((l9_1696*l9_1697)+(l9_1707*l9_1708))+(l9_1718*l9_1719))+(l9_1728*l9_1682.w);
l9_1679.position=float4(l9_1729.x,l9_1729.y,l9_1729.z,l9_1679.position.w);
int l9_1730=l9_1683;
float3x3 l9_1731=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1730].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1730].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1730].normalMatrix[2].xyz));
float3x3 l9_1732=l9_1731;
float3x3 l9_1733=l9_1732;
int l9_1734=l9_1684;
float3x3 l9_1735=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1734].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1734].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1734].normalMatrix[2].xyz));
float3x3 l9_1736=l9_1735;
float3x3 l9_1737=l9_1736;
int l9_1738=l9_1685;
float3x3 l9_1739=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1738].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1738].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1738].normalMatrix[2].xyz));
float3x3 l9_1740=l9_1739;
float3x3 l9_1741=l9_1740;
int l9_1742=l9_1686;
float3x3 l9_1743=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1742].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1742].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1742].normalMatrix[2].xyz));
float3x3 l9_1744=l9_1743;
float3x3 l9_1745=l9_1744;
l9_1679.normal=((((l9_1733*l9_1679.normal)*l9_1682.x)+((l9_1737*l9_1679.normal)*l9_1682.y))+((l9_1741*l9_1679.normal)*l9_1682.z))+((l9_1745*l9_1679.normal)*l9_1682.w);
l9_1679.tangent=((((l9_1733*l9_1679.tangent)*l9_1682.x)+((l9_1737*l9_1679.tangent)*l9_1682.y))+((l9_1741*l9_1679.tangent)*l9_1682.z))+((l9_1745*l9_1679.tangent)*l9_1682.w);
}
l9_1629=l9_1679;
float l9_1746=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_1747=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_1748=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_1749=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_1750=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_1751=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_1752=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_1753=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_1754=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_1755=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_1756=l9_1746/l9_1747;
int l9_1757=gl_InstanceIndex;
int l9_1758=l9_1757;
l9_1629.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_1629.position;
float3 l9_1759=l9_1629.position.xyz;
float3 l9_1760=float3(float(l9_1758%int(l9_1748))*l9_1746,float(l9_1758/int(l9_1748))*l9_1746,(float(l9_1758)*l9_1756)+l9_1753);
float3 l9_1761=l9_1759+l9_1760;
float4 l9_1762=float4(l9_1761-l9_1755,1.0);
float l9_1763=l9_1749;
float l9_1764=l9_1750;
float l9_1765=l9_1751;
float l9_1766=l9_1752;
float l9_1767=l9_1753;
float l9_1768=l9_1754;
float4x4 l9_1769=float4x4(float4(2.0/(l9_1764-l9_1763),0.0,0.0,(-(l9_1764+l9_1763))/(l9_1764-l9_1763)),float4(0.0,2.0/(l9_1766-l9_1765),0.0,(-(l9_1766+l9_1765))/(l9_1766-l9_1765)),float4(0.0,0.0,(-2.0)/(l9_1768-l9_1767),(-(l9_1768+l9_1767))/(l9_1768-l9_1767)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_1770=l9_1769;
float4 l9_1771=l9_1770*l9_1762;
l9_1771.w=1.0;
out.varScreenPos=l9_1771;
float4 l9_1772=l9_1771*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1772.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1773=l9_1772;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1774=dot(l9_1773,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1775=l9_1774;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1775;
}
}
float4 l9_1776=float4(l9_1772.x,-l9_1772.y,(l9_1772.z*0.5)+(l9_1772.w*0.5),l9_1772.w);
out.gl_Position=l9_1776;
param_235=l9_1629;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_1777=param_235;
sc_Vertex_t l9_1778=l9_1777;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_1779=l9_1778;
float3 l9_1780=in.blendShape0Pos;
float3 l9_1781=in.blendShape0Normal;
float l9_1782=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_1783=l9_1779;
float3 l9_1784=l9_1780;
float l9_1785=l9_1782;
float3 l9_1786=l9_1783.position.xyz+(l9_1784*l9_1785);
l9_1783.position=float4(l9_1786.x,l9_1786.y,l9_1786.z,l9_1783.position.w);
l9_1779=l9_1783;
l9_1779.normal+=(l9_1781*l9_1782);
l9_1778=l9_1779;
sc_Vertex_t l9_1787=l9_1778;
float3 l9_1788=in.blendShape1Pos;
float3 l9_1789=in.blendShape1Normal;
float l9_1790=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_1791=l9_1787;
float3 l9_1792=l9_1788;
float l9_1793=l9_1790;
float3 l9_1794=l9_1791.position.xyz+(l9_1792*l9_1793);
l9_1791.position=float4(l9_1794.x,l9_1794.y,l9_1794.z,l9_1791.position.w);
l9_1787=l9_1791;
l9_1787.normal+=(l9_1789*l9_1790);
l9_1778=l9_1787;
sc_Vertex_t l9_1795=l9_1778;
float3 l9_1796=in.blendShape2Pos;
float3 l9_1797=in.blendShape2Normal;
float l9_1798=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_1799=l9_1795;
float3 l9_1800=l9_1796;
float l9_1801=l9_1798;
float3 l9_1802=l9_1799.position.xyz+(l9_1800*l9_1801);
l9_1799.position=float4(l9_1802.x,l9_1802.y,l9_1802.z,l9_1799.position.w);
l9_1795=l9_1799;
l9_1795.normal+=(l9_1797*l9_1798);
l9_1778=l9_1795;
}
else
{
sc_Vertex_t l9_1803=l9_1778;
float3 l9_1804=in.blendShape0Pos;
float l9_1805=(*sc_set0.UserUniforms).weights0.x;
float3 l9_1806=l9_1803.position.xyz+(l9_1804*l9_1805);
l9_1803.position=float4(l9_1806.x,l9_1806.y,l9_1806.z,l9_1803.position.w);
l9_1778=l9_1803;
sc_Vertex_t l9_1807=l9_1778;
float3 l9_1808=in.blendShape1Pos;
float l9_1809=(*sc_set0.UserUniforms).weights0.y;
float3 l9_1810=l9_1807.position.xyz+(l9_1808*l9_1809);
l9_1807.position=float4(l9_1810.x,l9_1810.y,l9_1810.z,l9_1807.position.w);
l9_1778=l9_1807;
sc_Vertex_t l9_1811=l9_1778;
float3 l9_1812=in.blendShape2Pos;
float l9_1813=(*sc_set0.UserUniforms).weights0.z;
float3 l9_1814=l9_1811.position.xyz+(l9_1812*l9_1813);
l9_1811.position=float4(l9_1814.x,l9_1814.y,l9_1814.z,l9_1811.position.w);
l9_1778=l9_1811;
sc_Vertex_t l9_1815=l9_1778;
float3 l9_1816=in.blendShape3Pos;
float l9_1817=(*sc_set0.UserUniforms).weights0.w;
float3 l9_1818=l9_1815.position.xyz+(l9_1816*l9_1817);
l9_1815.position=float4(l9_1818.x,l9_1818.y,l9_1818.z,l9_1815.position.w);
l9_1778=l9_1815;
sc_Vertex_t l9_1819=l9_1778;
float3 l9_1820=in.blendShape4Pos;
float l9_1821=(*sc_set0.UserUniforms).weights1.x;
float3 l9_1822=l9_1819.position.xyz+(l9_1820*l9_1821);
l9_1819.position=float4(l9_1822.x,l9_1822.y,l9_1822.z,l9_1819.position.w);
l9_1778=l9_1819;
sc_Vertex_t l9_1823=l9_1778;
float3 l9_1824=in.blendShape5Pos;
float l9_1825=(*sc_set0.UserUniforms).weights1.y;
float3 l9_1826=l9_1823.position.xyz+(l9_1824*l9_1825);
l9_1823.position=float4(l9_1826.x,l9_1826.y,l9_1826.z,l9_1823.position.w);
l9_1778=l9_1823;
}
}
l9_1777=l9_1778;
sc_Vertex_t l9_1827=l9_1777;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_1828=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_1828=float4(1.0,fract(in.boneData.yzw));
l9_1828.x-=dot(l9_1828.yzw,float3(1.0));
}
float4 l9_1829=l9_1828;
float4 l9_1830=l9_1829;
int l9_1831=int(in.boneData.x);
int l9_1832=int(in.boneData.y);
int l9_1833=int(in.boneData.z);
int l9_1834=int(in.boneData.w);
int l9_1835=l9_1831;
float4 l9_1836=l9_1827.position;
float3 l9_1837=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1838=l9_1835;
float4 l9_1839=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1838].boneMatrix[0];
float4 l9_1840=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1838].boneMatrix[1];
float4 l9_1841=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1838].boneMatrix[2];
float4 l9_1842[3];
l9_1842[0]=l9_1839;
l9_1842[1]=l9_1840;
l9_1842[2]=l9_1841;
l9_1837=float3(dot(l9_1836,l9_1842[0]),dot(l9_1836,l9_1842[1]),dot(l9_1836,l9_1842[2]));
}
else
{
l9_1837=l9_1836.xyz;
}
float3 l9_1843=l9_1837;
float3 l9_1844=l9_1843;
float l9_1845=l9_1830.x;
int l9_1846=l9_1832;
float4 l9_1847=l9_1827.position;
float3 l9_1848=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1849=l9_1846;
float4 l9_1850=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1849].boneMatrix[0];
float4 l9_1851=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1849].boneMatrix[1];
float4 l9_1852=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1849].boneMatrix[2];
float4 l9_1853[3];
l9_1853[0]=l9_1850;
l9_1853[1]=l9_1851;
l9_1853[2]=l9_1852;
l9_1848=float3(dot(l9_1847,l9_1853[0]),dot(l9_1847,l9_1853[1]),dot(l9_1847,l9_1853[2]));
}
else
{
l9_1848=l9_1847.xyz;
}
float3 l9_1854=l9_1848;
float3 l9_1855=l9_1854;
float l9_1856=l9_1830.y;
int l9_1857=l9_1833;
float4 l9_1858=l9_1827.position;
float3 l9_1859=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1860=l9_1857;
float4 l9_1861=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1860].boneMatrix[0];
float4 l9_1862=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1860].boneMatrix[1];
float4 l9_1863=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1860].boneMatrix[2];
float4 l9_1864[3];
l9_1864[0]=l9_1861;
l9_1864[1]=l9_1862;
l9_1864[2]=l9_1863;
l9_1859=float3(dot(l9_1858,l9_1864[0]),dot(l9_1858,l9_1864[1]),dot(l9_1858,l9_1864[2]));
}
else
{
l9_1859=l9_1858.xyz;
}
float3 l9_1865=l9_1859;
float3 l9_1866=l9_1865;
float l9_1867=l9_1830.z;
int l9_1868=l9_1834;
float4 l9_1869=l9_1827.position;
float3 l9_1870=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_1871=l9_1868;
float4 l9_1872=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1871].boneMatrix[0];
float4 l9_1873=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1871].boneMatrix[1];
float4 l9_1874=(*sc_set0.sc_BonesUBO).sc_Bones[l9_1871].boneMatrix[2];
float4 l9_1875[3];
l9_1875[0]=l9_1872;
l9_1875[1]=l9_1873;
l9_1875[2]=l9_1874;
l9_1870=float3(dot(l9_1869,l9_1875[0]),dot(l9_1869,l9_1875[1]),dot(l9_1869,l9_1875[2]));
}
else
{
l9_1870=l9_1869.xyz;
}
float3 l9_1876=l9_1870;
float3 l9_1877=(((l9_1844*l9_1845)+(l9_1855*l9_1856))+(l9_1866*l9_1867))+(l9_1876*l9_1830.w);
l9_1827.position=float4(l9_1877.x,l9_1877.y,l9_1877.z,l9_1827.position.w);
int l9_1878=l9_1831;
float3x3 l9_1879=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1878].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1878].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1878].normalMatrix[2].xyz));
float3x3 l9_1880=l9_1879;
float3x3 l9_1881=l9_1880;
int l9_1882=l9_1832;
float3x3 l9_1883=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1882].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1882].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1882].normalMatrix[2].xyz));
float3x3 l9_1884=l9_1883;
float3x3 l9_1885=l9_1884;
int l9_1886=l9_1833;
float3x3 l9_1887=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1886].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1886].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1886].normalMatrix[2].xyz));
float3x3 l9_1888=l9_1887;
float3x3 l9_1889=l9_1888;
int l9_1890=l9_1834;
float3x3 l9_1891=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1890].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1890].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_1890].normalMatrix[2].xyz));
float3x3 l9_1892=l9_1891;
float3x3 l9_1893=l9_1892;
l9_1827.normal=((((l9_1881*l9_1827.normal)*l9_1830.x)+((l9_1885*l9_1827.normal)*l9_1830.y))+((l9_1889*l9_1827.normal)*l9_1830.z))+((l9_1893*l9_1827.normal)*l9_1830.w);
l9_1827.tangent=((((l9_1881*l9_1827.tangent)*l9_1830.x)+((l9_1885*l9_1827.tangent)*l9_1830.y))+((l9_1889*l9_1827.tangent)*l9_1830.z))+((l9_1893*l9_1827.tangent)*l9_1830.w);
}
l9_1777=l9_1827;
float3 l9_1894=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_1895=((l9_1777.position.xy/float2(l9_1777.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_1895.x,l9_1895.y,out.varTex01.z,out.varTex01.w);
l9_1777.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_1777.position;
float3 l9_1896=l9_1777.position.xyz-l9_1894;
l9_1777.position=float4(l9_1896.x,l9_1896.y,l9_1896.z,l9_1777.position.w);
out.varPosAndMotion=float4(l9_1777.position.xyz.x,l9_1777.position.xyz.y,l9_1777.position.xyz.z,out.varPosAndMotion.w);
float3 l9_1897=normalize(l9_1777.normal);
out.varNormalAndMotion=float4(l9_1897.x,l9_1897.y,l9_1897.z,out.varNormalAndMotion.w);
float l9_1898=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_1899=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_1900=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_1901=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_1902=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_1903=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_1904=l9_1898;
float l9_1905=l9_1899;
float l9_1906=l9_1900;
float l9_1907=l9_1901;
float l9_1908=l9_1902;
float l9_1909=l9_1903;
float4x4 l9_1910=float4x4(float4(2.0/(l9_1905-l9_1904),0.0,0.0,(-(l9_1905+l9_1904))/(l9_1905-l9_1904)),float4(0.0,2.0/(l9_1907-l9_1906),0.0,(-(l9_1907+l9_1906))/(l9_1907-l9_1906)),float4(0.0,0.0,(-2.0)/(l9_1909-l9_1908),(-(l9_1909+l9_1908))/(l9_1909-l9_1908)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_1911=l9_1910;
float4 l9_1912=float4(0.0);
float3 l9_1913=(l9_1911*l9_1777.position).xyz;
l9_1912=float4(l9_1913.x,l9_1913.y,l9_1913.z,l9_1912.w);
l9_1912.w=1.0;
out.varScreenPos=l9_1912;
float4 l9_1914=l9_1912*1.0;
float4 l9_1915=l9_1914;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1915.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1916=l9_1915;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1917=dot(l9_1916,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1918=l9_1917;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1918;
}
}
float4 l9_1919=float4(l9_1915.x,-l9_1915.y,(l9_1915.z*0.5)+(l9_1915.w*0.5),l9_1915.w);
out.gl_Position=l9_1919;
param_235=l9_1777;
}
}
v=param_235;
out.Interpolator_gInstanceID=Globals.gInstanceID;
ssGlobals param_240=Globals;
float l9_1920=0.0;
float l9_1921=0.0;
float l9_1922=(*sc_set0.UserUniforms).timeGlobal;
l9_1921=l9_1922;
float l9_1923=0.0;
float l9_1924=(*sc_set0.UserUniforms).externalTimeInput;
l9_1923=l9_1924;
float l9_1925=0.0;
float l9_1926=(*sc_set0.UserUniforms).externalSeed;
l9_1925=l9_1926;
float l9_1927=0.0;
float l9_1928=(*sc_set0.UserUniforms).lifeTimeConstant;
l9_1927=l9_1928;
float2 l9_1929=float2(0.0);
float2 l9_1930=(*sc_set0.UserUniforms).lifeTimeMinMax;
l9_1929=l9_1930;
float l9_1931=0.0;
float l9_1932=(*sc_set0.UserUniforms).spawnDuration;
l9_1931=l9_1932;
float3 l9_1933=float3(0.0);
float l9_1934=0.0;
float l9_1935=0.0;
float4 l9_1936=float4(0.0);
float l9_1937=l9_1921;
float l9_1938=l9_1923;
float l9_1939=l9_1925;
float l9_1940=l9_1927;
float2 l9_1941=l9_1929;
float l9_1942=l9_1931;
ssGlobals l9_1943=param_240;
tempGlobals=l9_1943;
float3 l9_1944=float3(0.0);
float l9_1945=0.0;
float l9_1946=0.0;
float4 l9_1947=float4(0.0);
N173_timeGlobal=l9_1937;
N173_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N173_externalTime=l9_1938;
N173_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N173_externalSeed=l9_1939;
N173_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N173_lifeTimeConstant=l9_1940;
N173_lifeTimeMinMax=l9_1941;
N173_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N173_spawnDuration=l9_1942;
float l9_1948=0.0;
if (N173_ENABLE_WORLDPOSSEED)
{
float4x4 l9_1949=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1948=length(float4(1.0)*l9_1949);
}
N173_globalSeed=N173_externalSeed+l9_1948;
float l9_1950=2000.0;
int l9_1951=0;
l9_1951=ssInstanceID;
int l9_1952=l9_1951;
float l9_1953=float(l9_1952);
float2 l9_1954=float2(mod(l9_1953,l9_1950),floor(l9_1953/l9_1950));
l9_1954/=float2(l9_1950);
float2 l9_1955=l9_1954;
float l9_1956=dot(l9_1955,float2(0.38253,0.42662001));
float3 l9_1957=float3(0.457831,0.62343299,0.97625297)*l9_1956;
l9_1957=sin(l9_1957)*float3(479.371,389.53101,513.03497);
l9_1957=fract(l9_1957);
l9_1957=floor(l9_1957*10000.0)*9.9999997e-05;
float3 l9_1958=l9_1957;
float3 l9_1959=l9_1958;
N173_particleSeed=l9_1959;
float l9_1960=fract((N173_particleSeed.y*12.12358)+N173_globalSeed);
float l9_1961=fract((N173_particleSeed.z*3.5358)+N173_globalSeed);
float2 l9_1962=float2(N173_lifeTimeConstant);
if (N173_ENABLE_LIFETIMEMINMAX)
{
l9_1962=N173_lifeTimeMinMax;
}
float l9_1963=fast::max(l9_1962.x,0.0099999998);
float l9_1964=fast::max(l9_1962.y,0.0099999998);
float l9_1965=tempGlobals.gTimeElapsed;
float l9_1966=l9_1965;
if (N173_ENABLE_EXTERNALTIME)
{
l9_1966=N173_externalTime;
}
float l9_1967=l9_1966;
if (N173_ENABLE_INSTANTSPAWN)
{
l9_1967=N173_timeGlobal*l9_1966;
}
else
{
float l9_1968=fract(((l9_1966*N173_timeGlobal)*(1.0/l9_1962.y))+l9_1960);
l9_1967=l9_1968*l9_1962.y;
}
float l9_1969=mix(l9_1967/l9_1963,l9_1967/l9_1964,l9_1961);
float l9_1970=fast::clamp(l9_1969,0.0,1.0);
float l9_1971=0.0;
if (!N173_ENABLE_INSTANTSPAWN)
{
if (N173_spawnDuration>0.0)
{
if ((l9_1966-N173_spawnDuration)>=l9_1967)
{
l9_1971=1.0;
}
}
}
float l9_1972=l9_1969+l9_1971;
N173_dieTrigger=1.0;
if (l9_1972>0.99989998)
{
N173_dieTrigger=0.0;
}
N173_timeValues=float4(l9_1962,l9_1967,l9_1970);
l9_1944=N173_particleSeed;
l9_1945=N173_globalSeed;
l9_1946=N173_dieTrigger;
l9_1947=N173_timeValues;
l9_1933=l9_1944;
l9_1934=l9_1945;
l9_1935=l9_1946;
l9_1936=l9_1947;
float3 l9_1973=float3(0.0);
l9_1973=param_240.SurfacePosition_ObjectSpace;
float3 l9_1974=float3(0.0);
l9_1974=param_240.VertexNormal_ObjectSpace;
float3 l9_1975=float3(0.0);
float3 l9_1976=(*sc_set0.UserUniforms).spawnLocation;
l9_1975=l9_1976;
float3 l9_1977=float3(0.0);
float3 l9_1978=(*sc_set0.UserUniforms).spawnBox;
l9_1977=l9_1978;
float3 l9_1979=float3(0.0);
float3 l9_1980=(*sc_set0.UserUniforms).spawnSphere;
l9_1979=l9_1980;
float3 l9_1981=float3(0.0);
float3 l9_1982=(*sc_set0.UserUniforms).noiseMult;
l9_1981=l9_1982;
float3 l9_1983=float3(0.0);
float3 l9_1984=(*sc_set0.UserUniforms).noiseFrequency;
l9_1983=l9_1984;
float3 l9_1985=float3(0.0);
float3 l9_1986=(*sc_set0.UserUniforms).sNoiseMult;
l9_1985=l9_1986;
float3 l9_1987=float3(0.0);
float3 l9_1988=(*sc_set0.UserUniforms).sNoiseFrequency;
l9_1987=l9_1988;
float3 l9_1989=float3(0.0);
float3 l9_1990=(*sc_set0.UserUniforms).velocityMin;
l9_1989=l9_1990;
float3 l9_1991=float3(0.0);
float3 l9_1992=(*sc_set0.UserUniforms).velocityMax;
l9_1991=l9_1992;
float3 l9_1993=float3(0.0);
float3 l9_1994=(*sc_set0.UserUniforms).velocityDrag;
l9_1993=l9_1994;
float3 l9_1995=float3(0.0);
float3 l9_1996=float3(0.0);
float3 l9_1997=float3(0.0);
float3 l9_1998;
if (MESHTYPE_tmp==0)
{
float2 l9_1999=float2(0.0);
float2 l9_2000=(*sc_set0.UserUniforms).sizeStart;
l9_1999=l9_2000;
l9_1996=float3(l9_1999,0.0);
l9_1998=l9_1996;
}
else
{
float3 l9_2001=float3(0.0);
float3 l9_2002=(*sc_set0.UserUniforms).sizeStart3D;
l9_2001=l9_2002;
l9_1997=l9_2001;
l9_1998=l9_1997;
}
l9_1995=l9_1998;
float3 l9_2003=float3(0.0);
float3 l9_2004=float3(0.0);
float3 l9_2005=float3(0.0);
float3 l9_2006;
if (MESHTYPE_tmp==0)
{
float2 l9_2007=float2(0.0);
float2 l9_2008=(*sc_set0.UserUniforms).sizeEnd;
l9_2007=l9_2008;
l9_2004=float3(l9_2007,0.0);
l9_2006=l9_2004;
}
else
{
float3 l9_2009=float3(0.0);
float3 l9_2010=(*sc_set0.UserUniforms).sizeEnd3D;
l9_2009=l9_2010;
l9_2005=l9_2009;
l9_2006=l9_2005;
}
l9_2003=l9_2006;
float3 l9_2011=float3(0.0);
float3 l9_2012=float3(0.0);
float3 l9_2013=float3(0.0);
float3 l9_2014;
if (MESHTYPE_tmp==0)
{
float2 l9_2015=float2(0.0);
float2 l9_2016=(*sc_set0.UserUniforms).sizeStartMin;
l9_2015=l9_2016;
l9_2012=float3(l9_2015,0.0);
l9_2014=l9_2012;
}
else
{
float3 l9_2017=float3(0.0);
float3 l9_2018=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_2017=l9_2018;
l9_2013=l9_2017;
l9_2014=l9_2013;
}
l9_2011=l9_2014;
float3 l9_2019=float3(0.0);
float3 l9_2020=float3(0.0);
float3 l9_2021=float3(0.0);
float3 l9_2022;
if (MESHTYPE_tmp==0)
{
float2 l9_2023=float2(0.0);
float2 l9_2024=(*sc_set0.UserUniforms).sizeStartMax;
l9_2023=l9_2024;
l9_2020=float3(l9_2023,0.0);
l9_2022=l9_2020;
}
else
{
float3 l9_2025=float3(0.0);
float3 l9_2026=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_2025=l9_2026;
l9_2021=l9_2025;
l9_2022=l9_2021;
}
l9_2019=l9_2022;
float3 l9_2027=float3(0.0);
float3 l9_2028=float3(0.0);
float3 l9_2029=float3(0.0);
float3 l9_2030;
if (MESHTYPE_tmp==0)
{
float2 l9_2031=float2(0.0);
float2 l9_2032=(*sc_set0.UserUniforms).sizeEndMin;
l9_2031=l9_2032;
l9_2028=float3(l9_2031,0.0);
l9_2030=l9_2028;
}
else
{
float3 l9_2033=float3(0.0);
float3 l9_2034=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_2033=l9_2034;
l9_2029=l9_2033;
l9_2030=l9_2029;
}
l9_2027=l9_2030;
float3 l9_2035=float3(0.0);
float3 l9_2036=float3(0.0);
float3 l9_2037=float3(0.0);
float3 l9_2038;
if (MESHTYPE_tmp==0)
{
float2 l9_2039=float2(0.0);
float2 l9_2040=(*sc_set0.UserUniforms).sizeEndMax;
l9_2039=l9_2040;
l9_2036=float3(l9_2039,0.0);
l9_2038=l9_2036;
}
else
{
float3 l9_2041=float3(0.0);
float3 l9_2042=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_2041=l9_2042;
l9_2037=l9_2041;
l9_2038=l9_2037;
}
l9_2035=l9_2038;
float l9_2043=0.0;
float l9_2044=(*sc_set0.UserUniforms).sizeSpeed;
l9_2043=l9_2044;
float l9_2045=0.0;
float l9_2046=(*sc_set0.UserUniforms).gravity;
l9_2045=l9_2046;
float3 l9_2047=float3(0.0);
float3 l9_2048=(*sc_set0.UserUniforms).localForce;
l9_2047=l9_2048;
float l9_2049=0.0;
float l9_2050=(*sc_set0.UserUniforms).sizeVelScale;
l9_2049=l9_2050;
float l9_2051=0.0;
float l9_2052=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
l9_2051=l9_2052;
float l9_2053=0.0;
float l9_2054=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
l9_2053=l9_2054;
float l9_2055=0.0;
float l9_2056=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
l9_2055=l9_2056;
float2 l9_2057=float2(0.0);
float2 l9_2058=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 l9_2059=float2(0.0);
float2 l9_2060;
if (MESHTYPE_tmp==0)
{
l9_2060=l9_2058;
}
else
{
float2 l9_2061=float2(0.0);
float2 l9_2062=(*sc_set0.UserUniforms).rotationRandomX;
l9_2061=l9_2062;
l9_2059=l9_2061;
l9_2060=l9_2059;
}
l9_2057=l9_2060;
float2 l9_2063=float2(0.0);
float2 l9_2064=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 l9_2065=float2(0.0);
float2 l9_2066;
if (MESHTYPE_tmp==0)
{
l9_2066=l9_2064;
}
else
{
float2 l9_2067=float2(0.0);
float2 l9_2068=(*sc_set0.UserUniforms).rotationRateX;
l9_2067=l9_2068;
l9_2065=l9_2067;
l9_2066=l9_2065;
}
l9_2063=l9_2066;
float2 l9_2069=float2(0.0);
float2 l9_2070=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 l9_2071=float2(0.0);
float2 l9_2072;
if (MESHTYPE_tmp==0)
{
l9_2072=l9_2070;
}
else
{
float2 l9_2073=float2(0.0);
float2 l9_2074=(*sc_set0.UserUniforms).randomRotationY;
l9_2073=l9_2074;
l9_2071=l9_2073;
l9_2072=l9_2071;
}
l9_2069=l9_2072;
float2 l9_2075=float2(0.0);
float2 l9_2076=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 l9_2077=float2(0.0);
float2 l9_2078;
if (MESHTYPE_tmp==0)
{
l9_2078=l9_2076;
}
else
{
float2 l9_2079=float2(0.0);
float2 l9_2080=(*sc_set0.UserUniforms).rotationRateY;
l9_2079=l9_2080;
l9_2077=l9_2079;
l9_2078=l9_2077;
}
l9_2075=l9_2078;
float2 l9_2081=float2(0.0);
float2 l9_2082=float2(1.0);
float2 l9_2083=float2(0.0);
float2 l9_2084;
if (MESHTYPE_tmp==0)
{
float2 l9_2085=float2(0.0);
float2 l9_2086=(*sc_set0.UserUniforms).rotationRandom;
l9_2085=l9_2086;
l9_2082=l9_2085;
l9_2084=l9_2082;
}
else
{
float2 l9_2087=float2(0.0);
float2 l9_2088=(*sc_set0.UserUniforms).randomRotationZ;
l9_2087=l9_2088;
l9_2083=l9_2087;
l9_2084=l9_2083;
}
l9_2081=l9_2084;
float2 l9_2089=float2(0.0);
float2 l9_2090=float2(1.0);
float2 l9_2091=float2(0.0);
float2 l9_2092;
if (MESHTYPE_tmp==0)
{
float2 l9_2093=float2(0.0);
float2 l9_2094=(*sc_set0.UserUniforms).rotationRate;
l9_2093=l9_2094;
l9_2090=l9_2093;
l9_2092=l9_2090;
}
else
{
float2 l9_2095=float2(0.0);
float2 l9_2096=(*sc_set0.UserUniforms).rotationRateZ;
l9_2095=l9_2096;
l9_2091=l9_2095;
l9_2092=l9_2091;
}
l9_2089=l9_2092;
float l9_2097=0.0;
float l9_2098=(*sc_set0.UserUniforms).rotationDrag;
l9_2097=l9_2098;
float l9_2099=0.0;
float l9_2100=(*sc_set0.UserUniforms).Port_Input1_N110;
float l9_2101=0.0;
float l9_2102;
if (MESHTYPE_tmp==0)
{
l9_2102=l9_2100;
}
else
{
float l9_2103=0.0;
float l9_2104=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_2103=l9_2104;
l9_2101=l9_2103;
l9_2102=l9_2101;
}
l9_2099=l9_2102;
float l9_2105=0.0;
float l9_2106=(*sc_set0.UserUniforms).fadeDistanceVisible;
l9_2105=l9_2106;
float l9_2107=0.0;
float l9_2108=(*sc_set0.UserUniforms).fadeDistanceInvisible;
l9_2107=l9_2108;
float l9_2109=0.0;
float3 l9_2110=l9_1933;
float l9_2111=l9_1934;
float l9_2112=l9_1935;
float4 l9_2113=l9_1936;
float3 l9_2114=l9_1973;
float3 l9_2115=l9_1974;
float3 l9_2116=l9_1975;
float3 l9_2117=l9_1977;
float3 l9_2118=l9_1979;
float3 l9_2119=l9_1981;
float3 l9_2120=l9_1983;
float3 l9_2121=l9_1985;
float3 l9_2122=l9_1987;
float3 l9_2123=l9_1989;
float3 l9_2124=l9_1991;
float3 l9_2125=l9_1993;
float3 l9_2126=l9_1995;
float3 l9_2127=l9_2003;
float3 l9_2128=l9_2011;
float3 l9_2129=l9_2019;
float3 l9_2130=l9_2027;
float3 l9_2131=l9_2035;
float l9_2132=l9_2043;
float l9_2133=l9_2045;
float3 l9_2134=l9_2047;
float l9_2135=l9_2049;
float l9_2136=l9_2051;
float l9_2137=l9_2053;
float l9_2138=l9_2055;
float2 l9_2139=l9_2057;
float2 l9_2140=l9_2063;
float2 l9_2141=l9_2069;
float2 l9_2142=l9_2075;
float2 l9_2143=l9_2081;
float2 l9_2144=l9_2089;
float l9_2145=l9_2097;
float l9_2146=l9_2099;
float l9_2147=l9_2105;
float l9_2148=l9_2107;
ssGlobals l9_2149=param_240;
tempGlobals=l9_2149;
float l9_2150=0.0;
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=l9_2110;
N111_globalSeedIn=l9_2111;
N111_dieTrigger=l9_2112;
N111_timeValuesIn=l9_2113;
N111_positionObjectSpace=l9_2114;
N111_normalObjectSpace=l9_2115;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=l9_2116;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=l9_2117;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=l9_2118;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=l9_2119;
N111_noiseFrequency=l9_2120;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=l9_2121;
N111_sNoiseFrequency=l9_2122;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=l9_2123;
N111_velocityMax=l9_2124;
N111_velocityDrag=l9_2125;
N111_sizeStart=l9_2126;
N111_sizeEnd=l9_2127;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=l9_2128;
N111_sizeStartMax=l9_2129;
N111_sizeEndMin=l9_2130;
N111_sizeEndMax=l9_2131;
N111_sizeSpeed=l9_2132;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_gravity=l9_2133;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=l9_2134;
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=l9_2135;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=l9_2136!=0.0;
N111_ENABLE_ALIGNTOY=l9_2137!=0.0;
N111_ENABLE_ALIGNTOZ=l9_2138!=0.0;
N111_rotationRandomX=l9_2139;
N111_rotationRateX=l9_2140;
N111_rotationRandomY=l9_2141;
N111_rotationRateY=l9_2142;
N111_rotationRandomZ=l9_2143;
N111_rotationRateZ=l9_2144;
N111_rotationDrag=l9_2145;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=l9_2146!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=l9_2147;
N111_fadeDistanceInvisible=l9_2148;
float3 l9_2151=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_2152=N111_particleSeed.x;
float l9_2153=N111_particleSeed.y;
float l9_2154=N111_particleSeed.z;
float3 l9_2155=fract((float3(l9_2152,l9_2153,l9_2154)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_2156=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_2157=normalize(l9_2156+float3(N111_EPSILON));
float l9_2158=fract(N111_particleSeed.x+N111_globalSeed);
float l9_2159=l9_2158;
float l9_2160=0.33333334;
float l9_2161;
if (l9_2159<=0.0)
{
l9_2161=0.0;
}
else
{
l9_2161=pow(l9_2159,l9_2160);
}
float l9_2162=l9_2161;
float l9_2163=l9_2162;
l9_2157*=l9_2163;
l9_2157/=float3(2.0);
float l9_2164=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_2165=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_2166=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_2167=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_2168=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_2169=(float3(l9_2167,l9_2168,l9_2166)-float3(0.5))*2.0;
float3 l9_2170=float3(l9_2167,l9_2168,l9_2166);
float l9_2171=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_2172=N111_timeValuesIn.xy;
float l9_2173=N111_timeValuesIn.z;
float l9_2174=N111_timeValuesIn.w;
float3 l9_2175=l9_2151;
float3 l9_2176=l9_2151;
float3 l9_2177=l9_2151;
if (N111_ENABLE_INILOCATION)
{
l9_2177=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_2175=N111_spawnBox*l9_2155;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_2176=N111_spawnSphere*l9_2157;
}
float3 l9_2178=(l9_2177+l9_2176)+l9_2175;
float3 l9_2179=l9_2151;
if (N111_ENABLE_NOISE)
{
float3 l9_2180=N111_noiseFrequency;
float3 l9_2181=N111_noiseMult;
float3 l9_2182=l9_2169;
float l9_2183=l9_2174;
float l9_2184=sin(l9_2183*l9_2180.x);
float l9_2185=sin(l9_2183*l9_2180.y);
float l9_2186=sin(l9_2183*l9_2180.z);
float3 l9_2187=(float3(l9_2184,l9_2185,l9_2186)*l9_2181)*l9_2182;
float3 l9_2188=l9_2187;
l9_2179+=l9_2188;
}
if (N111_ENABLE_SNOISE)
{
float l9_2189=l9_2166;
float l9_2190=l9_2167;
float l9_2191=l9_2168;
float3 l9_2192=N111_sNoiseFrequency;
float3 l9_2193=N111_sNoiseMult;
float3 l9_2194=l9_2169;
float l9_2195=l9_2173;
float2 l9_2196=float2(l9_2189*l9_2195,l9_2192.x);
float2 l9_2197=floor(l9_2196+float2(dot(l9_2196,float2(0.36602542))));
float2 l9_2198=(l9_2196-l9_2197)+float2(dot(l9_2197,float2(0.21132487)));
float2 l9_2199=float2(0.0);
bool2 l9_2200=bool2(l9_2198.x>l9_2198.y);
l9_2199=float2(l9_2200.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2200.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2201=l9_2198.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2202=l9_2201.xy-l9_2199;
l9_2201=float4(l9_2202.x,l9_2202.y,l9_2201.z,l9_2201.w);
l9_2197=mod(l9_2197,float2(289.0));
float3 l9_2203=float3(l9_2197.y)+float3(0.0,l9_2199.y,1.0);
float3 l9_2204=mod(((l9_2203*34.0)+float3(1.0))*l9_2203,float3(289.0));
float3 l9_2205=(l9_2204+float3(l9_2197.x))+float3(0.0,l9_2199.x,1.0);
float3 l9_2206=mod(((l9_2205*34.0)+float3(1.0))*l9_2205,float3(289.0));
float3 l9_2207=l9_2206;
float3 l9_2208=fast::max(float3(0.5)-float3(dot(l9_2198,l9_2198),dot(l9_2201.xy,l9_2201.xy),dot(l9_2201.zw,l9_2201.zw)),float3(0.0));
l9_2208*=l9_2208;
l9_2208*=l9_2208;
float3 l9_2209=(fract(l9_2207*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2210=abs(l9_2209)-float3(0.5);
float3 l9_2211=floor(l9_2209+float3(0.5));
float3 l9_2212=l9_2209-l9_2211;
l9_2208*=(float3(1.7928429)-(((l9_2212*l9_2212)+(l9_2210*l9_2210))*0.85373473));
float3 l9_2213=float3(0.0);
l9_2213.x=(l9_2212.x*l9_2198.x)+(l9_2210.x*l9_2198.y);
float2 l9_2214=(l9_2212.yz*l9_2201.xz)+(l9_2210.yz*l9_2201.yw);
l9_2213=float3(l9_2213.x,l9_2214.x,l9_2214.y);
float l9_2215=130.0*dot(l9_2208,l9_2213);
float l9_2216=l9_2215;
float2 l9_2217=float2(l9_2190*l9_2195,l9_2192.y);
float2 l9_2218=floor(l9_2217+float2(dot(l9_2217,float2(0.36602542))));
float2 l9_2219=(l9_2217-l9_2218)+float2(dot(l9_2218,float2(0.21132487)));
float2 l9_2220=float2(0.0);
bool2 l9_2221=bool2(l9_2219.x>l9_2219.y);
l9_2220=float2(l9_2221.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2221.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2222=l9_2219.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2223=l9_2222.xy-l9_2220;
l9_2222=float4(l9_2223.x,l9_2223.y,l9_2222.z,l9_2222.w);
l9_2218=mod(l9_2218,float2(289.0));
float3 l9_2224=float3(l9_2218.y)+float3(0.0,l9_2220.y,1.0);
float3 l9_2225=mod(((l9_2224*34.0)+float3(1.0))*l9_2224,float3(289.0));
float3 l9_2226=(l9_2225+float3(l9_2218.x))+float3(0.0,l9_2220.x,1.0);
float3 l9_2227=mod(((l9_2226*34.0)+float3(1.0))*l9_2226,float3(289.0));
float3 l9_2228=l9_2227;
float3 l9_2229=fast::max(float3(0.5)-float3(dot(l9_2219,l9_2219),dot(l9_2222.xy,l9_2222.xy),dot(l9_2222.zw,l9_2222.zw)),float3(0.0));
l9_2229*=l9_2229;
l9_2229*=l9_2229;
float3 l9_2230=(fract(l9_2228*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2231=abs(l9_2230)-float3(0.5);
float3 l9_2232=floor(l9_2230+float3(0.5));
float3 l9_2233=l9_2230-l9_2232;
l9_2229*=(float3(1.7928429)-(((l9_2233*l9_2233)+(l9_2231*l9_2231))*0.85373473));
float3 l9_2234=float3(0.0);
l9_2234.x=(l9_2233.x*l9_2219.x)+(l9_2231.x*l9_2219.y);
float2 l9_2235=(l9_2233.yz*l9_2222.xz)+(l9_2231.yz*l9_2222.yw);
l9_2234=float3(l9_2234.x,l9_2235.x,l9_2235.y);
float l9_2236=130.0*dot(l9_2229,l9_2234);
float l9_2237=l9_2236;
float2 l9_2238=float2(l9_2191*l9_2195,l9_2192.z);
float2 l9_2239=floor(l9_2238+float2(dot(l9_2238,float2(0.36602542))));
float2 l9_2240=(l9_2238-l9_2239)+float2(dot(l9_2239,float2(0.21132487)));
float2 l9_2241=float2(0.0);
bool2 l9_2242=bool2(l9_2240.x>l9_2240.y);
l9_2241=float2(l9_2242.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_2242.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_2243=l9_2240.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_2244=l9_2243.xy-l9_2241;
l9_2243=float4(l9_2244.x,l9_2244.y,l9_2243.z,l9_2243.w);
l9_2239=mod(l9_2239,float2(289.0));
float3 l9_2245=float3(l9_2239.y)+float3(0.0,l9_2241.y,1.0);
float3 l9_2246=mod(((l9_2245*34.0)+float3(1.0))*l9_2245,float3(289.0));
float3 l9_2247=(l9_2246+float3(l9_2239.x))+float3(0.0,l9_2241.x,1.0);
float3 l9_2248=mod(((l9_2247*34.0)+float3(1.0))*l9_2247,float3(289.0));
float3 l9_2249=l9_2248;
float3 l9_2250=fast::max(float3(0.5)-float3(dot(l9_2240,l9_2240),dot(l9_2243.xy,l9_2243.xy),dot(l9_2243.zw,l9_2243.zw)),float3(0.0));
l9_2250*=l9_2250;
l9_2250*=l9_2250;
float3 l9_2251=(fract(l9_2249*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_2252=abs(l9_2251)-float3(0.5);
float3 l9_2253=floor(l9_2251+float3(0.5));
float3 l9_2254=l9_2251-l9_2253;
l9_2250*=(float3(1.7928429)-(((l9_2254*l9_2254)+(l9_2252*l9_2252))*0.85373473));
float3 l9_2255=float3(0.0);
l9_2255.x=(l9_2254.x*l9_2240.x)+(l9_2252.x*l9_2240.y);
float2 l9_2256=(l9_2254.yz*l9_2243.xz)+(l9_2252.yz*l9_2243.yw);
l9_2255=float3(l9_2255.x,l9_2256.x,l9_2256.y);
float l9_2257=130.0*dot(l9_2250,l9_2255);
float l9_2258=l9_2257;
float3 l9_2259=(float3(l9_2216,l9_2237,l9_2258)*l9_2193)*l9_2194;
l9_2179+=l9_2259;
}
float3 l9_2260=float3(0.0,((N111_gravity/2.0)*l9_2173)*l9_2173,0.0);
float3 l9_2261=l9_2151;
if (N111_ENABLE_FORCE)
{
l9_2261=((N111_localForce/float3(2.0))*l9_2173)*l9_2173;
}
float3 l9_2262=l9_2151;
float3 l9_2263=N111_velocityMin+(((l9_2169+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_2263=mix(N111_velocityMin,N111_velocityMax,l9_2170);
}
float3 l9_2264=l9_2263;
float l9_2265=l9_2173;
float3 l9_2266=N111_velocityDrag;
float3 l9_2267=l9_2179;
float l9_2268=l9_2174;
float3 l9_2269=float3(l9_2265,l9_2265,l9_2265);
float3 l9_2270=l9_2266;
float l9_2271;
if (l9_2269.x<=0.0)
{
l9_2271=0.0;
}
else
{
l9_2271=pow(l9_2269.x,l9_2270.x);
}
float l9_2272=l9_2271;
float l9_2273;
if (l9_2269.y<=0.0)
{
l9_2273=0.0;
}
else
{
l9_2273=pow(l9_2269.y,l9_2270.y);
}
float l9_2274=l9_2273;
float l9_2275;
if (l9_2269.z<=0.0)
{
l9_2275=0.0;
}
else
{
l9_2275=pow(l9_2269.z,l9_2270.z);
}
float3 l9_2276=float3(l9_2272,l9_2274,l9_2275);
float3 l9_2277=l9_2276;
float3 l9_2278=(l9_2264+l9_2267)*l9_2277;
if (N111_ENABLE_VELRAMP)
{
float l9_2279=floor(l9_2268*10000.0)/10000.0;
float2 l9_2280=tempGlobals.Surface_UVCoord0;
float2 l9_2281=(l9_2280/float2(10000.0,1.0))+float2(l9_2279,0.0);
float2 l9_2282=l9_2281;
float4 l9_2283=float4(0.0);
int l9_2284;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2285=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2285=0;
}
else
{
l9_2285=gl_InstanceIndex%2;
}
int l9_2286=l9_2285;
l9_2284=1-l9_2286;
}
else
{
int l9_2287=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2287=0;
}
else
{
l9_2287=gl_InstanceIndex%2;
}
int l9_2288=l9_2287;
l9_2284=l9_2288;
}
int l9_2289=l9_2284;
int l9_2290=velRampTextureLayout_tmp;
int l9_2291=l9_2289;
float2 l9_2292=l9_2282;
bool l9_2293=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_2294=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_2295=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_2296=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_2297=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_2298=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_2299=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_2300=0.0;
bool l9_2301=l9_2298&&(!l9_2296);
float l9_2302=1.0;
float l9_2303=l9_2292.x;
int l9_2304=l9_2295.x;
if (l9_2304==1)
{
l9_2303=fract(l9_2303);
}
else
{
if (l9_2304==2)
{
float l9_2305=fract(l9_2303);
float l9_2306=l9_2303-l9_2305;
float l9_2307=step(0.25,fract(l9_2306*0.5));
l9_2303=mix(l9_2305,1.0-l9_2305,fast::clamp(l9_2307,0.0,1.0));
}
}
l9_2292.x=l9_2303;
float l9_2308=l9_2292.y;
int l9_2309=l9_2295.y;
if (l9_2309==1)
{
l9_2308=fract(l9_2308);
}
else
{
if (l9_2309==2)
{
float l9_2310=fract(l9_2308);
float l9_2311=l9_2308-l9_2310;
float l9_2312=step(0.25,fract(l9_2311*0.5));
l9_2308=mix(l9_2310,1.0-l9_2310,fast::clamp(l9_2312,0.0,1.0));
}
}
l9_2292.y=l9_2308;
if (l9_2296)
{
bool l9_2313=l9_2298;
bool l9_2314;
if (l9_2313)
{
l9_2314=l9_2295.x==3;
}
else
{
l9_2314=l9_2313;
}
float l9_2315=l9_2292.x;
float l9_2316=l9_2297.x;
float l9_2317=l9_2297.z;
bool l9_2318=l9_2314;
float l9_2319=l9_2302;
float l9_2320=fast::clamp(l9_2315,l9_2316,l9_2317);
float l9_2321=step(abs(l9_2315-l9_2320),9.9999997e-06);
l9_2319*=(l9_2321+((1.0-float(l9_2318))*(1.0-l9_2321)));
l9_2315=l9_2320;
l9_2292.x=l9_2315;
l9_2302=l9_2319;
bool l9_2322=l9_2298;
bool l9_2323;
if (l9_2322)
{
l9_2323=l9_2295.y==3;
}
else
{
l9_2323=l9_2322;
}
float l9_2324=l9_2292.y;
float l9_2325=l9_2297.y;
float l9_2326=l9_2297.w;
bool l9_2327=l9_2323;
float l9_2328=l9_2302;
float l9_2329=fast::clamp(l9_2324,l9_2325,l9_2326);
float l9_2330=step(abs(l9_2324-l9_2329),9.9999997e-06);
l9_2328*=(l9_2330+((1.0-float(l9_2327))*(1.0-l9_2330)));
l9_2324=l9_2329;
l9_2292.y=l9_2324;
l9_2302=l9_2328;
}
float2 l9_2331=l9_2292;
bool l9_2332=l9_2293;
float3x3 l9_2333=l9_2294;
if (l9_2332)
{
l9_2331=float2((l9_2333*float3(l9_2331,1.0)).xy);
}
float2 l9_2334=l9_2331;
l9_2292=l9_2334;
float l9_2335=l9_2292.x;
int l9_2336=l9_2295.x;
bool l9_2337=l9_2301;
float l9_2338=l9_2302;
if ((l9_2336==0)||(l9_2336==3))
{
float l9_2339=l9_2335;
float l9_2340=0.0;
float l9_2341=1.0;
bool l9_2342=l9_2337;
float l9_2343=l9_2338;
float l9_2344=fast::clamp(l9_2339,l9_2340,l9_2341);
float l9_2345=step(abs(l9_2339-l9_2344),9.9999997e-06);
l9_2343*=(l9_2345+((1.0-float(l9_2342))*(1.0-l9_2345)));
l9_2339=l9_2344;
l9_2335=l9_2339;
l9_2338=l9_2343;
}
l9_2292.x=l9_2335;
l9_2302=l9_2338;
float l9_2346=l9_2292.y;
int l9_2347=l9_2295.y;
bool l9_2348=l9_2301;
float l9_2349=l9_2302;
if ((l9_2347==0)||(l9_2347==3))
{
float l9_2350=l9_2346;
float l9_2351=0.0;
float l9_2352=1.0;
bool l9_2353=l9_2348;
float l9_2354=l9_2349;
float l9_2355=fast::clamp(l9_2350,l9_2351,l9_2352);
float l9_2356=step(abs(l9_2350-l9_2355),9.9999997e-06);
l9_2354*=(l9_2356+((1.0-float(l9_2353))*(1.0-l9_2356)));
l9_2350=l9_2355;
l9_2346=l9_2350;
l9_2349=l9_2354;
}
l9_2292.y=l9_2346;
l9_2302=l9_2349;
float2 l9_2357=l9_2292;
int l9_2358=l9_2290;
int l9_2359=l9_2291;
float l9_2360=l9_2300;
float2 l9_2361=l9_2357;
int l9_2362=l9_2358;
int l9_2363=l9_2359;
float3 l9_2364=float3(0.0);
if (l9_2362==0)
{
l9_2364=float3(l9_2361,0.0);
}
else
{
if (l9_2362==1)
{
l9_2364=float3(l9_2361.x,(l9_2361.y*0.5)+(0.5-(float(l9_2363)*0.5)),0.0);
}
else
{
l9_2364=float3(l9_2361,float(l9_2363));
}
}
float3 l9_2365=l9_2364;
float3 l9_2366=l9_2365;
float4 l9_2367=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2366.xy,level(l9_2360));
float4 l9_2368=l9_2367;
if (l9_2298)
{
l9_2368=mix(l9_2299,l9_2368,float4(l9_2302));
}
float4 l9_2369=l9_2368;
l9_2283=l9_2369;
float4 l9_2370=l9_2283;
float3 l9_2371=l9_2370.xyz;
l9_2278=(l9_2264+l9_2267)*l9_2371;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2278=l9_2264*l9_2277;
}
}
float3 l9_2372=l9_2278;
l9_2262=l9_2372;
float4x4 l9_2373=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2374=length(l9_2373[0].xyz);
float4x4 l9_2375=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2376=length(l9_2375[1].xyz);
float4x4 l9_2377=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2378=length(l9_2377[2].xyz);
float3 l9_2379=float3(l9_2374,l9_2376,l9_2378);
float4x4 l9_2380=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2381=l9_2380;
float4 l9_2382=l9_2381[0];
float4 l9_2383=l9_2381[1];
float4 l9_2384=l9_2381[2];
float3x3 l9_2385=float3x3(float3(float3(l9_2382.x,l9_2383.x,l9_2384.x)),float3(float3(l9_2382.y,l9_2383.y,l9_2384.y)),float3(float3(l9_2382.z,l9_2383.z,l9_2384.z)));
float3x3 l9_2386=l9_2385;
float3 l9_2387=((l9_2262+l9_2260)+l9_2261)*l9_2386;
if (N111_WORLDFORCE)
{
float4x4 l9_2388=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2389=l9_2388;
float4 l9_2390=l9_2389[0];
float4 l9_2391=l9_2389[1];
float4 l9_2392=l9_2389[2];
float3x3 l9_2393=float3x3(float3(float3(l9_2390.x,l9_2391.x,l9_2392.x)),float3(float3(l9_2390.y,l9_2391.y,l9_2392.y)),float3(float3(l9_2390.z,l9_2391.z,l9_2392.z)));
float3x3 l9_2394=l9_2393;
l9_2387=((l9_2262*l9_2394)+l9_2260)+l9_2261;
}
if (N111_WORLDSPACE)
{
l9_2387=((l9_2262*l9_2379)+l9_2260)+l9_2261;
}
float4x4 l9_2395=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_2396=(l9_2395*float4(l9_2178,1.0)).xyz+l9_2387;
float l9_2397=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_2171);
float l9_2398=1.0-l9_2174;
float l9_2399=N111_rotationDrag;
float l9_2400;
if (l9_2398<=0.0)
{
l9_2400=0.0;
}
else
{
l9_2400=pow(l9_2398,l9_2399);
}
float l9_2401=l9_2400;
float l9_2402=l9_2401;
float l9_2403=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_2171);
float l9_2404=((l9_2403*l9_2402)*l9_2174)*2.0;
float l9_2405=N111_PI*((l9_2404+l9_2397)-0.5);
float l9_2406=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_2407=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_2408=l9_2407-l9_2396;
float l9_2409=dot(l9_2408,l9_2408);
float l9_2410=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_2411=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_2412=fast::min(l9_2410,l9_2411);
float l9_2413=fast::max(l9_2410,l9_2411);
N111_nearCameraFade=smoothstep(l9_2412,l9_2413,l9_2409);
float l9_2414;
if (l9_2410>l9_2411)
{
l9_2414=1.0-N111_nearCameraFade;
}
else
{
l9_2414=N111_nearCameraFade;
}
N111_nearCameraFade=l9_2414;
if (N111_nearCameraFade<=N111_EPSILON)
{
l9_2406=0.0;
}
}
if (N111_MESHTYPE_QUAD)
{
int l9_2415=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2415=0;
}
else
{
l9_2415=gl_InstanceIndex%2;
}
int l9_2416=l9_2415;
float4x4 l9_2417=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2416];
float3 l9_2418=l9_2417[2].xyz;
int l9_2419=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2419=0;
}
else
{
l9_2419=gl_InstanceIndex%2;
}
int l9_2420=l9_2419;
float3 l9_2421=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_2420][1].xyz;
float3 l9_2422=-l9_2421;
float3 l9_2423=normalize(cross(l9_2418,l9_2422));
float l9_2424=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_2423=float3(0.0,0.0,1.0);
l9_2422=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2423=float3(1.0,0.0,0.0);
l9_2422=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_2423=float3(1.0,0.0,0.0);
l9_2422=float3(0.0,1.0,0.0);
}
float2 l9_2425=float2(cos(l9_2405),sin(l9_2405));
float2 l9_2426=float2(-sin(l9_2405),cos(l9_2405));
float3 l9_2427=float3((l9_2423*l9_2425.x)+(l9_2422*l9_2425.y));
float3 l9_2428=float3((l9_2423*l9_2426.x)+(l9_2422*l9_2426.y));
if (N111_ENABLE_ALIGNTOVEL)
{
float3 l9_2429=normalize(((l9_2387+l9_2260)+l9_2261)+float3(N111_EPSILON));
float3 l9_2430=l9_2387*(l9_2173-0.0099999998);
float3 l9_2431=l9_2387*(l9_2173+0.0099999998);
if (N111_ENABLE_IGNOREVEL)
{
l9_2424=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_2424=length(l9_2431-l9_2430)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_2432=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2424=(length(l9_2431-l9_2430)/length(l9_2432[0].xyz))*N111_sizeVelScale;
}
}
l9_2427=l9_2429;
l9_2428=normalize(cross(l9_2427,l9_2418));
}
float4x4 l9_2433=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_2434=length(l9_2433[0].xyz);
float2 l9_2435=tempGlobals.Surface_UVCoord0;
float2 l9_2436=l9_2435;
float l9_2437=N111_dieTrigger;
float l9_2438=l9_2406;
float2 l9_2439=l9_2436;
float l9_2440=l9_2164;
float l9_2441=l9_2165;
float l9_2442=l9_2174;
float l9_2443=N111_sizeSpeed;
float2 l9_2444=N111_sizeStart.xy;
float2 l9_2445=N111_sizeEnd.xy;
float l9_2446=l9_2442;
float l9_2447=l9_2443;
float l9_2448;
if (l9_2446<=0.0)
{
l9_2448=0.0;
}
else
{
l9_2448=pow(l9_2446,l9_2447);
}
float l9_2449=l9_2448;
float l9_2450=l9_2449;
if (N111_ENABLE_SIZEMINMAX)
{
l9_2444=mix(N111_sizeStartMin.xy,N111_sizeStartMax.xy,float2(l9_2440));
l9_2445=mix(N111_sizeEndMin.xy,N111_sizeEndMax.xy,float2(l9_2441));
}
float2 l9_2451=mix(l9_2444,l9_2445,float2(l9_2450));
if (N111_ENABLE_SIZERAMP)
{
float l9_2452=ceil(l9_2442*10000.0)/10000.0;
float2 l9_2453=tempGlobals.Surface_UVCoord0;
float2 l9_2454=(l9_2453/float2(10000.0,1.0))+float2(l9_2452,0.0);
float2 l9_2455=l9_2454;
float4 l9_2456=float4(0.0);
int l9_2457;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2458=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2458=0;
}
else
{
l9_2458=gl_InstanceIndex%2;
}
int l9_2459=l9_2458;
l9_2457=1-l9_2459;
}
else
{
int l9_2460=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2460=0;
}
else
{
l9_2460=gl_InstanceIndex%2;
}
int l9_2461=l9_2460;
l9_2457=l9_2461;
}
int l9_2462=l9_2457;
int l9_2463=sizeRampTextureLayout_tmp;
int l9_2464=l9_2462;
float2 l9_2465=l9_2455;
bool l9_2466=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_2467=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_2468=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_2469=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_2470=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_2471=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_2472=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_2473=0.0;
bool l9_2474=l9_2471&&(!l9_2469);
float l9_2475=1.0;
float l9_2476=l9_2465.x;
int l9_2477=l9_2468.x;
if (l9_2477==1)
{
l9_2476=fract(l9_2476);
}
else
{
if (l9_2477==2)
{
float l9_2478=fract(l9_2476);
float l9_2479=l9_2476-l9_2478;
float l9_2480=step(0.25,fract(l9_2479*0.5));
l9_2476=mix(l9_2478,1.0-l9_2478,fast::clamp(l9_2480,0.0,1.0));
}
}
l9_2465.x=l9_2476;
float l9_2481=l9_2465.y;
int l9_2482=l9_2468.y;
if (l9_2482==1)
{
l9_2481=fract(l9_2481);
}
else
{
if (l9_2482==2)
{
float l9_2483=fract(l9_2481);
float l9_2484=l9_2481-l9_2483;
float l9_2485=step(0.25,fract(l9_2484*0.5));
l9_2481=mix(l9_2483,1.0-l9_2483,fast::clamp(l9_2485,0.0,1.0));
}
}
l9_2465.y=l9_2481;
if (l9_2469)
{
bool l9_2486=l9_2471;
bool l9_2487;
if (l9_2486)
{
l9_2487=l9_2468.x==3;
}
else
{
l9_2487=l9_2486;
}
float l9_2488=l9_2465.x;
float l9_2489=l9_2470.x;
float l9_2490=l9_2470.z;
bool l9_2491=l9_2487;
float l9_2492=l9_2475;
float l9_2493=fast::clamp(l9_2488,l9_2489,l9_2490);
float l9_2494=step(abs(l9_2488-l9_2493),9.9999997e-06);
l9_2492*=(l9_2494+((1.0-float(l9_2491))*(1.0-l9_2494)));
l9_2488=l9_2493;
l9_2465.x=l9_2488;
l9_2475=l9_2492;
bool l9_2495=l9_2471;
bool l9_2496;
if (l9_2495)
{
l9_2496=l9_2468.y==3;
}
else
{
l9_2496=l9_2495;
}
float l9_2497=l9_2465.y;
float l9_2498=l9_2470.y;
float l9_2499=l9_2470.w;
bool l9_2500=l9_2496;
float l9_2501=l9_2475;
float l9_2502=fast::clamp(l9_2497,l9_2498,l9_2499);
float l9_2503=step(abs(l9_2497-l9_2502),9.9999997e-06);
l9_2501*=(l9_2503+((1.0-float(l9_2500))*(1.0-l9_2503)));
l9_2497=l9_2502;
l9_2465.y=l9_2497;
l9_2475=l9_2501;
}
float2 l9_2504=l9_2465;
bool l9_2505=l9_2466;
float3x3 l9_2506=l9_2467;
if (l9_2505)
{
l9_2504=float2((l9_2506*float3(l9_2504,1.0)).xy);
}
float2 l9_2507=l9_2504;
l9_2465=l9_2507;
float l9_2508=l9_2465.x;
int l9_2509=l9_2468.x;
bool l9_2510=l9_2474;
float l9_2511=l9_2475;
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
l9_2465.x=l9_2508;
l9_2475=l9_2511;
float l9_2519=l9_2465.y;
int l9_2520=l9_2468.y;
bool l9_2521=l9_2474;
float l9_2522=l9_2475;
if ((l9_2520==0)||(l9_2520==3))
{
float l9_2523=l9_2519;
float l9_2524=0.0;
float l9_2525=1.0;
bool l9_2526=l9_2521;
float l9_2527=l9_2522;
float l9_2528=fast::clamp(l9_2523,l9_2524,l9_2525);
float l9_2529=step(abs(l9_2523-l9_2528),9.9999997e-06);
l9_2527*=(l9_2529+((1.0-float(l9_2526))*(1.0-l9_2529)));
l9_2523=l9_2528;
l9_2519=l9_2523;
l9_2522=l9_2527;
}
l9_2465.y=l9_2519;
l9_2475=l9_2522;
float2 l9_2530=l9_2465;
int l9_2531=l9_2463;
int l9_2532=l9_2464;
float l9_2533=l9_2473;
float2 l9_2534=l9_2530;
int l9_2535=l9_2531;
int l9_2536=l9_2532;
float3 l9_2537=float3(0.0);
if (l9_2535==0)
{
l9_2537=float3(l9_2534,0.0);
}
else
{
if (l9_2535==1)
{
l9_2537=float3(l9_2534.x,(l9_2534.y*0.5)+(0.5-(float(l9_2536)*0.5)),0.0);
}
else
{
l9_2537=float3(l9_2534,float(l9_2536));
}
}
float3 l9_2538=l9_2537;
float3 l9_2539=l9_2538;
float4 l9_2540=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_2539.xy,level(l9_2533));
float4 l9_2541=l9_2540;
if (l9_2471)
{
l9_2541=mix(l9_2472,l9_2541,float4(l9_2475));
}
float4 l9_2542=l9_2541;
l9_2456=l9_2542;
float4 l9_2543=l9_2456;
float2 l9_2544=l9_2543.xy;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2544=float2(1.0);
}
l9_2451=l9_2544*l9_2444;
}
float2 l9_2545=l9_2451;
float2 l9_2546=(((l9_2439-float2(0.5))*(l9_2437*l9_2438))*l9_2545)*l9_2434;
float3 l9_2547=(l9_2396+(l9_2428*l9_2546.x))+(l9_2427*(l9_2546.y*l9_2424));
N111_position=l9_2547;
N111_normal=l9_2418;
}
else
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_2548=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_2549=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_2550=(l9_2548+l9_2549)/float3(2.0);
N111_position-=l9_2550;
}
float3 l9_2551=N111_position;
float3 l9_2552=l9_2379;
float l9_2553=l9_2164;
float l9_2554=l9_2165;
float l9_2555=l9_2174;
float l9_2556=N111_sizeSpeed;
float3 l9_2557=N111_sizeStart;
float3 l9_2558=N111_sizeEnd;
float l9_2559=l9_2555;
float l9_2560=l9_2556;
float l9_2561;
if (l9_2559<=0.0)
{
l9_2561=0.0;
}
else
{
l9_2561=pow(l9_2559,l9_2560);
}
float l9_2562=l9_2561;
float l9_2563=l9_2562;
if (N111_ENABLE_SIZEMINMAX)
{
l9_2557=mix(N111_sizeStartMin,N111_sizeStartMax,float3(l9_2553));
l9_2558=mix(N111_sizeEndMin,N111_sizeEndMax,float3(l9_2554));
}
float3 l9_2564=mix(l9_2557,l9_2558,float3(l9_2563));
if (N111_ENABLE_SIZERAMP)
{
float l9_2565=ceil(l9_2555*10000.0)/10000.0;
float2 l9_2566=tempGlobals.Surface_UVCoord0;
float2 l9_2567=(l9_2566/float2(10000.0,1.0))+float2(l9_2565,0.0);
float2 l9_2568=l9_2567;
float4 l9_2569=float4(0.0);
int l9_2570;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2571=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2571=0;
}
else
{
l9_2571=gl_InstanceIndex%2;
}
int l9_2572=l9_2571;
l9_2570=1-l9_2572;
}
else
{
int l9_2573=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2573=0;
}
else
{
l9_2573=gl_InstanceIndex%2;
}
int l9_2574=l9_2573;
l9_2570=l9_2574;
}
int l9_2575=l9_2570;
int l9_2576=sizeRampTextureLayout_tmp;
int l9_2577=l9_2575;
float2 l9_2578=l9_2568;
bool l9_2579=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_2580=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_2581=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_2582=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_2583=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_2584=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_2585=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_2586=0.0;
bool l9_2587=l9_2584&&(!l9_2582);
float l9_2588=1.0;
float l9_2589=l9_2578.x;
int l9_2590=l9_2581.x;
if (l9_2590==1)
{
l9_2589=fract(l9_2589);
}
else
{
if (l9_2590==2)
{
float l9_2591=fract(l9_2589);
float l9_2592=l9_2589-l9_2591;
float l9_2593=step(0.25,fract(l9_2592*0.5));
l9_2589=mix(l9_2591,1.0-l9_2591,fast::clamp(l9_2593,0.0,1.0));
}
}
l9_2578.x=l9_2589;
float l9_2594=l9_2578.y;
int l9_2595=l9_2581.y;
if (l9_2595==1)
{
l9_2594=fract(l9_2594);
}
else
{
if (l9_2595==2)
{
float l9_2596=fract(l9_2594);
float l9_2597=l9_2594-l9_2596;
float l9_2598=step(0.25,fract(l9_2597*0.5));
l9_2594=mix(l9_2596,1.0-l9_2596,fast::clamp(l9_2598,0.0,1.0));
}
}
l9_2578.y=l9_2594;
if (l9_2582)
{
bool l9_2599=l9_2584;
bool l9_2600;
if (l9_2599)
{
l9_2600=l9_2581.x==3;
}
else
{
l9_2600=l9_2599;
}
float l9_2601=l9_2578.x;
float l9_2602=l9_2583.x;
float l9_2603=l9_2583.z;
bool l9_2604=l9_2600;
float l9_2605=l9_2588;
float l9_2606=fast::clamp(l9_2601,l9_2602,l9_2603);
float l9_2607=step(abs(l9_2601-l9_2606),9.9999997e-06);
l9_2605*=(l9_2607+((1.0-float(l9_2604))*(1.0-l9_2607)));
l9_2601=l9_2606;
l9_2578.x=l9_2601;
l9_2588=l9_2605;
bool l9_2608=l9_2584;
bool l9_2609;
if (l9_2608)
{
l9_2609=l9_2581.y==3;
}
else
{
l9_2609=l9_2608;
}
float l9_2610=l9_2578.y;
float l9_2611=l9_2583.y;
float l9_2612=l9_2583.w;
bool l9_2613=l9_2609;
float l9_2614=l9_2588;
float l9_2615=fast::clamp(l9_2610,l9_2611,l9_2612);
float l9_2616=step(abs(l9_2610-l9_2615),9.9999997e-06);
l9_2614*=(l9_2616+((1.0-float(l9_2613))*(1.0-l9_2616)));
l9_2610=l9_2615;
l9_2578.y=l9_2610;
l9_2588=l9_2614;
}
float2 l9_2617=l9_2578;
bool l9_2618=l9_2579;
float3x3 l9_2619=l9_2580;
if (l9_2618)
{
l9_2617=float2((l9_2619*float3(l9_2617,1.0)).xy);
}
float2 l9_2620=l9_2617;
l9_2578=l9_2620;
float l9_2621=l9_2578.x;
int l9_2622=l9_2581.x;
bool l9_2623=l9_2587;
float l9_2624=l9_2588;
if ((l9_2622==0)||(l9_2622==3))
{
float l9_2625=l9_2621;
float l9_2626=0.0;
float l9_2627=1.0;
bool l9_2628=l9_2623;
float l9_2629=l9_2624;
float l9_2630=fast::clamp(l9_2625,l9_2626,l9_2627);
float l9_2631=step(abs(l9_2625-l9_2630),9.9999997e-06);
l9_2629*=(l9_2631+((1.0-float(l9_2628))*(1.0-l9_2631)));
l9_2625=l9_2630;
l9_2621=l9_2625;
l9_2624=l9_2629;
}
l9_2578.x=l9_2621;
l9_2588=l9_2624;
float l9_2632=l9_2578.y;
int l9_2633=l9_2581.y;
bool l9_2634=l9_2587;
float l9_2635=l9_2588;
if ((l9_2633==0)||(l9_2633==3))
{
float l9_2636=l9_2632;
float l9_2637=0.0;
float l9_2638=1.0;
bool l9_2639=l9_2634;
float l9_2640=l9_2635;
float l9_2641=fast::clamp(l9_2636,l9_2637,l9_2638);
float l9_2642=step(abs(l9_2636-l9_2641),9.9999997e-06);
l9_2640*=(l9_2642+((1.0-float(l9_2639))*(1.0-l9_2642)));
l9_2636=l9_2641;
l9_2632=l9_2636;
l9_2635=l9_2640;
}
l9_2578.y=l9_2632;
l9_2588=l9_2635;
float2 l9_2643=l9_2578;
int l9_2644=l9_2576;
int l9_2645=l9_2577;
float l9_2646=l9_2586;
float2 l9_2647=l9_2643;
int l9_2648=l9_2644;
int l9_2649=l9_2645;
float3 l9_2650=float3(0.0);
if (l9_2648==0)
{
l9_2650=float3(l9_2647,0.0);
}
else
{
if (l9_2648==1)
{
l9_2650=float3(l9_2647.x,(l9_2647.y*0.5)+(0.5-(float(l9_2649)*0.5)),0.0);
}
else
{
l9_2650=float3(l9_2647,float(l9_2649));
}
}
float3 l9_2651=l9_2650;
float3 l9_2652=l9_2651;
float4 l9_2653=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_2652.xy,level(l9_2646));
float4 l9_2654=l9_2653;
if (l9_2584)
{
l9_2654=mix(l9_2585,l9_2654,float4(l9_2588));
}
float4 l9_2655=l9_2654;
l9_2569=l9_2655;
float4 l9_2656=l9_2569;
float3 l9_2657=l9_2656.xyz;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2657=float3(1.0);
}
l9_2564=l9_2657*l9_2557;
}
float3 l9_2658=l9_2564;
N111_position=(l9_2551*l9_2552)*l9_2658;
if ((N111_dieTrigger<0.5)||(l9_2406<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_2659;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_2659=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_2660=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_2660=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_2660=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_2661=0.001;
float3 l9_2662=l9_2263;
float l9_2663=l9_2173-l9_2661;
float3 l9_2664=N111_velocityDrag;
float3 l9_2665=l9_2179;
float l9_2666=l9_2174-l9_2661;
float3 l9_2667=float3(l9_2663,l9_2663,l9_2663);
float3 l9_2668=l9_2664;
float l9_2669;
if (l9_2667.x<=0.0)
{
l9_2669=0.0;
}
else
{
l9_2669=pow(l9_2667.x,l9_2668.x);
}
float l9_2670=l9_2669;
float l9_2671;
if (l9_2667.y<=0.0)
{
l9_2671=0.0;
}
else
{
l9_2671=pow(l9_2667.y,l9_2668.y);
}
float l9_2672=l9_2671;
float l9_2673;
if (l9_2667.z<=0.0)
{
l9_2673=0.0;
}
else
{
l9_2673=pow(l9_2667.z,l9_2668.z);
}
float3 l9_2674=float3(l9_2670,l9_2672,l9_2673);
float3 l9_2675=l9_2674;
float3 l9_2676=(l9_2662+l9_2665)*l9_2675;
if (N111_ENABLE_VELRAMP)
{
float l9_2677=floor(l9_2666*10000.0)/10000.0;
float2 l9_2678=tempGlobals.Surface_UVCoord0;
float2 l9_2679=(l9_2678/float2(10000.0,1.0))+float2(l9_2677,0.0);
float2 l9_2680=l9_2679;
float4 l9_2681=float4(0.0);
int l9_2682;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2683=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2683=0;
}
else
{
l9_2683=gl_InstanceIndex%2;
}
int l9_2684=l9_2683;
l9_2682=1-l9_2684;
}
else
{
int l9_2685=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2685=0;
}
else
{
l9_2685=gl_InstanceIndex%2;
}
int l9_2686=l9_2685;
l9_2682=l9_2686;
}
int l9_2687=l9_2682;
int l9_2688=velRampTextureLayout_tmp;
int l9_2689=l9_2687;
float2 l9_2690=l9_2680;
bool l9_2691=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_2692=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_2693=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_2694=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_2695=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_2696=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_2697=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_2698=0.0;
bool l9_2699=l9_2696&&(!l9_2694);
float l9_2700=1.0;
float l9_2701=l9_2690.x;
int l9_2702=l9_2693.x;
if (l9_2702==1)
{
l9_2701=fract(l9_2701);
}
else
{
if (l9_2702==2)
{
float l9_2703=fract(l9_2701);
float l9_2704=l9_2701-l9_2703;
float l9_2705=step(0.25,fract(l9_2704*0.5));
l9_2701=mix(l9_2703,1.0-l9_2703,fast::clamp(l9_2705,0.0,1.0));
}
}
l9_2690.x=l9_2701;
float l9_2706=l9_2690.y;
int l9_2707=l9_2693.y;
if (l9_2707==1)
{
l9_2706=fract(l9_2706);
}
else
{
if (l9_2707==2)
{
float l9_2708=fract(l9_2706);
float l9_2709=l9_2706-l9_2708;
float l9_2710=step(0.25,fract(l9_2709*0.5));
l9_2706=mix(l9_2708,1.0-l9_2708,fast::clamp(l9_2710,0.0,1.0));
}
}
l9_2690.y=l9_2706;
if (l9_2694)
{
bool l9_2711=l9_2696;
bool l9_2712;
if (l9_2711)
{
l9_2712=l9_2693.x==3;
}
else
{
l9_2712=l9_2711;
}
float l9_2713=l9_2690.x;
float l9_2714=l9_2695.x;
float l9_2715=l9_2695.z;
bool l9_2716=l9_2712;
float l9_2717=l9_2700;
float l9_2718=fast::clamp(l9_2713,l9_2714,l9_2715);
float l9_2719=step(abs(l9_2713-l9_2718),9.9999997e-06);
l9_2717*=(l9_2719+((1.0-float(l9_2716))*(1.0-l9_2719)));
l9_2713=l9_2718;
l9_2690.x=l9_2713;
l9_2700=l9_2717;
bool l9_2720=l9_2696;
bool l9_2721;
if (l9_2720)
{
l9_2721=l9_2693.y==3;
}
else
{
l9_2721=l9_2720;
}
float l9_2722=l9_2690.y;
float l9_2723=l9_2695.y;
float l9_2724=l9_2695.w;
bool l9_2725=l9_2721;
float l9_2726=l9_2700;
float l9_2727=fast::clamp(l9_2722,l9_2723,l9_2724);
float l9_2728=step(abs(l9_2722-l9_2727),9.9999997e-06);
l9_2726*=(l9_2728+((1.0-float(l9_2725))*(1.0-l9_2728)));
l9_2722=l9_2727;
l9_2690.y=l9_2722;
l9_2700=l9_2726;
}
float2 l9_2729=l9_2690;
bool l9_2730=l9_2691;
float3x3 l9_2731=l9_2692;
if (l9_2730)
{
l9_2729=float2((l9_2731*float3(l9_2729,1.0)).xy);
}
float2 l9_2732=l9_2729;
l9_2690=l9_2732;
float l9_2733=l9_2690.x;
int l9_2734=l9_2693.x;
bool l9_2735=l9_2699;
float l9_2736=l9_2700;
if ((l9_2734==0)||(l9_2734==3))
{
float l9_2737=l9_2733;
float l9_2738=0.0;
float l9_2739=1.0;
bool l9_2740=l9_2735;
float l9_2741=l9_2736;
float l9_2742=fast::clamp(l9_2737,l9_2738,l9_2739);
float l9_2743=step(abs(l9_2737-l9_2742),9.9999997e-06);
l9_2741*=(l9_2743+((1.0-float(l9_2740))*(1.0-l9_2743)));
l9_2737=l9_2742;
l9_2733=l9_2737;
l9_2736=l9_2741;
}
l9_2690.x=l9_2733;
l9_2700=l9_2736;
float l9_2744=l9_2690.y;
int l9_2745=l9_2693.y;
bool l9_2746=l9_2699;
float l9_2747=l9_2700;
if ((l9_2745==0)||(l9_2745==3))
{
float l9_2748=l9_2744;
float l9_2749=0.0;
float l9_2750=1.0;
bool l9_2751=l9_2746;
float l9_2752=l9_2747;
float l9_2753=fast::clamp(l9_2748,l9_2749,l9_2750);
float l9_2754=step(abs(l9_2748-l9_2753),9.9999997e-06);
l9_2752*=(l9_2754+((1.0-float(l9_2751))*(1.0-l9_2754)));
l9_2748=l9_2753;
l9_2744=l9_2748;
l9_2747=l9_2752;
}
l9_2690.y=l9_2744;
l9_2700=l9_2747;
float2 l9_2755=l9_2690;
int l9_2756=l9_2688;
int l9_2757=l9_2689;
float l9_2758=l9_2698;
float2 l9_2759=l9_2755;
int l9_2760=l9_2756;
int l9_2761=l9_2757;
float3 l9_2762=float3(0.0);
if (l9_2760==0)
{
l9_2762=float3(l9_2759,0.0);
}
else
{
if (l9_2760==1)
{
l9_2762=float3(l9_2759.x,(l9_2759.y*0.5)+(0.5-(float(l9_2761)*0.5)),0.0);
}
else
{
l9_2762=float3(l9_2759,float(l9_2761));
}
}
float3 l9_2763=l9_2762;
float3 l9_2764=l9_2763;
float4 l9_2765=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_2764.xy,level(l9_2758));
float4 l9_2766=l9_2765;
if (l9_2696)
{
l9_2766=mix(l9_2697,l9_2766,float4(l9_2700));
}
float4 l9_2767=l9_2766;
l9_2681=l9_2767;
float4 l9_2768=l9_2681;
float3 l9_2769=l9_2768.xyz;
l9_2676=(l9_2662+l9_2665)*l9_2769;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_2676=l9_2662*l9_2675;
}
}
float3 l9_2770=l9_2676;
float3 l9_2771=l9_2770;
float l9_2772=((N111_gravity/2.0)*(l9_2173-l9_2661))*(l9_2173-l9_2661);
l9_2260.y-=l9_2772;
if (N111_ENABLE_FORCE)
{
float3 l9_2773=float3(((N111_localForce/float3(2.0))*(l9_2173-l9_2661))*(l9_2173-l9_2661));
l9_2261-=l9_2773;
}
if (N111_WORLDFORCE)
{
float4x4 l9_2774=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2775=l9_2774;
float4 l9_2776=l9_2775[0];
float4 l9_2777=l9_2775[1];
float4 l9_2778=l9_2775[2];
float3x3 l9_2779=float3x3(float3(float3(l9_2776.x,l9_2777.x,l9_2778.x)),float3(float3(l9_2776.y,l9_2777.y,l9_2778.y)),float3(float3(l9_2776.z,l9_2777.z,l9_2778.z)));
float3x3 l9_2780=l9_2779;
l9_2660=(((l9_2262-l9_2771)*l9_2780)+l9_2260)+l9_2261;
}
else
{
if (N111_WORLDSPACE)
{
l9_2660=((l9_2262-l9_2771)+l9_2260)+l9_2261;
}
else
{
float4x4 l9_2781=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2782=l9_2781;
float4 l9_2783=l9_2782[0];
float4 l9_2784=l9_2782[1];
float4 l9_2785=l9_2782[2];
float3x3 l9_2786=float3x3(float3(float3(l9_2783.x,l9_2784.x,l9_2785.x)),float3(float3(l9_2783.y,l9_2784.y,l9_2785.y)),float3(float3(l9_2783.z,l9_2784.z,l9_2785.z)));
float3x3 l9_2787=l9_2786;
l9_2660=(((l9_2262-l9_2771)+l9_2261)+l9_2260)*l9_2787;
}
}
l9_2660=normalize(l9_2660+float3(N111_EPSILON));
}
float3 l9_2788=float3(0.0,0.0,1.0);
float3 l9_2789=cross(l9_2660,l9_2788);
float3 l9_2790=normalize(l9_2789);
float l9_2791=length(l9_2789);
float l9_2792=dot(l9_2788,l9_2660);
float l9_2793=1.0-l9_2792;
l9_2659=float3x3(float3(((l9_2793*l9_2790.x)*l9_2790.x)+l9_2792,((l9_2793*l9_2790.x)*l9_2790.y)-(l9_2790.z*l9_2791),((l9_2793*l9_2790.z)*l9_2790.x)+(l9_2790.y*l9_2791)),float3(((l9_2793*l9_2790.x)*l9_2790.y)+(l9_2790.z*l9_2791),((l9_2793*l9_2790.y)*l9_2790.y)+l9_2792,((l9_2793*l9_2790.y)*l9_2790.z)-(l9_2790.x*l9_2791)),float3(((l9_2793*l9_2790.z)*l9_2790.x)-(l9_2790.y*l9_2791),((l9_2793*l9_2790.y)*l9_2790.z)+(l9_2790.x*l9_2791),((l9_2793*l9_2790.z)*l9_2790.z)+l9_2792));
}
float3x3 l9_2794=float3x3(float3(cos(l9_2405),-sin(l9_2405),0.0),float3(sin(l9_2405),cos(l9_2405),0.0),float3(0.0,0.0,1.0));
l9_2659=l9_2659*l9_2794;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_2795=l9_2387*(l9_2173-0.0099999998);
float3 l9_2796=l9_2387*(l9_2173+0.0099999998);
N111_position.z*=(length(l9_2796-l9_2795)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_2797=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_2798=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_2797);
float l9_2799=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_2797);
float l9_2800=((l9_2799*l9_2402)*l9_2174)*2.0;
float l9_2801=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_2802=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_2801);
float l9_2803=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_2801);
float l9_2804=((l9_2803*l9_2402)*l9_2174)*2.0;
float l9_2805=N111_PI*(l9_2800+l9_2798);
float l9_2806=N111_PI*(l9_2804+l9_2802);
float l9_2807=N111_PI*(l9_2404+l9_2397);
float3 l9_2808=float3(l9_2805,l9_2806,l9_2807);
float l9_2809=cos(l9_2808.x);
float l9_2810=sin(l9_2808.x);
float l9_2811=cos(l9_2808.y);
float l9_2812=sin(l9_2808.y);
float l9_2813=cos(l9_2808.z);
float l9_2814=sin(l9_2808.z);
l9_2659=float3x3(float3(l9_2811*l9_2813,(l9_2809*l9_2814)+((l9_2810*l9_2812)*l9_2813),(l9_2810*l9_2814)-((l9_2809*l9_2812)*l9_2813)),float3((-l9_2811)*l9_2814,(l9_2809*l9_2813)-((l9_2810*l9_2812)*l9_2814),(l9_2810*l9_2813)+((l9_2809*l9_2812)*l9_2814)),float3(l9_2812,(-l9_2810)*l9_2811,l9_2809*l9_2811));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_2815=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2816=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_2817=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_2818=float3x3(float3(l9_2815[0].xyz/float3(l9_2379.x)),float3(l9_2816[1].xyz/float3(l9_2379.y)),float3(l9_2817[2].xyz/float3(l9_2379.z)));
l9_2659=l9_2818*l9_2659;
}
N111_position=l9_2659*N111_position;
N111_normal=normalize(l9_2659*N111_normalObjectSpace);
N111_position+=l9_2396;
}
N111_timeValues=float4(l9_2172,l9_2173,l9_2174);
l9_2150=N111_nearCameraFade;
l9_2109=l9_2150;
l9_1920=l9_2109;
out.Interpolator0.x=l9_1920;
ssGlobals param_241=Globals;
float4 l9_2819=float4(0.0);
float l9_2820=0.0;
float l9_2821=(*sc_set0.UserUniforms).timeGlobal;
l9_2820=l9_2821;
float l9_2822=0.0;
float l9_2823=(*sc_set0.UserUniforms).externalTimeInput;
l9_2822=l9_2823;
float l9_2824=0.0;
float l9_2825=(*sc_set0.UserUniforms).externalSeed;
l9_2824=l9_2825;
float l9_2826=0.0;
float l9_2827=(*sc_set0.UserUniforms).lifeTimeConstant;
l9_2826=l9_2827;
float2 l9_2828=float2(0.0);
float2 l9_2829=(*sc_set0.UserUniforms).lifeTimeMinMax;
l9_2828=l9_2829;
float l9_2830=0.0;
float l9_2831=(*sc_set0.UserUniforms).spawnDuration;
l9_2830=l9_2831;
float3 l9_2832=float3(0.0);
float l9_2833=0.0;
float l9_2834=0.0;
float4 l9_2835=float4(0.0);
float l9_2836=l9_2820;
float l9_2837=l9_2822;
float l9_2838=l9_2824;
float l9_2839=l9_2826;
float2 l9_2840=l9_2828;
float l9_2841=l9_2830;
ssGlobals l9_2842=param_241;
tempGlobals=l9_2842;
float3 l9_2843=float3(0.0);
float l9_2844=0.0;
float l9_2845=0.0;
float4 l9_2846=float4(0.0);
N173_timeGlobal=l9_2836;
N173_ENABLE_EXTERNALTIME=(int(EXTERNALTIME_tmp)!=0);
N173_externalTime=l9_2837;
N173_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N173_externalSeed=l9_2838;
N173_ENABLE_LIFETIMEMINMAX=(int(LIFETIMEMINMAX_tmp)!=0);
N173_lifeTimeConstant=l9_2839;
N173_lifeTimeMinMax=l9_2840;
N173_ENABLE_INSTANTSPAWN=(int(INSTANTSPAWN_tmp)!=0);
N173_spawnDuration=l9_2841;
float l9_2847=0.0;
if (N173_ENABLE_WORLDPOSSEED)
{
float4x4 l9_2848=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_2847=length(float4(1.0)*l9_2848);
}
N173_globalSeed=N173_externalSeed+l9_2847;
float l9_2849=2000.0;
int l9_2850=0;
l9_2850=ssInstanceID;
int l9_2851=l9_2850;
float l9_2852=float(l9_2851);
float2 l9_2853=float2(mod(l9_2852,l9_2849),floor(l9_2852/l9_2849));
l9_2853/=float2(l9_2849);
float2 l9_2854=l9_2853;
float l9_2855=dot(l9_2854,float2(0.38253,0.42662001));
float3 l9_2856=float3(0.457831,0.62343299,0.97625297)*l9_2855;
l9_2856=sin(l9_2856)*float3(479.371,389.53101,513.03497);
l9_2856=fract(l9_2856);
l9_2856=floor(l9_2856*10000.0)*9.9999997e-05;
float3 l9_2857=l9_2856;
float3 l9_2858=l9_2857;
N173_particleSeed=l9_2858;
float l9_2859=fract((N173_particleSeed.y*12.12358)+N173_globalSeed);
float l9_2860=fract((N173_particleSeed.z*3.5358)+N173_globalSeed);
float2 l9_2861=float2(N173_lifeTimeConstant);
if (N173_ENABLE_LIFETIMEMINMAX)
{
l9_2861=N173_lifeTimeMinMax;
}
float l9_2862=fast::max(l9_2861.x,0.0099999998);
float l9_2863=fast::max(l9_2861.y,0.0099999998);
float l9_2864=tempGlobals.gTimeElapsed;
float l9_2865=l9_2864;
if (N173_ENABLE_EXTERNALTIME)
{
l9_2865=N173_externalTime;
}
float l9_2866=l9_2865;
if (N173_ENABLE_INSTANTSPAWN)
{
l9_2866=N173_timeGlobal*l9_2865;
}
else
{
float l9_2867=fract(((l9_2865*N173_timeGlobal)*(1.0/l9_2861.y))+l9_2859);
l9_2866=l9_2867*l9_2861.y;
}
float l9_2868=mix(l9_2866/l9_2862,l9_2866/l9_2863,l9_2860);
float l9_2869=fast::clamp(l9_2868,0.0,1.0);
float l9_2870=0.0;
if (!N173_ENABLE_INSTANTSPAWN)
{
if (N173_spawnDuration>0.0)
{
if ((l9_2865-N173_spawnDuration)>=l9_2866)
{
l9_2870=1.0;
}
}
}
float l9_2871=l9_2868+l9_2870;
N173_dieTrigger=1.0;
if (l9_2871>0.99989998)
{
N173_dieTrigger=0.0;
}
N173_timeValues=float4(l9_2861,l9_2866,l9_2869);
l9_2843=N173_particleSeed;
l9_2844=N173_globalSeed;
l9_2845=N173_dieTrigger;
l9_2846=N173_timeValues;
l9_2832=l9_2843;
l9_2833=l9_2844;
l9_2834=l9_2845;
l9_2835=l9_2846;
float3 l9_2872=float3(0.0);
l9_2872=param_241.SurfacePosition_ObjectSpace;
float3 l9_2873=float3(0.0);
l9_2873=param_241.VertexNormal_ObjectSpace;
float3 l9_2874=float3(0.0);
float3 l9_2875=(*sc_set0.UserUniforms).spawnLocation;
l9_2874=l9_2875;
float3 l9_2876=float3(0.0);
float3 l9_2877=(*sc_set0.UserUniforms).spawnBox;
l9_2876=l9_2877;
float3 l9_2878=float3(0.0);
float3 l9_2879=(*sc_set0.UserUniforms).spawnSphere;
l9_2878=l9_2879;
float3 l9_2880=float3(0.0);
float3 l9_2881=(*sc_set0.UserUniforms).noiseMult;
l9_2880=l9_2881;
float3 l9_2882=float3(0.0);
float3 l9_2883=(*sc_set0.UserUniforms).noiseFrequency;
l9_2882=l9_2883;
float3 l9_2884=float3(0.0);
float3 l9_2885=(*sc_set0.UserUniforms).sNoiseMult;
l9_2884=l9_2885;
float3 l9_2886=float3(0.0);
float3 l9_2887=(*sc_set0.UserUniforms).sNoiseFrequency;
l9_2886=l9_2887;
float3 l9_2888=float3(0.0);
float3 l9_2889=(*sc_set0.UserUniforms).velocityMin;
l9_2888=l9_2889;
float3 l9_2890=float3(0.0);
float3 l9_2891=(*sc_set0.UserUniforms).velocityMax;
l9_2890=l9_2891;
float3 l9_2892=float3(0.0);
float3 l9_2893=(*sc_set0.UserUniforms).velocityDrag;
l9_2892=l9_2893;
float3 l9_2894=float3(0.0);
float3 l9_2895=float3(0.0);
float3 l9_2896=float3(0.0);
float3 l9_2897;
if (MESHTYPE_tmp==0)
{
float2 l9_2898=float2(0.0);
float2 l9_2899=(*sc_set0.UserUniforms).sizeStart;
l9_2898=l9_2899;
l9_2895=float3(l9_2898,0.0);
l9_2897=l9_2895;
}
else
{
float3 l9_2900=float3(0.0);
float3 l9_2901=(*sc_set0.UserUniforms).sizeStart3D;
l9_2900=l9_2901;
l9_2896=l9_2900;
l9_2897=l9_2896;
}
l9_2894=l9_2897;
float3 l9_2902=float3(0.0);
float3 l9_2903=float3(0.0);
float3 l9_2904=float3(0.0);
float3 l9_2905;
if (MESHTYPE_tmp==0)
{
float2 l9_2906=float2(0.0);
float2 l9_2907=(*sc_set0.UserUniforms).sizeEnd;
l9_2906=l9_2907;
l9_2903=float3(l9_2906,0.0);
l9_2905=l9_2903;
}
else
{
float3 l9_2908=float3(0.0);
float3 l9_2909=(*sc_set0.UserUniforms).sizeEnd3D;
l9_2908=l9_2909;
l9_2904=l9_2908;
l9_2905=l9_2904;
}
l9_2902=l9_2905;
float3 l9_2910=float3(0.0);
float3 l9_2911=float3(0.0);
float3 l9_2912=float3(0.0);
float3 l9_2913;
if (MESHTYPE_tmp==0)
{
float2 l9_2914=float2(0.0);
float2 l9_2915=(*sc_set0.UserUniforms).sizeStartMin;
l9_2914=l9_2915;
l9_2911=float3(l9_2914,0.0);
l9_2913=l9_2911;
}
else
{
float3 l9_2916=float3(0.0);
float3 l9_2917=(*sc_set0.UserUniforms).sizeStartMin3D;
l9_2916=l9_2917;
l9_2912=l9_2916;
l9_2913=l9_2912;
}
l9_2910=l9_2913;
float3 l9_2918=float3(0.0);
float3 l9_2919=float3(0.0);
float3 l9_2920=float3(0.0);
float3 l9_2921;
if (MESHTYPE_tmp==0)
{
float2 l9_2922=float2(0.0);
float2 l9_2923=(*sc_set0.UserUniforms).sizeStartMax;
l9_2922=l9_2923;
l9_2919=float3(l9_2922,0.0);
l9_2921=l9_2919;
}
else
{
float3 l9_2924=float3(0.0);
float3 l9_2925=(*sc_set0.UserUniforms).sizeStartMax3D;
l9_2924=l9_2925;
l9_2920=l9_2924;
l9_2921=l9_2920;
}
l9_2918=l9_2921;
float3 l9_2926=float3(0.0);
float3 l9_2927=float3(0.0);
float3 l9_2928=float3(0.0);
float3 l9_2929;
if (MESHTYPE_tmp==0)
{
float2 l9_2930=float2(0.0);
float2 l9_2931=(*sc_set0.UserUniforms).sizeEndMin;
l9_2930=l9_2931;
l9_2927=float3(l9_2930,0.0);
l9_2929=l9_2927;
}
else
{
float3 l9_2932=float3(0.0);
float3 l9_2933=(*sc_set0.UserUniforms).sizeEndMin3D;
l9_2932=l9_2933;
l9_2928=l9_2932;
l9_2929=l9_2928;
}
l9_2926=l9_2929;
float3 l9_2934=float3(0.0);
float3 l9_2935=float3(0.0);
float3 l9_2936=float3(0.0);
float3 l9_2937;
if (MESHTYPE_tmp==0)
{
float2 l9_2938=float2(0.0);
float2 l9_2939=(*sc_set0.UserUniforms).sizeEndMax;
l9_2938=l9_2939;
l9_2935=float3(l9_2938,0.0);
l9_2937=l9_2935;
}
else
{
float3 l9_2940=float3(0.0);
float3 l9_2941=(*sc_set0.UserUniforms).sizeEndMax3D;
l9_2940=l9_2941;
l9_2936=l9_2940;
l9_2937=l9_2936;
}
l9_2934=l9_2937;
float l9_2942=0.0;
float l9_2943=(*sc_set0.UserUniforms).sizeSpeed;
l9_2942=l9_2943;
float l9_2944=0.0;
float l9_2945=(*sc_set0.UserUniforms).gravity;
l9_2944=l9_2945;
float3 l9_2946=float3(0.0);
float3 l9_2947=(*sc_set0.UserUniforms).localForce;
l9_2946=l9_2947;
float l9_2948=0.0;
float l9_2949=(*sc_set0.UserUniforms).sizeVelScale;
l9_2948=l9_2949;
float l9_2950=0.0;
float l9_2951=float((*sc_set0.UserUniforms).ALIGNTOX!=0);
l9_2950=l9_2951;
float l9_2952=0.0;
float l9_2953=float((*sc_set0.UserUniforms).ALIGNTOY!=0);
l9_2952=l9_2953;
float l9_2954=0.0;
float l9_2955=float((*sc_set0.UserUniforms).ALIGNTOZ!=0);
l9_2954=l9_2955;
float2 l9_2956=float2(0.0);
float2 l9_2957=(*sc_set0.UserUniforms).Port_Input1_N138;
float2 l9_2958=float2(0.0);
float2 l9_2959;
if (MESHTYPE_tmp==0)
{
l9_2959=l9_2957;
}
else
{
float2 l9_2960=float2(0.0);
float2 l9_2961=(*sc_set0.UserUniforms).rotationRandomX;
l9_2960=l9_2961;
l9_2958=l9_2960;
l9_2959=l9_2958;
}
l9_2956=l9_2959;
float2 l9_2962=float2(0.0);
float2 l9_2963=(*sc_set0.UserUniforms).Port_Input1_N139;
float2 l9_2964=float2(0.0);
float2 l9_2965;
if (MESHTYPE_tmp==0)
{
l9_2965=l9_2963;
}
else
{
float2 l9_2966=float2(0.0);
float2 l9_2967=(*sc_set0.UserUniforms).rotationRateX;
l9_2966=l9_2967;
l9_2964=l9_2966;
l9_2965=l9_2964;
}
l9_2962=l9_2965;
float2 l9_2968=float2(0.0);
float2 l9_2969=(*sc_set0.UserUniforms).Port_Input1_N140;
float2 l9_2970=float2(0.0);
float2 l9_2971;
if (MESHTYPE_tmp==0)
{
l9_2971=l9_2969;
}
else
{
float2 l9_2972=float2(0.0);
float2 l9_2973=(*sc_set0.UserUniforms).randomRotationY;
l9_2972=l9_2973;
l9_2970=l9_2972;
l9_2971=l9_2970;
}
l9_2968=l9_2971;
float2 l9_2974=float2(0.0);
float2 l9_2975=(*sc_set0.UserUniforms).Port_Input1_N144;
float2 l9_2976=float2(0.0);
float2 l9_2977;
if (MESHTYPE_tmp==0)
{
l9_2977=l9_2975;
}
else
{
float2 l9_2978=float2(0.0);
float2 l9_2979=(*sc_set0.UserUniforms).rotationRateY;
l9_2978=l9_2979;
l9_2976=l9_2978;
l9_2977=l9_2976;
}
l9_2974=l9_2977;
float2 l9_2980=float2(0.0);
float2 l9_2981=float2(1.0);
float2 l9_2982=float2(0.0);
float2 l9_2983;
if (MESHTYPE_tmp==0)
{
float2 l9_2984=float2(0.0);
float2 l9_2985=(*sc_set0.UserUniforms).rotationRandom;
l9_2984=l9_2985;
l9_2981=l9_2984;
l9_2983=l9_2981;
}
else
{
float2 l9_2986=float2(0.0);
float2 l9_2987=(*sc_set0.UserUniforms).randomRotationZ;
l9_2986=l9_2987;
l9_2982=l9_2986;
l9_2983=l9_2982;
}
l9_2980=l9_2983;
float2 l9_2988=float2(0.0);
float2 l9_2989=float2(1.0);
float2 l9_2990=float2(0.0);
float2 l9_2991;
if (MESHTYPE_tmp==0)
{
float2 l9_2992=float2(0.0);
float2 l9_2993=(*sc_set0.UserUniforms).rotationRate;
l9_2992=l9_2993;
l9_2989=l9_2992;
l9_2991=l9_2989;
}
else
{
float2 l9_2994=float2(0.0);
float2 l9_2995=(*sc_set0.UserUniforms).rotationRateZ;
l9_2994=l9_2995;
l9_2990=l9_2994;
l9_2991=l9_2990;
}
l9_2988=l9_2991;
float l9_2996=0.0;
float l9_2997=(*sc_set0.UserUniforms).rotationDrag;
l9_2996=l9_2997;
float l9_2998=0.0;
float l9_2999=(*sc_set0.UserUniforms).Port_Input1_N110;
float l9_3000=0.0;
float l9_3001;
if (MESHTYPE_tmp==0)
{
l9_3001=l9_2999;
}
else
{
float l9_3002=0.0;
float l9_3003=float((*sc_set0.UserUniforms).CENTER_BBOX!=0);
l9_3002=l9_3003;
l9_3000=l9_3002;
l9_3001=l9_3000;
}
l9_2998=l9_3001;
float l9_3004=0.0;
float l9_3005=(*sc_set0.UserUniforms).fadeDistanceVisible;
l9_3004=l9_3005;
float l9_3006=0.0;
float l9_3007=(*sc_set0.UserUniforms).fadeDistanceInvisible;
l9_3006=l9_3007;
float4 l9_3008=float4(0.0);
float3 l9_3009=l9_2832;
float l9_3010=l9_2833;
float l9_3011=l9_2834;
float4 l9_3012=l9_2835;
float3 l9_3013=l9_2872;
float3 l9_3014=l9_2873;
float3 l9_3015=l9_2874;
float3 l9_3016=l9_2876;
float3 l9_3017=l9_2878;
float3 l9_3018=l9_2880;
float3 l9_3019=l9_2882;
float3 l9_3020=l9_2884;
float3 l9_3021=l9_2886;
float3 l9_3022=l9_2888;
float3 l9_3023=l9_2890;
float3 l9_3024=l9_2892;
float3 l9_3025=l9_2894;
float3 l9_3026=l9_2902;
float3 l9_3027=l9_2910;
float3 l9_3028=l9_2918;
float3 l9_3029=l9_2926;
float3 l9_3030=l9_2934;
float l9_3031=l9_2942;
float l9_3032=l9_2944;
float3 l9_3033=l9_2946;
float l9_3034=l9_2948;
float l9_3035=l9_2950;
float l9_3036=l9_2952;
float l9_3037=l9_2954;
float2 l9_3038=l9_2956;
float2 l9_3039=l9_2962;
float2 l9_3040=l9_2968;
float2 l9_3041=l9_2974;
float2 l9_3042=l9_2980;
float2 l9_3043=l9_2988;
float l9_3044=l9_2996;
float l9_3045=l9_2998;
float l9_3046=l9_3004;
float l9_3047=l9_3006;
ssGlobals l9_3048=param_241;
tempGlobals=l9_3048;
float4 l9_3049=float4(0.0);
N111_MESHTYPE_QUAD=MESHTYPE_tmp==0;
N111_particleSeedIn=l9_3009;
N111_globalSeedIn=l9_3010;
N111_dieTrigger=l9_3011;
N111_timeValuesIn=l9_3012;
N111_positionObjectSpace=l9_3013;
N111_normalObjectSpace=l9_3014;
N111_ENABLE_INILOCATION=(int(INILOCATION_tmp)!=0);
N111_spawnLocation=l9_3015;
N111_ENABLE_BOXSPAWN=(int(BOXSPAWN_tmp)!=0);
N111_spawnBox=l9_3016;
N111_ENABLE_SPHERESPAWN=(int(SPHERESPAWN_tmp)!=0);
N111_spawnSphere=l9_3017;
N111_ENABLE_NOISE=(int(NOISE_tmp)!=0);
N111_noiseMult=l9_3018;
N111_noiseFrequency=l9_3019;
N111_ENABLE_SNOISE=(int(SNOISE_tmp)!=0);
N111_sNoiseMult=l9_3020;
N111_sNoiseFrequency=l9_3021;
N111_ENABLE_VELRAMP=(int(VELRAMP_tmp)!=0);
N111_velocityMin=l9_3022;
N111_velocityMax=l9_3023;
N111_velocityDrag=l9_3024;
N111_sizeStart=l9_3025;
N111_sizeEnd=l9_3026;
N111_ENABLE_SIZEMINMAX=(int(SIZEMINMAX_tmp)!=0);
N111_sizeStartMin=l9_3027;
N111_sizeStartMax=l9_3028;
N111_sizeEndMin=l9_3029;
N111_sizeEndMax=l9_3030;
N111_sizeSpeed=l9_3031;
N111_ENABLE_SIZERAMP=(int(SIZERAMP_tmp)!=0);
N111_gravity=l9_3032;
N111_ENABLE_FORCE=(int(FORCE_tmp)!=0);
N111_localForce=l9_3033;
N111_ENABLE_ALIGNTOVEL=(int(VELOCITYDIR_tmp)!=0);
N111_sizeVelScale=l9_3034;
N111_ENABLE_IGNOREVEL=(int(IGNOREVEL_tmp)!=0);
N111_ENABLE_IGNORETRANSFORMSCALE=(int(IGNORETRANSFORMSCALE_tmp)!=0);
N111_ENABLE_ALIGNTOX=l9_3035!=0.0;
N111_ENABLE_ALIGNTOY=l9_3036!=0.0;
N111_ENABLE_ALIGNTOZ=l9_3037!=0.0;
N111_rotationRandomX=l9_3038;
N111_rotationRateX=l9_3039;
N111_rotationRandomY=l9_3040;
N111_rotationRateY=l9_3041;
N111_rotationRandomZ=l9_3042;
N111_rotationRateZ=l9_3043;
N111_rotationDrag=l9_3044;
N111_WORLDSPACE=rotationSpace_tmp==1;
N111_WORLDFORCE=rotationSpace_tmp==2;
N111_ENABLE_CENTER_IN_BBOX=l9_3045!=0.0;
N111_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N111_fadeDistanceVisible=l9_3046;
N111_fadeDistanceInvisible=l9_3047;
float3 l9_3050=float3(0.0);
N111_particleSeed=N111_particleSeedIn;
N111_globalSeed=N111_globalSeedIn;
float l9_3051=N111_particleSeed.x;
float l9_3052=N111_particleSeed.y;
float l9_3053=N111_particleSeed.z;
float3 l9_3054=fract((float3(l9_3051,l9_3052,l9_3053)*3048.28)+float3(N111_globalSeed))-float3(0.5);
float3 l9_3055=fract((N111_particleSeed*374.57129)+float3(N111_globalSeed))-float3(0.5);
float3 l9_3056=normalize(l9_3055+float3(N111_EPSILON));
float l9_3057=fract(N111_particleSeed.x+N111_globalSeed);
float l9_3058=l9_3057;
float l9_3059=0.33333334;
float l9_3060;
if (l9_3058<=0.0)
{
l9_3060=0.0;
}
else
{
l9_3060=pow(l9_3058,l9_3059);
}
float l9_3061=l9_3060;
float l9_3062=l9_3061;
l9_3056*=l9_3062;
l9_3056/=float3(2.0);
float l9_3063=fract((N111_particleSeed.x*334.59122)+N111_globalSeed)-0.5;
float l9_3064=fract((N111_particleSeed.y*41.231232)+N111_globalSeed)-0.5;
float l9_3065=fract((N111_particleSeed.z*18.984529)+N111_globalSeed);
float l9_3066=fract((N111_particleSeed.x*654.15588)+N111_globalSeed);
float l9_3067=fract((N111_particleSeed.y*45.722408)+N111_globalSeed);
float3 l9_3068=(float3(l9_3066,l9_3067,l9_3065)-float3(0.5))*2.0;
float3 l9_3069=float3(l9_3066,l9_3067,l9_3065);
float l9_3070=fract((N111_particleSeed.z*15.32451)+N111_globalSeed);
float2 l9_3071=N111_timeValuesIn.xy;
float l9_3072=N111_timeValuesIn.z;
float l9_3073=N111_timeValuesIn.w;
float3 l9_3074=l9_3050;
float3 l9_3075=l9_3050;
float3 l9_3076=l9_3050;
if (N111_ENABLE_INILOCATION)
{
l9_3076=N111_spawnLocation;
}
if (N111_ENABLE_BOXSPAWN)
{
l9_3074=N111_spawnBox*l9_3054;
}
if (N111_ENABLE_SPHERESPAWN)
{
l9_3075=N111_spawnSphere*l9_3056;
}
float3 l9_3077=(l9_3076+l9_3075)+l9_3074;
float3 l9_3078=l9_3050;
if (N111_ENABLE_NOISE)
{
float3 l9_3079=N111_noiseFrequency;
float3 l9_3080=N111_noiseMult;
float3 l9_3081=l9_3068;
float l9_3082=l9_3073;
float l9_3083=sin(l9_3082*l9_3079.x);
float l9_3084=sin(l9_3082*l9_3079.y);
float l9_3085=sin(l9_3082*l9_3079.z);
float3 l9_3086=(float3(l9_3083,l9_3084,l9_3085)*l9_3080)*l9_3081;
float3 l9_3087=l9_3086;
l9_3078+=l9_3087;
}
if (N111_ENABLE_SNOISE)
{
float l9_3088=l9_3065;
float l9_3089=l9_3066;
float l9_3090=l9_3067;
float3 l9_3091=N111_sNoiseFrequency;
float3 l9_3092=N111_sNoiseMult;
float3 l9_3093=l9_3068;
float l9_3094=l9_3072;
float2 l9_3095=float2(l9_3088*l9_3094,l9_3091.x);
float2 l9_3096=floor(l9_3095+float2(dot(l9_3095,float2(0.36602542))));
float2 l9_3097=(l9_3095-l9_3096)+float2(dot(l9_3096,float2(0.21132487)));
float2 l9_3098=float2(0.0);
bool2 l9_3099=bool2(l9_3097.x>l9_3097.y);
l9_3098=float2(l9_3099.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_3099.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_3100=l9_3097.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_3101=l9_3100.xy-l9_3098;
l9_3100=float4(l9_3101.x,l9_3101.y,l9_3100.z,l9_3100.w);
l9_3096=mod(l9_3096,float2(289.0));
float3 l9_3102=float3(l9_3096.y)+float3(0.0,l9_3098.y,1.0);
float3 l9_3103=mod(((l9_3102*34.0)+float3(1.0))*l9_3102,float3(289.0));
float3 l9_3104=(l9_3103+float3(l9_3096.x))+float3(0.0,l9_3098.x,1.0);
float3 l9_3105=mod(((l9_3104*34.0)+float3(1.0))*l9_3104,float3(289.0));
float3 l9_3106=l9_3105;
float3 l9_3107=fast::max(float3(0.5)-float3(dot(l9_3097,l9_3097),dot(l9_3100.xy,l9_3100.xy),dot(l9_3100.zw,l9_3100.zw)),float3(0.0));
l9_3107*=l9_3107;
l9_3107*=l9_3107;
float3 l9_3108=(fract(l9_3106*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_3109=abs(l9_3108)-float3(0.5);
float3 l9_3110=floor(l9_3108+float3(0.5));
float3 l9_3111=l9_3108-l9_3110;
l9_3107*=(float3(1.7928429)-(((l9_3111*l9_3111)+(l9_3109*l9_3109))*0.85373473));
float3 l9_3112=float3(0.0);
l9_3112.x=(l9_3111.x*l9_3097.x)+(l9_3109.x*l9_3097.y);
float2 l9_3113=(l9_3111.yz*l9_3100.xz)+(l9_3109.yz*l9_3100.yw);
l9_3112=float3(l9_3112.x,l9_3113.x,l9_3113.y);
float l9_3114=130.0*dot(l9_3107,l9_3112);
float l9_3115=l9_3114;
float2 l9_3116=float2(l9_3089*l9_3094,l9_3091.y);
float2 l9_3117=floor(l9_3116+float2(dot(l9_3116,float2(0.36602542))));
float2 l9_3118=(l9_3116-l9_3117)+float2(dot(l9_3117,float2(0.21132487)));
float2 l9_3119=float2(0.0);
bool2 l9_3120=bool2(l9_3118.x>l9_3118.y);
l9_3119=float2(l9_3120.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_3120.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_3121=l9_3118.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_3122=l9_3121.xy-l9_3119;
l9_3121=float4(l9_3122.x,l9_3122.y,l9_3121.z,l9_3121.w);
l9_3117=mod(l9_3117,float2(289.0));
float3 l9_3123=float3(l9_3117.y)+float3(0.0,l9_3119.y,1.0);
float3 l9_3124=mod(((l9_3123*34.0)+float3(1.0))*l9_3123,float3(289.0));
float3 l9_3125=(l9_3124+float3(l9_3117.x))+float3(0.0,l9_3119.x,1.0);
float3 l9_3126=mod(((l9_3125*34.0)+float3(1.0))*l9_3125,float3(289.0));
float3 l9_3127=l9_3126;
float3 l9_3128=fast::max(float3(0.5)-float3(dot(l9_3118,l9_3118),dot(l9_3121.xy,l9_3121.xy),dot(l9_3121.zw,l9_3121.zw)),float3(0.0));
l9_3128*=l9_3128;
l9_3128*=l9_3128;
float3 l9_3129=(fract(l9_3127*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_3130=abs(l9_3129)-float3(0.5);
float3 l9_3131=floor(l9_3129+float3(0.5));
float3 l9_3132=l9_3129-l9_3131;
l9_3128*=(float3(1.7928429)-(((l9_3132*l9_3132)+(l9_3130*l9_3130))*0.85373473));
float3 l9_3133=float3(0.0);
l9_3133.x=(l9_3132.x*l9_3118.x)+(l9_3130.x*l9_3118.y);
float2 l9_3134=(l9_3132.yz*l9_3121.xz)+(l9_3130.yz*l9_3121.yw);
l9_3133=float3(l9_3133.x,l9_3134.x,l9_3134.y);
float l9_3135=130.0*dot(l9_3128,l9_3133);
float l9_3136=l9_3135;
float2 l9_3137=float2(l9_3090*l9_3094,l9_3091.z);
float2 l9_3138=floor(l9_3137+float2(dot(l9_3137,float2(0.36602542))));
float2 l9_3139=(l9_3137-l9_3138)+float2(dot(l9_3138,float2(0.21132487)));
float2 l9_3140=float2(0.0);
bool2 l9_3141=bool2(l9_3139.x>l9_3139.y);
l9_3140=float2(l9_3141.x ? float2(1.0,0.0).x : float2(0.0,1.0).x,l9_3141.y ? float2(1.0,0.0).y : float2(0.0,1.0).y);
float4 l9_3142=l9_3139.xyxy+float4(0.21132487,0.21132487,-0.57735026,-0.57735026);
float2 l9_3143=l9_3142.xy-l9_3140;
l9_3142=float4(l9_3143.x,l9_3143.y,l9_3142.z,l9_3142.w);
l9_3138=mod(l9_3138,float2(289.0));
float3 l9_3144=float3(l9_3138.y)+float3(0.0,l9_3140.y,1.0);
float3 l9_3145=mod(((l9_3144*34.0)+float3(1.0))*l9_3144,float3(289.0));
float3 l9_3146=(l9_3145+float3(l9_3138.x))+float3(0.0,l9_3140.x,1.0);
float3 l9_3147=mod(((l9_3146*34.0)+float3(1.0))*l9_3146,float3(289.0));
float3 l9_3148=l9_3147;
float3 l9_3149=fast::max(float3(0.5)-float3(dot(l9_3139,l9_3139),dot(l9_3142.xy,l9_3142.xy),dot(l9_3142.zw,l9_3142.zw)),float3(0.0));
l9_3149*=l9_3149;
l9_3149*=l9_3149;
float3 l9_3150=(fract(l9_3148*float3(0.024390243))*2.0)-float3(1.0);
float3 l9_3151=abs(l9_3150)-float3(0.5);
float3 l9_3152=floor(l9_3150+float3(0.5));
float3 l9_3153=l9_3150-l9_3152;
l9_3149*=(float3(1.7928429)-(((l9_3153*l9_3153)+(l9_3151*l9_3151))*0.85373473));
float3 l9_3154=float3(0.0);
l9_3154.x=(l9_3153.x*l9_3139.x)+(l9_3151.x*l9_3139.y);
float2 l9_3155=(l9_3153.yz*l9_3142.xz)+(l9_3151.yz*l9_3142.yw);
l9_3154=float3(l9_3154.x,l9_3155.x,l9_3155.y);
float l9_3156=130.0*dot(l9_3149,l9_3154);
float l9_3157=l9_3156;
float3 l9_3158=(float3(l9_3115,l9_3136,l9_3157)*l9_3092)*l9_3093;
l9_3078+=l9_3158;
}
float3 l9_3159=float3(0.0,((N111_gravity/2.0)*l9_3072)*l9_3072,0.0);
float3 l9_3160=l9_3050;
if (N111_ENABLE_FORCE)
{
l9_3160=((N111_localForce/float3(2.0))*l9_3072)*l9_3072;
}
float3 l9_3161=l9_3050;
float3 l9_3162=N111_velocityMin+(((l9_3068+float3(1.0))/float3(2.0))*(N111_velocityMax-N111_velocityMin));
if (N111_ENABLE_VELRAMP)
{
l9_3162=mix(N111_velocityMin,N111_velocityMax,l9_3069);
}
float3 l9_3163=l9_3162;
float l9_3164=l9_3072;
float3 l9_3165=N111_velocityDrag;
float3 l9_3166=l9_3078;
float l9_3167=l9_3073;
float3 l9_3168=float3(l9_3164,l9_3164,l9_3164);
float3 l9_3169=l9_3165;
float l9_3170;
if (l9_3168.x<=0.0)
{
l9_3170=0.0;
}
else
{
l9_3170=pow(l9_3168.x,l9_3169.x);
}
float l9_3171=l9_3170;
float l9_3172;
if (l9_3168.y<=0.0)
{
l9_3172=0.0;
}
else
{
l9_3172=pow(l9_3168.y,l9_3169.y);
}
float l9_3173=l9_3172;
float l9_3174;
if (l9_3168.z<=0.0)
{
l9_3174=0.0;
}
else
{
l9_3174=pow(l9_3168.z,l9_3169.z);
}
float3 l9_3175=float3(l9_3171,l9_3173,l9_3174);
float3 l9_3176=l9_3175;
float3 l9_3177=(l9_3163+l9_3166)*l9_3176;
if (N111_ENABLE_VELRAMP)
{
float l9_3178=floor(l9_3167*10000.0)/10000.0;
float2 l9_3179=tempGlobals.Surface_UVCoord0;
float2 l9_3180=(l9_3179/float2(10000.0,1.0))+float2(l9_3178,0.0);
float2 l9_3181=l9_3180;
float4 l9_3182=float4(0.0);
int l9_3183;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_3184=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3184=0;
}
else
{
l9_3184=gl_InstanceIndex%2;
}
int l9_3185=l9_3184;
l9_3183=1-l9_3185;
}
else
{
int l9_3186=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3186=0;
}
else
{
l9_3186=gl_InstanceIndex%2;
}
int l9_3187=l9_3186;
l9_3183=l9_3187;
}
int l9_3188=l9_3183;
int l9_3189=velRampTextureLayout_tmp;
int l9_3190=l9_3188;
float2 l9_3191=l9_3181;
bool l9_3192=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_3193=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_3194=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_3195=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_3196=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_3197=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_3198=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_3199=0.0;
bool l9_3200=l9_3197&&(!l9_3195);
float l9_3201=1.0;
float l9_3202=l9_3191.x;
int l9_3203=l9_3194.x;
if (l9_3203==1)
{
l9_3202=fract(l9_3202);
}
else
{
if (l9_3203==2)
{
float l9_3204=fract(l9_3202);
float l9_3205=l9_3202-l9_3204;
float l9_3206=step(0.25,fract(l9_3205*0.5));
l9_3202=mix(l9_3204,1.0-l9_3204,fast::clamp(l9_3206,0.0,1.0));
}
}
l9_3191.x=l9_3202;
float l9_3207=l9_3191.y;
int l9_3208=l9_3194.y;
if (l9_3208==1)
{
l9_3207=fract(l9_3207);
}
else
{
if (l9_3208==2)
{
float l9_3209=fract(l9_3207);
float l9_3210=l9_3207-l9_3209;
float l9_3211=step(0.25,fract(l9_3210*0.5));
l9_3207=mix(l9_3209,1.0-l9_3209,fast::clamp(l9_3211,0.0,1.0));
}
}
l9_3191.y=l9_3207;
if (l9_3195)
{
bool l9_3212=l9_3197;
bool l9_3213;
if (l9_3212)
{
l9_3213=l9_3194.x==3;
}
else
{
l9_3213=l9_3212;
}
float l9_3214=l9_3191.x;
float l9_3215=l9_3196.x;
float l9_3216=l9_3196.z;
bool l9_3217=l9_3213;
float l9_3218=l9_3201;
float l9_3219=fast::clamp(l9_3214,l9_3215,l9_3216);
float l9_3220=step(abs(l9_3214-l9_3219),9.9999997e-06);
l9_3218*=(l9_3220+((1.0-float(l9_3217))*(1.0-l9_3220)));
l9_3214=l9_3219;
l9_3191.x=l9_3214;
l9_3201=l9_3218;
bool l9_3221=l9_3197;
bool l9_3222;
if (l9_3221)
{
l9_3222=l9_3194.y==3;
}
else
{
l9_3222=l9_3221;
}
float l9_3223=l9_3191.y;
float l9_3224=l9_3196.y;
float l9_3225=l9_3196.w;
bool l9_3226=l9_3222;
float l9_3227=l9_3201;
float l9_3228=fast::clamp(l9_3223,l9_3224,l9_3225);
float l9_3229=step(abs(l9_3223-l9_3228),9.9999997e-06);
l9_3227*=(l9_3229+((1.0-float(l9_3226))*(1.0-l9_3229)));
l9_3223=l9_3228;
l9_3191.y=l9_3223;
l9_3201=l9_3227;
}
float2 l9_3230=l9_3191;
bool l9_3231=l9_3192;
float3x3 l9_3232=l9_3193;
if (l9_3231)
{
l9_3230=float2((l9_3232*float3(l9_3230,1.0)).xy);
}
float2 l9_3233=l9_3230;
l9_3191=l9_3233;
float l9_3234=l9_3191.x;
int l9_3235=l9_3194.x;
bool l9_3236=l9_3200;
float l9_3237=l9_3201;
if ((l9_3235==0)||(l9_3235==3))
{
float l9_3238=l9_3234;
float l9_3239=0.0;
float l9_3240=1.0;
bool l9_3241=l9_3236;
float l9_3242=l9_3237;
float l9_3243=fast::clamp(l9_3238,l9_3239,l9_3240);
float l9_3244=step(abs(l9_3238-l9_3243),9.9999997e-06);
l9_3242*=(l9_3244+((1.0-float(l9_3241))*(1.0-l9_3244)));
l9_3238=l9_3243;
l9_3234=l9_3238;
l9_3237=l9_3242;
}
l9_3191.x=l9_3234;
l9_3201=l9_3237;
float l9_3245=l9_3191.y;
int l9_3246=l9_3194.y;
bool l9_3247=l9_3200;
float l9_3248=l9_3201;
if ((l9_3246==0)||(l9_3246==3))
{
float l9_3249=l9_3245;
float l9_3250=0.0;
float l9_3251=1.0;
bool l9_3252=l9_3247;
float l9_3253=l9_3248;
float l9_3254=fast::clamp(l9_3249,l9_3250,l9_3251);
float l9_3255=step(abs(l9_3249-l9_3254),9.9999997e-06);
l9_3253*=(l9_3255+((1.0-float(l9_3252))*(1.0-l9_3255)));
l9_3249=l9_3254;
l9_3245=l9_3249;
l9_3248=l9_3253;
}
l9_3191.y=l9_3245;
l9_3201=l9_3248;
float2 l9_3256=l9_3191;
int l9_3257=l9_3189;
int l9_3258=l9_3190;
float l9_3259=l9_3199;
float2 l9_3260=l9_3256;
int l9_3261=l9_3257;
int l9_3262=l9_3258;
float3 l9_3263=float3(0.0);
if (l9_3261==0)
{
l9_3263=float3(l9_3260,0.0);
}
else
{
if (l9_3261==1)
{
l9_3263=float3(l9_3260.x,(l9_3260.y*0.5)+(0.5-(float(l9_3262)*0.5)),0.0);
}
else
{
l9_3263=float3(l9_3260,float(l9_3262));
}
}
float3 l9_3264=l9_3263;
float3 l9_3265=l9_3264;
float4 l9_3266=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_3265.xy,level(l9_3259));
float4 l9_3267=l9_3266;
if (l9_3197)
{
l9_3267=mix(l9_3198,l9_3267,float4(l9_3201));
}
float4 l9_3268=l9_3267;
l9_3182=l9_3268;
float4 l9_3269=l9_3182;
float3 l9_3270=l9_3269.xyz;
l9_3177=(l9_3163+l9_3166)*l9_3270;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_3177=l9_3163*l9_3176;
}
}
float3 l9_3271=l9_3177;
l9_3161=l9_3271;
float4x4 l9_3272=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_3273=length(l9_3272[0].xyz);
float4x4 l9_3274=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_3275=length(l9_3274[1].xyz);
float4x4 l9_3276=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_3277=length(l9_3276[2].xyz);
float3 l9_3278=float3(l9_3273,l9_3275,l9_3277);
float4x4 l9_3279=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3280=l9_3279;
float4 l9_3281=l9_3280[0];
float4 l9_3282=l9_3280[1];
float4 l9_3283=l9_3280[2];
float3x3 l9_3284=float3x3(float3(float3(l9_3281.x,l9_3282.x,l9_3283.x)),float3(float3(l9_3281.y,l9_3282.y,l9_3283.y)),float3(float3(l9_3281.z,l9_3282.z,l9_3283.z)));
float3x3 l9_3285=l9_3284;
float3 l9_3286=((l9_3161+l9_3159)+l9_3160)*l9_3285;
if (N111_WORLDFORCE)
{
float4x4 l9_3287=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3288=l9_3287;
float4 l9_3289=l9_3288[0];
float4 l9_3290=l9_3288[1];
float4 l9_3291=l9_3288[2];
float3x3 l9_3292=float3x3(float3(float3(l9_3289.x,l9_3290.x,l9_3291.x)),float3(float3(l9_3289.y,l9_3290.y,l9_3291.y)),float3(float3(l9_3289.z,l9_3290.z,l9_3291.z)));
float3x3 l9_3293=l9_3292;
l9_3286=((l9_3161*l9_3293)+l9_3159)+l9_3160;
}
if (N111_WORLDSPACE)
{
l9_3286=((l9_3161*l9_3278)+l9_3159)+l9_3160;
}
float4x4 l9_3294=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_3295=(l9_3294*float4(l9_3077,1.0)).xyz+l9_3286;
float l9_3296=mix(N111_rotationRandomZ.x,N111_rotationRandomZ.y,l9_3070);
float l9_3297=1.0-l9_3073;
float l9_3298=N111_rotationDrag;
float l9_3299;
if (l9_3297<=0.0)
{
l9_3299=0.0;
}
else
{
l9_3299=pow(l9_3297,l9_3298);
}
float l9_3300=l9_3299;
float l9_3301=l9_3300;
float l9_3302=mix(N111_rotationRateZ.x,N111_rotationRateZ.y,l9_3070);
float l9_3303=((l9_3302*l9_3301)*l9_3073)*2.0;
float l9_3304=N111_PI*((l9_3303+l9_3296)-0.5);
float l9_3305=1.0;
if (N111_ENABLE_SCREENFADE)
{
float3 l9_3306=(*sc_set0.UserUniforms).sc_Camera.position;
float3 l9_3307=l9_3306-l9_3295;
float l9_3308=dot(l9_3307,l9_3307);
float l9_3309=(N111_fadeDistanceInvisible+N111_EPSILON)*(N111_fadeDistanceInvisible+N111_EPSILON);
float l9_3310=N111_fadeDistanceVisible*N111_fadeDistanceVisible;
float l9_3311=fast::min(l9_3309,l9_3310);
float l9_3312=fast::max(l9_3309,l9_3310);
N111_nearCameraFade=smoothstep(l9_3311,l9_3312,l9_3308);
float l9_3313;
if (l9_3309>l9_3310)
{
l9_3313=1.0-N111_nearCameraFade;
}
else
{
l9_3313=N111_nearCameraFade;
}
N111_nearCameraFade=l9_3313;
if (N111_nearCameraFade<=N111_EPSILON)
{
l9_3305=0.0;
}
}
if (N111_MESHTYPE_QUAD)
{
int l9_3314=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3314=0;
}
else
{
l9_3314=gl_InstanceIndex%2;
}
int l9_3315=l9_3314;
float4x4 l9_3316=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_3315];
float3 l9_3317=l9_3316[2].xyz;
int l9_3318=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3318=0;
}
else
{
l9_3318=gl_InstanceIndex%2;
}
int l9_3319=l9_3318;
float3 l9_3320=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_3319][1].xyz;
float3 l9_3321=-l9_3320;
float3 l9_3322=normalize(cross(l9_3317,l9_3321));
float l9_3323=1.0;
if (N111_ENABLE_ALIGNTOX)
{
l9_3322=float3(0.0,0.0,1.0);
l9_3321=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_3322=float3(1.0,0.0,0.0);
l9_3321=float3(0.0,0.0,1.0);
}
if (N111_ENABLE_ALIGNTOZ)
{
l9_3322=float3(1.0,0.0,0.0);
l9_3321=float3(0.0,1.0,0.0);
}
float2 l9_3324=float2(cos(l9_3304),sin(l9_3304));
float2 l9_3325=float2(-sin(l9_3304),cos(l9_3304));
float3 l9_3326=float3((l9_3322*l9_3324.x)+(l9_3321*l9_3324.y));
float3 l9_3327=float3((l9_3322*l9_3325.x)+(l9_3321*l9_3325.y));
if (N111_ENABLE_ALIGNTOVEL)
{
float3 l9_3328=normalize(((l9_3286+l9_3159)+l9_3160)+float3(N111_EPSILON));
float3 l9_3329=l9_3286*(l9_3072-0.0099999998);
float3 l9_3330=l9_3286*(l9_3072+0.0099999998);
if (N111_ENABLE_IGNOREVEL)
{
l9_3323=fast::max(N111_sizeVelScale,N111_EPSILON);
}
else
{
l9_3323=length(l9_3330-l9_3329)*N111_sizeVelScale;
if (N111_ENABLE_IGNORETRANSFORMSCALE)
{
float4x4 l9_3331=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_3323=(length(l9_3330-l9_3329)/length(l9_3331[0].xyz))*N111_sizeVelScale;
}
}
l9_3326=l9_3328;
l9_3327=normalize(cross(l9_3326,l9_3317));
}
float4x4 l9_3332=(*sc_set0.UserUniforms).sc_ModelMatrix;
float l9_3333=length(l9_3332[0].xyz);
float2 l9_3334=tempGlobals.Surface_UVCoord0;
float2 l9_3335=l9_3334;
float l9_3336=N111_dieTrigger;
float l9_3337=l9_3305;
float2 l9_3338=l9_3335;
float l9_3339=l9_3063;
float l9_3340=l9_3064;
float l9_3341=l9_3073;
float l9_3342=N111_sizeSpeed;
float2 l9_3343=N111_sizeStart.xy;
float2 l9_3344=N111_sizeEnd.xy;
float l9_3345=l9_3341;
float l9_3346=l9_3342;
float l9_3347;
if (l9_3345<=0.0)
{
l9_3347=0.0;
}
else
{
l9_3347=pow(l9_3345,l9_3346);
}
float l9_3348=l9_3347;
float l9_3349=l9_3348;
if (N111_ENABLE_SIZEMINMAX)
{
l9_3343=mix(N111_sizeStartMin.xy,N111_sizeStartMax.xy,float2(l9_3339));
l9_3344=mix(N111_sizeEndMin.xy,N111_sizeEndMax.xy,float2(l9_3340));
}
float2 l9_3350=mix(l9_3343,l9_3344,float2(l9_3349));
if (N111_ENABLE_SIZERAMP)
{
float l9_3351=ceil(l9_3341*10000.0)/10000.0;
float2 l9_3352=tempGlobals.Surface_UVCoord0;
float2 l9_3353=(l9_3352/float2(10000.0,1.0))+float2(l9_3351,0.0);
float2 l9_3354=l9_3353;
float4 l9_3355=float4(0.0);
int l9_3356;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_3357=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3357=0;
}
else
{
l9_3357=gl_InstanceIndex%2;
}
int l9_3358=l9_3357;
l9_3356=1-l9_3358;
}
else
{
int l9_3359=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3359=0;
}
else
{
l9_3359=gl_InstanceIndex%2;
}
int l9_3360=l9_3359;
l9_3356=l9_3360;
}
int l9_3361=l9_3356;
int l9_3362=sizeRampTextureLayout_tmp;
int l9_3363=l9_3361;
float2 l9_3364=l9_3354;
bool l9_3365=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_3366=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_3367=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_3368=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_3369=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_3370=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_3371=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_3372=0.0;
bool l9_3373=l9_3370&&(!l9_3368);
float l9_3374=1.0;
float l9_3375=l9_3364.x;
int l9_3376=l9_3367.x;
if (l9_3376==1)
{
l9_3375=fract(l9_3375);
}
else
{
if (l9_3376==2)
{
float l9_3377=fract(l9_3375);
float l9_3378=l9_3375-l9_3377;
float l9_3379=step(0.25,fract(l9_3378*0.5));
l9_3375=mix(l9_3377,1.0-l9_3377,fast::clamp(l9_3379,0.0,1.0));
}
}
l9_3364.x=l9_3375;
float l9_3380=l9_3364.y;
int l9_3381=l9_3367.y;
if (l9_3381==1)
{
l9_3380=fract(l9_3380);
}
else
{
if (l9_3381==2)
{
float l9_3382=fract(l9_3380);
float l9_3383=l9_3380-l9_3382;
float l9_3384=step(0.25,fract(l9_3383*0.5));
l9_3380=mix(l9_3382,1.0-l9_3382,fast::clamp(l9_3384,0.0,1.0));
}
}
l9_3364.y=l9_3380;
if (l9_3368)
{
bool l9_3385=l9_3370;
bool l9_3386;
if (l9_3385)
{
l9_3386=l9_3367.x==3;
}
else
{
l9_3386=l9_3385;
}
float l9_3387=l9_3364.x;
float l9_3388=l9_3369.x;
float l9_3389=l9_3369.z;
bool l9_3390=l9_3386;
float l9_3391=l9_3374;
float l9_3392=fast::clamp(l9_3387,l9_3388,l9_3389);
float l9_3393=step(abs(l9_3387-l9_3392),9.9999997e-06);
l9_3391*=(l9_3393+((1.0-float(l9_3390))*(1.0-l9_3393)));
l9_3387=l9_3392;
l9_3364.x=l9_3387;
l9_3374=l9_3391;
bool l9_3394=l9_3370;
bool l9_3395;
if (l9_3394)
{
l9_3395=l9_3367.y==3;
}
else
{
l9_3395=l9_3394;
}
float l9_3396=l9_3364.y;
float l9_3397=l9_3369.y;
float l9_3398=l9_3369.w;
bool l9_3399=l9_3395;
float l9_3400=l9_3374;
float l9_3401=fast::clamp(l9_3396,l9_3397,l9_3398);
float l9_3402=step(abs(l9_3396-l9_3401),9.9999997e-06);
l9_3400*=(l9_3402+((1.0-float(l9_3399))*(1.0-l9_3402)));
l9_3396=l9_3401;
l9_3364.y=l9_3396;
l9_3374=l9_3400;
}
float2 l9_3403=l9_3364;
bool l9_3404=l9_3365;
float3x3 l9_3405=l9_3366;
if (l9_3404)
{
l9_3403=float2((l9_3405*float3(l9_3403,1.0)).xy);
}
float2 l9_3406=l9_3403;
l9_3364=l9_3406;
float l9_3407=l9_3364.x;
int l9_3408=l9_3367.x;
bool l9_3409=l9_3373;
float l9_3410=l9_3374;
if ((l9_3408==0)||(l9_3408==3))
{
float l9_3411=l9_3407;
float l9_3412=0.0;
float l9_3413=1.0;
bool l9_3414=l9_3409;
float l9_3415=l9_3410;
float l9_3416=fast::clamp(l9_3411,l9_3412,l9_3413);
float l9_3417=step(abs(l9_3411-l9_3416),9.9999997e-06);
l9_3415*=(l9_3417+((1.0-float(l9_3414))*(1.0-l9_3417)));
l9_3411=l9_3416;
l9_3407=l9_3411;
l9_3410=l9_3415;
}
l9_3364.x=l9_3407;
l9_3374=l9_3410;
float l9_3418=l9_3364.y;
int l9_3419=l9_3367.y;
bool l9_3420=l9_3373;
float l9_3421=l9_3374;
if ((l9_3419==0)||(l9_3419==3))
{
float l9_3422=l9_3418;
float l9_3423=0.0;
float l9_3424=1.0;
bool l9_3425=l9_3420;
float l9_3426=l9_3421;
float l9_3427=fast::clamp(l9_3422,l9_3423,l9_3424);
float l9_3428=step(abs(l9_3422-l9_3427),9.9999997e-06);
l9_3426*=(l9_3428+((1.0-float(l9_3425))*(1.0-l9_3428)));
l9_3422=l9_3427;
l9_3418=l9_3422;
l9_3421=l9_3426;
}
l9_3364.y=l9_3418;
l9_3374=l9_3421;
float2 l9_3429=l9_3364;
int l9_3430=l9_3362;
int l9_3431=l9_3363;
float l9_3432=l9_3372;
float2 l9_3433=l9_3429;
int l9_3434=l9_3430;
int l9_3435=l9_3431;
float3 l9_3436=float3(0.0);
if (l9_3434==0)
{
l9_3436=float3(l9_3433,0.0);
}
else
{
if (l9_3434==1)
{
l9_3436=float3(l9_3433.x,(l9_3433.y*0.5)+(0.5-(float(l9_3435)*0.5)),0.0);
}
else
{
l9_3436=float3(l9_3433,float(l9_3435));
}
}
float3 l9_3437=l9_3436;
float3 l9_3438=l9_3437;
float4 l9_3439=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_3438.xy,level(l9_3432));
float4 l9_3440=l9_3439;
if (l9_3370)
{
l9_3440=mix(l9_3371,l9_3440,float4(l9_3374));
}
float4 l9_3441=l9_3440;
l9_3355=l9_3441;
float4 l9_3442=l9_3355;
float2 l9_3443=l9_3442.xy;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_3443=float2(1.0);
}
l9_3350=l9_3443*l9_3343;
}
float2 l9_3444=l9_3350;
float2 l9_3445=(((l9_3338-float2(0.5))*(l9_3336*l9_3337))*l9_3444)*l9_3333;
float3 l9_3446=(l9_3295+(l9_3327*l9_3445.x))+(l9_3326*(l9_3445.y*l9_3323));
N111_position=l9_3446;
N111_normal=l9_3317;
}
else
{
N111_position=N111_positionObjectSpace;
if (N111_ENABLE_CENTER_IN_BBOX)
{
float3 l9_3447=(*sc_set0.UserUniforms).sc_LocalAabbMax;
float3 l9_3448=(*sc_set0.UserUniforms).sc_LocalAabbMin;
float3 l9_3449=(l9_3447+l9_3448)/float3(2.0);
N111_position-=l9_3449;
}
float3 l9_3450=N111_position;
float3 l9_3451=l9_3278;
float l9_3452=l9_3063;
float l9_3453=l9_3064;
float l9_3454=l9_3073;
float l9_3455=N111_sizeSpeed;
float3 l9_3456=N111_sizeStart;
float3 l9_3457=N111_sizeEnd;
float l9_3458=l9_3454;
float l9_3459=l9_3455;
float l9_3460;
if (l9_3458<=0.0)
{
l9_3460=0.0;
}
else
{
l9_3460=pow(l9_3458,l9_3459);
}
float l9_3461=l9_3460;
float l9_3462=l9_3461;
if (N111_ENABLE_SIZEMINMAX)
{
l9_3456=mix(N111_sizeStartMin,N111_sizeStartMax,float3(l9_3452));
l9_3457=mix(N111_sizeEndMin,N111_sizeEndMax,float3(l9_3453));
}
float3 l9_3463=mix(l9_3456,l9_3457,float3(l9_3462));
if (N111_ENABLE_SIZERAMP)
{
float l9_3464=ceil(l9_3454*10000.0)/10000.0;
float2 l9_3465=tempGlobals.Surface_UVCoord0;
float2 l9_3466=(l9_3465/float2(10000.0,1.0))+float2(l9_3464,0.0);
float2 l9_3467=l9_3466;
float4 l9_3468=float4(0.0);
int l9_3469;
if ((int(sizeRampTextureHasSwappedViews_tmp)!=0))
{
int l9_3470=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3470=0;
}
else
{
l9_3470=gl_InstanceIndex%2;
}
int l9_3471=l9_3470;
l9_3469=1-l9_3471;
}
else
{
int l9_3472=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3472=0;
}
else
{
l9_3472=gl_InstanceIndex%2;
}
int l9_3473=l9_3472;
l9_3469=l9_3473;
}
int l9_3474=l9_3469;
int l9_3475=sizeRampTextureLayout_tmp;
int l9_3476=l9_3474;
float2 l9_3477=l9_3467;
bool l9_3478=(int(SC_USE_UV_TRANSFORM_sizeRampTexture_tmp)!=0);
float3x3 l9_3479=(*sc_set0.UserUniforms).sizeRampTextureTransform;
int2 l9_3480=int2(SC_SOFTWARE_WRAP_MODE_U_sizeRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sizeRampTexture_tmp);
bool l9_3481=(int(SC_USE_UV_MIN_MAX_sizeRampTexture_tmp)!=0);
float4 l9_3482=(*sc_set0.UserUniforms).sizeRampTextureUvMinMax;
bool l9_3483=(int(SC_USE_CLAMP_TO_BORDER_sizeRampTexture_tmp)!=0);
float4 l9_3484=(*sc_set0.UserUniforms).sizeRampTextureBorderColor;
float l9_3485=0.0;
bool l9_3486=l9_3483&&(!l9_3481);
float l9_3487=1.0;
float l9_3488=l9_3477.x;
int l9_3489=l9_3480.x;
if (l9_3489==1)
{
l9_3488=fract(l9_3488);
}
else
{
if (l9_3489==2)
{
float l9_3490=fract(l9_3488);
float l9_3491=l9_3488-l9_3490;
float l9_3492=step(0.25,fract(l9_3491*0.5));
l9_3488=mix(l9_3490,1.0-l9_3490,fast::clamp(l9_3492,0.0,1.0));
}
}
l9_3477.x=l9_3488;
float l9_3493=l9_3477.y;
int l9_3494=l9_3480.y;
if (l9_3494==1)
{
l9_3493=fract(l9_3493);
}
else
{
if (l9_3494==2)
{
float l9_3495=fract(l9_3493);
float l9_3496=l9_3493-l9_3495;
float l9_3497=step(0.25,fract(l9_3496*0.5));
l9_3493=mix(l9_3495,1.0-l9_3495,fast::clamp(l9_3497,0.0,1.0));
}
}
l9_3477.y=l9_3493;
if (l9_3481)
{
bool l9_3498=l9_3483;
bool l9_3499;
if (l9_3498)
{
l9_3499=l9_3480.x==3;
}
else
{
l9_3499=l9_3498;
}
float l9_3500=l9_3477.x;
float l9_3501=l9_3482.x;
float l9_3502=l9_3482.z;
bool l9_3503=l9_3499;
float l9_3504=l9_3487;
float l9_3505=fast::clamp(l9_3500,l9_3501,l9_3502);
float l9_3506=step(abs(l9_3500-l9_3505),9.9999997e-06);
l9_3504*=(l9_3506+((1.0-float(l9_3503))*(1.0-l9_3506)));
l9_3500=l9_3505;
l9_3477.x=l9_3500;
l9_3487=l9_3504;
bool l9_3507=l9_3483;
bool l9_3508;
if (l9_3507)
{
l9_3508=l9_3480.y==3;
}
else
{
l9_3508=l9_3507;
}
float l9_3509=l9_3477.y;
float l9_3510=l9_3482.y;
float l9_3511=l9_3482.w;
bool l9_3512=l9_3508;
float l9_3513=l9_3487;
float l9_3514=fast::clamp(l9_3509,l9_3510,l9_3511);
float l9_3515=step(abs(l9_3509-l9_3514),9.9999997e-06);
l9_3513*=(l9_3515+((1.0-float(l9_3512))*(1.0-l9_3515)));
l9_3509=l9_3514;
l9_3477.y=l9_3509;
l9_3487=l9_3513;
}
float2 l9_3516=l9_3477;
bool l9_3517=l9_3478;
float3x3 l9_3518=l9_3479;
if (l9_3517)
{
l9_3516=float2((l9_3518*float3(l9_3516,1.0)).xy);
}
float2 l9_3519=l9_3516;
l9_3477=l9_3519;
float l9_3520=l9_3477.x;
int l9_3521=l9_3480.x;
bool l9_3522=l9_3486;
float l9_3523=l9_3487;
if ((l9_3521==0)||(l9_3521==3))
{
float l9_3524=l9_3520;
float l9_3525=0.0;
float l9_3526=1.0;
bool l9_3527=l9_3522;
float l9_3528=l9_3523;
float l9_3529=fast::clamp(l9_3524,l9_3525,l9_3526);
float l9_3530=step(abs(l9_3524-l9_3529),9.9999997e-06);
l9_3528*=(l9_3530+((1.0-float(l9_3527))*(1.0-l9_3530)));
l9_3524=l9_3529;
l9_3520=l9_3524;
l9_3523=l9_3528;
}
l9_3477.x=l9_3520;
l9_3487=l9_3523;
float l9_3531=l9_3477.y;
int l9_3532=l9_3480.y;
bool l9_3533=l9_3486;
float l9_3534=l9_3487;
if ((l9_3532==0)||(l9_3532==3))
{
float l9_3535=l9_3531;
float l9_3536=0.0;
float l9_3537=1.0;
bool l9_3538=l9_3533;
float l9_3539=l9_3534;
float l9_3540=fast::clamp(l9_3535,l9_3536,l9_3537);
float l9_3541=step(abs(l9_3535-l9_3540),9.9999997e-06);
l9_3539*=(l9_3541+((1.0-float(l9_3538))*(1.0-l9_3541)));
l9_3535=l9_3540;
l9_3531=l9_3535;
l9_3534=l9_3539;
}
l9_3477.y=l9_3531;
l9_3487=l9_3534;
float2 l9_3542=l9_3477;
int l9_3543=l9_3475;
int l9_3544=l9_3476;
float l9_3545=l9_3485;
float2 l9_3546=l9_3542;
int l9_3547=l9_3543;
int l9_3548=l9_3544;
float3 l9_3549=float3(0.0);
if (l9_3547==0)
{
l9_3549=float3(l9_3546,0.0);
}
else
{
if (l9_3547==1)
{
l9_3549=float3(l9_3546.x,(l9_3546.y*0.5)+(0.5-(float(l9_3548)*0.5)),0.0);
}
else
{
l9_3549=float3(l9_3546,float(l9_3548));
}
}
float3 l9_3550=l9_3549;
float3 l9_3551=l9_3550;
float4 l9_3552=sc_set0.sizeRampTexture.sample(sc_set0.sizeRampTextureSmpSC,l9_3551.xy,level(l9_3545));
float4 l9_3553=l9_3552;
if (l9_3483)
{
l9_3553=mix(l9_3484,l9_3553,float4(l9_3487));
}
float4 l9_3554=l9_3553;
l9_3468=l9_3554;
float4 l9_3555=l9_3468;
float3 l9_3556=l9_3555.xyz;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_3556=float3(1.0);
}
l9_3463=l9_3556*l9_3456;
}
float3 l9_3557=l9_3463;
N111_position=(l9_3450*l9_3451)*l9_3557;
if ((N111_dieTrigger<0.5)||(l9_3305<0.5))
{
N111_position.x=2.1474836e+09;
}
float3x3 l9_3558;
if (((N111_ENABLE_ALIGNTOVEL||N111_ENABLE_ALIGNTOX)||N111_ENABLE_ALIGNTOY)||N111_ENABLE_ALIGNTOZ)
{
if (N111_ENABLE_ALIGNTOZ)
{
l9_3558=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(0.0,0.0,1.0));
}
else
{
float3 l9_3559=float3(0.0);
if (N111_ENABLE_ALIGNTOX)
{
l9_3559=float3(1.0,0.0,0.0);
}
if (N111_ENABLE_ALIGNTOY)
{
l9_3559=float3(0.0,1.0,0.0);
}
if (N111_ENABLE_ALIGNTOVEL)
{
float l9_3560=0.001;
float3 l9_3561=l9_3162;
float l9_3562=l9_3072-l9_3560;
float3 l9_3563=N111_velocityDrag;
float3 l9_3564=l9_3078;
float l9_3565=l9_3073-l9_3560;
float3 l9_3566=float3(l9_3562,l9_3562,l9_3562);
float3 l9_3567=l9_3563;
float l9_3568;
if (l9_3566.x<=0.0)
{
l9_3568=0.0;
}
else
{
l9_3568=pow(l9_3566.x,l9_3567.x);
}
float l9_3569=l9_3568;
float l9_3570;
if (l9_3566.y<=0.0)
{
l9_3570=0.0;
}
else
{
l9_3570=pow(l9_3566.y,l9_3567.y);
}
float l9_3571=l9_3570;
float l9_3572;
if (l9_3566.z<=0.0)
{
l9_3572=0.0;
}
else
{
l9_3572=pow(l9_3566.z,l9_3567.z);
}
float3 l9_3573=float3(l9_3569,l9_3571,l9_3572);
float3 l9_3574=l9_3573;
float3 l9_3575=(l9_3561+l9_3564)*l9_3574;
if (N111_ENABLE_VELRAMP)
{
float l9_3576=floor(l9_3565*10000.0)/10000.0;
float2 l9_3577=tempGlobals.Surface_UVCoord0;
float2 l9_3578=(l9_3577/float2(10000.0,1.0))+float2(l9_3576,0.0);
float2 l9_3579=l9_3578;
float4 l9_3580=float4(0.0);
int l9_3581;
if ((int(velRampTextureHasSwappedViews_tmp)!=0))
{
int l9_3582=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3582=0;
}
else
{
l9_3582=gl_InstanceIndex%2;
}
int l9_3583=l9_3582;
l9_3581=1-l9_3583;
}
else
{
int l9_3584=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3584=0;
}
else
{
l9_3584=gl_InstanceIndex%2;
}
int l9_3585=l9_3584;
l9_3581=l9_3585;
}
int l9_3586=l9_3581;
int l9_3587=velRampTextureLayout_tmp;
int l9_3588=l9_3586;
float2 l9_3589=l9_3579;
bool l9_3590=(int(SC_USE_UV_TRANSFORM_velRampTexture_tmp)!=0);
float3x3 l9_3591=(*sc_set0.UserUniforms).velRampTextureTransform;
int2 l9_3592=int2(SC_SOFTWARE_WRAP_MODE_U_velRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_velRampTexture_tmp);
bool l9_3593=(int(SC_USE_UV_MIN_MAX_velRampTexture_tmp)!=0);
float4 l9_3594=(*sc_set0.UserUniforms).velRampTextureUvMinMax;
bool l9_3595=(int(SC_USE_CLAMP_TO_BORDER_velRampTexture_tmp)!=0);
float4 l9_3596=(*sc_set0.UserUniforms).velRampTextureBorderColor;
float l9_3597=0.0;
bool l9_3598=l9_3595&&(!l9_3593);
float l9_3599=1.0;
float l9_3600=l9_3589.x;
int l9_3601=l9_3592.x;
if (l9_3601==1)
{
l9_3600=fract(l9_3600);
}
else
{
if (l9_3601==2)
{
float l9_3602=fract(l9_3600);
float l9_3603=l9_3600-l9_3602;
float l9_3604=step(0.25,fract(l9_3603*0.5));
l9_3600=mix(l9_3602,1.0-l9_3602,fast::clamp(l9_3604,0.0,1.0));
}
}
l9_3589.x=l9_3600;
float l9_3605=l9_3589.y;
int l9_3606=l9_3592.y;
if (l9_3606==1)
{
l9_3605=fract(l9_3605);
}
else
{
if (l9_3606==2)
{
float l9_3607=fract(l9_3605);
float l9_3608=l9_3605-l9_3607;
float l9_3609=step(0.25,fract(l9_3608*0.5));
l9_3605=mix(l9_3607,1.0-l9_3607,fast::clamp(l9_3609,0.0,1.0));
}
}
l9_3589.y=l9_3605;
if (l9_3593)
{
bool l9_3610=l9_3595;
bool l9_3611;
if (l9_3610)
{
l9_3611=l9_3592.x==3;
}
else
{
l9_3611=l9_3610;
}
float l9_3612=l9_3589.x;
float l9_3613=l9_3594.x;
float l9_3614=l9_3594.z;
bool l9_3615=l9_3611;
float l9_3616=l9_3599;
float l9_3617=fast::clamp(l9_3612,l9_3613,l9_3614);
float l9_3618=step(abs(l9_3612-l9_3617),9.9999997e-06);
l9_3616*=(l9_3618+((1.0-float(l9_3615))*(1.0-l9_3618)));
l9_3612=l9_3617;
l9_3589.x=l9_3612;
l9_3599=l9_3616;
bool l9_3619=l9_3595;
bool l9_3620;
if (l9_3619)
{
l9_3620=l9_3592.y==3;
}
else
{
l9_3620=l9_3619;
}
float l9_3621=l9_3589.y;
float l9_3622=l9_3594.y;
float l9_3623=l9_3594.w;
bool l9_3624=l9_3620;
float l9_3625=l9_3599;
float l9_3626=fast::clamp(l9_3621,l9_3622,l9_3623);
float l9_3627=step(abs(l9_3621-l9_3626),9.9999997e-06);
l9_3625*=(l9_3627+((1.0-float(l9_3624))*(1.0-l9_3627)));
l9_3621=l9_3626;
l9_3589.y=l9_3621;
l9_3599=l9_3625;
}
float2 l9_3628=l9_3589;
bool l9_3629=l9_3590;
float3x3 l9_3630=l9_3591;
if (l9_3629)
{
l9_3628=float2((l9_3630*float3(l9_3628,1.0)).xy);
}
float2 l9_3631=l9_3628;
l9_3589=l9_3631;
float l9_3632=l9_3589.x;
int l9_3633=l9_3592.x;
bool l9_3634=l9_3598;
float l9_3635=l9_3599;
if ((l9_3633==0)||(l9_3633==3))
{
float l9_3636=l9_3632;
float l9_3637=0.0;
float l9_3638=1.0;
bool l9_3639=l9_3634;
float l9_3640=l9_3635;
float l9_3641=fast::clamp(l9_3636,l9_3637,l9_3638);
float l9_3642=step(abs(l9_3636-l9_3641),9.9999997e-06);
l9_3640*=(l9_3642+((1.0-float(l9_3639))*(1.0-l9_3642)));
l9_3636=l9_3641;
l9_3632=l9_3636;
l9_3635=l9_3640;
}
l9_3589.x=l9_3632;
l9_3599=l9_3635;
float l9_3643=l9_3589.y;
int l9_3644=l9_3592.y;
bool l9_3645=l9_3598;
float l9_3646=l9_3599;
if ((l9_3644==0)||(l9_3644==3))
{
float l9_3647=l9_3643;
float l9_3648=0.0;
float l9_3649=1.0;
bool l9_3650=l9_3645;
float l9_3651=l9_3646;
float l9_3652=fast::clamp(l9_3647,l9_3648,l9_3649);
float l9_3653=step(abs(l9_3647-l9_3652),9.9999997e-06);
l9_3651*=(l9_3653+((1.0-float(l9_3650))*(1.0-l9_3653)));
l9_3647=l9_3652;
l9_3643=l9_3647;
l9_3646=l9_3651;
}
l9_3589.y=l9_3643;
l9_3599=l9_3646;
float2 l9_3654=l9_3589;
int l9_3655=l9_3587;
int l9_3656=l9_3588;
float l9_3657=l9_3597;
float2 l9_3658=l9_3654;
int l9_3659=l9_3655;
int l9_3660=l9_3656;
float3 l9_3661=float3(0.0);
if (l9_3659==0)
{
l9_3661=float3(l9_3658,0.0);
}
else
{
if (l9_3659==1)
{
l9_3661=float3(l9_3658.x,(l9_3658.y*0.5)+(0.5-(float(l9_3660)*0.5)),0.0);
}
else
{
l9_3661=float3(l9_3658,float(l9_3660));
}
}
float3 l9_3662=l9_3661;
float3 l9_3663=l9_3662;
float4 l9_3664=sc_set0.velRampTexture.sample(sc_set0.velRampTextureSmpSC,l9_3663.xy,level(l9_3657));
float4 l9_3665=l9_3664;
if (l9_3595)
{
l9_3665=mix(l9_3596,l9_3665,float4(l9_3599));
}
float4 l9_3666=l9_3665;
l9_3580=l9_3666;
float4 l9_3667=l9_3580;
float3 l9_3668=l9_3667.xyz;
l9_3575=(l9_3561+l9_3564)*l9_3668;
if (!(SC_DEVICE_CLASS_tmp>=2))
{
l9_3575=l9_3561*l9_3574;
}
}
float3 l9_3669=l9_3575;
float3 l9_3670=l9_3669;
float l9_3671=((N111_gravity/2.0)*(l9_3072-l9_3560))*(l9_3072-l9_3560);
l9_3159.y-=l9_3671;
if (N111_ENABLE_FORCE)
{
float3 l9_3672=float3(((N111_localForce/float3(2.0))*(l9_3072-l9_3560))*(l9_3072-l9_3560));
l9_3160-=l9_3672;
}
if (N111_WORLDFORCE)
{
float4x4 l9_3673=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3674=l9_3673;
float4 l9_3675=l9_3674[0];
float4 l9_3676=l9_3674[1];
float4 l9_3677=l9_3674[2];
float3x3 l9_3678=float3x3(float3(float3(l9_3675.x,l9_3676.x,l9_3677.x)),float3(float3(l9_3675.y,l9_3676.y,l9_3677.y)),float3(float3(l9_3675.z,l9_3676.z,l9_3677.z)));
float3x3 l9_3679=l9_3678;
l9_3559=(((l9_3161-l9_3670)*l9_3679)+l9_3159)+l9_3160;
}
else
{
if (N111_WORLDSPACE)
{
l9_3559=((l9_3161-l9_3670)+l9_3159)+l9_3160;
}
else
{
float4x4 l9_3680=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3681=l9_3680;
float4 l9_3682=l9_3681[0];
float4 l9_3683=l9_3681[1];
float4 l9_3684=l9_3681[2];
float3x3 l9_3685=float3x3(float3(float3(l9_3682.x,l9_3683.x,l9_3684.x)),float3(float3(l9_3682.y,l9_3683.y,l9_3684.y)),float3(float3(l9_3682.z,l9_3683.z,l9_3684.z)));
float3x3 l9_3686=l9_3685;
l9_3559=(((l9_3161-l9_3670)+l9_3160)+l9_3159)*l9_3686;
}
}
l9_3559=normalize(l9_3559+float3(N111_EPSILON));
}
float3 l9_3687=float3(0.0,0.0,1.0);
float3 l9_3688=cross(l9_3559,l9_3687);
float3 l9_3689=normalize(l9_3688);
float l9_3690=length(l9_3688);
float l9_3691=dot(l9_3687,l9_3559);
float l9_3692=1.0-l9_3691;
l9_3558=float3x3(float3(((l9_3692*l9_3689.x)*l9_3689.x)+l9_3691,((l9_3692*l9_3689.x)*l9_3689.y)-(l9_3689.z*l9_3690),((l9_3692*l9_3689.z)*l9_3689.x)+(l9_3689.y*l9_3690)),float3(((l9_3692*l9_3689.x)*l9_3689.y)+(l9_3689.z*l9_3690),((l9_3692*l9_3689.y)*l9_3689.y)+l9_3691,((l9_3692*l9_3689.y)*l9_3689.z)-(l9_3689.x*l9_3690)),float3(((l9_3692*l9_3689.z)*l9_3689.x)-(l9_3689.y*l9_3690),((l9_3692*l9_3689.y)*l9_3689.z)+(l9_3689.x*l9_3690),((l9_3692*l9_3689.z)*l9_3689.z)+l9_3691));
}
float3x3 l9_3693=float3x3(float3(cos(l9_3304),-sin(l9_3304),0.0),float3(sin(l9_3304),cos(l9_3304),0.0),float3(0.0,0.0,1.0));
l9_3558=l9_3558*l9_3693;
if (N111_ENABLE_ALIGNTOVEL&&(!N111_ENABLE_IGNOREVEL))
{
float3 l9_3694=l9_3286*(l9_3072-0.0099999998);
float3 l9_3695=l9_3286*(l9_3072+0.0099999998);
N111_position.z*=(length(l9_3695-l9_3694)*fast::max(N111_sizeVelScale,0.1));
}
}
else
{
float l9_3696=fract((N111_particleSeed.x*92.653008)+N111_globalSeed);
float l9_3697=mix(N111_rotationRandomX.x,N111_rotationRandomX.y,l9_3696);
float l9_3698=mix(N111_rotationRateX.x,N111_rotationRateX.y,l9_3696);
float l9_3699=((l9_3698*l9_3301)*l9_3073)*2.0;
float l9_3700=fract((N111_particleSeed.y*6.7557559)+N111_globalSeed);
float l9_3701=mix(N111_rotationRandomY.x,N111_rotationRandomY.y,l9_3700);
float l9_3702=mix(N111_rotationRateY.x,N111_rotationRateY.y,l9_3700);
float l9_3703=((l9_3702*l9_3301)*l9_3073)*2.0;
float l9_3704=N111_PI*(l9_3699+l9_3697);
float l9_3705=N111_PI*(l9_3703+l9_3701);
float l9_3706=N111_PI*(l9_3303+l9_3296);
float3 l9_3707=float3(l9_3704,l9_3705,l9_3706);
float l9_3708=cos(l9_3707.x);
float l9_3709=sin(l9_3707.x);
float l9_3710=cos(l9_3707.y);
float l9_3711=sin(l9_3707.y);
float l9_3712=cos(l9_3707.z);
float l9_3713=sin(l9_3707.z);
l9_3558=float3x3(float3(l9_3710*l9_3712,(l9_3708*l9_3713)+((l9_3709*l9_3711)*l9_3712),(l9_3709*l9_3713)-((l9_3708*l9_3711)*l9_3712)),float3((-l9_3710)*l9_3713,(l9_3708*l9_3712)-((l9_3709*l9_3711)*l9_3713),(l9_3709*l9_3712)+((l9_3708*l9_3711)*l9_3713)),float3(l9_3711,(-l9_3709)*l9_3710,l9_3708*l9_3710));
}
if ((!N111_WORLDSPACE)&&(!N111_ENABLE_ALIGNTOVEL))
{
float4x4 l9_3714=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3715=(*sc_set0.UserUniforms).sc_ModelMatrix;
float4x4 l9_3716=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3x3 l9_3717=float3x3(float3(l9_3714[0].xyz/float3(l9_3278.x)),float3(l9_3715[1].xyz/float3(l9_3278.y)),float3(l9_3716[2].xyz/float3(l9_3278.z)));
l9_3558=l9_3717*l9_3558;
}
N111_position=l9_3558*N111_position;
N111_normal=normalize(l9_3558*N111_normalObjectSpace);
N111_position+=l9_3295;
}
N111_timeValues=float4(l9_3071,l9_3072,l9_3073);
l9_3049=N111_timeValues;
l9_3008=l9_3049;
l9_2819=l9_3008;
out.Interpolator0.y=l9_2819.x;
out.Interpolator0.z=l9_2819.y;
out.Interpolator0.w=l9_2819.z;
out.Interpolator1.x=l9_2819.w;
float3 param_242=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_3718=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_242,1.0);
float3 l9_3719=param_242;
float3 l9_3720=l9_3718.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_3721=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3721=0;
}
else
{
l9_3721=gl_InstanceIndex%2;
}
int l9_3722=l9_3721;
float4 l9_3723=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_3722]*float4(l9_3719,1.0);
float2 l9_3724=l9_3723.xy/float2(l9_3723.w);
l9_3723=float4(l9_3724.x,l9_3724.y,l9_3723.z,l9_3723.w);
int l9_3725=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3725=0;
}
else
{
l9_3725=gl_InstanceIndex%2;
}
int l9_3726=l9_3725;
float4 l9_3727=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_3726]*float4(l9_3720,1.0);
float2 l9_3728=l9_3727.xy/float2(l9_3727.w);
l9_3727=float4(l9_3728.x,l9_3728.y,l9_3727.z,l9_3727.w);
float2 l9_3729=(l9_3723.xy-l9_3727.xy)*0.5;
out.varPosAndMotion.w=l9_3729.x;
out.varNormalAndMotion.w=l9_3729.y;
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
float2 Surface_UVCoord1;
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
float3 Port_Default_N167;
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
texture2d<float> velRampTexture [[id(23)]];
sampler colorRampTextureSmpSC [[id(24)]];
sampler intensityTextureSmpSC [[id(25)]];
sampler mainTextureSmpSC [[id(26)]];
sampler normalTexSmpSC [[id(27)]];
sampler sc_EnvmapDiffuseSmpSC [[id(28)]];
sampler sc_EnvmapSpecularSmpSC [[id(29)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(31)]];
sampler sc_RayTracingReflectionsSmpSC [[id(32)]];
sampler sc_RayTracingShadowsSmpSC [[id(33)]];
sampler sc_SSAOTextureSmpSC [[id(34)]];
sampler sc_ScreenTextureSmpSC [[id(35)]];
sampler sc_ShadowTextureSmpSC [[id(36)]];
sampler sizeRampTextureSmpSC [[id(38)]];
sampler velRampTextureSmpSC [[id(39)]];
constant userUniformsObj* UserUniforms [[id(40)]];
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
float N2_nearCameraFade=0.0;
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
float4 N2_timeValuesIn=float4(0.0);
bool N2_ENABLE_WORLDPOSSEED=false;
float N2_externalSeed=0.0;
float3 N2_particleSeed=float3(0.0);
float N2_globalSeed=0.0;
float4 N2_result=float4(0.0);
float2 N2_uv=float2(0.0);
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
Globals.Surface_UVCoord1=in.varTex01.zw;
Globals.gInstanceID=in.Interpolator_gInstanceID;
float4 Result_N153=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
ssGlobals param_3=Globals;
ssGlobals tempGlobals;
float4 param_2;
if ((MESHTYPE_tmp==1)&&(int(PBR_tmp)!=0))
{
float3 l9_0=float3(0.0);
float3 l9_1=(*sc_set0.UserUniforms).colorStart;
l9_0=l9_1;
float3 l9_2=float3(0.0);
float3 l9_3=(*sc_set0.UserUniforms).colorEnd;
l9_2=l9_3;
float3 l9_4=float3(0.0);
float3 l9_5=(*sc_set0.UserUniforms).colorMinStart;
l9_4=l9_5;
float3 l9_6=float3(0.0);
float3 l9_7=(*sc_set0.UserUniforms).colorMinEnd;
l9_6=l9_7;
float3 l9_8=float3(0.0);
float3 l9_9=(*sc_set0.UserUniforms).colorMaxStart;
l9_8=l9_9;
float3 l9_10=float3(0.0);
float3 l9_11=(*sc_set0.UserUniforms).colorMaxEnd;
l9_10=l9_11;
float l9_12=0.0;
float l9_13=(*sc_set0.UserUniforms).alphaStart;
l9_12=l9_13;
float l9_14=0.0;
float l9_15=(*sc_set0.UserUniforms).alphaEnd;
l9_14=l9_15;
float l9_16=0.0;
float l9_17=(*sc_set0.UserUniforms).alphaMinStart;
l9_16=l9_17;
float l9_18=0.0;
float l9_19=(*sc_set0.UserUniforms).alphaMinEnd;
l9_18=l9_19;
float l9_20=0.0;
float l9_21=(*sc_set0.UserUniforms).alphaMaxStart;
l9_20=l9_21;
float l9_22=0.0;
float l9_23=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_22=l9_23;
float l9_24=0.0;
float l9_25=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_24=l9_25;
float l9_26=0.0;
l9_26=in.Interpolator0.x;
float l9_27=0.0;
float l9_28=(*sc_set0.UserUniforms).numValidFrames;
l9_27=l9_28;
float2 l9_29=float2(0.0);
float2 l9_30=(*sc_set0.UserUniforms).gridSize;
l9_29=l9_30;
float l9_31=0.0;
float l9_32=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_31=l9_32;
float l9_33=0.0;
float l9_34=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_33=l9_34;
float2 l9_35=float2(0.0);
float2 l9_36=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_35=l9_36;
float4 l9_37=float4(0.0);
float4 l9_38=(*sc_set0.UserUniforms).colorRampMult;
l9_37=l9_38;
float4 l9_39=float4(0.0);
float4 l9_40;
l9_40.x=in.Interpolator0.y;
l9_40.y=in.Interpolator0.z;
l9_40.z=in.Interpolator0.w;
l9_40.w=in.Interpolator1.x;
l9_39=l9_40;
float l9_41=0.0;
float l9_42=(*sc_set0.UserUniforms).externalSeed;
l9_41=l9_42;
float4 l9_43=float4(0.0);
float3 l9_44=l9_0;
float3 l9_45=l9_2;
float3 l9_46=l9_4;
float3 l9_47=l9_6;
float3 l9_48=l9_8;
float3 l9_49=l9_10;
float l9_50=l9_12;
float l9_51=l9_14;
float l9_52=l9_16;
float l9_53=l9_18;
float l9_54=l9_20;
float l9_55=l9_22;
float l9_56=l9_24;
float l9_57=l9_26;
float l9_58=l9_27;
float2 l9_59=l9_29;
float l9_60=l9_31;
float l9_61=l9_33;
float2 l9_62=l9_35;
float4 l9_63=l9_37;
float4 l9_64=l9_39;
float l9_65=l9_41;
ssGlobals l9_66=param_3;
tempGlobals=l9_66;
float4 l9_67=float4(0.0);
N2_colorStart=l9_44;
N2_colorEnd=l9_45;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_46;
N2_colorMinEnd=l9_47;
N2_colorMaxStart=l9_48;
N2_colorMaxEnd=l9_49;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_50;
N2_alphaEnd=l9_51;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_52;
N2_alphaMinEnd=l9_53;
N2_alphaMaxStart=l9_54;
N2_alphaMaxEnd=l9_55;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_56;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_57;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_58;
N2_gridSize=l9_59;
N2_flipBookSpeedMult=l9_60;
N2_flipBookRandomStart=l9_61;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_62;
N2_colorRampMult=l9_63;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_64;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_65;
float l9_68=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_69=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_68=length(float4(1.0)*l9_69);
}
N2_globalSeed=N2_externalSeed+l9_68;
float l9_70=2000.0;
int l9_71=0;
l9_71=int(tempGlobals.gInstanceID+0.5);
int l9_72=l9_71;
float l9_73=float(l9_72);
float2 l9_74=float2(mod(l9_73,l9_70),floor(l9_73/l9_70));
l9_74/=float2(l9_70);
float2 l9_75=l9_74;
float l9_76=dot(l9_75,float2(0.38253,0.42662001));
float3 l9_77=float3(0.457831,0.62343299,0.97625297)*l9_76;
l9_77=sin(l9_77)*float3(479.371,389.53101,513.03497);
l9_77=fract(l9_77);
l9_77=floor(l9_77*10000.0)*9.9999997e-05;
float3 l9_78=l9_77;
float3 l9_79=l9_78;
N2_particleSeed=l9_79;
float l9_80=N2_particleSeed.x;
float l9_81=N2_particleSeed.y;
float l9_82=N2_particleSeed.z;
float3 l9_83=fract((float3(l9_80,l9_81,l9_82)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_83=fract((float3(l9_80,l9_80,l9_80)*27.21883)+float3(N2_globalSeed));
}
float l9_84=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_85=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_86=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_87=N2_timeValuesIn.w;
float4 l9_88=float4(0.0);
float3 l9_89=float3(0.0);
float3 l9_90=float3(0.0);
float l9_91=0.0;
float l9_92=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_89=mix(N2_colorMinStart,N2_colorMaxStart,l9_83);
l9_90=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_83);
}
else
{
l9_89=N2_colorStart;
l9_90=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_91=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_84);
l9_92=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_84);
}
else
{
l9_91=N2_alphaStart;
l9_92=N2_alphaEnd;
}
l9_89=mix(l9_89,l9_90,float3(l9_87));
l9_91=mix(l9_91,l9_92,l9_87);
l9_88=float4(l9_89,l9_91);
float4 l9_93=float4(0.0);
float2 l9_94=tempGlobals.Surface_UVCoord0;
float2 l9_95=l9_94;
float2 l9_96=tempGlobals.Surface_UVCoord1;
float2 l9_97=l9_96;
float l9_98=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_99=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_100=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_101=mix(l9_98,l9_99,l9_86);
l9_100=N2_timeValuesIn.z/l9_101;
}
float l9_102=mix(0.0,N2_flipBookRandomStart,l9_85);
float2 l9_103=l9_95/N2_gridSize;
float l9_104=(l9_100*N2_flipBookSpeedMult)+l9_102;
l9_104=mod(l9_104,N2_numValidFrames);
float l9_105=floor(l9_104)*(1.0/N2_gridSize.x);
float l9_106=mod(floor((-l9_104)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_107=l9_104+1.0;
l9_107=mod(l9_107,N2_numValidFrames);
float l9_108=floor(l9_107)*(1.0/N2_gridSize.x);
float l9_109=floor((-l9_107)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_110=fract(l9_104);
l9_95=l9_103+float2(l9_105,l9_106);
l9_97=l9_103+float2(l9_108,l9_109);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_111=l9_95;
float4 l9_112=float4(0.0);
int l9_113;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_114=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_114=0;
}
else
{
l9_114=in.varStereoViewID;
}
int l9_115=l9_114;
l9_113=1-l9_115;
}
else
{
int l9_116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_116=0;
}
else
{
l9_116=in.varStereoViewID;
}
int l9_117=l9_116;
l9_113=l9_117;
}
int l9_118=l9_113;
int l9_119=mainTextureLayout_tmp;
int l9_120=l9_118;
float2 l9_121=l9_111;
bool l9_122=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_123=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_124=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_125=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_126=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_127=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_128=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_129=0.0;
bool l9_130=l9_127&&(!l9_125);
float l9_131=1.0;
float l9_132=l9_121.x;
int l9_133=l9_124.x;
if (l9_133==1)
{
l9_132=fract(l9_132);
}
else
{
if (l9_133==2)
{
float l9_134=fract(l9_132);
float l9_135=l9_132-l9_134;
float l9_136=step(0.25,fract(l9_135*0.5));
l9_132=mix(l9_134,1.0-l9_134,fast::clamp(l9_136,0.0,1.0));
}
}
l9_121.x=l9_132;
float l9_137=l9_121.y;
int l9_138=l9_124.y;
if (l9_138==1)
{
l9_137=fract(l9_137);
}
else
{
if (l9_138==2)
{
float l9_139=fract(l9_137);
float l9_140=l9_137-l9_139;
float l9_141=step(0.25,fract(l9_140*0.5));
l9_137=mix(l9_139,1.0-l9_139,fast::clamp(l9_141,0.0,1.0));
}
}
l9_121.y=l9_137;
if (l9_125)
{
bool l9_142=l9_127;
bool l9_143;
if (l9_142)
{
l9_143=l9_124.x==3;
}
else
{
l9_143=l9_142;
}
float l9_144=l9_121.x;
float l9_145=l9_126.x;
float l9_146=l9_126.z;
bool l9_147=l9_143;
float l9_148=l9_131;
float l9_149=fast::clamp(l9_144,l9_145,l9_146);
float l9_150=step(abs(l9_144-l9_149),9.9999997e-06);
l9_148*=(l9_150+((1.0-float(l9_147))*(1.0-l9_150)));
l9_144=l9_149;
l9_121.x=l9_144;
l9_131=l9_148;
bool l9_151=l9_127;
bool l9_152;
if (l9_151)
{
l9_152=l9_124.y==3;
}
else
{
l9_152=l9_151;
}
float l9_153=l9_121.y;
float l9_154=l9_126.y;
float l9_155=l9_126.w;
bool l9_156=l9_152;
float l9_157=l9_131;
float l9_158=fast::clamp(l9_153,l9_154,l9_155);
float l9_159=step(abs(l9_153-l9_158),9.9999997e-06);
l9_157*=(l9_159+((1.0-float(l9_156))*(1.0-l9_159)));
l9_153=l9_158;
l9_121.y=l9_153;
l9_131=l9_157;
}
float2 l9_160=l9_121;
bool l9_161=l9_122;
float3x3 l9_162=l9_123;
if (l9_161)
{
l9_160=float2((l9_162*float3(l9_160,1.0)).xy);
}
float2 l9_163=l9_160;
l9_121=l9_163;
float l9_164=l9_121.x;
int l9_165=l9_124.x;
bool l9_166=l9_130;
float l9_167=l9_131;
if ((l9_165==0)||(l9_165==3))
{
float l9_168=l9_164;
float l9_169=0.0;
float l9_170=1.0;
bool l9_171=l9_166;
float l9_172=l9_167;
float l9_173=fast::clamp(l9_168,l9_169,l9_170);
float l9_174=step(abs(l9_168-l9_173),9.9999997e-06);
l9_172*=(l9_174+((1.0-float(l9_171))*(1.0-l9_174)));
l9_168=l9_173;
l9_164=l9_168;
l9_167=l9_172;
}
l9_121.x=l9_164;
l9_131=l9_167;
float l9_175=l9_121.y;
int l9_176=l9_124.y;
bool l9_177=l9_130;
float l9_178=l9_131;
if ((l9_176==0)||(l9_176==3))
{
float l9_179=l9_175;
float l9_180=0.0;
float l9_181=1.0;
bool l9_182=l9_177;
float l9_183=l9_178;
float l9_184=fast::clamp(l9_179,l9_180,l9_181);
float l9_185=step(abs(l9_179-l9_184),9.9999997e-06);
l9_183*=(l9_185+((1.0-float(l9_182))*(1.0-l9_185)));
l9_179=l9_184;
l9_175=l9_179;
l9_178=l9_183;
}
l9_121.y=l9_175;
l9_131=l9_178;
float2 l9_186=l9_121;
int l9_187=l9_119;
int l9_188=l9_120;
float l9_189=l9_129;
float2 l9_190=l9_186;
int l9_191=l9_187;
int l9_192=l9_188;
float3 l9_193=float3(0.0);
if (l9_191==0)
{
l9_193=float3(l9_190,0.0);
}
else
{
if (l9_191==1)
{
l9_193=float3(l9_190.x,(l9_190.y*0.5)+(0.5-(float(l9_192)*0.5)),0.0);
}
else
{
l9_193=float3(l9_190,float(l9_192));
}
}
float3 l9_194=l9_193;
float3 l9_195=l9_194;
float4 l9_196=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_195.xy,bias(l9_189));
float4 l9_197=l9_196;
if (l9_127)
{
l9_197=mix(l9_128,l9_197,float4(l9_131));
}
float4 l9_198=l9_197;
l9_112=l9_198;
float4 l9_199=l9_112;
float4 l9_200=l9_199;
float2 l9_201=l9_97;
float4 l9_202=float4(0.0);
int l9_203;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_204=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_204=0;
}
else
{
l9_204=in.varStereoViewID;
}
int l9_205=l9_204;
l9_203=1-l9_205;
}
else
{
int l9_206=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_206=0;
}
else
{
l9_206=in.varStereoViewID;
}
int l9_207=l9_206;
l9_203=l9_207;
}
int l9_208=l9_203;
int l9_209=mainTextureLayout_tmp;
int l9_210=l9_208;
float2 l9_211=l9_201;
bool l9_212=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_213=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_214=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_215=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_216=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_217=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_218=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_219=0.0;
bool l9_220=l9_217&&(!l9_215);
float l9_221=1.0;
float l9_222=l9_211.x;
int l9_223=l9_214.x;
if (l9_223==1)
{
l9_222=fract(l9_222);
}
else
{
if (l9_223==2)
{
float l9_224=fract(l9_222);
float l9_225=l9_222-l9_224;
float l9_226=step(0.25,fract(l9_225*0.5));
l9_222=mix(l9_224,1.0-l9_224,fast::clamp(l9_226,0.0,1.0));
}
}
l9_211.x=l9_222;
float l9_227=l9_211.y;
int l9_228=l9_214.y;
if (l9_228==1)
{
l9_227=fract(l9_227);
}
else
{
if (l9_228==2)
{
float l9_229=fract(l9_227);
float l9_230=l9_227-l9_229;
float l9_231=step(0.25,fract(l9_230*0.5));
l9_227=mix(l9_229,1.0-l9_229,fast::clamp(l9_231,0.0,1.0));
}
}
l9_211.y=l9_227;
if (l9_215)
{
bool l9_232=l9_217;
bool l9_233;
if (l9_232)
{
l9_233=l9_214.x==3;
}
else
{
l9_233=l9_232;
}
float l9_234=l9_211.x;
float l9_235=l9_216.x;
float l9_236=l9_216.z;
bool l9_237=l9_233;
float l9_238=l9_221;
float l9_239=fast::clamp(l9_234,l9_235,l9_236);
float l9_240=step(abs(l9_234-l9_239),9.9999997e-06);
l9_238*=(l9_240+((1.0-float(l9_237))*(1.0-l9_240)));
l9_234=l9_239;
l9_211.x=l9_234;
l9_221=l9_238;
bool l9_241=l9_217;
bool l9_242;
if (l9_241)
{
l9_242=l9_214.y==3;
}
else
{
l9_242=l9_241;
}
float l9_243=l9_211.y;
float l9_244=l9_216.y;
float l9_245=l9_216.w;
bool l9_246=l9_242;
float l9_247=l9_221;
float l9_248=fast::clamp(l9_243,l9_244,l9_245);
float l9_249=step(abs(l9_243-l9_248),9.9999997e-06);
l9_247*=(l9_249+((1.0-float(l9_246))*(1.0-l9_249)));
l9_243=l9_248;
l9_211.y=l9_243;
l9_221=l9_247;
}
float2 l9_250=l9_211;
bool l9_251=l9_212;
float3x3 l9_252=l9_213;
if (l9_251)
{
l9_250=float2((l9_252*float3(l9_250,1.0)).xy);
}
float2 l9_253=l9_250;
l9_211=l9_253;
float l9_254=l9_211.x;
int l9_255=l9_214.x;
bool l9_256=l9_220;
float l9_257=l9_221;
if ((l9_255==0)||(l9_255==3))
{
float l9_258=l9_254;
float l9_259=0.0;
float l9_260=1.0;
bool l9_261=l9_256;
float l9_262=l9_257;
float l9_263=fast::clamp(l9_258,l9_259,l9_260);
float l9_264=step(abs(l9_258-l9_263),9.9999997e-06);
l9_262*=(l9_264+((1.0-float(l9_261))*(1.0-l9_264)));
l9_258=l9_263;
l9_254=l9_258;
l9_257=l9_262;
}
l9_211.x=l9_254;
l9_221=l9_257;
float l9_265=l9_211.y;
int l9_266=l9_214.y;
bool l9_267=l9_220;
float l9_268=l9_221;
if ((l9_266==0)||(l9_266==3))
{
float l9_269=l9_265;
float l9_270=0.0;
float l9_271=1.0;
bool l9_272=l9_267;
float l9_273=l9_268;
float l9_274=fast::clamp(l9_269,l9_270,l9_271);
float l9_275=step(abs(l9_269-l9_274),9.9999997e-06);
l9_273*=(l9_275+((1.0-float(l9_272))*(1.0-l9_275)));
l9_269=l9_274;
l9_265=l9_269;
l9_268=l9_273;
}
l9_211.y=l9_265;
l9_221=l9_268;
float2 l9_276=l9_211;
int l9_277=l9_209;
int l9_278=l9_210;
float l9_279=l9_219;
float2 l9_280=l9_276;
int l9_281=l9_277;
int l9_282=l9_278;
float3 l9_283=float3(0.0);
if (l9_281==0)
{
l9_283=float3(l9_280,0.0);
}
else
{
if (l9_281==1)
{
l9_283=float3(l9_280.x,(l9_280.y*0.5)+(0.5-(float(l9_282)*0.5)),0.0);
}
else
{
l9_283=float3(l9_280,float(l9_282));
}
}
float3 l9_284=l9_283;
float3 l9_285=l9_284;
float4 l9_286=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_285.xy,bias(l9_279));
float4 l9_287=l9_286;
if (l9_217)
{
l9_287=mix(l9_218,l9_287,float4(l9_221));
}
float4 l9_288=l9_287;
l9_202=l9_288;
float4 l9_289=l9_202;
l9_93=mix(l9_200,l9_289,float4(l9_110));
}
else
{
float2 l9_290=l9_95;
float4 l9_291=float4(0.0);
int l9_292;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_293=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_293=0;
}
else
{
l9_293=in.varStereoViewID;
}
int l9_294=l9_293;
l9_292=1-l9_294;
}
else
{
int l9_295=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_295=0;
}
else
{
l9_295=in.varStereoViewID;
}
int l9_296=l9_295;
l9_292=l9_296;
}
int l9_297=l9_292;
int l9_298=mainTextureLayout_tmp;
int l9_299=l9_297;
float2 l9_300=l9_290;
bool l9_301=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_302=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_303=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_304=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_305=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_306=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_307=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_308=0.0;
bool l9_309=l9_306&&(!l9_304);
float l9_310=1.0;
float l9_311=l9_300.x;
int l9_312=l9_303.x;
if (l9_312==1)
{
l9_311=fract(l9_311);
}
else
{
if (l9_312==2)
{
float l9_313=fract(l9_311);
float l9_314=l9_311-l9_313;
float l9_315=step(0.25,fract(l9_314*0.5));
l9_311=mix(l9_313,1.0-l9_313,fast::clamp(l9_315,0.0,1.0));
}
}
l9_300.x=l9_311;
float l9_316=l9_300.y;
int l9_317=l9_303.y;
if (l9_317==1)
{
l9_316=fract(l9_316);
}
else
{
if (l9_317==2)
{
float l9_318=fract(l9_316);
float l9_319=l9_316-l9_318;
float l9_320=step(0.25,fract(l9_319*0.5));
l9_316=mix(l9_318,1.0-l9_318,fast::clamp(l9_320,0.0,1.0));
}
}
l9_300.y=l9_316;
if (l9_304)
{
bool l9_321=l9_306;
bool l9_322;
if (l9_321)
{
l9_322=l9_303.x==3;
}
else
{
l9_322=l9_321;
}
float l9_323=l9_300.x;
float l9_324=l9_305.x;
float l9_325=l9_305.z;
bool l9_326=l9_322;
float l9_327=l9_310;
float l9_328=fast::clamp(l9_323,l9_324,l9_325);
float l9_329=step(abs(l9_323-l9_328),9.9999997e-06);
l9_327*=(l9_329+((1.0-float(l9_326))*(1.0-l9_329)));
l9_323=l9_328;
l9_300.x=l9_323;
l9_310=l9_327;
bool l9_330=l9_306;
bool l9_331;
if (l9_330)
{
l9_331=l9_303.y==3;
}
else
{
l9_331=l9_330;
}
float l9_332=l9_300.y;
float l9_333=l9_305.y;
float l9_334=l9_305.w;
bool l9_335=l9_331;
float l9_336=l9_310;
float l9_337=fast::clamp(l9_332,l9_333,l9_334);
float l9_338=step(abs(l9_332-l9_337),9.9999997e-06);
l9_336*=(l9_338+((1.0-float(l9_335))*(1.0-l9_338)));
l9_332=l9_337;
l9_300.y=l9_332;
l9_310=l9_336;
}
float2 l9_339=l9_300;
bool l9_340=l9_301;
float3x3 l9_341=l9_302;
if (l9_340)
{
l9_339=float2((l9_341*float3(l9_339,1.0)).xy);
}
float2 l9_342=l9_339;
l9_300=l9_342;
float l9_343=l9_300.x;
int l9_344=l9_303.x;
bool l9_345=l9_309;
float l9_346=l9_310;
if ((l9_344==0)||(l9_344==3))
{
float l9_347=l9_343;
float l9_348=0.0;
float l9_349=1.0;
bool l9_350=l9_345;
float l9_351=l9_346;
float l9_352=fast::clamp(l9_347,l9_348,l9_349);
float l9_353=step(abs(l9_347-l9_352),9.9999997e-06);
l9_351*=(l9_353+((1.0-float(l9_350))*(1.0-l9_353)));
l9_347=l9_352;
l9_343=l9_347;
l9_346=l9_351;
}
l9_300.x=l9_343;
l9_310=l9_346;
float l9_354=l9_300.y;
int l9_355=l9_303.y;
bool l9_356=l9_309;
float l9_357=l9_310;
if ((l9_355==0)||(l9_355==3))
{
float l9_358=l9_354;
float l9_359=0.0;
float l9_360=1.0;
bool l9_361=l9_356;
float l9_362=l9_357;
float l9_363=fast::clamp(l9_358,l9_359,l9_360);
float l9_364=step(abs(l9_358-l9_363),9.9999997e-06);
l9_362*=(l9_364+((1.0-float(l9_361))*(1.0-l9_364)));
l9_358=l9_363;
l9_354=l9_358;
l9_357=l9_362;
}
l9_300.y=l9_354;
l9_310=l9_357;
float2 l9_365=l9_300;
int l9_366=l9_298;
int l9_367=l9_299;
float l9_368=l9_308;
float2 l9_369=l9_365;
int l9_370=l9_366;
int l9_371=l9_367;
float3 l9_372=float3(0.0);
if (l9_370==0)
{
l9_372=float3(l9_369,0.0);
}
else
{
if (l9_370==1)
{
l9_372=float3(l9_369.x,(l9_369.y*0.5)+(0.5-(float(l9_371)*0.5)),0.0);
}
else
{
l9_372=float3(l9_369,float(l9_371));
}
}
float3 l9_373=l9_372;
float3 l9_374=l9_373;
float4 l9_375=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_374.xy,bias(l9_368));
float4 l9_376=l9_375;
if (l9_306)
{
l9_376=mix(l9_307,l9_376,float4(l9_310));
}
float4 l9_377=l9_376;
l9_291=l9_377;
float4 l9_378=l9_291;
l9_93=l9_378;
}
float4 l9_379=float4(0.0);
float l9_380=ceil(l9_87*N2_texSize.x)/N2_texSize.x;
float l9_381=l9_380;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_382=tempGlobals.Surface_UVCoord0;
l9_381+=(l9_382.x/N2_texSize.x);
}
float2 l9_383=float2(l9_381,0.5);
float4 l9_384=float4(0.0);
int l9_385;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_386=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_386=0;
}
else
{
l9_386=in.varStereoViewID;
}
int l9_387=l9_386;
l9_385=1-l9_387;
}
else
{
int l9_388=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_388=0;
}
else
{
l9_388=in.varStereoViewID;
}
int l9_389=l9_388;
l9_385=l9_389;
}
int l9_390=l9_385;
int l9_391=colorRampTextureLayout_tmp;
int l9_392=l9_390;
float2 l9_393=l9_383;
bool l9_394=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_395=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_396=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_397=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_398=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_399=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_400=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_401=0.0;
bool l9_402=l9_399&&(!l9_397);
float l9_403=1.0;
float l9_404=l9_393.x;
int l9_405=l9_396.x;
if (l9_405==1)
{
l9_404=fract(l9_404);
}
else
{
if (l9_405==2)
{
float l9_406=fract(l9_404);
float l9_407=l9_404-l9_406;
float l9_408=step(0.25,fract(l9_407*0.5));
l9_404=mix(l9_406,1.0-l9_406,fast::clamp(l9_408,0.0,1.0));
}
}
l9_393.x=l9_404;
float l9_409=l9_393.y;
int l9_410=l9_396.y;
if (l9_410==1)
{
l9_409=fract(l9_409);
}
else
{
if (l9_410==2)
{
float l9_411=fract(l9_409);
float l9_412=l9_409-l9_411;
float l9_413=step(0.25,fract(l9_412*0.5));
l9_409=mix(l9_411,1.0-l9_411,fast::clamp(l9_413,0.0,1.0));
}
}
l9_393.y=l9_409;
if (l9_397)
{
bool l9_414=l9_399;
bool l9_415;
if (l9_414)
{
l9_415=l9_396.x==3;
}
else
{
l9_415=l9_414;
}
float l9_416=l9_393.x;
float l9_417=l9_398.x;
float l9_418=l9_398.z;
bool l9_419=l9_415;
float l9_420=l9_403;
float l9_421=fast::clamp(l9_416,l9_417,l9_418);
float l9_422=step(abs(l9_416-l9_421),9.9999997e-06);
l9_420*=(l9_422+((1.0-float(l9_419))*(1.0-l9_422)));
l9_416=l9_421;
l9_393.x=l9_416;
l9_403=l9_420;
bool l9_423=l9_399;
bool l9_424;
if (l9_423)
{
l9_424=l9_396.y==3;
}
else
{
l9_424=l9_423;
}
float l9_425=l9_393.y;
float l9_426=l9_398.y;
float l9_427=l9_398.w;
bool l9_428=l9_424;
float l9_429=l9_403;
float l9_430=fast::clamp(l9_425,l9_426,l9_427);
float l9_431=step(abs(l9_425-l9_430),9.9999997e-06);
l9_429*=(l9_431+((1.0-float(l9_428))*(1.0-l9_431)));
l9_425=l9_430;
l9_393.y=l9_425;
l9_403=l9_429;
}
float2 l9_432=l9_393;
bool l9_433=l9_394;
float3x3 l9_434=l9_395;
if (l9_433)
{
l9_432=float2((l9_434*float3(l9_432,1.0)).xy);
}
float2 l9_435=l9_432;
l9_393=l9_435;
float l9_436=l9_393.x;
int l9_437=l9_396.x;
bool l9_438=l9_402;
float l9_439=l9_403;
if ((l9_437==0)||(l9_437==3))
{
float l9_440=l9_436;
float l9_441=0.0;
float l9_442=1.0;
bool l9_443=l9_438;
float l9_444=l9_439;
float l9_445=fast::clamp(l9_440,l9_441,l9_442);
float l9_446=step(abs(l9_440-l9_445),9.9999997e-06);
l9_444*=(l9_446+((1.0-float(l9_443))*(1.0-l9_446)));
l9_440=l9_445;
l9_436=l9_440;
l9_439=l9_444;
}
l9_393.x=l9_436;
l9_403=l9_439;
float l9_447=l9_393.y;
int l9_448=l9_396.y;
bool l9_449=l9_402;
float l9_450=l9_403;
if ((l9_448==0)||(l9_448==3))
{
float l9_451=l9_447;
float l9_452=0.0;
float l9_453=1.0;
bool l9_454=l9_449;
float l9_455=l9_450;
float l9_456=fast::clamp(l9_451,l9_452,l9_453);
float l9_457=step(abs(l9_451-l9_456),9.9999997e-06);
l9_455*=(l9_457+((1.0-float(l9_454))*(1.0-l9_457)));
l9_451=l9_456;
l9_447=l9_451;
l9_450=l9_455;
}
l9_393.y=l9_447;
l9_403=l9_450;
float2 l9_458=l9_393;
int l9_459=l9_391;
int l9_460=l9_392;
float l9_461=l9_401;
float2 l9_462=l9_458;
int l9_463=l9_459;
int l9_464=l9_460;
float3 l9_465=float3(0.0);
if (l9_463==0)
{
l9_465=float3(l9_462,0.0);
}
else
{
if (l9_463==1)
{
l9_465=float3(l9_462.x,(l9_462.y*0.5)+(0.5-(float(l9_464)*0.5)),0.0);
}
else
{
l9_465=float3(l9_462,float(l9_464));
}
}
float3 l9_466=l9_465;
float3 l9_467=l9_466;
float4 l9_468=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_467.xy,bias(l9_461));
float4 l9_469=l9_468;
if (l9_399)
{
l9_469=mix(l9_400,l9_469,float4(l9_403));
}
float4 l9_470=l9_469;
l9_384=l9_470;
float4 l9_471=l9_384;
l9_379=l9_471*N2_colorRampMult;
float4 l9_472=float4(1.0);
float4 l9_473=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_474=tempGlobals.Surface_UVCoord0;
float2 l9_475=l9_474;
float4 l9_476=float4(0.0);
int l9_477;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_478=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_478=0;
}
else
{
l9_478=in.varStereoViewID;
}
int l9_479=l9_478;
l9_477=1-l9_479;
}
else
{
int l9_480=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_480=0;
}
else
{
l9_480=in.varStereoViewID;
}
int l9_481=l9_480;
l9_477=l9_481;
}
int l9_482=l9_477;
int l9_483=mainTextureLayout_tmp;
int l9_484=l9_482;
float2 l9_485=l9_475;
bool l9_486=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_487=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_488=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_489=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_490=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_491=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_492=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_493=0.0;
bool l9_494=l9_491&&(!l9_489);
float l9_495=1.0;
float l9_496=l9_485.x;
int l9_497=l9_488.x;
if (l9_497==1)
{
l9_496=fract(l9_496);
}
else
{
if (l9_497==2)
{
float l9_498=fract(l9_496);
float l9_499=l9_496-l9_498;
float l9_500=step(0.25,fract(l9_499*0.5));
l9_496=mix(l9_498,1.0-l9_498,fast::clamp(l9_500,0.0,1.0));
}
}
l9_485.x=l9_496;
float l9_501=l9_485.y;
int l9_502=l9_488.y;
if (l9_502==1)
{
l9_501=fract(l9_501);
}
else
{
if (l9_502==2)
{
float l9_503=fract(l9_501);
float l9_504=l9_501-l9_503;
float l9_505=step(0.25,fract(l9_504*0.5));
l9_501=mix(l9_503,1.0-l9_503,fast::clamp(l9_505,0.0,1.0));
}
}
l9_485.y=l9_501;
if (l9_489)
{
bool l9_506=l9_491;
bool l9_507;
if (l9_506)
{
l9_507=l9_488.x==3;
}
else
{
l9_507=l9_506;
}
float l9_508=l9_485.x;
float l9_509=l9_490.x;
float l9_510=l9_490.z;
bool l9_511=l9_507;
float l9_512=l9_495;
float l9_513=fast::clamp(l9_508,l9_509,l9_510);
float l9_514=step(abs(l9_508-l9_513),9.9999997e-06);
l9_512*=(l9_514+((1.0-float(l9_511))*(1.0-l9_514)));
l9_508=l9_513;
l9_485.x=l9_508;
l9_495=l9_512;
bool l9_515=l9_491;
bool l9_516;
if (l9_515)
{
l9_516=l9_488.y==3;
}
else
{
l9_516=l9_515;
}
float l9_517=l9_485.y;
float l9_518=l9_490.y;
float l9_519=l9_490.w;
bool l9_520=l9_516;
float l9_521=l9_495;
float l9_522=fast::clamp(l9_517,l9_518,l9_519);
float l9_523=step(abs(l9_517-l9_522),9.9999997e-06);
l9_521*=(l9_523+((1.0-float(l9_520))*(1.0-l9_523)));
l9_517=l9_522;
l9_485.y=l9_517;
l9_495=l9_521;
}
float2 l9_524=l9_485;
bool l9_525=l9_486;
float3x3 l9_526=l9_487;
if (l9_525)
{
l9_524=float2((l9_526*float3(l9_524,1.0)).xy);
}
float2 l9_527=l9_524;
l9_485=l9_527;
float l9_528=l9_485.x;
int l9_529=l9_488.x;
bool l9_530=l9_494;
float l9_531=l9_495;
if ((l9_529==0)||(l9_529==3))
{
float l9_532=l9_528;
float l9_533=0.0;
float l9_534=1.0;
bool l9_535=l9_530;
float l9_536=l9_531;
float l9_537=fast::clamp(l9_532,l9_533,l9_534);
float l9_538=step(abs(l9_532-l9_537),9.9999997e-06);
l9_536*=(l9_538+((1.0-float(l9_535))*(1.0-l9_538)));
l9_532=l9_537;
l9_528=l9_532;
l9_531=l9_536;
}
l9_485.x=l9_528;
l9_495=l9_531;
float l9_539=l9_485.y;
int l9_540=l9_488.y;
bool l9_541=l9_494;
float l9_542=l9_495;
if ((l9_540==0)||(l9_540==3))
{
float l9_543=l9_539;
float l9_544=0.0;
float l9_545=1.0;
bool l9_546=l9_541;
float l9_547=l9_542;
float l9_548=fast::clamp(l9_543,l9_544,l9_545);
float l9_549=step(abs(l9_543-l9_548),9.9999997e-06);
l9_547*=(l9_549+((1.0-float(l9_546))*(1.0-l9_549)));
l9_543=l9_548;
l9_539=l9_543;
l9_542=l9_547;
}
l9_485.y=l9_539;
l9_495=l9_542;
float2 l9_550=l9_485;
int l9_551=l9_483;
int l9_552=l9_484;
float l9_553=l9_493;
float2 l9_554=l9_550;
int l9_555=l9_551;
int l9_556=l9_552;
float3 l9_557=float3(0.0);
if (l9_555==0)
{
l9_557=float3(l9_554,0.0);
}
else
{
if (l9_555==1)
{
l9_557=float3(l9_554.x,(l9_554.y*0.5)+(0.5-(float(l9_556)*0.5)),0.0);
}
else
{
l9_557=float3(l9_554,float(l9_556));
}
}
float3 l9_558=l9_557;
float3 l9_559=l9_558;
float4 l9_560=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_559.xy,bias(l9_553));
float4 l9_561=l9_560;
if (l9_491)
{
l9_561=mix(l9_492,l9_561,float4(l9_495));
}
float4 l9_562=l9_561;
l9_476=l9_562;
float4 l9_563=l9_476;
l9_472=l9_563;
float2 l9_564=tempGlobals.Surface_UVCoord0;
N2_uv=l9_564;
if (N2_ENABLE_FLIPBOOK)
{
l9_472=l9_93;
N2_uv=l9_95;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_473=l9_379;
}
}
N2_result=(l9_472*l9_88)*l9_473;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_565=l9_87*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_565,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_566=length(N2_result.xyz);
N2_result.w=l9_566;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_567=N2_result.xyz*N2_result.w;
N2_result=float4(l9_567.x,l9_567.y,l9_567.z,N2_result.w);
}
l9_67=N2_result;
l9_43=l9_67;
float l9_568=0.0;
l9_568=l9_43.w;
float3 l9_569=float3(0.0);
float3 l9_570=float3(0.0);
float3 l9_571=(*sc_set0.UserUniforms).Port_Default_N167;
ssGlobals l9_572=param_3;
float3 l9_573;
if ((int(NORMALTEX_tmp)!=0))
{
float3 l9_574=float3(0.0);
float3 l9_575=(*sc_set0.UserUniforms).colorStart;
l9_574=l9_575;
float3 l9_576=float3(0.0);
float3 l9_577=(*sc_set0.UserUniforms).colorEnd;
l9_576=l9_577;
float3 l9_578=float3(0.0);
float3 l9_579=(*sc_set0.UserUniforms).colorMinStart;
l9_578=l9_579;
float3 l9_580=float3(0.0);
float3 l9_581=(*sc_set0.UserUniforms).colorMinEnd;
l9_580=l9_581;
float3 l9_582=float3(0.0);
float3 l9_583=(*sc_set0.UserUniforms).colorMaxStart;
l9_582=l9_583;
float3 l9_584=float3(0.0);
float3 l9_585=(*sc_set0.UserUniforms).colorMaxEnd;
l9_584=l9_585;
float l9_586=0.0;
float l9_587=(*sc_set0.UserUniforms).alphaStart;
l9_586=l9_587;
float l9_588=0.0;
float l9_589=(*sc_set0.UserUniforms).alphaEnd;
l9_588=l9_589;
float l9_590=0.0;
float l9_591=(*sc_set0.UserUniforms).alphaMinStart;
l9_590=l9_591;
float l9_592=0.0;
float l9_593=(*sc_set0.UserUniforms).alphaMinEnd;
l9_592=l9_593;
float l9_594=0.0;
float l9_595=(*sc_set0.UserUniforms).alphaMaxStart;
l9_594=l9_595;
float l9_596=0.0;
float l9_597=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_596=l9_597;
float l9_598=0.0;
float l9_599=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_598=l9_599;
float l9_600=0.0;
l9_600=in.Interpolator0.x;
float l9_601=0.0;
float l9_602=(*sc_set0.UserUniforms).numValidFrames;
l9_601=l9_602;
float2 l9_603=float2(0.0);
float2 l9_604=(*sc_set0.UserUniforms).gridSize;
l9_603=l9_604;
float l9_605=0.0;
float l9_606=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_605=l9_606;
float l9_607=0.0;
float l9_608=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_607=l9_608;
float2 l9_609=float2(0.0);
float2 l9_610=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_609=l9_610;
float4 l9_611=float4(0.0);
float4 l9_612=(*sc_set0.UserUniforms).colorRampMult;
l9_611=l9_612;
float4 l9_613=float4(0.0);
float4 l9_614;
l9_614.x=in.Interpolator0.y;
l9_614.y=in.Interpolator0.z;
l9_614.z=in.Interpolator0.w;
l9_614.w=in.Interpolator1.x;
l9_613=l9_614;
float l9_615=0.0;
float l9_616=(*sc_set0.UserUniforms).externalSeed;
l9_615=l9_616;
float2 l9_617=float2(0.0);
float3 l9_618=l9_574;
float3 l9_619=l9_576;
float3 l9_620=l9_578;
float3 l9_621=l9_580;
float3 l9_622=l9_582;
float3 l9_623=l9_584;
float l9_624=l9_586;
float l9_625=l9_588;
float l9_626=l9_590;
float l9_627=l9_592;
float l9_628=l9_594;
float l9_629=l9_596;
float l9_630=l9_598;
float l9_631=l9_600;
float l9_632=l9_601;
float2 l9_633=l9_603;
float l9_634=l9_605;
float l9_635=l9_607;
float2 l9_636=l9_609;
float4 l9_637=l9_611;
float4 l9_638=l9_613;
float l9_639=l9_615;
ssGlobals l9_640=l9_572;
tempGlobals=l9_640;
float2 l9_641=float2(0.0);
N2_colorStart=l9_618;
N2_colorEnd=l9_619;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_620;
N2_colorMinEnd=l9_621;
N2_colorMaxStart=l9_622;
N2_colorMaxEnd=l9_623;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_624;
N2_alphaEnd=l9_625;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_626;
N2_alphaMinEnd=l9_627;
N2_alphaMaxStart=l9_628;
N2_alphaMaxEnd=l9_629;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_630;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_631;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_632;
N2_gridSize=l9_633;
N2_flipBookSpeedMult=l9_634;
N2_flipBookRandomStart=l9_635;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_636;
N2_colorRampMult=l9_637;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_638;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_639;
float l9_642=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_643=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_642=length(float4(1.0)*l9_643);
}
N2_globalSeed=N2_externalSeed+l9_642;
float l9_644=2000.0;
int l9_645=0;
l9_645=int(tempGlobals.gInstanceID+0.5);
int l9_646=l9_645;
float l9_647=float(l9_646);
float2 l9_648=float2(mod(l9_647,l9_644),floor(l9_647/l9_644));
l9_648/=float2(l9_644);
float2 l9_649=l9_648;
float l9_650=dot(l9_649,float2(0.38253,0.42662001));
float3 l9_651=float3(0.457831,0.62343299,0.97625297)*l9_650;
l9_651=sin(l9_651)*float3(479.371,389.53101,513.03497);
l9_651=fract(l9_651);
l9_651=floor(l9_651*10000.0)*9.9999997e-05;
float3 l9_652=l9_651;
float3 l9_653=l9_652;
N2_particleSeed=l9_653;
float l9_654=N2_particleSeed.x;
float l9_655=N2_particleSeed.y;
float l9_656=N2_particleSeed.z;
float3 l9_657=fract((float3(l9_654,l9_655,l9_656)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_657=fract((float3(l9_654,l9_654,l9_654)*27.21883)+float3(N2_globalSeed));
}
float l9_658=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_659=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_660=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_661=N2_timeValuesIn.w;
float4 l9_662=float4(0.0);
float3 l9_663=float3(0.0);
float3 l9_664=float3(0.0);
float l9_665=0.0;
float l9_666=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_663=mix(N2_colorMinStart,N2_colorMaxStart,l9_657);
l9_664=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_657);
}
else
{
l9_663=N2_colorStart;
l9_664=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_665=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_658);
l9_666=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_658);
}
else
{
l9_665=N2_alphaStart;
l9_666=N2_alphaEnd;
}
l9_663=mix(l9_663,l9_664,float3(l9_661));
l9_665=mix(l9_665,l9_666,l9_661);
l9_662=float4(l9_663,l9_665);
float4 l9_667=float4(0.0);
float2 l9_668=tempGlobals.Surface_UVCoord0;
float2 l9_669=l9_668;
float2 l9_670=tempGlobals.Surface_UVCoord1;
float2 l9_671=l9_670;
float l9_672=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_673=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_674=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_675=mix(l9_672,l9_673,l9_660);
l9_674=N2_timeValuesIn.z/l9_675;
}
float l9_676=mix(0.0,N2_flipBookRandomStart,l9_659);
float2 l9_677=l9_669/N2_gridSize;
float l9_678=(l9_674*N2_flipBookSpeedMult)+l9_676;
l9_678=mod(l9_678,N2_numValidFrames);
float l9_679=floor(l9_678)*(1.0/N2_gridSize.x);
float l9_680=mod(floor((-l9_678)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_681=l9_678+1.0;
l9_681=mod(l9_681,N2_numValidFrames);
float l9_682=floor(l9_681)*(1.0/N2_gridSize.x);
float l9_683=floor((-l9_681)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_684=fract(l9_678);
l9_669=l9_677+float2(l9_679,l9_680);
l9_671=l9_677+float2(l9_682,l9_683);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_685=l9_669;
float4 l9_686=float4(0.0);
int l9_687;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_688=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_688=0;
}
else
{
l9_688=in.varStereoViewID;
}
int l9_689=l9_688;
l9_687=1-l9_689;
}
else
{
int l9_690=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_690=0;
}
else
{
l9_690=in.varStereoViewID;
}
int l9_691=l9_690;
l9_687=l9_691;
}
int l9_692=l9_687;
int l9_693=mainTextureLayout_tmp;
int l9_694=l9_692;
float2 l9_695=l9_685;
bool l9_696=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_697=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_698=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_699=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_700=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_701=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_702=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_703=0.0;
bool l9_704=l9_701&&(!l9_699);
float l9_705=1.0;
float l9_706=l9_695.x;
int l9_707=l9_698.x;
if (l9_707==1)
{
l9_706=fract(l9_706);
}
else
{
if (l9_707==2)
{
float l9_708=fract(l9_706);
float l9_709=l9_706-l9_708;
float l9_710=step(0.25,fract(l9_709*0.5));
l9_706=mix(l9_708,1.0-l9_708,fast::clamp(l9_710,0.0,1.0));
}
}
l9_695.x=l9_706;
float l9_711=l9_695.y;
int l9_712=l9_698.y;
if (l9_712==1)
{
l9_711=fract(l9_711);
}
else
{
if (l9_712==2)
{
float l9_713=fract(l9_711);
float l9_714=l9_711-l9_713;
float l9_715=step(0.25,fract(l9_714*0.5));
l9_711=mix(l9_713,1.0-l9_713,fast::clamp(l9_715,0.0,1.0));
}
}
l9_695.y=l9_711;
if (l9_699)
{
bool l9_716=l9_701;
bool l9_717;
if (l9_716)
{
l9_717=l9_698.x==3;
}
else
{
l9_717=l9_716;
}
float l9_718=l9_695.x;
float l9_719=l9_700.x;
float l9_720=l9_700.z;
bool l9_721=l9_717;
float l9_722=l9_705;
float l9_723=fast::clamp(l9_718,l9_719,l9_720);
float l9_724=step(abs(l9_718-l9_723),9.9999997e-06);
l9_722*=(l9_724+((1.0-float(l9_721))*(1.0-l9_724)));
l9_718=l9_723;
l9_695.x=l9_718;
l9_705=l9_722;
bool l9_725=l9_701;
bool l9_726;
if (l9_725)
{
l9_726=l9_698.y==3;
}
else
{
l9_726=l9_725;
}
float l9_727=l9_695.y;
float l9_728=l9_700.y;
float l9_729=l9_700.w;
bool l9_730=l9_726;
float l9_731=l9_705;
float l9_732=fast::clamp(l9_727,l9_728,l9_729);
float l9_733=step(abs(l9_727-l9_732),9.9999997e-06);
l9_731*=(l9_733+((1.0-float(l9_730))*(1.0-l9_733)));
l9_727=l9_732;
l9_695.y=l9_727;
l9_705=l9_731;
}
float2 l9_734=l9_695;
bool l9_735=l9_696;
float3x3 l9_736=l9_697;
if (l9_735)
{
l9_734=float2((l9_736*float3(l9_734,1.0)).xy);
}
float2 l9_737=l9_734;
l9_695=l9_737;
float l9_738=l9_695.x;
int l9_739=l9_698.x;
bool l9_740=l9_704;
float l9_741=l9_705;
if ((l9_739==0)||(l9_739==3))
{
float l9_742=l9_738;
float l9_743=0.0;
float l9_744=1.0;
bool l9_745=l9_740;
float l9_746=l9_741;
float l9_747=fast::clamp(l9_742,l9_743,l9_744);
float l9_748=step(abs(l9_742-l9_747),9.9999997e-06);
l9_746*=(l9_748+((1.0-float(l9_745))*(1.0-l9_748)));
l9_742=l9_747;
l9_738=l9_742;
l9_741=l9_746;
}
l9_695.x=l9_738;
l9_705=l9_741;
float l9_749=l9_695.y;
int l9_750=l9_698.y;
bool l9_751=l9_704;
float l9_752=l9_705;
if ((l9_750==0)||(l9_750==3))
{
float l9_753=l9_749;
float l9_754=0.0;
float l9_755=1.0;
bool l9_756=l9_751;
float l9_757=l9_752;
float l9_758=fast::clamp(l9_753,l9_754,l9_755);
float l9_759=step(abs(l9_753-l9_758),9.9999997e-06);
l9_757*=(l9_759+((1.0-float(l9_756))*(1.0-l9_759)));
l9_753=l9_758;
l9_749=l9_753;
l9_752=l9_757;
}
l9_695.y=l9_749;
l9_705=l9_752;
float2 l9_760=l9_695;
int l9_761=l9_693;
int l9_762=l9_694;
float l9_763=l9_703;
float2 l9_764=l9_760;
int l9_765=l9_761;
int l9_766=l9_762;
float3 l9_767=float3(0.0);
if (l9_765==0)
{
l9_767=float3(l9_764,0.0);
}
else
{
if (l9_765==1)
{
l9_767=float3(l9_764.x,(l9_764.y*0.5)+(0.5-(float(l9_766)*0.5)),0.0);
}
else
{
l9_767=float3(l9_764,float(l9_766));
}
}
float3 l9_768=l9_767;
float3 l9_769=l9_768;
float4 l9_770=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_769.xy,bias(l9_763));
float4 l9_771=l9_770;
if (l9_701)
{
l9_771=mix(l9_702,l9_771,float4(l9_705));
}
float4 l9_772=l9_771;
l9_686=l9_772;
float4 l9_773=l9_686;
float4 l9_774=l9_773;
float2 l9_775=l9_671;
float4 l9_776=float4(0.0);
int l9_777;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_778=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_778=0;
}
else
{
l9_778=in.varStereoViewID;
}
int l9_779=l9_778;
l9_777=1-l9_779;
}
else
{
int l9_780=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_780=0;
}
else
{
l9_780=in.varStereoViewID;
}
int l9_781=l9_780;
l9_777=l9_781;
}
int l9_782=l9_777;
int l9_783=mainTextureLayout_tmp;
int l9_784=l9_782;
float2 l9_785=l9_775;
bool l9_786=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_787=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_788=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_789=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_790=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_791=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_792=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_793=0.0;
bool l9_794=l9_791&&(!l9_789);
float l9_795=1.0;
float l9_796=l9_785.x;
int l9_797=l9_788.x;
if (l9_797==1)
{
l9_796=fract(l9_796);
}
else
{
if (l9_797==2)
{
float l9_798=fract(l9_796);
float l9_799=l9_796-l9_798;
float l9_800=step(0.25,fract(l9_799*0.5));
l9_796=mix(l9_798,1.0-l9_798,fast::clamp(l9_800,0.0,1.0));
}
}
l9_785.x=l9_796;
float l9_801=l9_785.y;
int l9_802=l9_788.y;
if (l9_802==1)
{
l9_801=fract(l9_801);
}
else
{
if (l9_802==2)
{
float l9_803=fract(l9_801);
float l9_804=l9_801-l9_803;
float l9_805=step(0.25,fract(l9_804*0.5));
l9_801=mix(l9_803,1.0-l9_803,fast::clamp(l9_805,0.0,1.0));
}
}
l9_785.y=l9_801;
if (l9_789)
{
bool l9_806=l9_791;
bool l9_807;
if (l9_806)
{
l9_807=l9_788.x==3;
}
else
{
l9_807=l9_806;
}
float l9_808=l9_785.x;
float l9_809=l9_790.x;
float l9_810=l9_790.z;
bool l9_811=l9_807;
float l9_812=l9_795;
float l9_813=fast::clamp(l9_808,l9_809,l9_810);
float l9_814=step(abs(l9_808-l9_813),9.9999997e-06);
l9_812*=(l9_814+((1.0-float(l9_811))*(1.0-l9_814)));
l9_808=l9_813;
l9_785.x=l9_808;
l9_795=l9_812;
bool l9_815=l9_791;
bool l9_816;
if (l9_815)
{
l9_816=l9_788.y==3;
}
else
{
l9_816=l9_815;
}
float l9_817=l9_785.y;
float l9_818=l9_790.y;
float l9_819=l9_790.w;
bool l9_820=l9_816;
float l9_821=l9_795;
float l9_822=fast::clamp(l9_817,l9_818,l9_819);
float l9_823=step(abs(l9_817-l9_822),9.9999997e-06);
l9_821*=(l9_823+((1.0-float(l9_820))*(1.0-l9_823)));
l9_817=l9_822;
l9_785.y=l9_817;
l9_795=l9_821;
}
float2 l9_824=l9_785;
bool l9_825=l9_786;
float3x3 l9_826=l9_787;
if (l9_825)
{
l9_824=float2((l9_826*float3(l9_824,1.0)).xy);
}
float2 l9_827=l9_824;
l9_785=l9_827;
float l9_828=l9_785.x;
int l9_829=l9_788.x;
bool l9_830=l9_794;
float l9_831=l9_795;
if ((l9_829==0)||(l9_829==3))
{
float l9_832=l9_828;
float l9_833=0.0;
float l9_834=1.0;
bool l9_835=l9_830;
float l9_836=l9_831;
float l9_837=fast::clamp(l9_832,l9_833,l9_834);
float l9_838=step(abs(l9_832-l9_837),9.9999997e-06);
l9_836*=(l9_838+((1.0-float(l9_835))*(1.0-l9_838)));
l9_832=l9_837;
l9_828=l9_832;
l9_831=l9_836;
}
l9_785.x=l9_828;
l9_795=l9_831;
float l9_839=l9_785.y;
int l9_840=l9_788.y;
bool l9_841=l9_794;
float l9_842=l9_795;
if ((l9_840==0)||(l9_840==3))
{
float l9_843=l9_839;
float l9_844=0.0;
float l9_845=1.0;
bool l9_846=l9_841;
float l9_847=l9_842;
float l9_848=fast::clamp(l9_843,l9_844,l9_845);
float l9_849=step(abs(l9_843-l9_848),9.9999997e-06);
l9_847*=(l9_849+((1.0-float(l9_846))*(1.0-l9_849)));
l9_843=l9_848;
l9_839=l9_843;
l9_842=l9_847;
}
l9_785.y=l9_839;
l9_795=l9_842;
float2 l9_850=l9_785;
int l9_851=l9_783;
int l9_852=l9_784;
float l9_853=l9_793;
float2 l9_854=l9_850;
int l9_855=l9_851;
int l9_856=l9_852;
float3 l9_857=float3(0.0);
if (l9_855==0)
{
l9_857=float3(l9_854,0.0);
}
else
{
if (l9_855==1)
{
l9_857=float3(l9_854.x,(l9_854.y*0.5)+(0.5-(float(l9_856)*0.5)),0.0);
}
else
{
l9_857=float3(l9_854,float(l9_856));
}
}
float3 l9_858=l9_857;
float3 l9_859=l9_858;
float4 l9_860=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_859.xy,bias(l9_853));
float4 l9_861=l9_860;
if (l9_791)
{
l9_861=mix(l9_792,l9_861,float4(l9_795));
}
float4 l9_862=l9_861;
l9_776=l9_862;
float4 l9_863=l9_776;
l9_667=mix(l9_774,l9_863,float4(l9_684));
}
else
{
float2 l9_864=l9_669;
float4 l9_865=float4(0.0);
int l9_866;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_867=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_867=0;
}
else
{
l9_867=in.varStereoViewID;
}
int l9_868=l9_867;
l9_866=1-l9_868;
}
else
{
int l9_869=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_869=0;
}
else
{
l9_869=in.varStereoViewID;
}
int l9_870=l9_869;
l9_866=l9_870;
}
int l9_871=l9_866;
int l9_872=mainTextureLayout_tmp;
int l9_873=l9_871;
float2 l9_874=l9_864;
bool l9_875=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_876=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_877=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_878=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_879=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_880=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_881=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_882=0.0;
bool l9_883=l9_880&&(!l9_878);
float l9_884=1.0;
float l9_885=l9_874.x;
int l9_886=l9_877.x;
if (l9_886==1)
{
l9_885=fract(l9_885);
}
else
{
if (l9_886==2)
{
float l9_887=fract(l9_885);
float l9_888=l9_885-l9_887;
float l9_889=step(0.25,fract(l9_888*0.5));
l9_885=mix(l9_887,1.0-l9_887,fast::clamp(l9_889,0.0,1.0));
}
}
l9_874.x=l9_885;
float l9_890=l9_874.y;
int l9_891=l9_877.y;
if (l9_891==1)
{
l9_890=fract(l9_890);
}
else
{
if (l9_891==2)
{
float l9_892=fract(l9_890);
float l9_893=l9_890-l9_892;
float l9_894=step(0.25,fract(l9_893*0.5));
l9_890=mix(l9_892,1.0-l9_892,fast::clamp(l9_894,0.0,1.0));
}
}
l9_874.y=l9_890;
if (l9_878)
{
bool l9_895=l9_880;
bool l9_896;
if (l9_895)
{
l9_896=l9_877.x==3;
}
else
{
l9_896=l9_895;
}
float l9_897=l9_874.x;
float l9_898=l9_879.x;
float l9_899=l9_879.z;
bool l9_900=l9_896;
float l9_901=l9_884;
float l9_902=fast::clamp(l9_897,l9_898,l9_899);
float l9_903=step(abs(l9_897-l9_902),9.9999997e-06);
l9_901*=(l9_903+((1.0-float(l9_900))*(1.0-l9_903)));
l9_897=l9_902;
l9_874.x=l9_897;
l9_884=l9_901;
bool l9_904=l9_880;
bool l9_905;
if (l9_904)
{
l9_905=l9_877.y==3;
}
else
{
l9_905=l9_904;
}
float l9_906=l9_874.y;
float l9_907=l9_879.y;
float l9_908=l9_879.w;
bool l9_909=l9_905;
float l9_910=l9_884;
float l9_911=fast::clamp(l9_906,l9_907,l9_908);
float l9_912=step(abs(l9_906-l9_911),9.9999997e-06);
l9_910*=(l9_912+((1.0-float(l9_909))*(1.0-l9_912)));
l9_906=l9_911;
l9_874.y=l9_906;
l9_884=l9_910;
}
float2 l9_913=l9_874;
bool l9_914=l9_875;
float3x3 l9_915=l9_876;
if (l9_914)
{
l9_913=float2((l9_915*float3(l9_913,1.0)).xy);
}
float2 l9_916=l9_913;
l9_874=l9_916;
float l9_917=l9_874.x;
int l9_918=l9_877.x;
bool l9_919=l9_883;
float l9_920=l9_884;
if ((l9_918==0)||(l9_918==3))
{
float l9_921=l9_917;
float l9_922=0.0;
float l9_923=1.0;
bool l9_924=l9_919;
float l9_925=l9_920;
float l9_926=fast::clamp(l9_921,l9_922,l9_923);
float l9_927=step(abs(l9_921-l9_926),9.9999997e-06);
l9_925*=(l9_927+((1.0-float(l9_924))*(1.0-l9_927)));
l9_921=l9_926;
l9_917=l9_921;
l9_920=l9_925;
}
l9_874.x=l9_917;
l9_884=l9_920;
float l9_928=l9_874.y;
int l9_929=l9_877.y;
bool l9_930=l9_883;
float l9_931=l9_884;
if ((l9_929==0)||(l9_929==3))
{
float l9_932=l9_928;
float l9_933=0.0;
float l9_934=1.0;
bool l9_935=l9_930;
float l9_936=l9_931;
float l9_937=fast::clamp(l9_932,l9_933,l9_934);
float l9_938=step(abs(l9_932-l9_937),9.9999997e-06);
l9_936*=(l9_938+((1.0-float(l9_935))*(1.0-l9_938)));
l9_932=l9_937;
l9_928=l9_932;
l9_931=l9_936;
}
l9_874.y=l9_928;
l9_884=l9_931;
float2 l9_939=l9_874;
int l9_940=l9_872;
int l9_941=l9_873;
float l9_942=l9_882;
float2 l9_943=l9_939;
int l9_944=l9_940;
int l9_945=l9_941;
float3 l9_946=float3(0.0);
if (l9_944==0)
{
l9_946=float3(l9_943,0.0);
}
else
{
if (l9_944==1)
{
l9_946=float3(l9_943.x,(l9_943.y*0.5)+(0.5-(float(l9_945)*0.5)),0.0);
}
else
{
l9_946=float3(l9_943,float(l9_945));
}
}
float3 l9_947=l9_946;
float3 l9_948=l9_947;
float4 l9_949=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_948.xy,bias(l9_942));
float4 l9_950=l9_949;
if (l9_880)
{
l9_950=mix(l9_881,l9_950,float4(l9_884));
}
float4 l9_951=l9_950;
l9_865=l9_951;
float4 l9_952=l9_865;
l9_667=l9_952;
}
float4 l9_953=float4(0.0);
float l9_954=ceil(l9_661*N2_texSize.x)/N2_texSize.x;
float l9_955=l9_954;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_956=tempGlobals.Surface_UVCoord0;
l9_955+=(l9_956.x/N2_texSize.x);
}
float2 l9_957=float2(l9_955,0.5);
float4 l9_958=float4(0.0);
int l9_959;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_960=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_960=0;
}
else
{
l9_960=in.varStereoViewID;
}
int l9_961=l9_960;
l9_959=1-l9_961;
}
else
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
l9_959=l9_963;
}
int l9_964=l9_959;
int l9_965=colorRampTextureLayout_tmp;
int l9_966=l9_964;
float2 l9_967=l9_957;
bool l9_968=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_969=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_970=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_971=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_972=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_973=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_974=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_975=0.0;
bool l9_976=l9_973&&(!l9_971);
float l9_977=1.0;
float l9_978=l9_967.x;
int l9_979=l9_970.x;
if (l9_979==1)
{
l9_978=fract(l9_978);
}
else
{
if (l9_979==2)
{
float l9_980=fract(l9_978);
float l9_981=l9_978-l9_980;
float l9_982=step(0.25,fract(l9_981*0.5));
l9_978=mix(l9_980,1.0-l9_980,fast::clamp(l9_982,0.0,1.0));
}
}
l9_967.x=l9_978;
float l9_983=l9_967.y;
int l9_984=l9_970.y;
if (l9_984==1)
{
l9_983=fract(l9_983);
}
else
{
if (l9_984==2)
{
float l9_985=fract(l9_983);
float l9_986=l9_983-l9_985;
float l9_987=step(0.25,fract(l9_986*0.5));
l9_983=mix(l9_985,1.0-l9_985,fast::clamp(l9_987,0.0,1.0));
}
}
l9_967.y=l9_983;
if (l9_971)
{
bool l9_988=l9_973;
bool l9_989;
if (l9_988)
{
l9_989=l9_970.x==3;
}
else
{
l9_989=l9_988;
}
float l9_990=l9_967.x;
float l9_991=l9_972.x;
float l9_992=l9_972.z;
bool l9_993=l9_989;
float l9_994=l9_977;
float l9_995=fast::clamp(l9_990,l9_991,l9_992);
float l9_996=step(abs(l9_990-l9_995),9.9999997e-06);
l9_994*=(l9_996+((1.0-float(l9_993))*(1.0-l9_996)));
l9_990=l9_995;
l9_967.x=l9_990;
l9_977=l9_994;
bool l9_997=l9_973;
bool l9_998;
if (l9_997)
{
l9_998=l9_970.y==3;
}
else
{
l9_998=l9_997;
}
float l9_999=l9_967.y;
float l9_1000=l9_972.y;
float l9_1001=l9_972.w;
bool l9_1002=l9_998;
float l9_1003=l9_977;
float l9_1004=fast::clamp(l9_999,l9_1000,l9_1001);
float l9_1005=step(abs(l9_999-l9_1004),9.9999997e-06);
l9_1003*=(l9_1005+((1.0-float(l9_1002))*(1.0-l9_1005)));
l9_999=l9_1004;
l9_967.y=l9_999;
l9_977=l9_1003;
}
float2 l9_1006=l9_967;
bool l9_1007=l9_968;
float3x3 l9_1008=l9_969;
if (l9_1007)
{
l9_1006=float2((l9_1008*float3(l9_1006,1.0)).xy);
}
float2 l9_1009=l9_1006;
l9_967=l9_1009;
float l9_1010=l9_967.x;
int l9_1011=l9_970.x;
bool l9_1012=l9_976;
float l9_1013=l9_977;
if ((l9_1011==0)||(l9_1011==3))
{
float l9_1014=l9_1010;
float l9_1015=0.0;
float l9_1016=1.0;
bool l9_1017=l9_1012;
float l9_1018=l9_1013;
float l9_1019=fast::clamp(l9_1014,l9_1015,l9_1016);
float l9_1020=step(abs(l9_1014-l9_1019),9.9999997e-06);
l9_1018*=(l9_1020+((1.0-float(l9_1017))*(1.0-l9_1020)));
l9_1014=l9_1019;
l9_1010=l9_1014;
l9_1013=l9_1018;
}
l9_967.x=l9_1010;
l9_977=l9_1013;
float l9_1021=l9_967.y;
int l9_1022=l9_970.y;
bool l9_1023=l9_976;
float l9_1024=l9_977;
if ((l9_1022==0)||(l9_1022==3))
{
float l9_1025=l9_1021;
float l9_1026=0.0;
float l9_1027=1.0;
bool l9_1028=l9_1023;
float l9_1029=l9_1024;
float l9_1030=fast::clamp(l9_1025,l9_1026,l9_1027);
float l9_1031=step(abs(l9_1025-l9_1030),9.9999997e-06);
l9_1029*=(l9_1031+((1.0-float(l9_1028))*(1.0-l9_1031)));
l9_1025=l9_1030;
l9_1021=l9_1025;
l9_1024=l9_1029;
}
l9_967.y=l9_1021;
l9_977=l9_1024;
float2 l9_1032=l9_967;
int l9_1033=l9_965;
int l9_1034=l9_966;
float l9_1035=l9_975;
float2 l9_1036=l9_1032;
int l9_1037=l9_1033;
int l9_1038=l9_1034;
float3 l9_1039=float3(0.0);
if (l9_1037==0)
{
l9_1039=float3(l9_1036,0.0);
}
else
{
if (l9_1037==1)
{
l9_1039=float3(l9_1036.x,(l9_1036.y*0.5)+(0.5-(float(l9_1038)*0.5)),0.0);
}
else
{
l9_1039=float3(l9_1036,float(l9_1038));
}
}
float3 l9_1040=l9_1039;
float3 l9_1041=l9_1040;
float4 l9_1042=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_1041.xy,bias(l9_1035));
float4 l9_1043=l9_1042;
if (l9_973)
{
l9_1043=mix(l9_974,l9_1043,float4(l9_977));
}
float4 l9_1044=l9_1043;
l9_958=l9_1044;
float4 l9_1045=l9_958;
l9_953=l9_1045*N2_colorRampMult;
float4 l9_1046=float4(1.0);
float4 l9_1047=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_1048=tempGlobals.Surface_UVCoord0;
float2 l9_1049=l9_1048;
float4 l9_1050=float4(0.0);
int l9_1051;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1052=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1052=0;
}
else
{
l9_1052=in.varStereoViewID;
}
int l9_1053=l9_1052;
l9_1051=1-l9_1053;
}
else
{
int l9_1054=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1054=0;
}
else
{
l9_1054=in.varStereoViewID;
}
int l9_1055=l9_1054;
l9_1051=l9_1055;
}
int l9_1056=l9_1051;
int l9_1057=mainTextureLayout_tmp;
int l9_1058=l9_1056;
float2 l9_1059=l9_1049;
bool l9_1060=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1061=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1062=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1063=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1064=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1065=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1066=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1067=0.0;
bool l9_1068=l9_1065&&(!l9_1063);
float l9_1069=1.0;
float l9_1070=l9_1059.x;
int l9_1071=l9_1062.x;
if (l9_1071==1)
{
l9_1070=fract(l9_1070);
}
else
{
if (l9_1071==2)
{
float l9_1072=fract(l9_1070);
float l9_1073=l9_1070-l9_1072;
float l9_1074=step(0.25,fract(l9_1073*0.5));
l9_1070=mix(l9_1072,1.0-l9_1072,fast::clamp(l9_1074,0.0,1.0));
}
}
l9_1059.x=l9_1070;
float l9_1075=l9_1059.y;
int l9_1076=l9_1062.y;
if (l9_1076==1)
{
l9_1075=fract(l9_1075);
}
else
{
if (l9_1076==2)
{
float l9_1077=fract(l9_1075);
float l9_1078=l9_1075-l9_1077;
float l9_1079=step(0.25,fract(l9_1078*0.5));
l9_1075=mix(l9_1077,1.0-l9_1077,fast::clamp(l9_1079,0.0,1.0));
}
}
l9_1059.y=l9_1075;
if (l9_1063)
{
bool l9_1080=l9_1065;
bool l9_1081;
if (l9_1080)
{
l9_1081=l9_1062.x==3;
}
else
{
l9_1081=l9_1080;
}
float l9_1082=l9_1059.x;
float l9_1083=l9_1064.x;
float l9_1084=l9_1064.z;
bool l9_1085=l9_1081;
float l9_1086=l9_1069;
float l9_1087=fast::clamp(l9_1082,l9_1083,l9_1084);
float l9_1088=step(abs(l9_1082-l9_1087),9.9999997e-06);
l9_1086*=(l9_1088+((1.0-float(l9_1085))*(1.0-l9_1088)));
l9_1082=l9_1087;
l9_1059.x=l9_1082;
l9_1069=l9_1086;
bool l9_1089=l9_1065;
bool l9_1090;
if (l9_1089)
{
l9_1090=l9_1062.y==3;
}
else
{
l9_1090=l9_1089;
}
float l9_1091=l9_1059.y;
float l9_1092=l9_1064.y;
float l9_1093=l9_1064.w;
bool l9_1094=l9_1090;
float l9_1095=l9_1069;
float l9_1096=fast::clamp(l9_1091,l9_1092,l9_1093);
float l9_1097=step(abs(l9_1091-l9_1096),9.9999997e-06);
l9_1095*=(l9_1097+((1.0-float(l9_1094))*(1.0-l9_1097)));
l9_1091=l9_1096;
l9_1059.y=l9_1091;
l9_1069=l9_1095;
}
float2 l9_1098=l9_1059;
bool l9_1099=l9_1060;
float3x3 l9_1100=l9_1061;
if (l9_1099)
{
l9_1098=float2((l9_1100*float3(l9_1098,1.0)).xy);
}
float2 l9_1101=l9_1098;
l9_1059=l9_1101;
float l9_1102=l9_1059.x;
int l9_1103=l9_1062.x;
bool l9_1104=l9_1068;
float l9_1105=l9_1069;
if ((l9_1103==0)||(l9_1103==3))
{
float l9_1106=l9_1102;
float l9_1107=0.0;
float l9_1108=1.0;
bool l9_1109=l9_1104;
float l9_1110=l9_1105;
float l9_1111=fast::clamp(l9_1106,l9_1107,l9_1108);
float l9_1112=step(abs(l9_1106-l9_1111),9.9999997e-06);
l9_1110*=(l9_1112+((1.0-float(l9_1109))*(1.0-l9_1112)));
l9_1106=l9_1111;
l9_1102=l9_1106;
l9_1105=l9_1110;
}
l9_1059.x=l9_1102;
l9_1069=l9_1105;
float l9_1113=l9_1059.y;
int l9_1114=l9_1062.y;
bool l9_1115=l9_1068;
float l9_1116=l9_1069;
if ((l9_1114==0)||(l9_1114==3))
{
float l9_1117=l9_1113;
float l9_1118=0.0;
float l9_1119=1.0;
bool l9_1120=l9_1115;
float l9_1121=l9_1116;
float l9_1122=fast::clamp(l9_1117,l9_1118,l9_1119);
float l9_1123=step(abs(l9_1117-l9_1122),9.9999997e-06);
l9_1121*=(l9_1123+((1.0-float(l9_1120))*(1.0-l9_1123)));
l9_1117=l9_1122;
l9_1113=l9_1117;
l9_1116=l9_1121;
}
l9_1059.y=l9_1113;
l9_1069=l9_1116;
float2 l9_1124=l9_1059;
int l9_1125=l9_1057;
int l9_1126=l9_1058;
float l9_1127=l9_1067;
float2 l9_1128=l9_1124;
int l9_1129=l9_1125;
int l9_1130=l9_1126;
float3 l9_1131=float3(0.0);
if (l9_1129==0)
{
l9_1131=float3(l9_1128,0.0);
}
else
{
if (l9_1129==1)
{
l9_1131=float3(l9_1128.x,(l9_1128.y*0.5)+(0.5-(float(l9_1130)*0.5)),0.0);
}
else
{
l9_1131=float3(l9_1128,float(l9_1130));
}
}
float3 l9_1132=l9_1131;
float3 l9_1133=l9_1132;
float4 l9_1134=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1133.xy,bias(l9_1127));
float4 l9_1135=l9_1134;
if (l9_1065)
{
l9_1135=mix(l9_1066,l9_1135,float4(l9_1069));
}
float4 l9_1136=l9_1135;
l9_1050=l9_1136;
float4 l9_1137=l9_1050;
l9_1046=l9_1137;
float2 l9_1138=tempGlobals.Surface_UVCoord0;
N2_uv=l9_1138;
if (N2_ENABLE_FLIPBOOK)
{
l9_1046=l9_667;
N2_uv=l9_669;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_1047=l9_953;
}
}
N2_result=(l9_1046*l9_662)*l9_1047;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_1139=l9_661*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_1139,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_1140=length(N2_result.xyz);
N2_result.w=l9_1140;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_1141=N2_result.xyz*N2_result.w;
N2_result=float4(l9_1141.x,l9_1141.y,l9_1141.z,N2_result.w);
}
l9_641=N2_uv;
l9_617=l9_641;
float4 l9_1142=float4(0.0);
float2 l9_1143=l9_617;
int l9_1144;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1145=0;
}
else
{
l9_1145=in.varStereoViewID;
}
int l9_1146=l9_1145;
l9_1144=1-l9_1146;
}
else
{
int l9_1147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1147=0;
}
else
{
l9_1147=in.varStereoViewID;
}
int l9_1148=l9_1147;
l9_1144=l9_1148;
}
int l9_1149=l9_1144;
int l9_1150=normalTexLayout_tmp;
int l9_1151=l9_1149;
float2 l9_1152=l9_1143;
bool l9_1153=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1154=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1155=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1156=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1157=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1158=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1159=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1160=0.0;
bool l9_1161=l9_1158&&(!l9_1156);
float l9_1162=1.0;
float l9_1163=l9_1152.x;
int l9_1164=l9_1155.x;
if (l9_1164==1)
{
l9_1163=fract(l9_1163);
}
else
{
if (l9_1164==2)
{
float l9_1165=fract(l9_1163);
float l9_1166=l9_1163-l9_1165;
float l9_1167=step(0.25,fract(l9_1166*0.5));
l9_1163=mix(l9_1165,1.0-l9_1165,fast::clamp(l9_1167,0.0,1.0));
}
}
l9_1152.x=l9_1163;
float l9_1168=l9_1152.y;
int l9_1169=l9_1155.y;
if (l9_1169==1)
{
l9_1168=fract(l9_1168);
}
else
{
if (l9_1169==2)
{
float l9_1170=fract(l9_1168);
float l9_1171=l9_1168-l9_1170;
float l9_1172=step(0.25,fract(l9_1171*0.5));
l9_1168=mix(l9_1170,1.0-l9_1170,fast::clamp(l9_1172,0.0,1.0));
}
}
l9_1152.y=l9_1168;
if (l9_1156)
{
bool l9_1173=l9_1158;
bool l9_1174;
if (l9_1173)
{
l9_1174=l9_1155.x==3;
}
else
{
l9_1174=l9_1173;
}
float l9_1175=l9_1152.x;
float l9_1176=l9_1157.x;
float l9_1177=l9_1157.z;
bool l9_1178=l9_1174;
float l9_1179=l9_1162;
float l9_1180=fast::clamp(l9_1175,l9_1176,l9_1177);
float l9_1181=step(abs(l9_1175-l9_1180),9.9999997e-06);
l9_1179*=(l9_1181+((1.0-float(l9_1178))*(1.0-l9_1181)));
l9_1175=l9_1180;
l9_1152.x=l9_1175;
l9_1162=l9_1179;
bool l9_1182=l9_1158;
bool l9_1183;
if (l9_1182)
{
l9_1183=l9_1155.y==3;
}
else
{
l9_1183=l9_1182;
}
float l9_1184=l9_1152.y;
float l9_1185=l9_1157.y;
float l9_1186=l9_1157.w;
bool l9_1187=l9_1183;
float l9_1188=l9_1162;
float l9_1189=fast::clamp(l9_1184,l9_1185,l9_1186);
float l9_1190=step(abs(l9_1184-l9_1189),9.9999997e-06);
l9_1188*=(l9_1190+((1.0-float(l9_1187))*(1.0-l9_1190)));
l9_1184=l9_1189;
l9_1152.y=l9_1184;
l9_1162=l9_1188;
}
float2 l9_1191=l9_1152;
bool l9_1192=l9_1153;
float3x3 l9_1193=l9_1154;
if (l9_1192)
{
l9_1191=float2((l9_1193*float3(l9_1191,1.0)).xy);
}
float2 l9_1194=l9_1191;
l9_1152=l9_1194;
float l9_1195=l9_1152.x;
int l9_1196=l9_1155.x;
bool l9_1197=l9_1161;
float l9_1198=l9_1162;
if ((l9_1196==0)||(l9_1196==3))
{
float l9_1199=l9_1195;
float l9_1200=0.0;
float l9_1201=1.0;
bool l9_1202=l9_1197;
float l9_1203=l9_1198;
float l9_1204=fast::clamp(l9_1199,l9_1200,l9_1201);
float l9_1205=step(abs(l9_1199-l9_1204),9.9999997e-06);
l9_1203*=(l9_1205+((1.0-float(l9_1202))*(1.0-l9_1205)));
l9_1199=l9_1204;
l9_1195=l9_1199;
l9_1198=l9_1203;
}
l9_1152.x=l9_1195;
l9_1162=l9_1198;
float l9_1206=l9_1152.y;
int l9_1207=l9_1155.y;
bool l9_1208=l9_1161;
float l9_1209=l9_1162;
if ((l9_1207==0)||(l9_1207==3))
{
float l9_1210=l9_1206;
float l9_1211=0.0;
float l9_1212=1.0;
bool l9_1213=l9_1208;
float l9_1214=l9_1209;
float l9_1215=fast::clamp(l9_1210,l9_1211,l9_1212);
float l9_1216=step(abs(l9_1210-l9_1215),9.9999997e-06);
l9_1214*=(l9_1216+((1.0-float(l9_1213))*(1.0-l9_1216)));
l9_1210=l9_1215;
l9_1206=l9_1210;
l9_1209=l9_1214;
}
l9_1152.y=l9_1206;
l9_1162=l9_1209;
float2 l9_1217=l9_1152;
int l9_1218=l9_1150;
int l9_1219=l9_1151;
float l9_1220=l9_1160;
float2 l9_1221=l9_1217;
int l9_1222=l9_1218;
int l9_1223=l9_1219;
float3 l9_1224=float3(0.0);
if (l9_1222==0)
{
l9_1224=float3(l9_1221,0.0);
}
else
{
if (l9_1222==1)
{
l9_1224=float3(l9_1221.x,(l9_1221.y*0.5)+(0.5-(float(l9_1223)*0.5)),0.0);
}
else
{
l9_1224=float3(l9_1221,float(l9_1223));
}
}
float3 l9_1225=l9_1224;
float3 l9_1226=l9_1225;
float4 l9_1227=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1226.xy,bias(l9_1220));
float4 l9_1228=l9_1227;
if (l9_1158)
{
l9_1228=mix(l9_1159,l9_1228,float4(l9_1162));
}
float4 l9_1229=l9_1228;
float4 l9_1230=l9_1229;
float3 l9_1231=(l9_1230.xyz*1.9921875)-float3(1.0);
l9_1230=float4(l9_1231.x,l9_1231.y,l9_1231.z,l9_1230.w);
l9_1142=l9_1230;
l9_570=l9_1142.xyz;
l9_573=l9_570;
}
else
{
l9_573=l9_571;
}
l9_569=l9_573;
float l9_1232=0.0;
float l9_1233=(*sc_set0.UserUniforms).metallic;
l9_1232=l9_1233;
float l9_1234=0.0;
float l9_1235=(*sc_set0.UserUniforms).roughness;
l9_1234=l9_1235;
float4 l9_1236=float4(0.0);
float3 l9_1237=l9_43.xyz;
float l9_1238=l9_568;
float3 l9_1239=l9_569;
float3 l9_1240=(*sc_set0.UserUniforms).Port_Emissive_N014;
float l9_1241=l9_1232;
float l9_1242=l9_1234;
float3 l9_1243=(*sc_set0.UserUniforms).Port_AO_N014;
float3 l9_1244=(*sc_set0.UserUniforms).Port_SpecularAO_N014;
ssGlobals l9_1245=param_3;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1245.BumpedNormal=float3x3(float3(l9_1245.VertexTangent_WorldSpace),float3(l9_1245.VertexBinormal_WorldSpace),float3(l9_1245.VertexNormal_WorldSpace))*l9_1239;
}
l9_1238=fast::clamp(l9_1238,0.0,1.0);
float l9_1246=l9_1238;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1246<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1247=gl_FragCoord;
float2 l9_1248=floor(mod(l9_1247.xy,float2(4.0)));
float l9_1249=(mod(dot(l9_1248,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1246<l9_1249)
{
discard_fragment();
}
}
l9_1237=fast::max(l9_1237,float3(0.0));
float4 l9_1250;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1250=float4(l9_1237,l9_1238);
}
else
{
l9_1241=fast::clamp(l9_1241,0.0,1.0);
l9_1242=fast::clamp(l9_1242,0.0,1.0);
float3 l9_1251=l9_1237;
float l9_1252=l9_1238;
float3 l9_1253=l9_1245.BumpedNormal;
float3 l9_1254=l9_1245.PositionWS;
float3 l9_1255=l9_1245.ViewDirWS;
float3 l9_1256=l9_1240;
float l9_1257=l9_1241;
float l9_1258=l9_1242;
float3 l9_1259=l9_1243;
float3 l9_1260=l9_1244;
SurfaceProperties l9_1261;
l9_1261.albedo=float3(0.0);
l9_1261.opacity=1.0;
l9_1261.normal=float3(0.0);
l9_1261.positionWS=float3(0.0);
l9_1261.viewDirWS=float3(0.0);
l9_1261.metallic=0.0;
l9_1261.roughness=0.0;
l9_1261.emissive=float3(0.0);
l9_1261.ao=float3(1.0);
l9_1261.specularAo=float3(1.0);
l9_1261.bakedShadows=float3(1.0);
SurfaceProperties l9_1262=l9_1261;
SurfaceProperties l9_1263=l9_1262;
l9_1263.opacity=l9_1252;
float3 l9_1264=l9_1251;
float3 l9_1265;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1265=float3(pow(l9_1264.x,2.2),pow(l9_1264.y,2.2),pow(l9_1264.z,2.2));
}
else
{
l9_1265=l9_1264*l9_1264;
}
float3 l9_1266=l9_1265;
l9_1263.albedo=l9_1266;
l9_1263.normal=normalize(l9_1253);
l9_1263.positionWS=l9_1254;
l9_1263.viewDirWS=l9_1255;
float3 l9_1267=l9_1256;
float3 l9_1268;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1268=float3(pow(l9_1267.x,2.2),pow(l9_1267.y,2.2),pow(l9_1267.z,2.2));
}
else
{
l9_1268=l9_1267*l9_1267;
}
float3 l9_1269=l9_1268;
l9_1263.emissive=l9_1269;
l9_1263.metallic=l9_1257;
l9_1263.roughness=l9_1258;
l9_1263.ao=l9_1259;
l9_1263.specularAo=l9_1260;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_1270=l9_1263.positionWS;
l9_1263.ao=evaluateSSAO(l9_1270,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_1271=l9_1263;
SurfaceProperties l9_1272=l9_1271;
float3 l9_1273=mix(float3(0.039999999),l9_1272.albedo*l9_1272.metallic,float3(l9_1272.metallic));
float3 l9_1274=mix(l9_1272.albedo*(1.0-l9_1272.metallic),float3(0.0),float3(l9_1272.metallic));
l9_1271.albedo=l9_1274;
l9_1271.specColor=l9_1273;
SurfaceProperties l9_1275=l9_1271;
l9_1263=l9_1275;
SurfaceProperties l9_1276=l9_1263;
LightingComponents l9_1277;
l9_1277.directDiffuse=float3(0.0);
l9_1277.directSpecular=float3(0.0);
l9_1277.indirectDiffuse=float3(1.0);
l9_1277.indirectSpecular=float3(0.0);
l9_1277.emitted=float3(0.0);
l9_1277.transmitted=float3(0.0);
LightingComponents l9_1278=l9_1277;
LightingComponents l9_1279=l9_1278;
float3 l9_1280=l9_1276.viewDirWS;
int l9_1281=0;
float4 l9_1282=float4(l9_1276.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_1283;
LightProperties l9_1284;
int l9_1285=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1285<sc_DirectionalLightsCount_tmp)
{
l9_1283.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1285].direction;
l9_1283.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1285].color;
l9_1284.direction=l9_1283.direction;
l9_1284.color=l9_1283.color.xyz;
l9_1284.attenuation=l9_1283.color.w;
l9_1284.attenuation*=l9_1282[(l9_1281<3) ? l9_1281 : 3];
l9_1281++;
LightingComponents l9_1286=l9_1279;
LightProperties l9_1287=l9_1284;
SurfaceProperties l9_1288=l9_1276;
float3 l9_1289=l9_1280;
SurfaceProperties l9_1290=l9_1288;
float3 l9_1291=l9_1287.direction;
float l9_1292=dot(l9_1290.normal,l9_1291);
float l9_1293=fast::clamp(l9_1292,0.0,1.0);
float3 l9_1294=float3(l9_1293);
l9_1286.directDiffuse+=((l9_1294*l9_1287.color)*l9_1287.attenuation);
SurfaceProperties l9_1295=l9_1288;
float3 l9_1296=l9_1287.direction;
float3 l9_1297=l9_1289;
l9_1286.directSpecular+=((calculateDirectSpecular(l9_1295,l9_1296,l9_1297)*l9_1287.color)*l9_1287.attenuation);
LightingComponents l9_1298=l9_1286;
l9_1279=l9_1298;
l9_1285++;
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
sc_PointLight_t_1 l9_1299;
LightProperties l9_1300;
int l9_1301=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1301<sc_PointLightsCount_tmp)
{
l9_1299.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].falloffEnabled!=0;
l9_1299.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].falloffEndDistance;
l9_1299.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].negRcpFalloffEndDistance4;
l9_1299.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].angleScale;
l9_1299.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].angleOffset;
l9_1299.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].direction;
l9_1299.position=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].position;
l9_1299.color=(*sc_set0.UserUniforms).sc_PointLights[l9_1301].color;
float3 l9_1302=l9_1299.position-l9_1276.positionWS;
l9_1300.direction=normalize(l9_1302);
l9_1300.color=l9_1299.color.xyz;
l9_1300.attenuation=l9_1299.color.w;
l9_1300.attenuation*=l9_1282[(l9_1281<3) ? l9_1281 : 3];
float3 l9_1303=l9_1300.direction;
float3 l9_1304=l9_1299.direction;
float l9_1305=l9_1299.angleScale;
float l9_1306=l9_1299.angleOffset;
float l9_1307=dot(l9_1303,l9_1304);
float l9_1308=fast::clamp((l9_1307*l9_1305)+l9_1306,0.0,1.0);
float l9_1309=l9_1308*l9_1308;
l9_1300.attenuation*=l9_1309;
if (l9_1299.falloffEnabled)
{
float l9_1310=length(l9_1302);
float l9_1311=l9_1299.falloffEndDistance;
l9_1300.attenuation*=computeDistanceAttenuation(l9_1310,l9_1311);
}
l9_1281++;
LightingComponents l9_1312=l9_1279;
LightProperties l9_1313=l9_1300;
SurfaceProperties l9_1314=l9_1276;
float3 l9_1315=l9_1280;
SurfaceProperties l9_1316=l9_1314;
float3 l9_1317=l9_1313.direction;
float l9_1318=dot(l9_1316.normal,l9_1317);
float l9_1319=fast::clamp(l9_1318,0.0,1.0);
float3 l9_1320=float3(l9_1319);
l9_1312.directDiffuse+=((l9_1320*l9_1313.color)*l9_1313.attenuation);
SurfaceProperties l9_1321=l9_1314;
float3 l9_1322=l9_1313.direction;
float3 l9_1323=l9_1315;
l9_1312.directSpecular+=((calculateDirectSpecular(l9_1321,l9_1322,l9_1323)*l9_1313.color)*l9_1313.attenuation);
LightingComponents l9_1324=l9_1312;
l9_1279=l9_1324;
l9_1301++;
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
float3 l9_1325=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_1326=abs(in.varShadowTex-float2(0.5));
float l9_1327=fast::max(l9_1326.x,l9_1326.y);
float l9_1328=step(l9_1327,0.5);
float4 l9_1329=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_1328;
float3 l9_1330=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1329.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_1331=l9_1329.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_1325=mix(float3(1.0),l9_1330,float3(l9_1331));
}
else
{
l9_1325=float3(1.0);
}
float3 l9_1332=l9_1325;
float3 l9_1333=l9_1332;
l9_1279.directDiffuse*=l9_1333;
l9_1279.directSpecular*=l9_1333;
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_1334=gl_FragCoord;
float2 l9_1335=l9_1334.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1336=l9_1335;
float2 l9_1337=l9_1336;
float l9_1338=0.0;
int l9_1339;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_1340=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1340=0;
}
else
{
l9_1340=in.varStereoViewID;
}
int l9_1341=l9_1340;
l9_1339=1-l9_1341;
}
else
{
int l9_1342=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1342=0;
}
else
{
l9_1342=in.varStereoViewID;
}
int l9_1343=l9_1342;
l9_1339=l9_1343;
}
int l9_1344=l9_1339;
float2 l9_1345=l9_1337;
int l9_1346=sc_RayTracingShadowsLayout_tmp;
int l9_1347=l9_1344;
float l9_1348=l9_1338;
float2 l9_1349=l9_1345;
int l9_1350=l9_1346;
int l9_1351=l9_1347;
float3 l9_1352=float3(0.0);
if (l9_1350==0)
{
l9_1352=float3(l9_1349,0.0);
}
else
{
if (l9_1350==1)
{
l9_1352=float3(l9_1349.x,(l9_1349.y*0.5)+(0.5-(float(l9_1351)*0.5)),0.0);
}
else
{
l9_1352=float3(l9_1349,float(l9_1351));
}
}
float3 l9_1353=l9_1352;
float3 l9_1354=l9_1353;
float4 l9_1355=sc_set0.sc_RayTracingShadows.sample(sc_set0.sc_RayTracingShadowsSmpSC,l9_1354.xy,bias(l9_1348));
float4 l9_1356=l9_1355;
float4 l9_1357=l9_1356;
float l9_1358=l9_1357.x;
float l9_1359=1.0-l9_1358;
l9_1279.directDiffuse*=l9_1359;
l9_1279.directSpecular*=l9_1359;
}
SurfaceProperties l9_1360=l9_1276;
float3 l9_1361=l9_1360.normal;
float3 l9_1362=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_1363=l9_1361;
float3 l9_1364=l9_1363;
float l9_1365=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1366=float2(0.0);
float l9_1367=l9_1364.x;
float l9_1368=-l9_1364.z;
float l9_1369=(l9_1367<0.0) ? (-1.0) : 1.0;
float l9_1370=l9_1369*acos(fast::clamp(l9_1368/length(float2(l9_1367,l9_1368)),-1.0,1.0));
l9_1366.x=l9_1370-1.5707964;
l9_1366.y=acos(l9_1364.y);
l9_1366/=float2(6.2831855,3.1415927);
l9_1366.y=1.0-l9_1366.y;
l9_1366.x+=(l9_1365/360.0);
l9_1366.x=fract((l9_1366.x+floor(l9_1366.x))+1.0);
float2 l9_1371=l9_1366;
float2 l9_1372=l9_1371;
float4 l9_1373=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_1374=l9_1372;
float2 l9_1375=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1376=5.0;
l9_1372=calcSeamlessPanoramicUvsForSampling(l9_1374,l9_1375,l9_1376);
}
float2 l9_1377=l9_1372;
float l9_1378=13.0;
int l9_1379;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1380=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1380=0;
}
else
{
l9_1380=in.varStereoViewID;
}
int l9_1381=l9_1380;
l9_1379=1-l9_1381;
}
else
{
int l9_1382=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1382=0;
}
else
{
l9_1382=in.varStereoViewID;
}
int l9_1383=l9_1382;
l9_1379=l9_1383;
}
int l9_1384=l9_1379;
float2 l9_1385=l9_1377;
int l9_1386=sc_EnvmapSpecularLayout_tmp;
int l9_1387=l9_1384;
float l9_1388=l9_1378;
float2 l9_1389=l9_1385;
int l9_1390=l9_1386;
int l9_1391=l9_1387;
float3 l9_1392=float3(0.0);
if (l9_1390==0)
{
l9_1392=float3(l9_1389,0.0);
}
else
{
if (l9_1390==1)
{
l9_1392=float3(l9_1389.x,(l9_1389.y*0.5)+(0.5-(float(l9_1391)*0.5)),0.0);
}
else
{
l9_1392=float3(l9_1389,float(l9_1391));
}
}
float3 l9_1393=l9_1392;
float3 l9_1394=l9_1393;
float4 l9_1395=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1394.xy,bias(l9_1388));
float4 l9_1396=l9_1395;
l9_1373=l9_1396;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_1397=l9_1372;
float2 l9_1398=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_1399=0.0;
l9_1372=calcSeamlessPanoramicUvsForSampling(l9_1397,l9_1398,l9_1399);
float2 l9_1400=l9_1372;
float l9_1401=-13.0;
int l9_1402;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_1403=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1403=0;
}
else
{
l9_1403=in.varStereoViewID;
}
int l9_1404=l9_1403;
l9_1402=1-l9_1404;
}
else
{
int l9_1405=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1405=0;
}
else
{
l9_1405=in.varStereoViewID;
}
int l9_1406=l9_1405;
l9_1402=l9_1406;
}
int l9_1407=l9_1402;
float2 l9_1408=l9_1400;
int l9_1409=sc_EnvmapDiffuseLayout_tmp;
int l9_1410=l9_1407;
float l9_1411=l9_1401;
float2 l9_1412=l9_1408;
int l9_1413=l9_1409;
int l9_1414=l9_1410;
float3 l9_1415=float3(0.0);
if (l9_1413==0)
{
l9_1415=float3(l9_1412,0.0);
}
else
{
if (l9_1413==1)
{
l9_1415=float3(l9_1412.x,(l9_1412.y*0.5)+(0.5-(float(l9_1414)*0.5)),0.0);
}
else
{
l9_1415=float3(l9_1412,float(l9_1414));
}
}
float3 l9_1416=l9_1415;
float3 l9_1417=l9_1416;
float4 l9_1418=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_1417.xy,bias(l9_1411));
float4 l9_1419=l9_1418;
l9_1373=l9_1419;
}
else
{
float2 l9_1420=l9_1372;
float l9_1421=13.0;
int l9_1422;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1423=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1423=0;
}
else
{
l9_1423=in.varStereoViewID;
}
int l9_1424=l9_1423;
l9_1422=1-l9_1424;
}
else
{
int l9_1425=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1425=0;
}
else
{
l9_1425=in.varStereoViewID;
}
int l9_1426=l9_1425;
l9_1422=l9_1426;
}
int l9_1427=l9_1422;
float2 l9_1428=l9_1420;
int l9_1429=sc_EnvmapSpecularLayout_tmp;
int l9_1430=l9_1427;
float l9_1431=l9_1421;
float2 l9_1432=l9_1428;
int l9_1433=l9_1429;
int l9_1434=l9_1430;
float3 l9_1435=float3(0.0);
if (l9_1433==0)
{
l9_1435=float3(l9_1432,0.0);
}
else
{
if (l9_1433==1)
{
l9_1435=float3(l9_1432.x,(l9_1432.y*0.5)+(0.5-(float(l9_1434)*0.5)),0.0);
}
else
{
l9_1435=float3(l9_1432,float(l9_1434));
}
}
float3 l9_1436=l9_1435;
float3 l9_1437=l9_1436;
float4 l9_1438=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1437.xy,bias(l9_1431));
float4 l9_1439=l9_1438;
l9_1373=l9_1439;
}
}
float4 l9_1440=l9_1373;
float3 l9_1441=l9_1440.xyz*(1.0/l9_1440.w);
float3 l9_1442=l9_1441*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1362=l9_1442;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_1443=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_1444=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_1445=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_1446=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_1447=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_1448=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_1449=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_1450=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_1451=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_1452=-l9_1361;
float l9_1453=0.0;
l9_1453=l9_1452.x;
float l9_1454=l9_1452.y;
float l9_1455=l9_1452.z;
float l9_1456=l9_1453*l9_1453;
float l9_1457=l9_1454*l9_1454;
float l9_1458=l9_1455*l9_1455;
float l9_1459=l9_1453*l9_1454;
float l9_1460=l9_1454*l9_1455;
float l9_1461=l9_1453*l9_1455;
float3 l9_1462=((((((l9_1451*0.42904299)*(l9_1456-l9_1457))+((l9_1449*0.74312502)*l9_1458))+(l9_1443*0.88622701))-(l9_1449*0.24770799))+((((l9_1447*l9_1459)+(l9_1450*l9_1461))+(l9_1448*l9_1460))*0.85808599))+((((l9_1446*l9_1453)+(l9_1444*l9_1454))+(l9_1445*l9_1455))*1.0233279);
l9_1362=l9_1462*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_1463=gl_FragCoord;
float2 l9_1464=l9_1463.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1465=l9_1464;
float2 l9_1466=l9_1465;
float l9_1467=0.0;
int l9_1468;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_1469=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1469=0;
}
else
{
l9_1469=in.varStereoViewID;
}
int l9_1470=l9_1469;
l9_1468=1-l9_1470;
}
else
{
int l9_1471=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1471=0;
}
else
{
l9_1471=in.varStereoViewID;
}
int l9_1472=l9_1471;
l9_1468=l9_1472;
}
int l9_1473=l9_1468;
float2 l9_1474=l9_1466;
int l9_1475=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_1476=l9_1473;
float l9_1477=l9_1467;
float2 l9_1478=l9_1474;
int l9_1479=l9_1475;
int l9_1480=l9_1476;
float3 l9_1481=float3(0.0);
if (l9_1479==0)
{
l9_1481=float3(l9_1478,0.0);
}
else
{
if (l9_1479==1)
{
l9_1481=float3(l9_1478.x,(l9_1478.y*0.5)+(0.5-(float(l9_1480)*0.5)),0.0);
}
else
{
l9_1481=float3(l9_1478,float(l9_1480));
}
}
float3 l9_1482=l9_1481;
float3 l9_1483=l9_1482;
float4 l9_1484=sc_set0.sc_RayTracingGlobalIllumination.sample(sc_set0.sc_RayTracingGlobalIlluminationSmpSC,l9_1483.xy,bias(l9_1477));
float4 l9_1485=l9_1484;
float4 l9_1486=l9_1485;
float4 l9_1487=l9_1486;
l9_1362=mix(l9_1362,l9_1487.xyz,float3(l9_1487.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1362+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_1362.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1362+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_1362.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1362+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_1362.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_1488=l9_1361;
float3 l9_1489=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_1490;
float l9_1491;
int l9_1492=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1492<sc_LightEstimationSGCount_tmp)
{
l9_1490.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1492].color;
l9_1490.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1492].sharpness;
l9_1490.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1492].axis;
float3 l9_1493=l9_1488;
float l9_1494=dot(l9_1490.axis,l9_1493);
float l9_1495=l9_1490.sharpness;
float l9_1496=0.36000001;
float l9_1497=1.0/(4.0*l9_1496);
float l9_1498=exp(-l9_1495);
float l9_1499=l9_1498*l9_1498;
float l9_1500=1.0/l9_1495;
float l9_1501=(1.0+(2.0*l9_1499))-l9_1500;
float l9_1502=((l9_1498-l9_1499)*l9_1500)-l9_1499;
float l9_1503=sqrt(1.0-l9_1501);
float l9_1504=l9_1496*l9_1494;
float l9_1505=l9_1497*l9_1503;
float l9_1506=l9_1504+l9_1505;
float l9_1507=l9_1494;
float l9_1508=fast::clamp(l9_1507,0.0,1.0);
float l9_1509=l9_1508;
if (step(abs(l9_1504),l9_1505)>0.5)
{
l9_1491=(l9_1506*l9_1506)/l9_1503;
}
else
{
l9_1491=l9_1509;
}
l9_1509=l9_1491;
float l9_1510=(l9_1501*l9_1509)+l9_1502;
sc_SphericalGaussianLight_t l9_1511=l9_1490;
float3 l9_1512=(l9_1511.color/float3(l9_1511.sharpness))*6.2831855;
float3 l9_1513=(l9_1512*l9_1510)/float3(3.1415927);
l9_1489+=l9_1513;
l9_1492++;
continue;
}
else
{
break;
}
}
float3 l9_1514=l9_1489;
l9_1362+=l9_1514;
}
float3 l9_1515=l9_1362;
float3 l9_1516=l9_1515;
l9_1279.indirectDiffuse=l9_1516;
SurfaceProperties l9_1517=l9_1276;
float3 l9_1518=l9_1280;
float3 l9_1519=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_1520=l9_1517;
float3 l9_1521=l9_1518;
float3 l9_1522=l9_1520.normal;
float3 l9_1523=reflect(-l9_1521,l9_1522);
float3 l9_1524=l9_1522;
float3 l9_1525=l9_1523;
float l9_1526=l9_1520.roughness;
l9_1523=getSpecularDominantDir(l9_1524,l9_1525,l9_1526);
float l9_1527=l9_1520.roughness;
float l9_1528=pow(l9_1527,0.66666669);
float l9_1529=fast::clamp(l9_1528,0.0,1.0);
float l9_1530=l9_1529*5.0;
float l9_1531=l9_1530;
float l9_1532=l9_1531;
float3 l9_1533=l9_1523;
float l9_1534=l9_1532;
float3 l9_1535=l9_1533;
float l9_1536=l9_1534;
float4 l9_1537=float4(0.0);
float3 l9_1538=l9_1535;
float l9_1539=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1540=float2(0.0);
float l9_1541=l9_1538.x;
float l9_1542=-l9_1538.z;
float l9_1543=(l9_1541<0.0) ? (-1.0) : 1.0;
float l9_1544=l9_1543*acos(fast::clamp(l9_1542/length(float2(l9_1541,l9_1542)),-1.0,1.0));
l9_1540.x=l9_1544-1.5707964;
l9_1540.y=acos(l9_1538.y);
l9_1540/=float2(6.2831855,3.1415927);
l9_1540.y=1.0-l9_1540.y;
l9_1540.x+=(l9_1539/360.0);
l9_1540.x=fract((l9_1540.x+floor(l9_1540.x))+1.0);
float2 l9_1545=l9_1540;
float2 l9_1546=l9_1545;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_1547=floor(l9_1536);
float l9_1548=ceil(l9_1536);
float l9_1549=l9_1536-l9_1547;
float2 l9_1550=l9_1546;
float2 l9_1551=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1552=l9_1547;
float2 l9_1553=calcSeamlessPanoramicUvsForSampling(l9_1550,l9_1551,l9_1552);
float2 l9_1554=l9_1553;
float l9_1555=l9_1547;
float2 l9_1556=l9_1554;
float l9_1557=l9_1555;
int l9_1558;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1559=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1559=0;
}
else
{
l9_1559=in.varStereoViewID;
}
int l9_1560=l9_1559;
l9_1558=1-l9_1560;
}
else
{
int l9_1561=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1561=0;
}
else
{
l9_1561=in.varStereoViewID;
}
int l9_1562=l9_1561;
l9_1558=l9_1562;
}
int l9_1563=l9_1558;
float2 l9_1564=l9_1556;
int l9_1565=sc_EnvmapSpecularLayout_tmp;
int l9_1566=l9_1563;
float l9_1567=l9_1557;
float2 l9_1568=l9_1564;
int l9_1569=l9_1565;
int l9_1570=l9_1566;
float3 l9_1571=float3(0.0);
if (l9_1569==0)
{
l9_1571=float3(l9_1568,0.0);
}
else
{
if (l9_1569==1)
{
l9_1571=float3(l9_1568.x,(l9_1568.y*0.5)+(0.5-(float(l9_1570)*0.5)),0.0);
}
else
{
l9_1571=float3(l9_1568,float(l9_1570));
}
}
float3 l9_1572=l9_1571;
float3 l9_1573=l9_1572;
float4 l9_1574=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1573.xy,level(l9_1567));
float4 l9_1575=l9_1574;
float4 l9_1576=l9_1575;
float4 l9_1577=l9_1576;
float2 l9_1578=l9_1546;
float2 l9_1579=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1580=l9_1548;
float2 l9_1581=calcSeamlessPanoramicUvsForSampling(l9_1578,l9_1579,l9_1580);
float2 l9_1582=l9_1581;
float l9_1583=l9_1548;
float2 l9_1584=l9_1582;
float l9_1585=l9_1583;
int l9_1586;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1587=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1587=0;
}
else
{
l9_1587=in.varStereoViewID;
}
int l9_1588=l9_1587;
l9_1586=1-l9_1588;
}
else
{
int l9_1589=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1589=0;
}
else
{
l9_1589=in.varStereoViewID;
}
int l9_1590=l9_1589;
l9_1586=l9_1590;
}
int l9_1591=l9_1586;
float2 l9_1592=l9_1584;
int l9_1593=sc_EnvmapSpecularLayout_tmp;
int l9_1594=l9_1591;
float l9_1595=l9_1585;
float2 l9_1596=l9_1592;
int l9_1597=l9_1593;
int l9_1598=l9_1594;
float3 l9_1599=float3(0.0);
if (l9_1597==0)
{
l9_1599=float3(l9_1596,0.0);
}
else
{
if (l9_1597==1)
{
l9_1599=float3(l9_1596.x,(l9_1596.y*0.5)+(0.5-(float(l9_1598)*0.5)),0.0);
}
else
{
l9_1599=float3(l9_1596,float(l9_1598));
}
}
float3 l9_1600=l9_1599;
float3 l9_1601=l9_1600;
float4 l9_1602=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1601.xy,level(l9_1595));
float4 l9_1603=l9_1602;
float4 l9_1604=l9_1603;
float4 l9_1605=l9_1604;
l9_1537=mix(l9_1577,l9_1605,float4(l9_1549));
}
else
{
float2 l9_1606=l9_1546;
float l9_1607=l9_1536;
float2 l9_1608=l9_1606;
float l9_1609=l9_1607;
int l9_1610;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1611=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1611=0;
}
else
{
l9_1611=in.varStereoViewID;
}
int l9_1612=l9_1611;
l9_1610=1-l9_1612;
}
else
{
int l9_1613=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1613=0;
}
else
{
l9_1613=in.varStereoViewID;
}
int l9_1614=l9_1613;
l9_1610=l9_1614;
}
int l9_1615=l9_1610;
float2 l9_1616=l9_1608;
int l9_1617=sc_EnvmapSpecularLayout_tmp;
int l9_1618=l9_1615;
float l9_1619=l9_1609;
float2 l9_1620=l9_1616;
int l9_1621=l9_1617;
int l9_1622=l9_1618;
float3 l9_1623=float3(0.0);
if (l9_1621==0)
{
l9_1623=float3(l9_1620,0.0);
}
else
{
if (l9_1621==1)
{
l9_1623=float3(l9_1620.x,(l9_1620.y*0.5)+(0.5-(float(l9_1622)*0.5)),0.0);
}
else
{
l9_1623=float3(l9_1620,float(l9_1622));
}
}
float3 l9_1624=l9_1623;
float3 l9_1625=l9_1624;
float4 l9_1626=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1625.xy,level(l9_1619));
float4 l9_1627=l9_1626;
float4 l9_1628=l9_1627;
l9_1537=l9_1628;
}
float4 l9_1629=l9_1537;
float3 l9_1630=l9_1629.xyz*(1.0/l9_1629.w);
float3 l9_1631=l9_1630;
float3 l9_1632=l9_1631*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1632+=float3(1e-06);
float3 l9_1633=l9_1632;
float3 l9_1634=l9_1633;
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_1635=gl_FragCoord;
float2 l9_1636=l9_1635.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1637=l9_1636;
float2 l9_1638=l9_1637;
float l9_1639=0.0;
int l9_1640;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_1641=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1641=0;
}
else
{
l9_1641=in.varStereoViewID;
}
int l9_1642=l9_1641;
l9_1640=1-l9_1642;
}
else
{
int l9_1643=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1643=0;
}
else
{
l9_1643=in.varStereoViewID;
}
int l9_1644=l9_1643;
l9_1640=l9_1644;
}
int l9_1645=l9_1640;
float2 l9_1646=l9_1638;
int l9_1647=sc_RayTracingReflectionsLayout_tmp;
int l9_1648=l9_1645;
float l9_1649=l9_1639;
float2 l9_1650=l9_1646;
int l9_1651=l9_1647;
int l9_1652=l9_1648;
float3 l9_1653=float3(0.0);
if (l9_1651==0)
{
l9_1653=float3(l9_1650,0.0);
}
else
{
if (l9_1651==1)
{
l9_1653=float3(l9_1650.x,(l9_1650.y*0.5)+(0.5-(float(l9_1652)*0.5)),0.0);
}
else
{
l9_1653=float3(l9_1650,float(l9_1652));
}
}
float3 l9_1654=l9_1653;
float3 l9_1655=l9_1654;
float4 l9_1656=sc_set0.sc_RayTracingReflections.sample(sc_set0.sc_RayTracingReflectionsSmpSC,l9_1655.xy,bias(l9_1649));
float4 l9_1657=l9_1656;
float4 l9_1658=l9_1657;
float4 l9_1659=l9_1658;
l9_1634=mix(l9_1634,l9_1659.xyz,float3(l9_1659.w));
}
float l9_1660=abs(dot(l9_1522,l9_1521));
SurfaceProperties l9_1661=l9_1520;
float l9_1662=l9_1660;
float3 l9_1663=l9_1634*envBRDFApprox(l9_1661,l9_1662);
l9_1519+=l9_1663;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_1664=l9_1517;
float3 l9_1665=l9_1518;
float l9_1666=fast::clamp(l9_1664.roughness*l9_1664.roughness,0.0099999998,1.0);
float3 l9_1667=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_1664.specColor;
sc_SphericalGaussianLight_t l9_1668;
sc_SphericalGaussianLight_t l9_1669;
sc_SphericalGaussianLight_t l9_1670;
int l9_1671=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1671<sc_LightEstimationSGCount_tmp)
{
l9_1668.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1671].color;
l9_1668.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1671].sharpness;
l9_1668.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1671].axis;
float3 l9_1672=l9_1664.normal;
float l9_1673=l9_1666;
float3 l9_1674=l9_1665;
float3 l9_1675=l9_1664.specColor;
float3 l9_1676=l9_1672;
float l9_1677=l9_1673;
l9_1669.axis=l9_1676;
float l9_1678=l9_1677*l9_1677;
l9_1669.sharpness=2.0/l9_1678;
l9_1669.color=float3(1.0/(3.1415927*l9_1678));
sc_SphericalGaussianLight_t l9_1679=l9_1669;
sc_SphericalGaussianLight_t l9_1680=l9_1679;
sc_SphericalGaussianLight_t l9_1681=l9_1680;
float3 l9_1682=l9_1674;
l9_1670.axis=reflect(-l9_1682,l9_1681.axis);
l9_1670.color=l9_1681.color;
l9_1670.sharpness=l9_1681.sharpness;
l9_1670.sharpness/=(4.0*fast::max(dot(l9_1681.axis,l9_1682),9.9999997e-05));
sc_SphericalGaussianLight_t l9_1683=l9_1670;
sc_SphericalGaussianLight_t l9_1684=l9_1683;
sc_SphericalGaussianLight_t l9_1685=l9_1684;
sc_SphericalGaussianLight_t l9_1686=l9_1668;
float l9_1687=length((l9_1685.axis*l9_1685.sharpness)+(l9_1686.axis*l9_1686.sharpness));
float3 l9_1688=(l9_1685.color*exp((l9_1687-l9_1685.sharpness)-l9_1686.sharpness))*l9_1686.color;
float l9_1689=1.0-exp((-2.0)*l9_1687);
float3 l9_1690=((l9_1688*6.2831855)*l9_1689)/float3(l9_1687);
float3 l9_1691=l9_1690;
float3 l9_1692=l9_1684.axis;
float l9_1693=l9_1673*l9_1673;
float l9_1694=dot(l9_1672,l9_1692);
float l9_1695=fast::clamp(l9_1694,0.0,1.0);
float l9_1696=l9_1695;
float l9_1697=dot(l9_1672,l9_1674);
float l9_1698=fast::clamp(l9_1697,0.0,1.0);
float l9_1699=l9_1698;
float3 l9_1700=normalize(l9_1684.axis+l9_1674);
float l9_1701=l9_1693;
float l9_1702=l9_1696;
float l9_1703=1.0/(l9_1702+sqrt(l9_1701+(((1.0-l9_1701)*l9_1702)*l9_1702)));
float l9_1704=l9_1693;
float l9_1705=l9_1699;
float l9_1706=1.0/(l9_1705+sqrt(l9_1704+(((1.0-l9_1704)*l9_1705)*l9_1705)));
l9_1691*=(l9_1703*l9_1706);
float l9_1707=dot(l9_1692,l9_1700);
float l9_1708=fast::clamp(l9_1707,0.0,1.0);
float l9_1709=pow(1.0-l9_1708,5.0);
l9_1691*=(l9_1675+((float3(1.0)-l9_1675)*l9_1709));
l9_1691*=l9_1696;
float3 l9_1710=l9_1691;
l9_1667+=l9_1710;
l9_1671++;
continue;
}
else
{
break;
}
}
float3 l9_1711=l9_1667;
l9_1519+=l9_1711;
}
float3 l9_1712=l9_1519;
l9_1279.indirectSpecular=l9_1712;
LightingComponents l9_1713=l9_1279;
LightingComponents l9_1714=l9_1713;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1714.directDiffuse=float3(0.0);
l9_1714.indirectDiffuse=float3(0.0);
float4 l9_1715=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1716=out.sc_FragData0;
l9_1715=l9_1716;
}
else
{
float4 l9_1717=gl_FragCoord;
float2 l9_1718=l9_1717.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1719=l9_1718;
float2 l9_1720=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1721=1;
int l9_1722=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1722=0;
}
else
{
l9_1722=in.varStereoViewID;
}
int l9_1723=l9_1722;
int l9_1724=l9_1723;
float3 l9_1725=float3(l9_1719,0.0);
int l9_1726=l9_1721;
int l9_1727=l9_1724;
if (l9_1726==1)
{
l9_1725.y=((2.0*l9_1725.y)+float(l9_1727))-1.0;
}
float2 l9_1728=l9_1725.xy;
l9_1720=l9_1728;
}
else
{
l9_1720=l9_1719;
}
float2 l9_1729=l9_1720;
float2 l9_1730=l9_1729;
float2 l9_1731=l9_1730;
float2 l9_1732=l9_1731;
float l9_1733=0.0;
int l9_1734;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1735=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1735=0;
}
else
{
l9_1735=in.varStereoViewID;
}
int l9_1736=l9_1735;
l9_1734=1-l9_1736;
}
else
{
int l9_1737=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1737=0;
}
else
{
l9_1737=in.varStereoViewID;
}
int l9_1738=l9_1737;
l9_1734=l9_1738;
}
int l9_1739=l9_1734;
float2 l9_1740=l9_1732;
int l9_1741=sc_ScreenTextureLayout_tmp;
int l9_1742=l9_1739;
float l9_1743=l9_1733;
float2 l9_1744=l9_1740;
int l9_1745=l9_1741;
int l9_1746=l9_1742;
float3 l9_1747=float3(0.0);
if (l9_1745==0)
{
l9_1747=float3(l9_1744,0.0);
}
else
{
if (l9_1745==1)
{
l9_1747=float3(l9_1744.x,(l9_1744.y*0.5)+(0.5-(float(l9_1746)*0.5)),0.0);
}
else
{
l9_1747=float3(l9_1744,float(l9_1746));
}
}
float3 l9_1748=l9_1747;
float3 l9_1749=l9_1748;
float4 l9_1750=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1749.xy,bias(l9_1743));
float4 l9_1751=l9_1750;
float4 l9_1752=l9_1751;
l9_1715=l9_1752;
}
float4 l9_1753=l9_1715;
float3 l9_1754=l9_1753.xyz;
float3 l9_1755;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1755=float3(pow(l9_1754.x,2.2),pow(l9_1754.y,2.2),pow(l9_1754.z,2.2));
}
else
{
l9_1755=l9_1754*l9_1754;
}
float3 l9_1756=l9_1755;
float3 l9_1757=l9_1756;
l9_1714.transmitted=l9_1757*mix(float3(1.0),l9_1263.albedo,float3(l9_1263.opacity));
l9_1263.opacity=1.0;
}
bool l9_1758=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1758=true;
}
SurfaceProperties l9_1759=l9_1263;
LightingComponents l9_1760=l9_1714;
bool l9_1761=l9_1758;
float3 l9_1762=l9_1759.albedo*(l9_1760.directDiffuse+(l9_1760.indirectDiffuse*l9_1759.ao));
float3 l9_1763=l9_1760.directSpecular+(l9_1760.indirectSpecular*l9_1759.specularAo);
float3 l9_1764=l9_1759.emissive;
float3 l9_1765=l9_1760.transmitted;
if (l9_1761)
{
float l9_1766=l9_1759.opacity;
l9_1762*=srgbToLinear(l9_1766);
}
float3 l9_1767=((l9_1762+l9_1763)+l9_1764)+l9_1765;
float3 l9_1768=l9_1767;
float4 l9_1769=float4(l9_1768,l9_1263.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
l9_1769.x+=((l9_1263.ao.x*l9_1263.specularAo.x)*9.9999997e-06);
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_1770=l9_1769.xyz;
float l9_1771=1.8;
float l9_1772=1.4;
float l9_1773=0.5;
float l9_1774=1.5;
float3 l9_1775=(l9_1770*((l9_1770*l9_1771)+float3(l9_1772)))/((l9_1770*((l9_1770*l9_1771)+float3(l9_1773)))+float3(l9_1774));
l9_1769=float4(l9_1775.x,l9_1775.y,l9_1775.z,l9_1769.w);
}
float3 l9_1776=l9_1769.xyz;
float l9_1777=l9_1776.x;
float l9_1778=l9_1776.y;
float l9_1779=l9_1776.z;
float3 l9_1780=float3(linearToSrgb(l9_1777),linearToSrgb(l9_1778),linearToSrgb(l9_1779));
l9_1769=float4(l9_1780.x,l9_1780.y,l9_1780.z,l9_1769.w);
float4 l9_1781=l9_1769;
l9_1250=l9_1781;
}
l9_1250=fast::max(l9_1250,float4(0.0));
l9_1236=l9_1250;
param=l9_1236;
param_2=param;
}
else
{
float3 l9_1782=float3(0.0);
float3 l9_1783=(*sc_set0.UserUniforms).colorStart;
l9_1782=l9_1783;
float3 l9_1784=float3(0.0);
float3 l9_1785=(*sc_set0.UserUniforms).colorEnd;
l9_1784=l9_1785;
float3 l9_1786=float3(0.0);
float3 l9_1787=(*sc_set0.UserUniforms).colorMinStart;
l9_1786=l9_1787;
float3 l9_1788=float3(0.0);
float3 l9_1789=(*sc_set0.UserUniforms).colorMinEnd;
l9_1788=l9_1789;
float3 l9_1790=float3(0.0);
float3 l9_1791=(*sc_set0.UserUniforms).colorMaxStart;
l9_1790=l9_1791;
float3 l9_1792=float3(0.0);
float3 l9_1793=(*sc_set0.UserUniforms).colorMaxEnd;
l9_1792=l9_1793;
float l9_1794=0.0;
float l9_1795=(*sc_set0.UserUniforms).alphaStart;
l9_1794=l9_1795;
float l9_1796=0.0;
float l9_1797=(*sc_set0.UserUniforms).alphaEnd;
l9_1796=l9_1797;
float l9_1798=0.0;
float l9_1799=(*sc_set0.UserUniforms).alphaMinStart;
l9_1798=l9_1799;
float l9_1800=0.0;
float l9_1801=(*sc_set0.UserUniforms).alphaMinEnd;
l9_1800=l9_1801;
float l9_1802=0.0;
float l9_1803=(*sc_set0.UserUniforms).alphaMaxStart;
l9_1802=l9_1803;
float l9_1804=0.0;
float l9_1805=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_1804=l9_1805;
float l9_1806=0.0;
float l9_1807=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_1806=l9_1807;
float l9_1808=0.0;
l9_1808=in.Interpolator0.x;
float l9_1809=0.0;
float l9_1810=(*sc_set0.UserUniforms).numValidFrames;
l9_1809=l9_1810;
float2 l9_1811=float2(0.0);
float2 l9_1812=(*sc_set0.UserUniforms).gridSize;
l9_1811=l9_1812;
float l9_1813=0.0;
float l9_1814=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_1813=l9_1814;
float l9_1815=0.0;
float l9_1816=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_1815=l9_1816;
float2 l9_1817=float2(0.0);
float2 l9_1818=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_1817=l9_1818;
float4 l9_1819=float4(0.0);
float4 l9_1820=(*sc_set0.UserUniforms).colorRampMult;
l9_1819=l9_1820;
float4 l9_1821=float4(0.0);
float4 l9_1822;
l9_1822.x=in.Interpolator0.y;
l9_1822.y=in.Interpolator0.z;
l9_1822.z=in.Interpolator0.w;
l9_1822.w=in.Interpolator1.x;
l9_1821=l9_1822;
float l9_1823=0.0;
float l9_1824=(*sc_set0.UserUniforms).externalSeed;
l9_1823=l9_1824;
float4 l9_1825=float4(0.0);
float3 l9_1826=l9_1782;
float3 l9_1827=l9_1784;
float3 l9_1828=l9_1786;
float3 l9_1829=l9_1788;
float3 l9_1830=l9_1790;
float3 l9_1831=l9_1792;
float l9_1832=l9_1794;
float l9_1833=l9_1796;
float l9_1834=l9_1798;
float l9_1835=l9_1800;
float l9_1836=l9_1802;
float l9_1837=l9_1804;
float l9_1838=l9_1806;
float l9_1839=l9_1808;
float l9_1840=l9_1809;
float2 l9_1841=l9_1811;
float l9_1842=l9_1813;
float l9_1843=l9_1815;
float2 l9_1844=l9_1817;
float4 l9_1845=l9_1819;
float4 l9_1846=l9_1821;
float l9_1847=l9_1823;
ssGlobals l9_1848=param_3;
tempGlobals=l9_1848;
float4 l9_1849=float4(0.0);
N2_colorStart=l9_1826;
N2_colorEnd=l9_1827;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_1828;
N2_colorMinEnd=l9_1829;
N2_colorMaxStart=l9_1830;
N2_colorMaxEnd=l9_1831;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_1832;
N2_alphaEnd=l9_1833;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_1834;
N2_alphaMinEnd=l9_1835;
N2_alphaMaxStart=l9_1836;
N2_alphaMaxEnd=l9_1837;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_1838;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_1839;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_1840;
N2_gridSize=l9_1841;
N2_flipBookSpeedMult=l9_1842;
N2_flipBookRandomStart=l9_1843;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_1844;
N2_colorRampMult=l9_1845;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_1846;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_1847;
float l9_1850=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_1851=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1850=length(float4(1.0)*l9_1851);
}
N2_globalSeed=N2_externalSeed+l9_1850;
float l9_1852=2000.0;
int l9_1853=0;
l9_1853=int(tempGlobals.gInstanceID+0.5);
int l9_1854=l9_1853;
float l9_1855=float(l9_1854);
float2 l9_1856=float2(mod(l9_1855,l9_1852),floor(l9_1855/l9_1852));
l9_1856/=float2(l9_1852);
float2 l9_1857=l9_1856;
float l9_1858=dot(l9_1857,float2(0.38253,0.42662001));
float3 l9_1859=float3(0.457831,0.62343299,0.97625297)*l9_1858;
l9_1859=sin(l9_1859)*float3(479.371,389.53101,513.03497);
l9_1859=fract(l9_1859);
l9_1859=floor(l9_1859*10000.0)*9.9999997e-05;
float3 l9_1860=l9_1859;
float3 l9_1861=l9_1860;
N2_particleSeed=l9_1861;
float l9_1862=N2_particleSeed.x;
float l9_1863=N2_particleSeed.y;
float l9_1864=N2_particleSeed.z;
float3 l9_1865=fract((float3(l9_1862,l9_1863,l9_1864)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_1865=fract((float3(l9_1862,l9_1862,l9_1862)*27.21883)+float3(N2_globalSeed));
}
float l9_1866=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_1867=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_1868=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_1869=N2_timeValuesIn.w;
float4 l9_1870=float4(0.0);
float3 l9_1871=float3(0.0);
float3 l9_1872=float3(0.0);
float l9_1873=0.0;
float l9_1874=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_1871=mix(N2_colorMinStart,N2_colorMaxStart,l9_1865);
l9_1872=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_1865);
}
else
{
l9_1871=N2_colorStart;
l9_1872=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_1873=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_1866);
l9_1874=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_1866);
}
else
{
l9_1873=N2_alphaStart;
l9_1874=N2_alphaEnd;
}
l9_1871=mix(l9_1871,l9_1872,float3(l9_1869));
l9_1873=mix(l9_1873,l9_1874,l9_1869);
l9_1870=float4(l9_1871,l9_1873);
float4 l9_1875=float4(0.0);
float2 l9_1876=tempGlobals.Surface_UVCoord0;
float2 l9_1877=l9_1876;
float2 l9_1878=tempGlobals.Surface_UVCoord1;
float2 l9_1879=l9_1878;
float l9_1880=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_1881=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_1882=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_1883=mix(l9_1880,l9_1881,l9_1868);
l9_1882=N2_timeValuesIn.z/l9_1883;
}
float l9_1884=mix(0.0,N2_flipBookRandomStart,l9_1867);
float2 l9_1885=l9_1877/N2_gridSize;
float l9_1886=(l9_1882*N2_flipBookSpeedMult)+l9_1884;
l9_1886=mod(l9_1886,N2_numValidFrames);
float l9_1887=floor(l9_1886)*(1.0/N2_gridSize.x);
float l9_1888=mod(floor((-l9_1886)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_1889=l9_1886+1.0;
l9_1889=mod(l9_1889,N2_numValidFrames);
float l9_1890=floor(l9_1889)*(1.0/N2_gridSize.x);
float l9_1891=floor((-l9_1889)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_1892=fract(l9_1886);
l9_1877=l9_1885+float2(l9_1887,l9_1888);
l9_1879=l9_1885+float2(l9_1890,l9_1891);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_1893=l9_1877;
float4 l9_1894=float4(0.0);
int l9_1895;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1896=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1896=0;
}
else
{
l9_1896=in.varStereoViewID;
}
int l9_1897=l9_1896;
l9_1895=1-l9_1897;
}
else
{
int l9_1898=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1898=0;
}
else
{
l9_1898=in.varStereoViewID;
}
int l9_1899=l9_1898;
l9_1895=l9_1899;
}
int l9_1900=l9_1895;
int l9_1901=mainTextureLayout_tmp;
int l9_1902=l9_1900;
float2 l9_1903=l9_1893;
bool l9_1904=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1905=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1906=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1907=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1908=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1909=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1910=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1911=0.0;
bool l9_1912=l9_1909&&(!l9_1907);
float l9_1913=1.0;
float l9_1914=l9_1903.x;
int l9_1915=l9_1906.x;
if (l9_1915==1)
{
l9_1914=fract(l9_1914);
}
else
{
if (l9_1915==2)
{
float l9_1916=fract(l9_1914);
float l9_1917=l9_1914-l9_1916;
float l9_1918=step(0.25,fract(l9_1917*0.5));
l9_1914=mix(l9_1916,1.0-l9_1916,fast::clamp(l9_1918,0.0,1.0));
}
}
l9_1903.x=l9_1914;
float l9_1919=l9_1903.y;
int l9_1920=l9_1906.y;
if (l9_1920==1)
{
l9_1919=fract(l9_1919);
}
else
{
if (l9_1920==2)
{
float l9_1921=fract(l9_1919);
float l9_1922=l9_1919-l9_1921;
float l9_1923=step(0.25,fract(l9_1922*0.5));
l9_1919=mix(l9_1921,1.0-l9_1921,fast::clamp(l9_1923,0.0,1.0));
}
}
l9_1903.y=l9_1919;
if (l9_1907)
{
bool l9_1924=l9_1909;
bool l9_1925;
if (l9_1924)
{
l9_1925=l9_1906.x==3;
}
else
{
l9_1925=l9_1924;
}
float l9_1926=l9_1903.x;
float l9_1927=l9_1908.x;
float l9_1928=l9_1908.z;
bool l9_1929=l9_1925;
float l9_1930=l9_1913;
float l9_1931=fast::clamp(l9_1926,l9_1927,l9_1928);
float l9_1932=step(abs(l9_1926-l9_1931),9.9999997e-06);
l9_1930*=(l9_1932+((1.0-float(l9_1929))*(1.0-l9_1932)));
l9_1926=l9_1931;
l9_1903.x=l9_1926;
l9_1913=l9_1930;
bool l9_1933=l9_1909;
bool l9_1934;
if (l9_1933)
{
l9_1934=l9_1906.y==3;
}
else
{
l9_1934=l9_1933;
}
float l9_1935=l9_1903.y;
float l9_1936=l9_1908.y;
float l9_1937=l9_1908.w;
bool l9_1938=l9_1934;
float l9_1939=l9_1913;
float l9_1940=fast::clamp(l9_1935,l9_1936,l9_1937);
float l9_1941=step(abs(l9_1935-l9_1940),9.9999997e-06);
l9_1939*=(l9_1941+((1.0-float(l9_1938))*(1.0-l9_1941)));
l9_1935=l9_1940;
l9_1903.y=l9_1935;
l9_1913=l9_1939;
}
float2 l9_1942=l9_1903;
bool l9_1943=l9_1904;
float3x3 l9_1944=l9_1905;
if (l9_1943)
{
l9_1942=float2((l9_1944*float3(l9_1942,1.0)).xy);
}
float2 l9_1945=l9_1942;
l9_1903=l9_1945;
float l9_1946=l9_1903.x;
int l9_1947=l9_1906.x;
bool l9_1948=l9_1912;
float l9_1949=l9_1913;
if ((l9_1947==0)||(l9_1947==3))
{
float l9_1950=l9_1946;
float l9_1951=0.0;
float l9_1952=1.0;
bool l9_1953=l9_1948;
float l9_1954=l9_1949;
float l9_1955=fast::clamp(l9_1950,l9_1951,l9_1952);
float l9_1956=step(abs(l9_1950-l9_1955),9.9999997e-06);
l9_1954*=(l9_1956+((1.0-float(l9_1953))*(1.0-l9_1956)));
l9_1950=l9_1955;
l9_1946=l9_1950;
l9_1949=l9_1954;
}
l9_1903.x=l9_1946;
l9_1913=l9_1949;
float l9_1957=l9_1903.y;
int l9_1958=l9_1906.y;
bool l9_1959=l9_1912;
float l9_1960=l9_1913;
if ((l9_1958==0)||(l9_1958==3))
{
float l9_1961=l9_1957;
float l9_1962=0.0;
float l9_1963=1.0;
bool l9_1964=l9_1959;
float l9_1965=l9_1960;
float l9_1966=fast::clamp(l9_1961,l9_1962,l9_1963);
float l9_1967=step(abs(l9_1961-l9_1966),9.9999997e-06);
l9_1965*=(l9_1967+((1.0-float(l9_1964))*(1.0-l9_1967)));
l9_1961=l9_1966;
l9_1957=l9_1961;
l9_1960=l9_1965;
}
l9_1903.y=l9_1957;
l9_1913=l9_1960;
float2 l9_1968=l9_1903;
int l9_1969=l9_1901;
int l9_1970=l9_1902;
float l9_1971=l9_1911;
float2 l9_1972=l9_1968;
int l9_1973=l9_1969;
int l9_1974=l9_1970;
float3 l9_1975=float3(0.0);
if (l9_1973==0)
{
l9_1975=float3(l9_1972,0.0);
}
else
{
if (l9_1973==1)
{
l9_1975=float3(l9_1972.x,(l9_1972.y*0.5)+(0.5-(float(l9_1974)*0.5)),0.0);
}
else
{
l9_1975=float3(l9_1972,float(l9_1974));
}
}
float3 l9_1976=l9_1975;
float3 l9_1977=l9_1976;
float4 l9_1978=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1977.xy,bias(l9_1971));
float4 l9_1979=l9_1978;
if (l9_1909)
{
l9_1979=mix(l9_1910,l9_1979,float4(l9_1913));
}
float4 l9_1980=l9_1979;
l9_1894=l9_1980;
float4 l9_1981=l9_1894;
float4 l9_1982=l9_1981;
float2 l9_1983=l9_1879;
float4 l9_1984=float4(0.0);
int l9_1985;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1986=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1986=0;
}
else
{
l9_1986=in.varStereoViewID;
}
int l9_1987=l9_1986;
l9_1985=1-l9_1987;
}
else
{
int l9_1988=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1988=0;
}
else
{
l9_1988=in.varStereoViewID;
}
int l9_1989=l9_1988;
l9_1985=l9_1989;
}
int l9_1990=l9_1985;
int l9_1991=mainTextureLayout_tmp;
int l9_1992=l9_1990;
float2 l9_1993=l9_1983;
bool l9_1994=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1995=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1996=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1997=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1998=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1999=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2000=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2001=0.0;
bool l9_2002=l9_1999&&(!l9_1997);
float l9_2003=1.0;
float l9_2004=l9_1993.x;
int l9_2005=l9_1996.x;
if (l9_2005==1)
{
l9_2004=fract(l9_2004);
}
else
{
if (l9_2005==2)
{
float l9_2006=fract(l9_2004);
float l9_2007=l9_2004-l9_2006;
float l9_2008=step(0.25,fract(l9_2007*0.5));
l9_2004=mix(l9_2006,1.0-l9_2006,fast::clamp(l9_2008,0.0,1.0));
}
}
l9_1993.x=l9_2004;
float l9_2009=l9_1993.y;
int l9_2010=l9_1996.y;
if (l9_2010==1)
{
l9_2009=fract(l9_2009);
}
else
{
if (l9_2010==2)
{
float l9_2011=fract(l9_2009);
float l9_2012=l9_2009-l9_2011;
float l9_2013=step(0.25,fract(l9_2012*0.5));
l9_2009=mix(l9_2011,1.0-l9_2011,fast::clamp(l9_2013,0.0,1.0));
}
}
l9_1993.y=l9_2009;
if (l9_1997)
{
bool l9_2014=l9_1999;
bool l9_2015;
if (l9_2014)
{
l9_2015=l9_1996.x==3;
}
else
{
l9_2015=l9_2014;
}
float l9_2016=l9_1993.x;
float l9_2017=l9_1998.x;
float l9_2018=l9_1998.z;
bool l9_2019=l9_2015;
float l9_2020=l9_2003;
float l9_2021=fast::clamp(l9_2016,l9_2017,l9_2018);
float l9_2022=step(abs(l9_2016-l9_2021),9.9999997e-06);
l9_2020*=(l9_2022+((1.0-float(l9_2019))*(1.0-l9_2022)));
l9_2016=l9_2021;
l9_1993.x=l9_2016;
l9_2003=l9_2020;
bool l9_2023=l9_1999;
bool l9_2024;
if (l9_2023)
{
l9_2024=l9_1996.y==3;
}
else
{
l9_2024=l9_2023;
}
float l9_2025=l9_1993.y;
float l9_2026=l9_1998.y;
float l9_2027=l9_1998.w;
bool l9_2028=l9_2024;
float l9_2029=l9_2003;
float l9_2030=fast::clamp(l9_2025,l9_2026,l9_2027);
float l9_2031=step(abs(l9_2025-l9_2030),9.9999997e-06);
l9_2029*=(l9_2031+((1.0-float(l9_2028))*(1.0-l9_2031)));
l9_2025=l9_2030;
l9_1993.y=l9_2025;
l9_2003=l9_2029;
}
float2 l9_2032=l9_1993;
bool l9_2033=l9_1994;
float3x3 l9_2034=l9_1995;
if (l9_2033)
{
l9_2032=float2((l9_2034*float3(l9_2032,1.0)).xy);
}
float2 l9_2035=l9_2032;
l9_1993=l9_2035;
float l9_2036=l9_1993.x;
int l9_2037=l9_1996.x;
bool l9_2038=l9_2002;
float l9_2039=l9_2003;
if ((l9_2037==0)||(l9_2037==3))
{
float l9_2040=l9_2036;
float l9_2041=0.0;
float l9_2042=1.0;
bool l9_2043=l9_2038;
float l9_2044=l9_2039;
float l9_2045=fast::clamp(l9_2040,l9_2041,l9_2042);
float l9_2046=step(abs(l9_2040-l9_2045),9.9999997e-06);
l9_2044*=(l9_2046+((1.0-float(l9_2043))*(1.0-l9_2046)));
l9_2040=l9_2045;
l9_2036=l9_2040;
l9_2039=l9_2044;
}
l9_1993.x=l9_2036;
l9_2003=l9_2039;
float l9_2047=l9_1993.y;
int l9_2048=l9_1996.y;
bool l9_2049=l9_2002;
float l9_2050=l9_2003;
if ((l9_2048==0)||(l9_2048==3))
{
float l9_2051=l9_2047;
float l9_2052=0.0;
float l9_2053=1.0;
bool l9_2054=l9_2049;
float l9_2055=l9_2050;
float l9_2056=fast::clamp(l9_2051,l9_2052,l9_2053);
float l9_2057=step(abs(l9_2051-l9_2056),9.9999997e-06);
l9_2055*=(l9_2057+((1.0-float(l9_2054))*(1.0-l9_2057)));
l9_2051=l9_2056;
l9_2047=l9_2051;
l9_2050=l9_2055;
}
l9_1993.y=l9_2047;
l9_2003=l9_2050;
float2 l9_2058=l9_1993;
int l9_2059=l9_1991;
int l9_2060=l9_1992;
float l9_2061=l9_2001;
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
float4 l9_2068=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2067.xy,bias(l9_2061));
float4 l9_2069=l9_2068;
if (l9_1999)
{
l9_2069=mix(l9_2000,l9_2069,float4(l9_2003));
}
float4 l9_2070=l9_2069;
l9_1984=l9_2070;
float4 l9_2071=l9_1984;
l9_1875=mix(l9_1982,l9_2071,float4(l9_1892));
}
else
{
float2 l9_2072=l9_1877;
float4 l9_2073=float4(0.0);
int l9_2074;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2075=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2075=0;
}
else
{
l9_2075=in.varStereoViewID;
}
int l9_2076=l9_2075;
l9_2074=1-l9_2076;
}
else
{
int l9_2077=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2077=0;
}
else
{
l9_2077=in.varStereoViewID;
}
int l9_2078=l9_2077;
l9_2074=l9_2078;
}
int l9_2079=l9_2074;
int l9_2080=mainTextureLayout_tmp;
int l9_2081=l9_2079;
float2 l9_2082=l9_2072;
bool l9_2083=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2084=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2085=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2086=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2087=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2088=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2089=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2090=0.0;
bool l9_2091=l9_2088&&(!l9_2086);
float l9_2092=1.0;
float l9_2093=l9_2082.x;
int l9_2094=l9_2085.x;
if (l9_2094==1)
{
l9_2093=fract(l9_2093);
}
else
{
if (l9_2094==2)
{
float l9_2095=fract(l9_2093);
float l9_2096=l9_2093-l9_2095;
float l9_2097=step(0.25,fract(l9_2096*0.5));
l9_2093=mix(l9_2095,1.0-l9_2095,fast::clamp(l9_2097,0.0,1.0));
}
}
l9_2082.x=l9_2093;
float l9_2098=l9_2082.y;
int l9_2099=l9_2085.y;
if (l9_2099==1)
{
l9_2098=fract(l9_2098);
}
else
{
if (l9_2099==2)
{
float l9_2100=fract(l9_2098);
float l9_2101=l9_2098-l9_2100;
float l9_2102=step(0.25,fract(l9_2101*0.5));
l9_2098=mix(l9_2100,1.0-l9_2100,fast::clamp(l9_2102,0.0,1.0));
}
}
l9_2082.y=l9_2098;
if (l9_2086)
{
bool l9_2103=l9_2088;
bool l9_2104;
if (l9_2103)
{
l9_2104=l9_2085.x==3;
}
else
{
l9_2104=l9_2103;
}
float l9_2105=l9_2082.x;
float l9_2106=l9_2087.x;
float l9_2107=l9_2087.z;
bool l9_2108=l9_2104;
float l9_2109=l9_2092;
float l9_2110=fast::clamp(l9_2105,l9_2106,l9_2107);
float l9_2111=step(abs(l9_2105-l9_2110),9.9999997e-06);
l9_2109*=(l9_2111+((1.0-float(l9_2108))*(1.0-l9_2111)));
l9_2105=l9_2110;
l9_2082.x=l9_2105;
l9_2092=l9_2109;
bool l9_2112=l9_2088;
bool l9_2113;
if (l9_2112)
{
l9_2113=l9_2085.y==3;
}
else
{
l9_2113=l9_2112;
}
float l9_2114=l9_2082.y;
float l9_2115=l9_2087.y;
float l9_2116=l9_2087.w;
bool l9_2117=l9_2113;
float l9_2118=l9_2092;
float l9_2119=fast::clamp(l9_2114,l9_2115,l9_2116);
float l9_2120=step(abs(l9_2114-l9_2119),9.9999997e-06);
l9_2118*=(l9_2120+((1.0-float(l9_2117))*(1.0-l9_2120)));
l9_2114=l9_2119;
l9_2082.y=l9_2114;
l9_2092=l9_2118;
}
float2 l9_2121=l9_2082;
bool l9_2122=l9_2083;
float3x3 l9_2123=l9_2084;
if (l9_2122)
{
l9_2121=float2((l9_2123*float3(l9_2121,1.0)).xy);
}
float2 l9_2124=l9_2121;
l9_2082=l9_2124;
float l9_2125=l9_2082.x;
int l9_2126=l9_2085.x;
bool l9_2127=l9_2091;
float l9_2128=l9_2092;
if ((l9_2126==0)||(l9_2126==3))
{
float l9_2129=l9_2125;
float l9_2130=0.0;
float l9_2131=1.0;
bool l9_2132=l9_2127;
float l9_2133=l9_2128;
float l9_2134=fast::clamp(l9_2129,l9_2130,l9_2131);
float l9_2135=step(abs(l9_2129-l9_2134),9.9999997e-06);
l9_2133*=(l9_2135+((1.0-float(l9_2132))*(1.0-l9_2135)));
l9_2129=l9_2134;
l9_2125=l9_2129;
l9_2128=l9_2133;
}
l9_2082.x=l9_2125;
l9_2092=l9_2128;
float l9_2136=l9_2082.y;
int l9_2137=l9_2085.y;
bool l9_2138=l9_2091;
float l9_2139=l9_2092;
if ((l9_2137==0)||(l9_2137==3))
{
float l9_2140=l9_2136;
float l9_2141=0.0;
float l9_2142=1.0;
bool l9_2143=l9_2138;
float l9_2144=l9_2139;
float l9_2145=fast::clamp(l9_2140,l9_2141,l9_2142);
float l9_2146=step(abs(l9_2140-l9_2145),9.9999997e-06);
l9_2144*=(l9_2146+((1.0-float(l9_2143))*(1.0-l9_2146)));
l9_2140=l9_2145;
l9_2136=l9_2140;
l9_2139=l9_2144;
}
l9_2082.y=l9_2136;
l9_2092=l9_2139;
float2 l9_2147=l9_2082;
int l9_2148=l9_2080;
int l9_2149=l9_2081;
float l9_2150=l9_2090;
float2 l9_2151=l9_2147;
int l9_2152=l9_2148;
int l9_2153=l9_2149;
float3 l9_2154=float3(0.0);
if (l9_2152==0)
{
l9_2154=float3(l9_2151,0.0);
}
else
{
if (l9_2152==1)
{
l9_2154=float3(l9_2151.x,(l9_2151.y*0.5)+(0.5-(float(l9_2153)*0.5)),0.0);
}
else
{
l9_2154=float3(l9_2151,float(l9_2153));
}
}
float3 l9_2155=l9_2154;
float3 l9_2156=l9_2155;
float4 l9_2157=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2156.xy,bias(l9_2150));
float4 l9_2158=l9_2157;
if (l9_2088)
{
l9_2158=mix(l9_2089,l9_2158,float4(l9_2092));
}
float4 l9_2159=l9_2158;
l9_2073=l9_2159;
float4 l9_2160=l9_2073;
l9_1875=l9_2160;
}
float4 l9_2161=float4(0.0);
float l9_2162=ceil(l9_1869*N2_texSize.x)/N2_texSize.x;
float l9_2163=l9_2162;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_2164=tempGlobals.Surface_UVCoord0;
l9_2163+=(l9_2164.x/N2_texSize.x);
}
float2 l9_2165=float2(l9_2163,0.5);
float4 l9_2166=float4(0.0);
int l9_2167;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_2168=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2168=0;
}
else
{
l9_2168=in.varStereoViewID;
}
int l9_2169=l9_2168;
l9_2167=1-l9_2169;
}
else
{
int l9_2170=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2170=0;
}
else
{
l9_2170=in.varStereoViewID;
}
int l9_2171=l9_2170;
l9_2167=l9_2171;
}
int l9_2172=l9_2167;
int l9_2173=colorRampTextureLayout_tmp;
int l9_2174=l9_2172;
float2 l9_2175=l9_2165;
bool l9_2176=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_2177=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_2178=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_2179=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_2180=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_2181=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_2182=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_2183=0.0;
bool l9_2184=l9_2181&&(!l9_2179);
float l9_2185=1.0;
float l9_2186=l9_2175.x;
int l9_2187=l9_2178.x;
if (l9_2187==1)
{
l9_2186=fract(l9_2186);
}
else
{
if (l9_2187==2)
{
float l9_2188=fract(l9_2186);
float l9_2189=l9_2186-l9_2188;
float l9_2190=step(0.25,fract(l9_2189*0.5));
l9_2186=mix(l9_2188,1.0-l9_2188,fast::clamp(l9_2190,0.0,1.0));
}
}
l9_2175.x=l9_2186;
float l9_2191=l9_2175.y;
int l9_2192=l9_2178.y;
if (l9_2192==1)
{
l9_2191=fract(l9_2191);
}
else
{
if (l9_2192==2)
{
float l9_2193=fract(l9_2191);
float l9_2194=l9_2191-l9_2193;
float l9_2195=step(0.25,fract(l9_2194*0.5));
l9_2191=mix(l9_2193,1.0-l9_2193,fast::clamp(l9_2195,0.0,1.0));
}
}
l9_2175.y=l9_2191;
if (l9_2179)
{
bool l9_2196=l9_2181;
bool l9_2197;
if (l9_2196)
{
l9_2197=l9_2178.x==3;
}
else
{
l9_2197=l9_2196;
}
float l9_2198=l9_2175.x;
float l9_2199=l9_2180.x;
float l9_2200=l9_2180.z;
bool l9_2201=l9_2197;
float l9_2202=l9_2185;
float l9_2203=fast::clamp(l9_2198,l9_2199,l9_2200);
float l9_2204=step(abs(l9_2198-l9_2203),9.9999997e-06);
l9_2202*=(l9_2204+((1.0-float(l9_2201))*(1.0-l9_2204)));
l9_2198=l9_2203;
l9_2175.x=l9_2198;
l9_2185=l9_2202;
bool l9_2205=l9_2181;
bool l9_2206;
if (l9_2205)
{
l9_2206=l9_2178.y==3;
}
else
{
l9_2206=l9_2205;
}
float l9_2207=l9_2175.y;
float l9_2208=l9_2180.y;
float l9_2209=l9_2180.w;
bool l9_2210=l9_2206;
float l9_2211=l9_2185;
float l9_2212=fast::clamp(l9_2207,l9_2208,l9_2209);
float l9_2213=step(abs(l9_2207-l9_2212),9.9999997e-06);
l9_2211*=(l9_2213+((1.0-float(l9_2210))*(1.0-l9_2213)));
l9_2207=l9_2212;
l9_2175.y=l9_2207;
l9_2185=l9_2211;
}
float2 l9_2214=l9_2175;
bool l9_2215=l9_2176;
float3x3 l9_2216=l9_2177;
if (l9_2215)
{
l9_2214=float2((l9_2216*float3(l9_2214,1.0)).xy);
}
float2 l9_2217=l9_2214;
l9_2175=l9_2217;
float l9_2218=l9_2175.x;
int l9_2219=l9_2178.x;
bool l9_2220=l9_2184;
float l9_2221=l9_2185;
if ((l9_2219==0)||(l9_2219==3))
{
float l9_2222=l9_2218;
float l9_2223=0.0;
float l9_2224=1.0;
bool l9_2225=l9_2220;
float l9_2226=l9_2221;
float l9_2227=fast::clamp(l9_2222,l9_2223,l9_2224);
float l9_2228=step(abs(l9_2222-l9_2227),9.9999997e-06);
l9_2226*=(l9_2228+((1.0-float(l9_2225))*(1.0-l9_2228)));
l9_2222=l9_2227;
l9_2218=l9_2222;
l9_2221=l9_2226;
}
l9_2175.x=l9_2218;
l9_2185=l9_2221;
float l9_2229=l9_2175.y;
int l9_2230=l9_2178.y;
bool l9_2231=l9_2184;
float l9_2232=l9_2185;
if ((l9_2230==0)||(l9_2230==3))
{
float l9_2233=l9_2229;
float l9_2234=0.0;
float l9_2235=1.0;
bool l9_2236=l9_2231;
float l9_2237=l9_2232;
float l9_2238=fast::clamp(l9_2233,l9_2234,l9_2235);
float l9_2239=step(abs(l9_2233-l9_2238),9.9999997e-06);
l9_2237*=(l9_2239+((1.0-float(l9_2236))*(1.0-l9_2239)));
l9_2233=l9_2238;
l9_2229=l9_2233;
l9_2232=l9_2237;
}
l9_2175.y=l9_2229;
l9_2185=l9_2232;
float2 l9_2240=l9_2175;
int l9_2241=l9_2173;
int l9_2242=l9_2174;
float l9_2243=l9_2183;
float2 l9_2244=l9_2240;
int l9_2245=l9_2241;
int l9_2246=l9_2242;
float3 l9_2247=float3(0.0);
if (l9_2245==0)
{
l9_2247=float3(l9_2244,0.0);
}
else
{
if (l9_2245==1)
{
l9_2247=float3(l9_2244.x,(l9_2244.y*0.5)+(0.5-(float(l9_2246)*0.5)),0.0);
}
else
{
l9_2247=float3(l9_2244,float(l9_2246));
}
}
float3 l9_2248=l9_2247;
float3 l9_2249=l9_2248;
float4 l9_2250=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_2249.xy,bias(l9_2243));
float4 l9_2251=l9_2250;
if (l9_2181)
{
l9_2251=mix(l9_2182,l9_2251,float4(l9_2185));
}
float4 l9_2252=l9_2251;
l9_2166=l9_2252;
float4 l9_2253=l9_2166;
l9_2161=l9_2253*N2_colorRampMult;
float4 l9_2254=float4(1.0);
float4 l9_2255=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_2256=tempGlobals.Surface_UVCoord0;
float2 l9_2257=l9_2256;
float4 l9_2258=float4(0.0);
int l9_2259;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_2260=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2260=0;
}
else
{
l9_2260=in.varStereoViewID;
}
int l9_2261=l9_2260;
l9_2259=1-l9_2261;
}
else
{
int l9_2262=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2262=0;
}
else
{
l9_2262=in.varStereoViewID;
}
int l9_2263=l9_2262;
l9_2259=l9_2263;
}
int l9_2264=l9_2259;
int l9_2265=mainTextureLayout_tmp;
int l9_2266=l9_2264;
float2 l9_2267=l9_2257;
bool l9_2268=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_2269=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_2270=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_2271=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_2272=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_2273=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_2274=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_2275=0.0;
bool l9_2276=l9_2273&&(!l9_2271);
float l9_2277=1.0;
float l9_2278=l9_2267.x;
int l9_2279=l9_2270.x;
if (l9_2279==1)
{
l9_2278=fract(l9_2278);
}
else
{
if (l9_2279==2)
{
float l9_2280=fract(l9_2278);
float l9_2281=l9_2278-l9_2280;
float l9_2282=step(0.25,fract(l9_2281*0.5));
l9_2278=mix(l9_2280,1.0-l9_2280,fast::clamp(l9_2282,0.0,1.0));
}
}
l9_2267.x=l9_2278;
float l9_2283=l9_2267.y;
int l9_2284=l9_2270.y;
if (l9_2284==1)
{
l9_2283=fract(l9_2283);
}
else
{
if (l9_2284==2)
{
float l9_2285=fract(l9_2283);
float l9_2286=l9_2283-l9_2285;
float l9_2287=step(0.25,fract(l9_2286*0.5));
l9_2283=mix(l9_2285,1.0-l9_2285,fast::clamp(l9_2287,0.0,1.0));
}
}
l9_2267.y=l9_2283;
if (l9_2271)
{
bool l9_2288=l9_2273;
bool l9_2289;
if (l9_2288)
{
l9_2289=l9_2270.x==3;
}
else
{
l9_2289=l9_2288;
}
float l9_2290=l9_2267.x;
float l9_2291=l9_2272.x;
float l9_2292=l9_2272.z;
bool l9_2293=l9_2289;
float l9_2294=l9_2277;
float l9_2295=fast::clamp(l9_2290,l9_2291,l9_2292);
float l9_2296=step(abs(l9_2290-l9_2295),9.9999997e-06);
l9_2294*=(l9_2296+((1.0-float(l9_2293))*(1.0-l9_2296)));
l9_2290=l9_2295;
l9_2267.x=l9_2290;
l9_2277=l9_2294;
bool l9_2297=l9_2273;
bool l9_2298;
if (l9_2297)
{
l9_2298=l9_2270.y==3;
}
else
{
l9_2298=l9_2297;
}
float l9_2299=l9_2267.y;
float l9_2300=l9_2272.y;
float l9_2301=l9_2272.w;
bool l9_2302=l9_2298;
float l9_2303=l9_2277;
float l9_2304=fast::clamp(l9_2299,l9_2300,l9_2301);
float l9_2305=step(abs(l9_2299-l9_2304),9.9999997e-06);
l9_2303*=(l9_2305+((1.0-float(l9_2302))*(1.0-l9_2305)));
l9_2299=l9_2304;
l9_2267.y=l9_2299;
l9_2277=l9_2303;
}
float2 l9_2306=l9_2267;
bool l9_2307=l9_2268;
float3x3 l9_2308=l9_2269;
if (l9_2307)
{
l9_2306=float2((l9_2308*float3(l9_2306,1.0)).xy);
}
float2 l9_2309=l9_2306;
l9_2267=l9_2309;
float l9_2310=l9_2267.x;
int l9_2311=l9_2270.x;
bool l9_2312=l9_2276;
float l9_2313=l9_2277;
if ((l9_2311==0)||(l9_2311==3))
{
float l9_2314=l9_2310;
float l9_2315=0.0;
float l9_2316=1.0;
bool l9_2317=l9_2312;
float l9_2318=l9_2313;
float l9_2319=fast::clamp(l9_2314,l9_2315,l9_2316);
float l9_2320=step(abs(l9_2314-l9_2319),9.9999997e-06);
l9_2318*=(l9_2320+((1.0-float(l9_2317))*(1.0-l9_2320)));
l9_2314=l9_2319;
l9_2310=l9_2314;
l9_2313=l9_2318;
}
l9_2267.x=l9_2310;
l9_2277=l9_2313;
float l9_2321=l9_2267.y;
int l9_2322=l9_2270.y;
bool l9_2323=l9_2276;
float l9_2324=l9_2277;
if ((l9_2322==0)||(l9_2322==3))
{
float l9_2325=l9_2321;
float l9_2326=0.0;
float l9_2327=1.0;
bool l9_2328=l9_2323;
float l9_2329=l9_2324;
float l9_2330=fast::clamp(l9_2325,l9_2326,l9_2327);
float l9_2331=step(abs(l9_2325-l9_2330),9.9999997e-06);
l9_2329*=(l9_2331+((1.0-float(l9_2328))*(1.0-l9_2331)));
l9_2325=l9_2330;
l9_2321=l9_2325;
l9_2324=l9_2329;
}
l9_2267.y=l9_2321;
l9_2277=l9_2324;
float2 l9_2332=l9_2267;
int l9_2333=l9_2265;
int l9_2334=l9_2266;
float l9_2335=l9_2275;
float2 l9_2336=l9_2332;
int l9_2337=l9_2333;
int l9_2338=l9_2334;
float3 l9_2339=float3(0.0);
if (l9_2337==0)
{
l9_2339=float3(l9_2336,0.0);
}
else
{
if (l9_2337==1)
{
l9_2339=float3(l9_2336.x,(l9_2336.y*0.5)+(0.5-(float(l9_2338)*0.5)),0.0);
}
else
{
l9_2339=float3(l9_2336,float(l9_2338));
}
}
float3 l9_2340=l9_2339;
float3 l9_2341=l9_2340;
float4 l9_2342=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_2341.xy,bias(l9_2335));
float4 l9_2343=l9_2342;
if (l9_2273)
{
l9_2343=mix(l9_2274,l9_2343,float4(l9_2277));
}
float4 l9_2344=l9_2343;
l9_2258=l9_2344;
float4 l9_2345=l9_2258;
l9_2254=l9_2345;
float2 l9_2346=tempGlobals.Surface_UVCoord0;
N2_uv=l9_2346;
if (N2_ENABLE_FLIPBOOK)
{
l9_2254=l9_1875;
N2_uv=l9_1877;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_2255=l9_2161;
}
}
N2_result=(l9_2254*l9_1870)*l9_2255;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_2347=l9_1869*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_2347,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_2348=length(N2_result.xyz);
N2_result.w=l9_2348;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_2349=N2_result.xyz*N2_result.w;
N2_result=float4(l9_2349.x,l9_2349.y,l9_2349.z,N2_result.w);
}
l9_1849=N2_result;
l9_1825=l9_1849;
param_1=l9_1825;
param_2=param_1;
}
Result_N153=param_2;
FinalColor=Result_N153;
float4 param_4=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_2350=param_4;
float4 l9_2351=l9_2350;
float l9_2352=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2352=l9_2351.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2352=fast::clamp(l9_2351.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2352=fast::clamp(dot(l9_2351.xyz,float3(l9_2351.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_2352=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_2352=(1.0-dot(l9_2351.xyz,float3(0.33333001)))*l9_2351.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2352=(1.0-fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0))*l9_2351.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2352=fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0)*l9_2351.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_2352=fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2352=fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0)*l9_2351.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_2352=dot(l9_2351.xyz,float3(0.33333001))*l9_2351.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_2352=1.0-fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_2352=fast::clamp(dot(l9_2351.xyz,float3(1.0)),0.0,1.0);
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
float l9_2353=l9_2352;
float l9_2354=l9_2353;
float l9_2355=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_2354;
float3 l9_2356=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2350.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_2357=float4(l9_2356.x,l9_2356.y,l9_2356.z,l9_2355);
param_4=l9_2357;
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
float4 l9_2358=param_4;
float4 l9_2359=float4(0.0);
float4 l9_2360=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2361=out.sc_FragData0;
l9_2360=l9_2361;
}
else
{
float4 l9_2362=gl_FragCoord;
float2 l9_2363=l9_2362.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2364=l9_2363;
float2 l9_2365=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2366=1;
int l9_2367=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2367=0;
}
else
{
l9_2367=in.varStereoViewID;
}
int l9_2368=l9_2367;
int l9_2369=l9_2368;
float3 l9_2370=float3(l9_2364,0.0);
int l9_2371=l9_2366;
int l9_2372=l9_2369;
if (l9_2371==1)
{
l9_2370.y=((2.0*l9_2370.y)+float(l9_2372))-1.0;
}
float2 l9_2373=l9_2370.xy;
l9_2365=l9_2373;
}
else
{
l9_2365=l9_2364;
}
float2 l9_2374=l9_2365;
float2 l9_2375=l9_2374;
float2 l9_2376=l9_2375;
float2 l9_2377=l9_2376;
float l9_2378=0.0;
int l9_2379;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2380=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2380=0;
}
else
{
l9_2380=in.varStereoViewID;
}
int l9_2381=l9_2380;
l9_2379=1-l9_2381;
}
else
{
int l9_2382=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2382=0;
}
else
{
l9_2382=in.varStereoViewID;
}
int l9_2383=l9_2382;
l9_2379=l9_2383;
}
int l9_2384=l9_2379;
float2 l9_2385=l9_2377;
int l9_2386=sc_ScreenTextureLayout_tmp;
int l9_2387=l9_2384;
float l9_2388=l9_2378;
float2 l9_2389=l9_2385;
int l9_2390=l9_2386;
int l9_2391=l9_2387;
float3 l9_2392=float3(0.0);
if (l9_2390==0)
{
l9_2392=float3(l9_2389,0.0);
}
else
{
if (l9_2390==1)
{
l9_2392=float3(l9_2389.x,(l9_2389.y*0.5)+(0.5-(float(l9_2391)*0.5)),0.0);
}
else
{
l9_2392=float3(l9_2389,float(l9_2391));
}
}
float3 l9_2393=l9_2392;
float3 l9_2394=l9_2393;
float4 l9_2395=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2394.xy,bias(l9_2388));
float4 l9_2396=l9_2395;
float4 l9_2397=l9_2396;
l9_2360=l9_2397;
}
float4 l9_2398=l9_2360;
float3 l9_2399=l9_2398.xyz;
float3 l9_2400=l9_2399;
float3 l9_2401=l9_2358.xyz;
float3 l9_2402=definedBlend(l9_2400,l9_2401,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_2359=float4(l9_2402.x,l9_2402.y,l9_2402.z,l9_2359.w);
float3 l9_2403=mix(l9_2399,l9_2359.xyz,float3(l9_2358.w));
l9_2359=float4(l9_2403.x,l9_2403.y,l9_2403.z,l9_2359.w);
l9_2359.w=1.0;
float4 l9_2404=l9_2359;
param_4=l9_2404;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_2405=float4(in.varScreenPos.xyz,1.0);
param_4=l9_2405;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_2406=gl_FragCoord;
float l9_2407=fast::clamp(abs(l9_2406.z),0.0,1.0);
float4 l9_2408=float4(l9_2407,1.0-l9_2407,1.0,1.0);
param_4=l9_2408;
}
else
{
float4 l9_2409=param_4;
float4 l9_2410=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2410=float4(mix(float3(1.0),l9_2409.xyz,float3(l9_2409.w)),l9_2409.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_2411=l9_2409.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2411=fast::clamp(l9_2411,0.0,1.0);
}
l9_2410=float4(l9_2409.xyz*l9_2411,l9_2411);
}
else
{
l9_2410=l9_2409;
}
}
float4 l9_2412=l9_2410;
param_4=l9_2412;
}
}
}
}
}
float4 l9_2413=param_4;
FinalColor=l9_2413;
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
float4 l9_2414=float4(0.0);
l9_2414=float4(0.0);
float4 l9_2415=l9_2414;
float4 Cost=l9_2415;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_5=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_5,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_6=FinalColor;
float4 l9_2416=param_6;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_2416.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_2416;
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
float2 Surface_UVCoord1;
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
float3 Port_Default_N167;
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
texture2d<float> velRampTexture [[id(23)]];
sampler colorRampTextureSmpSC [[id(24)]];
sampler intensityTextureSmpSC [[id(25)]];
sampler mainTextureSmpSC [[id(26)]];
sampler normalTexSmpSC [[id(27)]];
sampler sc_EnvmapDiffuseSmpSC [[id(28)]];
sampler sc_EnvmapSpecularSmpSC [[id(29)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(31)]];
sampler sc_RayTracingReflectionsSmpSC [[id(32)]];
sampler sc_RayTracingShadowsSmpSC [[id(33)]];
sampler sc_SSAOTextureSmpSC [[id(34)]];
sampler sc_ScreenTextureSmpSC [[id(35)]];
sampler sc_ShadowTextureSmpSC [[id(36)]];
sampler sizeRampTextureSmpSC [[id(38)]];
sampler velRampTextureSmpSC [[id(39)]];
constant userUniformsObj* UserUniforms [[id(40)]];
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
float N2_nearCameraFade=0.0;
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
float4 N2_timeValuesIn=float4(0.0);
bool N2_ENABLE_WORLDPOSSEED=false;
float N2_externalSeed=0.0;
float3 N2_particleSeed=float3(0.0);
float N2_globalSeed=0.0;
float4 N2_result=float4(0.0);
float2 N2_uv=float2(0.0);
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
Globals.Surface_UVCoord1=in.varTex01.zw;
Globals.gInstanceID=in.Interpolator_gInstanceID;
ssGlobals param=Globals;
ssGlobals tempGlobals;
if ((MESHTYPE_tmp==1)&&(int(PBR_tmp)!=0))
{
float3 l9_0=float3(0.0);
float3 l9_1=(*sc_set0.UserUniforms).colorStart;
l9_0=l9_1;
float3 l9_2=float3(0.0);
float3 l9_3=(*sc_set0.UserUniforms).colorEnd;
l9_2=l9_3;
float3 l9_4=float3(0.0);
float3 l9_5=(*sc_set0.UserUniforms).colorMinStart;
l9_4=l9_5;
float3 l9_6=float3(0.0);
float3 l9_7=(*sc_set0.UserUniforms).colorMinEnd;
l9_6=l9_7;
float3 l9_8=float3(0.0);
float3 l9_9=(*sc_set0.UserUniforms).colorMaxStart;
l9_8=l9_9;
float3 l9_10=float3(0.0);
float3 l9_11=(*sc_set0.UserUniforms).colorMaxEnd;
l9_10=l9_11;
float l9_12=0.0;
float l9_13=(*sc_set0.UserUniforms).alphaStart;
l9_12=l9_13;
float l9_14=0.0;
float l9_15=(*sc_set0.UserUniforms).alphaEnd;
l9_14=l9_15;
float l9_16=0.0;
float l9_17=(*sc_set0.UserUniforms).alphaMinStart;
l9_16=l9_17;
float l9_18=0.0;
float l9_19=(*sc_set0.UserUniforms).alphaMinEnd;
l9_18=l9_19;
float l9_20=0.0;
float l9_21=(*sc_set0.UserUniforms).alphaMaxStart;
l9_20=l9_21;
float l9_22=0.0;
float l9_23=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_22=l9_23;
float l9_24=0.0;
float l9_25=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_24=l9_25;
float l9_26=0.0;
l9_26=in.Interpolator0.x;
float l9_27=0.0;
float l9_28=(*sc_set0.UserUniforms).numValidFrames;
l9_27=l9_28;
float2 l9_29=float2(0.0);
float2 l9_30=(*sc_set0.UserUniforms).gridSize;
l9_29=l9_30;
float l9_31=0.0;
float l9_32=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_31=l9_32;
float l9_33=0.0;
float l9_34=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_33=l9_34;
float2 l9_35=float2(0.0);
float2 l9_36=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_35=l9_36;
float4 l9_37=float4(0.0);
float4 l9_38=(*sc_set0.UserUniforms).colorRampMult;
l9_37=l9_38;
float4 l9_39=float4(0.0);
float4 l9_40;
l9_40.x=in.Interpolator0.y;
l9_40.y=in.Interpolator0.z;
l9_40.z=in.Interpolator0.w;
l9_40.w=in.Interpolator1.x;
l9_39=l9_40;
float l9_41=0.0;
float l9_42=(*sc_set0.UserUniforms).externalSeed;
l9_41=l9_42;
float4 l9_43=float4(0.0);
float3 l9_44=l9_0;
float3 l9_45=l9_2;
float3 l9_46=l9_4;
float3 l9_47=l9_6;
float3 l9_48=l9_8;
float3 l9_49=l9_10;
float l9_50=l9_12;
float l9_51=l9_14;
float l9_52=l9_16;
float l9_53=l9_18;
float l9_54=l9_20;
float l9_55=l9_22;
float l9_56=l9_24;
float l9_57=l9_26;
float l9_58=l9_27;
float2 l9_59=l9_29;
float l9_60=l9_31;
float l9_61=l9_33;
float2 l9_62=l9_35;
float4 l9_63=l9_37;
float4 l9_64=l9_39;
float l9_65=l9_41;
ssGlobals l9_66=param;
tempGlobals=l9_66;
float4 l9_67=float4(0.0);
N2_colorStart=l9_44;
N2_colorEnd=l9_45;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_46;
N2_colorMinEnd=l9_47;
N2_colorMaxStart=l9_48;
N2_colorMaxEnd=l9_49;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_50;
N2_alphaEnd=l9_51;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_52;
N2_alphaMinEnd=l9_53;
N2_alphaMaxStart=l9_54;
N2_alphaMaxEnd=l9_55;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_56;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_57;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_58;
N2_gridSize=l9_59;
N2_flipBookSpeedMult=l9_60;
N2_flipBookRandomStart=l9_61;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_62;
N2_colorRampMult=l9_63;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_64;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_65;
float l9_68=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_69=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_68=length(float4(1.0)*l9_69);
}
N2_globalSeed=N2_externalSeed+l9_68;
float l9_70=2000.0;
int l9_71=0;
l9_71=int(tempGlobals.gInstanceID+0.5);
int l9_72=l9_71;
float l9_73=float(l9_72);
float2 l9_74=float2(mod(l9_73,l9_70),floor(l9_73/l9_70));
l9_74/=float2(l9_70);
float2 l9_75=l9_74;
float l9_76=dot(l9_75,float2(0.38253,0.42662001));
float3 l9_77=float3(0.457831,0.62343299,0.97625297)*l9_76;
l9_77=sin(l9_77)*float3(479.371,389.53101,513.03497);
l9_77=fract(l9_77);
l9_77=floor(l9_77*10000.0)*9.9999997e-05;
float3 l9_78=l9_77;
float3 l9_79=l9_78;
N2_particleSeed=l9_79;
float l9_80=N2_particleSeed.x;
float l9_81=N2_particleSeed.y;
float l9_82=N2_particleSeed.z;
float3 l9_83=fract((float3(l9_80,l9_81,l9_82)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_83=fract((float3(l9_80,l9_80,l9_80)*27.21883)+float3(N2_globalSeed));
}
float l9_84=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_85=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_86=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_87=N2_timeValuesIn.w;
float4 l9_88=float4(0.0);
float3 l9_89=float3(0.0);
float3 l9_90=float3(0.0);
float l9_91=0.0;
float l9_92=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_89=mix(N2_colorMinStart,N2_colorMaxStart,l9_83);
l9_90=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_83);
}
else
{
l9_89=N2_colorStart;
l9_90=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_91=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_84);
l9_92=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_84);
}
else
{
l9_91=N2_alphaStart;
l9_92=N2_alphaEnd;
}
l9_89=mix(l9_89,l9_90,float3(l9_87));
l9_91=mix(l9_91,l9_92,l9_87);
l9_88=float4(l9_89,l9_91);
float4 l9_93=float4(0.0);
float2 l9_94=tempGlobals.Surface_UVCoord0;
float2 l9_95=l9_94;
float2 l9_96=tempGlobals.Surface_UVCoord1;
float2 l9_97=l9_96;
float l9_98=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_99=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_100=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_101=mix(l9_98,l9_99,l9_86);
l9_100=N2_timeValuesIn.z/l9_101;
}
float l9_102=mix(0.0,N2_flipBookRandomStart,l9_85);
float2 l9_103=l9_95/N2_gridSize;
float l9_104=(l9_100*N2_flipBookSpeedMult)+l9_102;
l9_104=mod(l9_104,N2_numValidFrames);
float l9_105=floor(l9_104)*(1.0/N2_gridSize.x);
float l9_106=mod(floor((-l9_104)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_107=l9_104+1.0;
l9_107=mod(l9_107,N2_numValidFrames);
float l9_108=floor(l9_107)*(1.0/N2_gridSize.x);
float l9_109=floor((-l9_107)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_110=fract(l9_104);
l9_95=l9_103+float2(l9_105,l9_106);
l9_97=l9_103+float2(l9_108,l9_109);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_111=l9_95;
float4 l9_112=float4(0.0);
int l9_113;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_114=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_114=0;
}
else
{
l9_114=in.varStereoViewID;
}
int l9_115=l9_114;
l9_113=1-l9_115;
}
else
{
int l9_116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_116=0;
}
else
{
l9_116=in.varStereoViewID;
}
int l9_117=l9_116;
l9_113=l9_117;
}
int l9_118=l9_113;
int l9_119=mainTextureLayout_tmp;
int l9_120=l9_118;
float2 l9_121=l9_111;
bool l9_122=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_123=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_124=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_125=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_126=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_127=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_128=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_129=0.0;
bool l9_130=l9_127&&(!l9_125);
float l9_131=1.0;
float l9_132=l9_121.x;
int l9_133=l9_124.x;
if (l9_133==1)
{
l9_132=fract(l9_132);
}
else
{
if (l9_133==2)
{
float l9_134=fract(l9_132);
float l9_135=l9_132-l9_134;
float l9_136=step(0.25,fract(l9_135*0.5));
l9_132=mix(l9_134,1.0-l9_134,fast::clamp(l9_136,0.0,1.0));
}
}
l9_121.x=l9_132;
float l9_137=l9_121.y;
int l9_138=l9_124.y;
if (l9_138==1)
{
l9_137=fract(l9_137);
}
else
{
if (l9_138==2)
{
float l9_139=fract(l9_137);
float l9_140=l9_137-l9_139;
float l9_141=step(0.25,fract(l9_140*0.5));
l9_137=mix(l9_139,1.0-l9_139,fast::clamp(l9_141,0.0,1.0));
}
}
l9_121.y=l9_137;
if (l9_125)
{
bool l9_142=l9_127;
bool l9_143;
if (l9_142)
{
l9_143=l9_124.x==3;
}
else
{
l9_143=l9_142;
}
float l9_144=l9_121.x;
float l9_145=l9_126.x;
float l9_146=l9_126.z;
bool l9_147=l9_143;
float l9_148=l9_131;
float l9_149=fast::clamp(l9_144,l9_145,l9_146);
float l9_150=step(abs(l9_144-l9_149),9.9999997e-06);
l9_148*=(l9_150+((1.0-float(l9_147))*(1.0-l9_150)));
l9_144=l9_149;
l9_121.x=l9_144;
l9_131=l9_148;
bool l9_151=l9_127;
bool l9_152;
if (l9_151)
{
l9_152=l9_124.y==3;
}
else
{
l9_152=l9_151;
}
float l9_153=l9_121.y;
float l9_154=l9_126.y;
float l9_155=l9_126.w;
bool l9_156=l9_152;
float l9_157=l9_131;
float l9_158=fast::clamp(l9_153,l9_154,l9_155);
float l9_159=step(abs(l9_153-l9_158),9.9999997e-06);
l9_157*=(l9_159+((1.0-float(l9_156))*(1.0-l9_159)));
l9_153=l9_158;
l9_121.y=l9_153;
l9_131=l9_157;
}
float2 l9_160=l9_121;
bool l9_161=l9_122;
float3x3 l9_162=l9_123;
if (l9_161)
{
l9_160=float2((l9_162*float3(l9_160,1.0)).xy);
}
float2 l9_163=l9_160;
l9_121=l9_163;
float l9_164=l9_121.x;
int l9_165=l9_124.x;
bool l9_166=l9_130;
float l9_167=l9_131;
if ((l9_165==0)||(l9_165==3))
{
float l9_168=l9_164;
float l9_169=0.0;
float l9_170=1.0;
bool l9_171=l9_166;
float l9_172=l9_167;
float l9_173=fast::clamp(l9_168,l9_169,l9_170);
float l9_174=step(abs(l9_168-l9_173),9.9999997e-06);
l9_172*=(l9_174+((1.0-float(l9_171))*(1.0-l9_174)));
l9_168=l9_173;
l9_164=l9_168;
l9_167=l9_172;
}
l9_121.x=l9_164;
l9_131=l9_167;
float l9_175=l9_121.y;
int l9_176=l9_124.y;
bool l9_177=l9_130;
float l9_178=l9_131;
if ((l9_176==0)||(l9_176==3))
{
float l9_179=l9_175;
float l9_180=0.0;
float l9_181=1.0;
bool l9_182=l9_177;
float l9_183=l9_178;
float l9_184=fast::clamp(l9_179,l9_180,l9_181);
float l9_185=step(abs(l9_179-l9_184),9.9999997e-06);
l9_183*=(l9_185+((1.0-float(l9_182))*(1.0-l9_185)));
l9_179=l9_184;
l9_175=l9_179;
l9_178=l9_183;
}
l9_121.y=l9_175;
l9_131=l9_178;
float2 l9_186=l9_121;
int l9_187=l9_119;
int l9_188=l9_120;
float l9_189=l9_129;
float2 l9_190=l9_186;
int l9_191=l9_187;
int l9_192=l9_188;
float3 l9_193=float3(0.0);
if (l9_191==0)
{
l9_193=float3(l9_190,0.0);
}
else
{
if (l9_191==1)
{
l9_193=float3(l9_190.x,(l9_190.y*0.5)+(0.5-(float(l9_192)*0.5)),0.0);
}
else
{
l9_193=float3(l9_190,float(l9_192));
}
}
float3 l9_194=l9_193;
float3 l9_195=l9_194;
float4 l9_196=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_195.xy,bias(l9_189));
float4 l9_197=l9_196;
if (l9_127)
{
l9_197=mix(l9_128,l9_197,float4(l9_131));
}
float4 l9_198=l9_197;
l9_112=l9_198;
float4 l9_199=l9_112;
float4 l9_200=l9_199;
float2 l9_201=l9_97;
float4 l9_202=float4(0.0);
int l9_203;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_204=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_204=0;
}
else
{
l9_204=in.varStereoViewID;
}
int l9_205=l9_204;
l9_203=1-l9_205;
}
else
{
int l9_206=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_206=0;
}
else
{
l9_206=in.varStereoViewID;
}
int l9_207=l9_206;
l9_203=l9_207;
}
int l9_208=l9_203;
int l9_209=mainTextureLayout_tmp;
int l9_210=l9_208;
float2 l9_211=l9_201;
bool l9_212=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_213=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_214=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_215=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_216=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_217=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_218=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_219=0.0;
bool l9_220=l9_217&&(!l9_215);
float l9_221=1.0;
float l9_222=l9_211.x;
int l9_223=l9_214.x;
if (l9_223==1)
{
l9_222=fract(l9_222);
}
else
{
if (l9_223==2)
{
float l9_224=fract(l9_222);
float l9_225=l9_222-l9_224;
float l9_226=step(0.25,fract(l9_225*0.5));
l9_222=mix(l9_224,1.0-l9_224,fast::clamp(l9_226,0.0,1.0));
}
}
l9_211.x=l9_222;
float l9_227=l9_211.y;
int l9_228=l9_214.y;
if (l9_228==1)
{
l9_227=fract(l9_227);
}
else
{
if (l9_228==2)
{
float l9_229=fract(l9_227);
float l9_230=l9_227-l9_229;
float l9_231=step(0.25,fract(l9_230*0.5));
l9_227=mix(l9_229,1.0-l9_229,fast::clamp(l9_231,0.0,1.0));
}
}
l9_211.y=l9_227;
if (l9_215)
{
bool l9_232=l9_217;
bool l9_233;
if (l9_232)
{
l9_233=l9_214.x==3;
}
else
{
l9_233=l9_232;
}
float l9_234=l9_211.x;
float l9_235=l9_216.x;
float l9_236=l9_216.z;
bool l9_237=l9_233;
float l9_238=l9_221;
float l9_239=fast::clamp(l9_234,l9_235,l9_236);
float l9_240=step(abs(l9_234-l9_239),9.9999997e-06);
l9_238*=(l9_240+((1.0-float(l9_237))*(1.0-l9_240)));
l9_234=l9_239;
l9_211.x=l9_234;
l9_221=l9_238;
bool l9_241=l9_217;
bool l9_242;
if (l9_241)
{
l9_242=l9_214.y==3;
}
else
{
l9_242=l9_241;
}
float l9_243=l9_211.y;
float l9_244=l9_216.y;
float l9_245=l9_216.w;
bool l9_246=l9_242;
float l9_247=l9_221;
float l9_248=fast::clamp(l9_243,l9_244,l9_245);
float l9_249=step(abs(l9_243-l9_248),9.9999997e-06);
l9_247*=(l9_249+((1.0-float(l9_246))*(1.0-l9_249)));
l9_243=l9_248;
l9_211.y=l9_243;
l9_221=l9_247;
}
float2 l9_250=l9_211;
bool l9_251=l9_212;
float3x3 l9_252=l9_213;
if (l9_251)
{
l9_250=float2((l9_252*float3(l9_250,1.0)).xy);
}
float2 l9_253=l9_250;
l9_211=l9_253;
float l9_254=l9_211.x;
int l9_255=l9_214.x;
bool l9_256=l9_220;
float l9_257=l9_221;
if ((l9_255==0)||(l9_255==3))
{
float l9_258=l9_254;
float l9_259=0.0;
float l9_260=1.0;
bool l9_261=l9_256;
float l9_262=l9_257;
float l9_263=fast::clamp(l9_258,l9_259,l9_260);
float l9_264=step(abs(l9_258-l9_263),9.9999997e-06);
l9_262*=(l9_264+((1.0-float(l9_261))*(1.0-l9_264)));
l9_258=l9_263;
l9_254=l9_258;
l9_257=l9_262;
}
l9_211.x=l9_254;
l9_221=l9_257;
float l9_265=l9_211.y;
int l9_266=l9_214.y;
bool l9_267=l9_220;
float l9_268=l9_221;
if ((l9_266==0)||(l9_266==3))
{
float l9_269=l9_265;
float l9_270=0.0;
float l9_271=1.0;
bool l9_272=l9_267;
float l9_273=l9_268;
float l9_274=fast::clamp(l9_269,l9_270,l9_271);
float l9_275=step(abs(l9_269-l9_274),9.9999997e-06);
l9_273*=(l9_275+((1.0-float(l9_272))*(1.0-l9_275)));
l9_269=l9_274;
l9_265=l9_269;
l9_268=l9_273;
}
l9_211.y=l9_265;
l9_221=l9_268;
float2 l9_276=l9_211;
int l9_277=l9_209;
int l9_278=l9_210;
float l9_279=l9_219;
float2 l9_280=l9_276;
int l9_281=l9_277;
int l9_282=l9_278;
float3 l9_283=float3(0.0);
if (l9_281==0)
{
l9_283=float3(l9_280,0.0);
}
else
{
if (l9_281==1)
{
l9_283=float3(l9_280.x,(l9_280.y*0.5)+(0.5-(float(l9_282)*0.5)),0.0);
}
else
{
l9_283=float3(l9_280,float(l9_282));
}
}
float3 l9_284=l9_283;
float3 l9_285=l9_284;
float4 l9_286=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_285.xy,bias(l9_279));
float4 l9_287=l9_286;
if (l9_217)
{
l9_287=mix(l9_218,l9_287,float4(l9_221));
}
float4 l9_288=l9_287;
l9_202=l9_288;
float4 l9_289=l9_202;
l9_93=mix(l9_200,l9_289,float4(l9_110));
}
else
{
float2 l9_290=l9_95;
float4 l9_291=float4(0.0);
int l9_292;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_293=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_293=0;
}
else
{
l9_293=in.varStereoViewID;
}
int l9_294=l9_293;
l9_292=1-l9_294;
}
else
{
int l9_295=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_295=0;
}
else
{
l9_295=in.varStereoViewID;
}
int l9_296=l9_295;
l9_292=l9_296;
}
int l9_297=l9_292;
int l9_298=mainTextureLayout_tmp;
int l9_299=l9_297;
float2 l9_300=l9_290;
bool l9_301=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_302=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_303=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_304=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_305=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_306=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_307=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_308=0.0;
bool l9_309=l9_306&&(!l9_304);
float l9_310=1.0;
float l9_311=l9_300.x;
int l9_312=l9_303.x;
if (l9_312==1)
{
l9_311=fract(l9_311);
}
else
{
if (l9_312==2)
{
float l9_313=fract(l9_311);
float l9_314=l9_311-l9_313;
float l9_315=step(0.25,fract(l9_314*0.5));
l9_311=mix(l9_313,1.0-l9_313,fast::clamp(l9_315,0.0,1.0));
}
}
l9_300.x=l9_311;
float l9_316=l9_300.y;
int l9_317=l9_303.y;
if (l9_317==1)
{
l9_316=fract(l9_316);
}
else
{
if (l9_317==2)
{
float l9_318=fract(l9_316);
float l9_319=l9_316-l9_318;
float l9_320=step(0.25,fract(l9_319*0.5));
l9_316=mix(l9_318,1.0-l9_318,fast::clamp(l9_320,0.0,1.0));
}
}
l9_300.y=l9_316;
if (l9_304)
{
bool l9_321=l9_306;
bool l9_322;
if (l9_321)
{
l9_322=l9_303.x==3;
}
else
{
l9_322=l9_321;
}
float l9_323=l9_300.x;
float l9_324=l9_305.x;
float l9_325=l9_305.z;
bool l9_326=l9_322;
float l9_327=l9_310;
float l9_328=fast::clamp(l9_323,l9_324,l9_325);
float l9_329=step(abs(l9_323-l9_328),9.9999997e-06);
l9_327*=(l9_329+((1.0-float(l9_326))*(1.0-l9_329)));
l9_323=l9_328;
l9_300.x=l9_323;
l9_310=l9_327;
bool l9_330=l9_306;
bool l9_331;
if (l9_330)
{
l9_331=l9_303.y==3;
}
else
{
l9_331=l9_330;
}
float l9_332=l9_300.y;
float l9_333=l9_305.y;
float l9_334=l9_305.w;
bool l9_335=l9_331;
float l9_336=l9_310;
float l9_337=fast::clamp(l9_332,l9_333,l9_334);
float l9_338=step(abs(l9_332-l9_337),9.9999997e-06);
l9_336*=(l9_338+((1.0-float(l9_335))*(1.0-l9_338)));
l9_332=l9_337;
l9_300.y=l9_332;
l9_310=l9_336;
}
float2 l9_339=l9_300;
bool l9_340=l9_301;
float3x3 l9_341=l9_302;
if (l9_340)
{
l9_339=float2((l9_341*float3(l9_339,1.0)).xy);
}
float2 l9_342=l9_339;
l9_300=l9_342;
float l9_343=l9_300.x;
int l9_344=l9_303.x;
bool l9_345=l9_309;
float l9_346=l9_310;
if ((l9_344==0)||(l9_344==3))
{
float l9_347=l9_343;
float l9_348=0.0;
float l9_349=1.0;
bool l9_350=l9_345;
float l9_351=l9_346;
float l9_352=fast::clamp(l9_347,l9_348,l9_349);
float l9_353=step(abs(l9_347-l9_352),9.9999997e-06);
l9_351*=(l9_353+((1.0-float(l9_350))*(1.0-l9_353)));
l9_347=l9_352;
l9_343=l9_347;
l9_346=l9_351;
}
l9_300.x=l9_343;
l9_310=l9_346;
float l9_354=l9_300.y;
int l9_355=l9_303.y;
bool l9_356=l9_309;
float l9_357=l9_310;
if ((l9_355==0)||(l9_355==3))
{
float l9_358=l9_354;
float l9_359=0.0;
float l9_360=1.0;
bool l9_361=l9_356;
float l9_362=l9_357;
float l9_363=fast::clamp(l9_358,l9_359,l9_360);
float l9_364=step(abs(l9_358-l9_363),9.9999997e-06);
l9_362*=(l9_364+((1.0-float(l9_361))*(1.0-l9_364)));
l9_358=l9_363;
l9_354=l9_358;
l9_357=l9_362;
}
l9_300.y=l9_354;
l9_310=l9_357;
float2 l9_365=l9_300;
int l9_366=l9_298;
int l9_367=l9_299;
float l9_368=l9_308;
float2 l9_369=l9_365;
int l9_370=l9_366;
int l9_371=l9_367;
float3 l9_372=float3(0.0);
if (l9_370==0)
{
l9_372=float3(l9_369,0.0);
}
else
{
if (l9_370==1)
{
l9_372=float3(l9_369.x,(l9_369.y*0.5)+(0.5-(float(l9_371)*0.5)),0.0);
}
else
{
l9_372=float3(l9_369,float(l9_371));
}
}
float3 l9_373=l9_372;
float3 l9_374=l9_373;
float4 l9_375=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_374.xy,bias(l9_368));
float4 l9_376=l9_375;
if (l9_306)
{
l9_376=mix(l9_307,l9_376,float4(l9_310));
}
float4 l9_377=l9_376;
l9_291=l9_377;
float4 l9_378=l9_291;
l9_93=l9_378;
}
float4 l9_379=float4(0.0);
float l9_380=ceil(l9_87*N2_texSize.x)/N2_texSize.x;
float l9_381=l9_380;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_382=tempGlobals.Surface_UVCoord0;
l9_381+=(l9_382.x/N2_texSize.x);
}
float2 l9_383=float2(l9_381,0.5);
float4 l9_384=float4(0.0);
int l9_385;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_386=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_386=0;
}
else
{
l9_386=in.varStereoViewID;
}
int l9_387=l9_386;
l9_385=1-l9_387;
}
else
{
int l9_388=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_388=0;
}
else
{
l9_388=in.varStereoViewID;
}
int l9_389=l9_388;
l9_385=l9_389;
}
int l9_390=l9_385;
int l9_391=colorRampTextureLayout_tmp;
int l9_392=l9_390;
float2 l9_393=l9_383;
bool l9_394=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_395=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_396=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_397=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_398=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_399=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_400=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_401=0.0;
bool l9_402=l9_399&&(!l9_397);
float l9_403=1.0;
float l9_404=l9_393.x;
int l9_405=l9_396.x;
if (l9_405==1)
{
l9_404=fract(l9_404);
}
else
{
if (l9_405==2)
{
float l9_406=fract(l9_404);
float l9_407=l9_404-l9_406;
float l9_408=step(0.25,fract(l9_407*0.5));
l9_404=mix(l9_406,1.0-l9_406,fast::clamp(l9_408,0.0,1.0));
}
}
l9_393.x=l9_404;
float l9_409=l9_393.y;
int l9_410=l9_396.y;
if (l9_410==1)
{
l9_409=fract(l9_409);
}
else
{
if (l9_410==2)
{
float l9_411=fract(l9_409);
float l9_412=l9_409-l9_411;
float l9_413=step(0.25,fract(l9_412*0.5));
l9_409=mix(l9_411,1.0-l9_411,fast::clamp(l9_413,0.0,1.0));
}
}
l9_393.y=l9_409;
if (l9_397)
{
bool l9_414=l9_399;
bool l9_415;
if (l9_414)
{
l9_415=l9_396.x==3;
}
else
{
l9_415=l9_414;
}
float l9_416=l9_393.x;
float l9_417=l9_398.x;
float l9_418=l9_398.z;
bool l9_419=l9_415;
float l9_420=l9_403;
float l9_421=fast::clamp(l9_416,l9_417,l9_418);
float l9_422=step(abs(l9_416-l9_421),9.9999997e-06);
l9_420*=(l9_422+((1.0-float(l9_419))*(1.0-l9_422)));
l9_416=l9_421;
l9_393.x=l9_416;
l9_403=l9_420;
bool l9_423=l9_399;
bool l9_424;
if (l9_423)
{
l9_424=l9_396.y==3;
}
else
{
l9_424=l9_423;
}
float l9_425=l9_393.y;
float l9_426=l9_398.y;
float l9_427=l9_398.w;
bool l9_428=l9_424;
float l9_429=l9_403;
float l9_430=fast::clamp(l9_425,l9_426,l9_427);
float l9_431=step(abs(l9_425-l9_430),9.9999997e-06);
l9_429*=(l9_431+((1.0-float(l9_428))*(1.0-l9_431)));
l9_425=l9_430;
l9_393.y=l9_425;
l9_403=l9_429;
}
float2 l9_432=l9_393;
bool l9_433=l9_394;
float3x3 l9_434=l9_395;
if (l9_433)
{
l9_432=float2((l9_434*float3(l9_432,1.0)).xy);
}
float2 l9_435=l9_432;
l9_393=l9_435;
float l9_436=l9_393.x;
int l9_437=l9_396.x;
bool l9_438=l9_402;
float l9_439=l9_403;
if ((l9_437==0)||(l9_437==3))
{
float l9_440=l9_436;
float l9_441=0.0;
float l9_442=1.0;
bool l9_443=l9_438;
float l9_444=l9_439;
float l9_445=fast::clamp(l9_440,l9_441,l9_442);
float l9_446=step(abs(l9_440-l9_445),9.9999997e-06);
l9_444*=(l9_446+((1.0-float(l9_443))*(1.0-l9_446)));
l9_440=l9_445;
l9_436=l9_440;
l9_439=l9_444;
}
l9_393.x=l9_436;
l9_403=l9_439;
float l9_447=l9_393.y;
int l9_448=l9_396.y;
bool l9_449=l9_402;
float l9_450=l9_403;
if ((l9_448==0)||(l9_448==3))
{
float l9_451=l9_447;
float l9_452=0.0;
float l9_453=1.0;
bool l9_454=l9_449;
float l9_455=l9_450;
float l9_456=fast::clamp(l9_451,l9_452,l9_453);
float l9_457=step(abs(l9_451-l9_456),9.9999997e-06);
l9_455*=(l9_457+((1.0-float(l9_454))*(1.0-l9_457)));
l9_451=l9_456;
l9_447=l9_451;
l9_450=l9_455;
}
l9_393.y=l9_447;
l9_403=l9_450;
float2 l9_458=l9_393;
int l9_459=l9_391;
int l9_460=l9_392;
float l9_461=l9_401;
float2 l9_462=l9_458;
int l9_463=l9_459;
int l9_464=l9_460;
float3 l9_465=float3(0.0);
if (l9_463==0)
{
l9_465=float3(l9_462,0.0);
}
else
{
if (l9_463==1)
{
l9_465=float3(l9_462.x,(l9_462.y*0.5)+(0.5-(float(l9_464)*0.5)),0.0);
}
else
{
l9_465=float3(l9_462,float(l9_464));
}
}
float3 l9_466=l9_465;
float3 l9_467=l9_466;
float4 l9_468=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_467.xy,bias(l9_461));
float4 l9_469=l9_468;
if (l9_399)
{
l9_469=mix(l9_400,l9_469,float4(l9_403));
}
float4 l9_470=l9_469;
l9_384=l9_470;
float4 l9_471=l9_384;
l9_379=l9_471*N2_colorRampMult;
float4 l9_472=float4(1.0);
float4 l9_473=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_474=tempGlobals.Surface_UVCoord0;
float2 l9_475=l9_474;
float4 l9_476=float4(0.0);
int l9_477;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_478=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_478=0;
}
else
{
l9_478=in.varStereoViewID;
}
int l9_479=l9_478;
l9_477=1-l9_479;
}
else
{
int l9_480=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_480=0;
}
else
{
l9_480=in.varStereoViewID;
}
int l9_481=l9_480;
l9_477=l9_481;
}
int l9_482=l9_477;
int l9_483=mainTextureLayout_tmp;
int l9_484=l9_482;
float2 l9_485=l9_475;
bool l9_486=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_487=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_488=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_489=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_490=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_491=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_492=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_493=0.0;
bool l9_494=l9_491&&(!l9_489);
float l9_495=1.0;
float l9_496=l9_485.x;
int l9_497=l9_488.x;
if (l9_497==1)
{
l9_496=fract(l9_496);
}
else
{
if (l9_497==2)
{
float l9_498=fract(l9_496);
float l9_499=l9_496-l9_498;
float l9_500=step(0.25,fract(l9_499*0.5));
l9_496=mix(l9_498,1.0-l9_498,fast::clamp(l9_500,0.0,1.0));
}
}
l9_485.x=l9_496;
float l9_501=l9_485.y;
int l9_502=l9_488.y;
if (l9_502==1)
{
l9_501=fract(l9_501);
}
else
{
if (l9_502==2)
{
float l9_503=fract(l9_501);
float l9_504=l9_501-l9_503;
float l9_505=step(0.25,fract(l9_504*0.5));
l9_501=mix(l9_503,1.0-l9_503,fast::clamp(l9_505,0.0,1.0));
}
}
l9_485.y=l9_501;
if (l9_489)
{
bool l9_506=l9_491;
bool l9_507;
if (l9_506)
{
l9_507=l9_488.x==3;
}
else
{
l9_507=l9_506;
}
float l9_508=l9_485.x;
float l9_509=l9_490.x;
float l9_510=l9_490.z;
bool l9_511=l9_507;
float l9_512=l9_495;
float l9_513=fast::clamp(l9_508,l9_509,l9_510);
float l9_514=step(abs(l9_508-l9_513),9.9999997e-06);
l9_512*=(l9_514+((1.0-float(l9_511))*(1.0-l9_514)));
l9_508=l9_513;
l9_485.x=l9_508;
l9_495=l9_512;
bool l9_515=l9_491;
bool l9_516;
if (l9_515)
{
l9_516=l9_488.y==3;
}
else
{
l9_516=l9_515;
}
float l9_517=l9_485.y;
float l9_518=l9_490.y;
float l9_519=l9_490.w;
bool l9_520=l9_516;
float l9_521=l9_495;
float l9_522=fast::clamp(l9_517,l9_518,l9_519);
float l9_523=step(abs(l9_517-l9_522),9.9999997e-06);
l9_521*=(l9_523+((1.0-float(l9_520))*(1.0-l9_523)));
l9_517=l9_522;
l9_485.y=l9_517;
l9_495=l9_521;
}
float2 l9_524=l9_485;
bool l9_525=l9_486;
float3x3 l9_526=l9_487;
if (l9_525)
{
l9_524=float2((l9_526*float3(l9_524,1.0)).xy);
}
float2 l9_527=l9_524;
l9_485=l9_527;
float l9_528=l9_485.x;
int l9_529=l9_488.x;
bool l9_530=l9_494;
float l9_531=l9_495;
if ((l9_529==0)||(l9_529==3))
{
float l9_532=l9_528;
float l9_533=0.0;
float l9_534=1.0;
bool l9_535=l9_530;
float l9_536=l9_531;
float l9_537=fast::clamp(l9_532,l9_533,l9_534);
float l9_538=step(abs(l9_532-l9_537),9.9999997e-06);
l9_536*=(l9_538+((1.0-float(l9_535))*(1.0-l9_538)));
l9_532=l9_537;
l9_528=l9_532;
l9_531=l9_536;
}
l9_485.x=l9_528;
l9_495=l9_531;
float l9_539=l9_485.y;
int l9_540=l9_488.y;
bool l9_541=l9_494;
float l9_542=l9_495;
if ((l9_540==0)||(l9_540==3))
{
float l9_543=l9_539;
float l9_544=0.0;
float l9_545=1.0;
bool l9_546=l9_541;
float l9_547=l9_542;
float l9_548=fast::clamp(l9_543,l9_544,l9_545);
float l9_549=step(abs(l9_543-l9_548),9.9999997e-06);
l9_547*=(l9_549+((1.0-float(l9_546))*(1.0-l9_549)));
l9_543=l9_548;
l9_539=l9_543;
l9_542=l9_547;
}
l9_485.y=l9_539;
l9_495=l9_542;
float2 l9_550=l9_485;
int l9_551=l9_483;
int l9_552=l9_484;
float l9_553=l9_493;
float2 l9_554=l9_550;
int l9_555=l9_551;
int l9_556=l9_552;
float3 l9_557=float3(0.0);
if (l9_555==0)
{
l9_557=float3(l9_554,0.0);
}
else
{
if (l9_555==1)
{
l9_557=float3(l9_554.x,(l9_554.y*0.5)+(0.5-(float(l9_556)*0.5)),0.0);
}
else
{
l9_557=float3(l9_554,float(l9_556));
}
}
float3 l9_558=l9_557;
float3 l9_559=l9_558;
float4 l9_560=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_559.xy,bias(l9_553));
float4 l9_561=l9_560;
if (l9_491)
{
l9_561=mix(l9_492,l9_561,float4(l9_495));
}
float4 l9_562=l9_561;
l9_476=l9_562;
float4 l9_563=l9_476;
l9_472=l9_563;
float2 l9_564=tempGlobals.Surface_UVCoord0;
N2_uv=l9_564;
if (N2_ENABLE_FLIPBOOK)
{
l9_472=l9_93;
N2_uv=l9_95;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_473=l9_379;
}
}
N2_result=(l9_472*l9_88)*l9_473;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_565=l9_87*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_565,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_566=length(N2_result.xyz);
N2_result.w=l9_566;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_567=N2_result.xyz*N2_result.w;
N2_result=float4(l9_567.x,l9_567.y,l9_567.z,N2_result.w);
}
l9_67=N2_result;
l9_43=l9_67;
float l9_568=0.0;
l9_568=l9_43.w;
float3 l9_569=float3(0.0);
float3 l9_570=float3(0.0);
float3 l9_571=(*sc_set0.UserUniforms).Port_Default_N167;
ssGlobals l9_572=param;
float3 l9_573;
if ((int(NORMALTEX_tmp)!=0))
{
float3 l9_574=float3(0.0);
float3 l9_575=(*sc_set0.UserUniforms).colorStart;
l9_574=l9_575;
float3 l9_576=float3(0.0);
float3 l9_577=(*sc_set0.UserUniforms).colorEnd;
l9_576=l9_577;
float3 l9_578=float3(0.0);
float3 l9_579=(*sc_set0.UserUniforms).colorMinStart;
l9_578=l9_579;
float3 l9_580=float3(0.0);
float3 l9_581=(*sc_set0.UserUniforms).colorMinEnd;
l9_580=l9_581;
float3 l9_582=float3(0.0);
float3 l9_583=(*sc_set0.UserUniforms).colorMaxStart;
l9_582=l9_583;
float3 l9_584=float3(0.0);
float3 l9_585=(*sc_set0.UserUniforms).colorMaxEnd;
l9_584=l9_585;
float l9_586=0.0;
float l9_587=(*sc_set0.UserUniforms).alphaStart;
l9_586=l9_587;
float l9_588=0.0;
float l9_589=(*sc_set0.UserUniforms).alphaEnd;
l9_588=l9_589;
float l9_590=0.0;
float l9_591=(*sc_set0.UserUniforms).alphaMinStart;
l9_590=l9_591;
float l9_592=0.0;
float l9_593=(*sc_set0.UserUniforms).alphaMinEnd;
l9_592=l9_593;
float l9_594=0.0;
float l9_595=(*sc_set0.UserUniforms).alphaMaxStart;
l9_594=l9_595;
float l9_596=0.0;
float l9_597=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_596=l9_597;
float l9_598=0.0;
float l9_599=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_598=l9_599;
float l9_600=0.0;
l9_600=in.Interpolator0.x;
float l9_601=0.0;
float l9_602=(*sc_set0.UserUniforms).numValidFrames;
l9_601=l9_602;
float2 l9_603=float2(0.0);
float2 l9_604=(*sc_set0.UserUniforms).gridSize;
l9_603=l9_604;
float l9_605=0.0;
float l9_606=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_605=l9_606;
float l9_607=0.0;
float l9_608=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_607=l9_608;
float2 l9_609=float2(0.0);
float2 l9_610=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_609=l9_610;
float4 l9_611=float4(0.0);
float4 l9_612=(*sc_set0.UserUniforms).colorRampMult;
l9_611=l9_612;
float4 l9_613=float4(0.0);
float4 l9_614;
l9_614.x=in.Interpolator0.y;
l9_614.y=in.Interpolator0.z;
l9_614.z=in.Interpolator0.w;
l9_614.w=in.Interpolator1.x;
l9_613=l9_614;
float l9_615=0.0;
float l9_616=(*sc_set0.UserUniforms).externalSeed;
l9_615=l9_616;
float2 l9_617=float2(0.0);
float3 l9_618=l9_574;
float3 l9_619=l9_576;
float3 l9_620=l9_578;
float3 l9_621=l9_580;
float3 l9_622=l9_582;
float3 l9_623=l9_584;
float l9_624=l9_586;
float l9_625=l9_588;
float l9_626=l9_590;
float l9_627=l9_592;
float l9_628=l9_594;
float l9_629=l9_596;
float l9_630=l9_598;
float l9_631=l9_600;
float l9_632=l9_601;
float2 l9_633=l9_603;
float l9_634=l9_605;
float l9_635=l9_607;
float2 l9_636=l9_609;
float4 l9_637=l9_611;
float4 l9_638=l9_613;
float l9_639=l9_615;
ssGlobals l9_640=l9_572;
tempGlobals=l9_640;
float2 l9_641=float2(0.0);
N2_colorStart=l9_618;
N2_colorEnd=l9_619;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_620;
N2_colorMinEnd=l9_621;
N2_colorMaxStart=l9_622;
N2_colorMaxEnd=l9_623;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_624;
N2_alphaEnd=l9_625;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_626;
N2_alphaMinEnd=l9_627;
N2_alphaMaxStart=l9_628;
N2_alphaMaxEnd=l9_629;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_630;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_631;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_632;
N2_gridSize=l9_633;
N2_flipBookSpeedMult=l9_634;
N2_flipBookRandomStart=l9_635;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_636;
N2_colorRampMult=l9_637;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_638;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_639;
float l9_642=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_643=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_642=length(float4(1.0)*l9_643);
}
N2_globalSeed=N2_externalSeed+l9_642;
float l9_644=2000.0;
int l9_645=0;
l9_645=int(tempGlobals.gInstanceID+0.5);
int l9_646=l9_645;
float l9_647=float(l9_646);
float2 l9_648=float2(mod(l9_647,l9_644),floor(l9_647/l9_644));
l9_648/=float2(l9_644);
float2 l9_649=l9_648;
float l9_650=dot(l9_649,float2(0.38253,0.42662001));
float3 l9_651=float3(0.457831,0.62343299,0.97625297)*l9_650;
l9_651=sin(l9_651)*float3(479.371,389.53101,513.03497);
l9_651=fract(l9_651);
l9_651=floor(l9_651*10000.0)*9.9999997e-05;
float3 l9_652=l9_651;
float3 l9_653=l9_652;
N2_particleSeed=l9_653;
float l9_654=N2_particleSeed.x;
float l9_655=N2_particleSeed.y;
float l9_656=N2_particleSeed.z;
float3 l9_657=fract((float3(l9_654,l9_655,l9_656)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_657=fract((float3(l9_654,l9_654,l9_654)*27.21883)+float3(N2_globalSeed));
}
float l9_658=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_659=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_660=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_661=N2_timeValuesIn.w;
float4 l9_662=float4(0.0);
float3 l9_663=float3(0.0);
float3 l9_664=float3(0.0);
float l9_665=0.0;
float l9_666=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_663=mix(N2_colorMinStart,N2_colorMaxStart,l9_657);
l9_664=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_657);
}
else
{
l9_663=N2_colorStart;
l9_664=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_665=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_658);
l9_666=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_658);
}
else
{
l9_665=N2_alphaStart;
l9_666=N2_alphaEnd;
}
l9_663=mix(l9_663,l9_664,float3(l9_661));
l9_665=mix(l9_665,l9_666,l9_661);
l9_662=float4(l9_663,l9_665);
float4 l9_667=float4(0.0);
float2 l9_668=tempGlobals.Surface_UVCoord0;
float2 l9_669=l9_668;
float2 l9_670=tempGlobals.Surface_UVCoord1;
float2 l9_671=l9_670;
float l9_672=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_673=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_674=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_675=mix(l9_672,l9_673,l9_660);
l9_674=N2_timeValuesIn.z/l9_675;
}
float l9_676=mix(0.0,N2_flipBookRandomStart,l9_659);
float2 l9_677=l9_669/N2_gridSize;
float l9_678=(l9_674*N2_flipBookSpeedMult)+l9_676;
l9_678=mod(l9_678,N2_numValidFrames);
float l9_679=floor(l9_678)*(1.0/N2_gridSize.x);
float l9_680=mod(floor((-l9_678)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_681=l9_678+1.0;
l9_681=mod(l9_681,N2_numValidFrames);
float l9_682=floor(l9_681)*(1.0/N2_gridSize.x);
float l9_683=floor((-l9_681)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_684=fract(l9_678);
l9_669=l9_677+float2(l9_679,l9_680);
l9_671=l9_677+float2(l9_682,l9_683);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_685=l9_669;
float4 l9_686=float4(0.0);
int l9_687;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_688=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_688=0;
}
else
{
l9_688=in.varStereoViewID;
}
int l9_689=l9_688;
l9_687=1-l9_689;
}
else
{
int l9_690=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_690=0;
}
else
{
l9_690=in.varStereoViewID;
}
int l9_691=l9_690;
l9_687=l9_691;
}
int l9_692=l9_687;
int l9_693=mainTextureLayout_tmp;
int l9_694=l9_692;
float2 l9_695=l9_685;
bool l9_696=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_697=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_698=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_699=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_700=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_701=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_702=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_703=0.0;
bool l9_704=l9_701&&(!l9_699);
float l9_705=1.0;
float l9_706=l9_695.x;
int l9_707=l9_698.x;
if (l9_707==1)
{
l9_706=fract(l9_706);
}
else
{
if (l9_707==2)
{
float l9_708=fract(l9_706);
float l9_709=l9_706-l9_708;
float l9_710=step(0.25,fract(l9_709*0.5));
l9_706=mix(l9_708,1.0-l9_708,fast::clamp(l9_710,0.0,1.0));
}
}
l9_695.x=l9_706;
float l9_711=l9_695.y;
int l9_712=l9_698.y;
if (l9_712==1)
{
l9_711=fract(l9_711);
}
else
{
if (l9_712==2)
{
float l9_713=fract(l9_711);
float l9_714=l9_711-l9_713;
float l9_715=step(0.25,fract(l9_714*0.5));
l9_711=mix(l9_713,1.0-l9_713,fast::clamp(l9_715,0.0,1.0));
}
}
l9_695.y=l9_711;
if (l9_699)
{
bool l9_716=l9_701;
bool l9_717;
if (l9_716)
{
l9_717=l9_698.x==3;
}
else
{
l9_717=l9_716;
}
float l9_718=l9_695.x;
float l9_719=l9_700.x;
float l9_720=l9_700.z;
bool l9_721=l9_717;
float l9_722=l9_705;
float l9_723=fast::clamp(l9_718,l9_719,l9_720);
float l9_724=step(abs(l9_718-l9_723),9.9999997e-06);
l9_722*=(l9_724+((1.0-float(l9_721))*(1.0-l9_724)));
l9_718=l9_723;
l9_695.x=l9_718;
l9_705=l9_722;
bool l9_725=l9_701;
bool l9_726;
if (l9_725)
{
l9_726=l9_698.y==3;
}
else
{
l9_726=l9_725;
}
float l9_727=l9_695.y;
float l9_728=l9_700.y;
float l9_729=l9_700.w;
bool l9_730=l9_726;
float l9_731=l9_705;
float l9_732=fast::clamp(l9_727,l9_728,l9_729);
float l9_733=step(abs(l9_727-l9_732),9.9999997e-06);
l9_731*=(l9_733+((1.0-float(l9_730))*(1.0-l9_733)));
l9_727=l9_732;
l9_695.y=l9_727;
l9_705=l9_731;
}
float2 l9_734=l9_695;
bool l9_735=l9_696;
float3x3 l9_736=l9_697;
if (l9_735)
{
l9_734=float2((l9_736*float3(l9_734,1.0)).xy);
}
float2 l9_737=l9_734;
l9_695=l9_737;
float l9_738=l9_695.x;
int l9_739=l9_698.x;
bool l9_740=l9_704;
float l9_741=l9_705;
if ((l9_739==0)||(l9_739==3))
{
float l9_742=l9_738;
float l9_743=0.0;
float l9_744=1.0;
bool l9_745=l9_740;
float l9_746=l9_741;
float l9_747=fast::clamp(l9_742,l9_743,l9_744);
float l9_748=step(abs(l9_742-l9_747),9.9999997e-06);
l9_746*=(l9_748+((1.0-float(l9_745))*(1.0-l9_748)));
l9_742=l9_747;
l9_738=l9_742;
l9_741=l9_746;
}
l9_695.x=l9_738;
l9_705=l9_741;
float l9_749=l9_695.y;
int l9_750=l9_698.y;
bool l9_751=l9_704;
float l9_752=l9_705;
if ((l9_750==0)||(l9_750==3))
{
float l9_753=l9_749;
float l9_754=0.0;
float l9_755=1.0;
bool l9_756=l9_751;
float l9_757=l9_752;
float l9_758=fast::clamp(l9_753,l9_754,l9_755);
float l9_759=step(abs(l9_753-l9_758),9.9999997e-06);
l9_757*=(l9_759+((1.0-float(l9_756))*(1.0-l9_759)));
l9_753=l9_758;
l9_749=l9_753;
l9_752=l9_757;
}
l9_695.y=l9_749;
l9_705=l9_752;
float2 l9_760=l9_695;
int l9_761=l9_693;
int l9_762=l9_694;
float l9_763=l9_703;
float2 l9_764=l9_760;
int l9_765=l9_761;
int l9_766=l9_762;
float3 l9_767=float3(0.0);
if (l9_765==0)
{
l9_767=float3(l9_764,0.0);
}
else
{
if (l9_765==1)
{
l9_767=float3(l9_764.x,(l9_764.y*0.5)+(0.5-(float(l9_766)*0.5)),0.0);
}
else
{
l9_767=float3(l9_764,float(l9_766));
}
}
float3 l9_768=l9_767;
float3 l9_769=l9_768;
float4 l9_770=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_769.xy,bias(l9_763));
float4 l9_771=l9_770;
if (l9_701)
{
l9_771=mix(l9_702,l9_771,float4(l9_705));
}
float4 l9_772=l9_771;
l9_686=l9_772;
float4 l9_773=l9_686;
float4 l9_774=l9_773;
float2 l9_775=l9_671;
float4 l9_776=float4(0.0);
int l9_777;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_778=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_778=0;
}
else
{
l9_778=in.varStereoViewID;
}
int l9_779=l9_778;
l9_777=1-l9_779;
}
else
{
int l9_780=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_780=0;
}
else
{
l9_780=in.varStereoViewID;
}
int l9_781=l9_780;
l9_777=l9_781;
}
int l9_782=l9_777;
int l9_783=mainTextureLayout_tmp;
int l9_784=l9_782;
float2 l9_785=l9_775;
bool l9_786=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_787=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_788=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_789=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_790=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_791=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_792=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_793=0.0;
bool l9_794=l9_791&&(!l9_789);
float l9_795=1.0;
float l9_796=l9_785.x;
int l9_797=l9_788.x;
if (l9_797==1)
{
l9_796=fract(l9_796);
}
else
{
if (l9_797==2)
{
float l9_798=fract(l9_796);
float l9_799=l9_796-l9_798;
float l9_800=step(0.25,fract(l9_799*0.5));
l9_796=mix(l9_798,1.0-l9_798,fast::clamp(l9_800,0.0,1.0));
}
}
l9_785.x=l9_796;
float l9_801=l9_785.y;
int l9_802=l9_788.y;
if (l9_802==1)
{
l9_801=fract(l9_801);
}
else
{
if (l9_802==2)
{
float l9_803=fract(l9_801);
float l9_804=l9_801-l9_803;
float l9_805=step(0.25,fract(l9_804*0.5));
l9_801=mix(l9_803,1.0-l9_803,fast::clamp(l9_805,0.0,1.0));
}
}
l9_785.y=l9_801;
if (l9_789)
{
bool l9_806=l9_791;
bool l9_807;
if (l9_806)
{
l9_807=l9_788.x==3;
}
else
{
l9_807=l9_806;
}
float l9_808=l9_785.x;
float l9_809=l9_790.x;
float l9_810=l9_790.z;
bool l9_811=l9_807;
float l9_812=l9_795;
float l9_813=fast::clamp(l9_808,l9_809,l9_810);
float l9_814=step(abs(l9_808-l9_813),9.9999997e-06);
l9_812*=(l9_814+((1.0-float(l9_811))*(1.0-l9_814)));
l9_808=l9_813;
l9_785.x=l9_808;
l9_795=l9_812;
bool l9_815=l9_791;
bool l9_816;
if (l9_815)
{
l9_816=l9_788.y==3;
}
else
{
l9_816=l9_815;
}
float l9_817=l9_785.y;
float l9_818=l9_790.y;
float l9_819=l9_790.w;
bool l9_820=l9_816;
float l9_821=l9_795;
float l9_822=fast::clamp(l9_817,l9_818,l9_819);
float l9_823=step(abs(l9_817-l9_822),9.9999997e-06);
l9_821*=(l9_823+((1.0-float(l9_820))*(1.0-l9_823)));
l9_817=l9_822;
l9_785.y=l9_817;
l9_795=l9_821;
}
float2 l9_824=l9_785;
bool l9_825=l9_786;
float3x3 l9_826=l9_787;
if (l9_825)
{
l9_824=float2((l9_826*float3(l9_824,1.0)).xy);
}
float2 l9_827=l9_824;
l9_785=l9_827;
float l9_828=l9_785.x;
int l9_829=l9_788.x;
bool l9_830=l9_794;
float l9_831=l9_795;
if ((l9_829==0)||(l9_829==3))
{
float l9_832=l9_828;
float l9_833=0.0;
float l9_834=1.0;
bool l9_835=l9_830;
float l9_836=l9_831;
float l9_837=fast::clamp(l9_832,l9_833,l9_834);
float l9_838=step(abs(l9_832-l9_837),9.9999997e-06);
l9_836*=(l9_838+((1.0-float(l9_835))*(1.0-l9_838)));
l9_832=l9_837;
l9_828=l9_832;
l9_831=l9_836;
}
l9_785.x=l9_828;
l9_795=l9_831;
float l9_839=l9_785.y;
int l9_840=l9_788.y;
bool l9_841=l9_794;
float l9_842=l9_795;
if ((l9_840==0)||(l9_840==3))
{
float l9_843=l9_839;
float l9_844=0.0;
float l9_845=1.0;
bool l9_846=l9_841;
float l9_847=l9_842;
float l9_848=fast::clamp(l9_843,l9_844,l9_845);
float l9_849=step(abs(l9_843-l9_848),9.9999997e-06);
l9_847*=(l9_849+((1.0-float(l9_846))*(1.0-l9_849)));
l9_843=l9_848;
l9_839=l9_843;
l9_842=l9_847;
}
l9_785.y=l9_839;
l9_795=l9_842;
float2 l9_850=l9_785;
int l9_851=l9_783;
int l9_852=l9_784;
float l9_853=l9_793;
float2 l9_854=l9_850;
int l9_855=l9_851;
int l9_856=l9_852;
float3 l9_857=float3(0.0);
if (l9_855==0)
{
l9_857=float3(l9_854,0.0);
}
else
{
if (l9_855==1)
{
l9_857=float3(l9_854.x,(l9_854.y*0.5)+(0.5-(float(l9_856)*0.5)),0.0);
}
else
{
l9_857=float3(l9_854,float(l9_856));
}
}
float3 l9_858=l9_857;
float3 l9_859=l9_858;
float4 l9_860=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_859.xy,bias(l9_853));
float4 l9_861=l9_860;
if (l9_791)
{
l9_861=mix(l9_792,l9_861,float4(l9_795));
}
float4 l9_862=l9_861;
l9_776=l9_862;
float4 l9_863=l9_776;
l9_667=mix(l9_774,l9_863,float4(l9_684));
}
else
{
float2 l9_864=l9_669;
float4 l9_865=float4(0.0);
int l9_866;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_867=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_867=0;
}
else
{
l9_867=in.varStereoViewID;
}
int l9_868=l9_867;
l9_866=1-l9_868;
}
else
{
int l9_869=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_869=0;
}
else
{
l9_869=in.varStereoViewID;
}
int l9_870=l9_869;
l9_866=l9_870;
}
int l9_871=l9_866;
int l9_872=mainTextureLayout_tmp;
int l9_873=l9_871;
float2 l9_874=l9_864;
bool l9_875=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_876=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_877=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_878=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_879=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_880=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_881=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_882=0.0;
bool l9_883=l9_880&&(!l9_878);
float l9_884=1.0;
float l9_885=l9_874.x;
int l9_886=l9_877.x;
if (l9_886==1)
{
l9_885=fract(l9_885);
}
else
{
if (l9_886==2)
{
float l9_887=fract(l9_885);
float l9_888=l9_885-l9_887;
float l9_889=step(0.25,fract(l9_888*0.5));
l9_885=mix(l9_887,1.0-l9_887,fast::clamp(l9_889,0.0,1.0));
}
}
l9_874.x=l9_885;
float l9_890=l9_874.y;
int l9_891=l9_877.y;
if (l9_891==1)
{
l9_890=fract(l9_890);
}
else
{
if (l9_891==2)
{
float l9_892=fract(l9_890);
float l9_893=l9_890-l9_892;
float l9_894=step(0.25,fract(l9_893*0.5));
l9_890=mix(l9_892,1.0-l9_892,fast::clamp(l9_894,0.0,1.0));
}
}
l9_874.y=l9_890;
if (l9_878)
{
bool l9_895=l9_880;
bool l9_896;
if (l9_895)
{
l9_896=l9_877.x==3;
}
else
{
l9_896=l9_895;
}
float l9_897=l9_874.x;
float l9_898=l9_879.x;
float l9_899=l9_879.z;
bool l9_900=l9_896;
float l9_901=l9_884;
float l9_902=fast::clamp(l9_897,l9_898,l9_899);
float l9_903=step(abs(l9_897-l9_902),9.9999997e-06);
l9_901*=(l9_903+((1.0-float(l9_900))*(1.0-l9_903)));
l9_897=l9_902;
l9_874.x=l9_897;
l9_884=l9_901;
bool l9_904=l9_880;
bool l9_905;
if (l9_904)
{
l9_905=l9_877.y==3;
}
else
{
l9_905=l9_904;
}
float l9_906=l9_874.y;
float l9_907=l9_879.y;
float l9_908=l9_879.w;
bool l9_909=l9_905;
float l9_910=l9_884;
float l9_911=fast::clamp(l9_906,l9_907,l9_908);
float l9_912=step(abs(l9_906-l9_911),9.9999997e-06);
l9_910*=(l9_912+((1.0-float(l9_909))*(1.0-l9_912)));
l9_906=l9_911;
l9_874.y=l9_906;
l9_884=l9_910;
}
float2 l9_913=l9_874;
bool l9_914=l9_875;
float3x3 l9_915=l9_876;
if (l9_914)
{
l9_913=float2((l9_915*float3(l9_913,1.0)).xy);
}
float2 l9_916=l9_913;
l9_874=l9_916;
float l9_917=l9_874.x;
int l9_918=l9_877.x;
bool l9_919=l9_883;
float l9_920=l9_884;
if ((l9_918==0)||(l9_918==3))
{
float l9_921=l9_917;
float l9_922=0.0;
float l9_923=1.0;
bool l9_924=l9_919;
float l9_925=l9_920;
float l9_926=fast::clamp(l9_921,l9_922,l9_923);
float l9_927=step(abs(l9_921-l9_926),9.9999997e-06);
l9_925*=(l9_927+((1.0-float(l9_924))*(1.0-l9_927)));
l9_921=l9_926;
l9_917=l9_921;
l9_920=l9_925;
}
l9_874.x=l9_917;
l9_884=l9_920;
float l9_928=l9_874.y;
int l9_929=l9_877.y;
bool l9_930=l9_883;
float l9_931=l9_884;
if ((l9_929==0)||(l9_929==3))
{
float l9_932=l9_928;
float l9_933=0.0;
float l9_934=1.0;
bool l9_935=l9_930;
float l9_936=l9_931;
float l9_937=fast::clamp(l9_932,l9_933,l9_934);
float l9_938=step(abs(l9_932-l9_937),9.9999997e-06);
l9_936*=(l9_938+((1.0-float(l9_935))*(1.0-l9_938)));
l9_932=l9_937;
l9_928=l9_932;
l9_931=l9_936;
}
l9_874.y=l9_928;
l9_884=l9_931;
float2 l9_939=l9_874;
int l9_940=l9_872;
int l9_941=l9_873;
float l9_942=l9_882;
float2 l9_943=l9_939;
int l9_944=l9_940;
int l9_945=l9_941;
float3 l9_946=float3(0.0);
if (l9_944==0)
{
l9_946=float3(l9_943,0.0);
}
else
{
if (l9_944==1)
{
l9_946=float3(l9_943.x,(l9_943.y*0.5)+(0.5-(float(l9_945)*0.5)),0.0);
}
else
{
l9_946=float3(l9_943,float(l9_945));
}
}
float3 l9_947=l9_946;
float3 l9_948=l9_947;
float4 l9_949=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_948.xy,bias(l9_942));
float4 l9_950=l9_949;
if (l9_880)
{
l9_950=mix(l9_881,l9_950,float4(l9_884));
}
float4 l9_951=l9_950;
l9_865=l9_951;
float4 l9_952=l9_865;
l9_667=l9_952;
}
float4 l9_953=float4(0.0);
float l9_954=ceil(l9_661*N2_texSize.x)/N2_texSize.x;
float l9_955=l9_954;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_956=tempGlobals.Surface_UVCoord0;
l9_955+=(l9_956.x/N2_texSize.x);
}
float2 l9_957=float2(l9_955,0.5);
float4 l9_958=float4(0.0);
int l9_959;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_960=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_960=0;
}
else
{
l9_960=in.varStereoViewID;
}
int l9_961=l9_960;
l9_959=1-l9_961;
}
else
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
l9_959=l9_963;
}
int l9_964=l9_959;
int l9_965=colorRampTextureLayout_tmp;
int l9_966=l9_964;
float2 l9_967=l9_957;
bool l9_968=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_969=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_970=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_971=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_972=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_973=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_974=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_975=0.0;
bool l9_976=l9_973&&(!l9_971);
float l9_977=1.0;
float l9_978=l9_967.x;
int l9_979=l9_970.x;
if (l9_979==1)
{
l9_978=fract(l9_978);
}
else
{
if (l9_979==2)
{
float l9_980=fract(l9_978);
float l9_981=l9_978-l9_980;
float l9_982=step(0.25,fract(l9_981*0.5));
l9_978=mix(l9_980,1.0-l9_980,fast::clamp(l9_982,0.0,1.0));
}
}
l9_967.x=l9_978;
float l9_983=l9_967.y;
int l9_984=l9_970.y;
if (l9_984==1)
{
l9_983=fract(l9_983);
}
else
{
if (l9_984==2)
{
float l9_985=fract(l9_983);
float l9_986=l9_983-l9_985;
float l9_987=step(0.25,fract(l9_986*0.5));
l9_983=mix(l9_985,1.0-l9_985,fast::clamp(l9_987,0.0,1.0));
}
}
l9_967.y=l9_983;
if (l9_971)
{
bool l9_988=l9_973;
bool l9_989;
if (l9_988)
{
l9_989=l9_970.x==3;
}
else
{
l9_989=l9_988;
}
float l9_990=l9_967.x;
float l9_991=l9_972.x;
float l9_992=l9_972.z;
bool l9_993=l9_989;
float l9_994=l9_977;
float l9_995=fast::clamp(l9_990,l9_991,l9_992);
float l9_996=step(abs(l9_990-l9_995),9.9999997e-06);
l9_994*=(l9_996+((1.0-float(l9_993))*(1.0-l9_996)));
l9_990=l9_995;
l9_967.x=l9_990;
l9_977=l9_994;
bool l9_997=l9_973;
bool l9_998;
if (l9_997)
{
l9_998=l9_970.y==3;
}
else
{
l9_998=l9_997;
}
float l9_999=l9_967.y;
float l9_1000=l9_972.y;
float l9_1001=l9_972.w;
bool l9_1002=l9_998;
float l9_1003=l9_977;
float l9_1004=fast::clamp(l9_999,l9_1000,l9_1001);
float l9_1005=step(abs(l9_999-l9_1004),9.9999997e-06);
l9_1003*=(l9_1005+((1.0-float(l9_1002))*(1.0-l9_1005)));
l9_999=l9_1004;
l9_967.y=l9_999;
l9_977=l9_1003;
}
float2 l9_1006=l9_967;
bool l9_1007=l9_968;
float3x3 l9_1008=l9_969;
if (l9_1007)
{
l9_1006=float2((l9_1008*float3(l9_1006,1.0)).xy);
}
float2 l9_1009=l9_1006;
l9_967=l9_1009;
float l9_1010=l9_967.x;
int l9_1011=l9_970.x;
bool l9_1012=l9_976;
float l9_1013=l9_977;
if ((l9_1011==0)||(l9_1011==3))
{
float l9_1014=l9_1010;
float l9_1015=0.0;
float l9_1016=1.0;
bool l9_1017=l9_1012;
float l9_1018=l9_1013;
float l9_1019=fast::clamp(l9_1014,l9_1015,l9_1016);
float l9_1020=step(abs(l9_1014-l9_1019),9.9999997e-06);
l9_1018*=(l9_1020+((1.0-float(l9_1017))*(1.0-l9_1020)));
l9_1014=l9_1019;
l9_1010=l9_1014;
l9_1013=l9_1018;
}
l9_967.x=l9_1010;
l9_977=l9_1013;
float l9_1021=l9_967.y;
int l9_1022=l9_970.y;
bool l9_1023=l9_976;
float l9_1024=l9_977;
if ((l9_1022==0)||(l9_1022==3))
{
float l9_1025=l9_1021;
float l9_1026=0.0;
float l9_1027=1.0;
bool l9_1028=l9_1023;
float l9_1029=l9_1024;
float l9_1030=fast::clamp(l9_1025,l9_1026,l9_1027);
float l9_1031=step(abs(l9_1025-l9_1030),9.9999997e-06);
l9_1029*=(l9_1031+((1.0-float(l9_1028))*(1.0-l9_1031)));
l9_1025=l9_1030;
l9_1021=l9_1025;
l9_1024=l9_1029;
}
l9_967.y=l9_1021;
l9_977=l9_1024;
float2 l9_1032=l9_967;
int l9_1033=l9_965;
int l9_1034=l9_966;
float l9_1035=l9_975;
float2 l9_1036=l9_1032;
int l9_1037=l9_1033;
int l9_1038=l9_1034;
float3 l9_1039=float3(0.0);
if (l9_1037==0)
{
l9_1039=float3(l9_1036,0.0);
}
else
{
if (l9_1037==1)
{
l9_1039=float3(l9_1036.x,(l9_1036.y*0.5)+(0.5-(float(l9_1038)*0.5)),0.0);
}
else
{
l9_1039=float3(l9_1036,float(l9_1038));
}
}
float3 l9_1040=l9_1039;
float3 l9_1041=l9_1040;
float4 l9_1042=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_1041.xy,bias(l9_1035));
float4 l9_1043=l9_1042;
if (l9_973)
{
l9_1043=mix(l9_974,l9_1043,float4(l9_977));
}
float4 l9_1044=l9_1043;
l9_958=l9_1044;
float4 l9_1045=l9_958;
l9_953=l9_1045*N2_colorRampMult;
float4 l9_1046=float4(1.0);
float4 l9_1047=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_1048=tempGlobals.Surface_UVCoord0;
float2 l9_1049=l9_1048;
float4 l9_1050=float4(0.0);
int l9_1051;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1052=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1052=0;
}
else
{
l9_1052=in.varStereoViewID;
}
int l9_1053=l9_1052;
l9_1051=1-l9_1053;
}
else
{
int l9_1054=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1054=0;
}
else
{
l9_1054=in.varStereoViewID;
}
int l9_1055=l9_1054;
l9_1051=l9_1055;
}
int l9_1056=l9_1051;
int l9_1057=mainTextureLayout_tmp;
int l9_1058=l9_1056;
float2 l9_1059=l9_1049;
bool l9_1060=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1061=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1062=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1063=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1064=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1065=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1066=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1067=0.0;
bool l9_1068=l9_1065&&(!l9_1063);
float l9_1069=1.0;
float l9_1070=l9_1059.x;
int l9_1071=l9_1062.x;
if (l9_1071==1)
{
l9_1070=fract(l9_1070);
}
else
{
if (l9_1071==2)
{
float l9_1072=fract(l9_1070);
float l9_1073=l9_1070-l9_1072;
float l9_1074=step(0.25,fract(l9_1073*0.5));
l9_1070=mix(l9_1072,1.0-l9_1072,fast::clamp(l9_1074,0.0,1.0));
}
}
l9_1059.x=l9_1070;
float l9_1075=l9_1059.y;
int l9_1076=l9_1062.y;
if (l9_1076==1)
{
l9_1075=fract(l9_1075);
}
else
{
if (l9_1076==2)
{
float l9_1077=fract(l9_1075);
float l9_1078=l9_1075-l9_1077;
float l9_1079=step(0.25,fract(l9_1078*0.5));
l9_1075=mix(l9_1077,1.0-l9_1077,fast::clamp(l9_1079,0.0,1.0));
}
}
l9_1059.y=l9_1075;
if (l9_1063)
{
bool l9_1080=l9_1065;
bool l9_1081;
if (l9_1080)
{
l9_1081=l9_1062.x==3;
}
else
{
l9_1081=l9_1080;
}
float l9_1082=l9_1059.x;
float l9_1083=l9_1064.x;
float l9_1084=l9_1064.z;
bool l9_1085=l9_1081;
float l9_1086=l9_1069;
float l9_1087=fast::clamp(l9_1082,l9_1083,l9_1084);
float l9_1088=step(abs(l9_1082-l9_1087),9.9999997e-06);
l9_1086*=(l9_1088+((1.0-float(l9_1085))*(1.0-l9_1088)));
l9_1082=l9_1087;
l9_1059.x=l9_1082;
l9_1069=l9_1086;
bool l9_1089=l9_1065;
bool l9_1090;
if (l9_1089)
{
l9_1090=l9_1062.y==3;
}
else
{
l9_1090=l9_1089;
}
float l9_1091=l9_1059.y;
float l9_1092=l9_1064.y;
float l9_1093=l9_1064.w;
bool l9_1094=l9_1090;
float l9_1095=l9_1069;
float l9_1096=fast::clamp(l9_1091,l9_1092,l9_1093);
float l9_1097=step(abs(l9_1091-l9_1096),9.9999997e-06);
l9_1095*=(l9_1097+((1.0-float(l9_1094))*(1.0-l9_1097)));
l9_1091=l9_1096;
l9_1059.y=l9_1091;
l9_1069=l9_1095;
}
float2 l9_1098=l9_1059;
bool l9_1099=l9_1060;
float3x3 l9_1100=l9_1061;
if (l9_1099)
{
l9_1098=float2((l9_1100*float3(l9_1098,1.0)).xy);
}
float2 l9_1101=l9_1098;
l9_1059=l9_1101;
float l9_1102=l9_1059.x;
int l9_1103=l9_1062.x;
bool l9_1104=l9_1068;
float l9_1105=l9_1069;
if ((l9_1103==0)||(l9_1103==3))
{
float l9_1106=l9_1102;
float l9_1107=0.0;
float l9_1108=1.0;
bool l9_1109=l9_1104;
float l9_1110=l9_1105;
float l9_1111=fast::clamp(l9_1106,l9_1107,l9_1108);
float l9_1112=step(abs(l9_1106-l9_1111),9.9999997e-06);
l9_1110*=(l9_1112+((1.0-float(l9_1109))*(1.0-l9_1112)));
l9_1106=l9_1111;
l9_1102=l9_1106;
l9_1105=l9_1110;
}
l9_1059.x=l9_1102;
l9_1069=l9_1105;
float l9_1113=l9_1059.y;
int l9_1114=l9_1062.y;
bool l9_1115=l9_1068;
float l9_1116=l9_1069;
if ((l9_1114==0)||(l9_1114==3))
{
float l9_1117=l9_1113;
float l9_1118=0.0;
float l9_1119=1.0;
bool l9_1120=l9_1115;
float l9_1121=l9_1116;
float l9_1122=fast::clamp(l9_1117,l9_1118,l9_1119);
float l9_1123=step(abs(l9_1117-l9_1122),9.9999997e-06);
l9_1121*=(l9_1123+((1.0-float(l9_1120))*(1.0-l9_1123)));
l9_1117=l9_1122;
l9_1113=l9_1117;
l9_1116=l9_1121;
}
l9_1059.y=l9_1113;
l9_1069=l9_1116;
float2 l9_1124=l9_1059;
int l9_1125=l9_1057;
int l9_1126=l9_1058;
float l9_1127=l9_1067;
float2 l9_1128=l9_1124;
int l9_1129=l9_1125;
int l9_1130=l9_1126;
float3 l9_1131=float3(0.0);
if (l9_1129==0)
{
l9_1131=float3(l9_1128,0.0);
}
else
{
if (l9_1129==1)
{
l9_1131=float3(l9_1128.x,(l9_1128.y*0.5)+(0.5-(float(l9_1130)*0.5)),0.0);
}
else
{
l9_1131=float3(l9_1128,float(l9_1130));
}
}
float3 l9_1132=l9_1131;
float3 l9_1133=l9_1132;
float4 l9_1134=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1133.xy,bias(l9_1127));
float4 l9_1135=l9_1134;
if (l9_1065)
{
l9_1135=mix(l9_1066,l9_1135,float4(l9_1069));
}
float4 l9_1136=l9_1135;
l9_1050=l9_1136;
float4 l9_1137=l9_1050;
l9_1046=l9_1137;
float2 l9_1138=tempGlobals.Surface_UVCoord0;
N2_uv=l9_1138;
if (N2_ENABLE_FLIPBOOK)
{
l9_1046=l9_667;
N2_uv=l9_669;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_1047=l9_953;
}
}
N2_result=(l9_1046*l9_662)*l9_1047;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_1139=l9_661*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_1139,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_1140=length(N2_result.xyz);
N2_result.w=l9_1140;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_1141=N2_result.xyz*N2_result.w;
N2_result=float4(l9_1141.x,l9_1141.y,l9_1141.z,N2_result.w);
}
l9_641=N2_uv;
l9_617=l9_641;
float4 l9_1142=float4(0.0);
float2 l9_1143=l9_617;
int l9_1144;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1145=0;
}
else
{
l9_1145=in.varStereoViewID;
}
int l9_1146=l9_1145;
l9_1144=1-l9_1146;
}
else
{
int l9_1147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1147=0;
}
else
{
l9_1147=in.varStereoViewID;
}
int l9_1148=l9_1147;
l9_1144=l9_1148;
}
int l9_1149=l9_1144;
int l9_1150=normalTexLayout_tmp;
int l9_1151=l9_1149;
float2 l9_1152=l9_1143;
bool l9_1153=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1154=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1155=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1156=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1157=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1158=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1159=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1160=0.0;
bool l9_1161=l9_1158&&(!l9_1156);
float l9_1162=1.0;
float l9_1163=l9_1152.x;
int l9_1164=l9_1155.x;
if (l9_1164==1)
{
l9_1163=fract(l9_1163);
}
else
{
if (l9_1164==2)
{
float l9_1165=fract(l9_1163);
float l9_1166=l9_1163-l9_1165;
float l9_1167=step(0.25,fract(l9_1166*0.5));
l9_1163=mix(l9_1165,1.0-l9_1165,fast::clamp(l9_1167,0.0,1.0));
}
}
l9_1152.x=l9_1163;
float l9_1168=l9_1152.y;
int l9_1169=l9_1155.y;
if (l9_1169==1)
{
l9_1168=fract(l9_1168);
}
else
{
if (l9_1169==2)
{
float l9_1170=fract(l9_1168);
float l9_1171=l9_1168-l9_1170;
float l9_1172=step(0.25,fract(l9_1171*0.5));
l9_1168=mix(l9_1170,1.0-l9_1170,fast::clamp(l9_1172,0.0,1.0));
}
}
l9_1152.y=l9_1168;
if (l9_1156)
{
bool l9_1173=l9_1158;
bool l9_1174;
if (l9_1173)
{
l9_1174=l9_1155.x==3;
}
else
{
l9_1174=l9_1173;
}
float l9_1175=l9_1152.x;
float l9_1176=l9_1157.x;
float l9_1177=l9_1157.z;
bool l9_1178=l9_1174;
float l9_1179=l9_1162;
float l9_1180=fast::clamp(l9_1175,l9_1176,l9_1177);
float l9_1181=step(abs(l9_1175-l9_1180),9.9999997e-06);
l9_1179*=(l9_1181+((1.0-float(l9_1178))*(1.0-l9_1181)));
l9_1175=l9_1180;
l9_1152.x=l9_1175;
l9_1162=l9_1179;
bool l9_1182=l9_1158;
bool l9_1183;
if (l9_1182)
{
l9_1183=l9_1155.y==3;
}
else
{
l9_1183=l9_1182;
}
float l9_1184=l9_1152.y;
float l9_1185=l9_1157.y;
float l9_1186=l9_1157.w;
bool l9_1187=l9_1183;
float l9_1188=l9_1162;
float l9_1189=fast::clamp(l9_1184,l9_1185,l9_1186);
float l9_1190=step(abs(l9_1184-l9_1189),9.9999997e-06);
l9_1188*=(l9_1190+((1.0-float(l9_1187))*(1.0-l9_1190)));
l9_1184=l9_1189;
l9_1152.y=l9_1184;
l9_1162=l9_1188;
}
float2 l9_1191=l9_1152;
bool l9_1192=l9_1153;
float3x3 l9_1193=l9_1154;
if (l9_1192)
{
l9_1191=float2((l9_1193*float3(l9_1191,1.0)).xy);
}
float2 l9_1194=l9_1191;
l9_1152=l9_1194;
float l9_1195=l9_1152.x;
int l9_1196=l9_1155.x;
bool l9_1197=l9_1161;
float l9_1198=l9_1162;
if ((l9_1196==0)||(l9_1196==3))
{
float l9_1199=l9_1195;
float l9_1200=0.0;
float l9_1201=1.0;
bool l9_1202=l9_1197;
float l9_1203=l9_1198;
float l9_1204=fast::clamp(l9_1199,l9_1200,l9_1201);
float l9_1205=step(abs(l9_1199-l9_1204),9.9999997e-06);
l9_1203*=(l9_1205+((1.0-float(l9_1202))*(1.0-l9_1205)));
l9_1199=l9_1204;
l9_1195=l9_1199;
l9_1198=l9_1203;
}
l9_1152.x=l9_1195;
l9_1162=l9_1198;
float l9_1206=l9_1152.y;
int l9_1207=l9_1155.y;
bool l9_1208=l9_1161;
float l9_1209=l9_1162;
if ((l9_1207==0)||(l9_1207==3))
{
float l9_1210=l9_1206;
float l9_1211=0.0;
float l9_1212=1.0;
bool l9_1213=l9_1208;
float l9_1214=l9_1209;
float l9_1215=fast::clamp(l9_1210,l9_1211,l9_1212);
float l9_1216=step(abs(l9_1210-l9_1215),9.9999997e-06);
l9_1214*=(l9_1216+((1.0-float(l9_1213))*(1.0-l9_1216)));
l9_1210=l9_1215;
l9_1206=l9_1210;
l9_1209=l9_1214;
}
l9_1152.y=l9_1206;
l9_1162=l9_1209;
float2 l9_1217=l9_1152;
int l9_1218=l9_1150;
int l9_1219=l9_1151;
float l9_1220=l9_1160;
float2 l9_1221=l9_1217;
int l9_1222=l9_1218;
int l9_1223=l9_1219;
float3 l9_1224=float3(0.0);
if (l9_1222==0)
{
l9_1224=float3(l9_1221,0.0);
}
else
{
if (l9_1222==1)
{
l9_1224=float3(l9_1221.x,(l9_1221.y*0.5)+(0.5-(float(l9_1223)*0.5)),0.0);
}
else
{
l9_1224=float3(l9_1221,float(l9_1223));
}
}
float3 l9_1225=l9_1224;
float3 l9_1226=l9_1225;
float4 l9_1227=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1226.xy,bias(l9_1220));
float4 l9_1228=l9_1227;
if (l9_1158)
{
l9_1228=mix(l9_1159,l9_1228,float4(l9_1162));
}
float4 l9_1229=l9_1228;
float4 l9_1230=l9_1229;
float3 l9_1231=(l9_1230.xyz*1.9921875)-float3(1.0);
l9_1230=float4(l9_1231.x,l9_1231.y,l9_1231.z,l9_1230.w);
l9_1142=l9_1230;
l9_570=l9_1142.xyz;
l9_573=l9_570;
}
else
{
l9_573=l9_571;
}
l9_569=l9_573;
float l9_1232=0.0;
float l9_1233=(*sc_set0.UserUniforms).roughness;
l9_1232=l9_1233;
float l9_1234=l9_568;
float3 l9_1235=l9_569;
float l9_1236=l9_1232;
ssGlobals l9_1237=param;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1237.BumpedNormal=float3x3(float3(l9_1237.VertexTangent_WorldSpace),float3(l9_1237.VertexBinormal_WorldSpace),float3(l9_1237.VertexNormal_WorldSpace))*l9_1235;
}
l9_1234=fast::clamp(l9_1234,0.0,1.0);
float l9_1238=l9_1234;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1238<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1239=gl_FragCoord;
float2 l9_1240=floor(mod(l9_1239.xy,float2(4.0)));
float l9_1241=(mod(dot(l9_1240,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1238<l9_1241)
{
discard_fragment();
}
}
float3 l9_1242=l9_1237.PositionWS;
float3 l9_1243=l9_1237.BumpedNormal;
float l9_1244=l9_1236;
float3 l9_1245=l9_1242;
float3 l9_1246=l9_1243;
float l9_1247=l9_1244;
uint l9_1248=0u;
uint3 l9_1249=uint3(round((l9_1245-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_1249.x,l9_1249.y,l9_1249.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_1250=l9_1246;
float l9_1251=dot(abs(l9_1250),float3(1.0));
l9_1250/=float3(l9_1251);
float2 l9_1252=float2(fast::clamp(-l9_1250.z,0.0,1.0));
float2 l9_1253=l9_1250.xy+mix(-l9_1252,l9_1252,step(float2(0.0),l9_1250.xy));
uint l9_1254=as_type<uint>(half2(l9_1253));
uint2 l9_1255=uint2(l9_1254&65535u,l9_1254>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_1255.x,l9_1255.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_1248;
uint l9_1256=uint(fast::clamp(l9_1247,0.0,1.0)*1000.0);
l9_1256 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_1256;
}
else
{
float3 l9_1257=float3(0.0);
float3 l9_1258=(*sc_set0.UserUniforms).colorStart;
l9_1257=l9_1258;
float3 l9_1259=float3(0.0);
float3 l9_1260=(*sc_set0.UserUniforms).colorEnd;
l9_1259=l9_1260;
float3 l9_1261=float3(0.0);
float3 l9_1262=(*sc_set0.UserUniforms).colorMinStart;
l9_1261=l9_1262;
float3 l9_1263=float3(0.0);
float3 l9_1264=(*sc_set0.UserUniforms).colorMinEnd;
l9_1263=l9_1264;
float3 l9_1265=float3(0.0);
float3 l9_1266=(*sc_set0.UserUniforms).colorMaxStart;
l9_1265=l9_1266;
float3 l9_1267=float3(0.0);
float3 l9_1268=(*sc_set0.UserUniforms).colorMaxEnd;
l9_1267=l9_1268;
float l9_1269=0.0;
float l9_1270=(*sc_set0.UserUniforms).alphaStart;
l9_1269=l9_1270;
float l9_1271=0.0;
float l9_1272=(*sc_set0.UserUniforms).alphaEnd;
l9_1271=l9_1272;
float l9_1273=0.0;
float l9_1274=(*sc_set0.UserUniforms).alphaMinStart;
l9_1273=l9_1274;
float l9_1275=0.0;
float l9_1276=(*sc_set0.UserUniforms).alphaMinEnd;
l9_1275=l9_1276;
float l9_1277=0.0;
float l9_1278=(*sc_set0.UserUniforms).alphaMaxStart;
l9_1277=l9_1278;
float l9_1279=0.0;
float l9_1280=(*sc_set0.UserUniforms).alphaMaxEnd;
l9_1279=l9_1280;
float l9_1281=0.0;
float l9_1282=(*sc_set0.UserUniforms).alphaDissolveMult;
l9_1281=l9_1282;
float l9_1283=0.0;
l9_1283=in.Interpolator0.x;
float l9_1284=0.0;
float l9_1285=(*sc_set0.UserUniforms).numValidFrames;
l9_1284=l9_1285;
float2 l9_1286=float2(0.0);
float2 l9_1287=(*sc_set0.UserUniforms).gridSize;
l9_1286=l9_1287;
float l9_1288=0.0;
float l9_1289=(*sc_set0.UserUniforms).flipBookSpeedMult;
l9_1288=l9_1289;
float l9_1290=0.0;
float l9_1291=(*sc_set0.UserUniforms).flipBookRandomStart;
l9_1290=l9_1291;
float2 l9_1292=float2(0.0);
float2 l9_1293=(*sc_set0.UserUniforms).colorRampTextureSize.xy;
l9_1292=l9_1293;
float4 l9_1294=float4(0.0);
float4 l9_1295=(*sc_set0.UserUniforms).colorRampMult;
l9_1294=l9_1295;
float4 l9_1296=float4(0.0);
float4 l9_1297;
l9_1297.x=in.Interpolator0.y;
l9_1297.y=in.Interpolator0.z;
l9_1297.z=in.Interpolator0.w;
l9_1297.w=in.Interpolator1.x;
l9_1296=l9_1297;
float l9_1298=0.0;
float l9_1299=(*sc_set0.UserUniforms).externalSeed;
l9_1298=l9_1299;
float3 l9_1300=l9_1257;
float3 l9_1301=l9_1259;
float3 l9_1302=l9_1261;
float3 l9_1303=l9_1263;
float3 l9_1304=l9_1265;
float3 l9_1305=l9_1267;
float l9_1306=l9_1269;
float l9_1307=l9_1271;
float l9_1308=l9_1273;
float l9_1309=l9_1275;
float l9_1310=l9_1277;
float l9_1311=l9_1279;
float l9_1312=l9_1281;
float l9_1313=l9_1283;
float l9_1314=l9_1284;
float2 l9_1315=l9_1286;
float l9_1316=l9_1288;
float l9_1317=l9_1290;
float2 l9_1318=l9_1292;
float4 l9_1319=l9_1294;
float4 l9_1320=l9_1296;
float l9_1321=l9_1298;
ssGlobals l9_1322=param;
tempGlobals=l9_1322;
N2_colorStart=l9_1300;
N2_colorEnd=l9_1301;
N2_ENABLE_COLORMINMAX=(int(COLORMINMAX_tmp)!=0);
N2_colorMinStart=l9_1302;
N2_colorMinEnd=l9_1303;
N2_colorMaxStart=l9_1304;
N2_colorMaxEnd=l9_1305;
N2_ENABLE_COLORMONOMIN=(int(COLORMONOMIN_tmp)!=0);
N2_alphaStart=l9_1306;
N2_alphaEnd=l9_1307;
N2_ENABLE_ALPHAMINMAX=(int(ALPHAMINMAX_tmp)!=0);
N2_alphaMinStart=l9_1308;
N2_alphaMinEnd=l9_1309;
N2_alphaMaxStart=l9_1310;
N2_alphaMaxEnd=l9_1311;
N2_ENABLE_ALPHADISSOLVE=(int(ALPHADISSOLVE_tmp)!=0);
N2_alphaDissolveMult=l9_1312;
N2_ENABLE_PREMULTIPLIEDCOLOR=(int(PREMULTIPLIEDCOLOR_tmp)!=0);
N2_ENABLE_BLACKASALPHA=(int(BLACKASALPHA_tmp)!=0);
N2_ENABLE_SCREENFADE=(int(SCREENFADE_tmp)!=0);
N2_nearCameraFade=l9_1313;
N2_ENABLE_FLIPBOOK=(int(FLIPBOOK_tmp)!=0);
N2_numValidFrames=l9_1314;
N2_gridSize=l9_1315;
N2_flipBookSpeedMult=l9_1316;
N2_flipBookRandomStart=l9_1317;
N2_ENABLE_FLIPBOOKBLEND=(int(FLIPBOOKBLEND_tmp)!=0);
N2_ENABLE_FLIPBOOKBYLIFE=(int(FLIPBOOKBYLIFE_tmp)!=0);
N2_ENABLE_COLORRAMP=(int(COLORRAMP_tmp)!=0);
N2_texSize=l9_1318;
N2_colorRampMult=l9_1319;
N2_ENABLE_NORANDOFFSET=(int(NORANDOFFSET_tmp)!=0);
N2_ENABLE_BASETEXTURE=(int(BASETEXTURE_tmp)!=0);
N2_timeValuesIn=l9_1320;
N2_ENABLE_WORLDPOSSEED=(int(WORLDPOSSEED_tmp)!=0);
N2_externalSeed=l9_1321;
float l9_1323=0.0;
if (N2_ENABLE_WORLDPOSSEED)
{
float4x4 l9_1324=(*sc_set0.UserUniforms).sc_ModelMatrix;
l9_1323=length(float4(1.0)*l9_1324);
}
N2_globalSeed=N2_externalSeed+l9_1323;
float l9_1325=2000.0;
int l9_1326=0;
l9_1326=int(tempGlobals.gInstanceID+0.5);
int l9_1327=l9_1326;
float l9_1328=float(l9_1327);
float2 l9_1329=float2(mod(l9_1328,l9_1325),floor(l9_1328/l9_1325));
l9_1329/=float2(l9_1325);
float2 l9_1330=l9_1329;
float l9_1331=dot(l9_1330,float2(0.38253,0.42662001));
float3 l9_1332=float3(0.457831,0.62343299,0.97625297)*l9_1331;
l9_1332=sin(l9_1332)*float3(479.371,389.53101,513.03497);
l9_1332=fract(l9_1332);
l9_1332=floor(l9_1332*10000.0)*9.9999997e-05;
float3 l9_1333=l9_1332;
float3 l9_1334=l9_1333;
N2_particleSeed=l9_1334;
float l9_1335=N2_particleSeed.x;
float l9_1336=N2_particleSeed.y;
float l9_1337=N2_particleSeed.z;
float3 l9_1338=fract((float3(l9_1335,l9_1336,l9_1337)*27.21883)+float3(N2_globalSeed));
if (N2_ENABLE_COLORMONOMIN)
{
l9_1338=fract((float3(l9_1335,l9_1335,l9_1335)*27.21883)+float3(N2_globalSeed));
}
float l9_1339=fract((N2_particleSeed.x*3121.3333)+N2_globalSeed);
float l9_1340=fract((N2_particleSeed.y*13.2234)+N2_globalSeed);
float l9_1341=fract((N2_particleSeed.z*3.5358)+N2_globalSeed);
float l9_1342=N2_timeValuesIn.w;
float4 l9_1343=float4(0.0);
float3 l9_1344=float3(0.0);
float3 l9_1345=float3(0.0);
float l9_1346=0.0;
float l9_1347=0.0;
if (N2_ENABLE_COLORMINMAX)
{
l9_1344=mix(N2_colorMinStart,N2_colorMaxStart,l9_1338);
l9_1345=mix(N2_colorMinEnd,N2_colorMaxEnd,l9_1338);
}
else
{
l9_1344=N2_colorStart;
l9_1345=N2_colorEnd;
}
if (N2_ENABLE_ALPHAMINMAX)
{
l9_1346=mix(N2_alphaMinStart,N2_alphaMaxStart,l9_1339);
l9_1347=mix(N2_alphaMinEnd,N2_alphaMaxEnd,l9_1339);
}
else
{
l9_1346=N2_alphaStart;
l9_1347=N2_alphaEnd;
}
l9_1344=mix(l9_1344,l9_1345,float3(l9_1342));
l9_1346=mix(l9_1346,l9_1347,l9_1342);
l9_1343=float4(l9_1344,l9_1346);
float4 l9_1348=float4(0.0);
float2 l9_1349=tempGlobals.Surface_UVCoord0;
float2 l9_1350=l9_1349;
float2 l9_1351=tempGlobals.Surface_UVCoord1;
float2 l9_1352=l9_1351;
float l9_1353=fast::max(N2_timeValuesIn.x,0.0099999998);
float l9_1354=fast::max(N2_timeValuesIn.y,0.0099999998);
float l9_1355=N2_timeValuesIn.z;
if (N2_ENABLE_FLIPBOOKBYLIFE)
{
float l9_1356=mix(l9_1353,l9_1354,l9_1341);
l9_1355=N2_timeValuesIn.z/l9_1356;
}
float l9_1357=mix(0.0,N2_flipBookRandomStart,l9_1340);
float2 l9_1358=l9_1350/N2_gridSize;
float l9_1359=(l9_1355*N2_flipBookSpeedMult)+l9_1357;
l9_1359=mod(l9_1359,N2_numValidFrames);
float l9_1360=floor(l9_1359)*(1.0/N2_gridSize.x);
float l9_1361=mod(floor((-l9_1359)/N2_gridSize.x),N2_gridSize.y)*(1.0/N2_gridSize.y);
float l9_1362=l9_1359+1.0;
l9_1362=mod(l9_1362,N2_numValidFrames);
float l9_1363=floor(l9_1362)*(1.0/N2_gridSize.x);
float l9_1364=floor((-l9_1362)*(1.0/N2_gridSize.x))*(1.0/N2_gridSize.y);
float l9_1365=fract(l9_1359);
l9_1350=l9_1358+float2(l9_1360,l9_1361);
l9_1352=l9_1358+float2(l9_1363,l9_1364);
if (N2_ENABLE_FLIPBOOKBLEND)
{
float2 l9_1366=l9_1350;
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
float4 l9_1455=l9_1454;
float2 l9_1456=l9_1352;
float4 l9_1457=float4(0.0);
int l9_1458;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1459=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1459=0;
}
else
{
l9_1459=in.varStereoViewID;
}
int l9_1460=l9_1459;
l9_1458=1-l9_1460;
}
else
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
l9_1458=l9_1462;
}
int l9_1463=l9_1458;
int l9_1464=mainTextureLayout_tmp;
int l9_1465=l9_1463;
float2 l9_1466=l9_1456;
bool l9_1467=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1468=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1469=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1470=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1471=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1472=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1473=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1474=0.0;
bool l9_1475=l9_1472&&(!l9_1470);
float l9_1476=1.0;
float l9_1477=l9_1466.x;
int l9_1478=l9_1469.x;
if (l9_1478==1)
{
l9_1477=fract(l9_1477);
}
else
{
if (l9_1478==2)
{
float l9_1479=fract(l9_1477);
float l9_1480=l9_1477-l9_1479;
float l9_1481=step(0.25,fract(l9_1480*0.5));
l9_1477=mix(l9_1479,1.0-l9_1479,fast::clamp(l9_1481,0.0,1.0));
}
}
l9_1466.x=l9_1477;
float l9_1482=l9_1466.y;
int l9_1483=l9_1469.y;
if (l9_1483==1)
{
l9_1482=fract(l9_1482);
}
else
{
if (l9_1483==2)
{
float l9_1484=fract(l9_1482);
float l9_1485=l9_1482-l9_1484;
float l9_1486=step(0.25,fract(l9_1485*0.5));
l9_1482=mix(l9_1484,1.0-l9_1484,fast::clamp(l9_1486,0.0,1.0));
}
}
l9_1466.y=l9_1482;
if (l9_1470)
{
bool l9_1487=l9_1472;
bool l9_1488;
if (l9_1487)
{
l9_1488=l9_1469.x==3;
}
else
{
l9_1488=l9_1487;
}
float l9_1489=l9_1466.x;
float l9_1490=l9_1471.x;
float l9_1491=l9_1471.z;
bool l9_1492=l9_1488;
float l9_1493=l9_1476;
float l9_1494=fast::clamp(l9_1489,l9_1490,l9_1491);
float l9_1495=step(abs(l9_1489-l9_1494),9.9999997e-06);
l9_1493*=(l9_1495+((1.0-float(l9_1492))*(1.0-l9_1495)));
l9_1489=l9_1494;
l9_1466.x=l9_1489;
l9_1476=l9_1493;
bool l9_1496=l9_1472;
bool l9_1497;
if (l9_1496)
{
l9_1497=l9_1469.y==3;
}
else
{
l9_1497=l9_1496;
}
float l9_1498=l9_1466.y;
float l9_1499=l9_1471.y;
float l9_1500=l9_1471.w;
bool l9_1501=l9_1497;
float l9_1502=l9_1476;
float l9_1503=fast::clamp(l9_1498,l9_1499,l9_1500);
float l9_1504=step(abs(l9_1498-l9_1503),9.9999997e-06);
l9_1502*=(l9_1504+((1.0-float(l9_1501))*(1.0-l9_1504)));
l9_1498=l9_1503;
l9_1466.y=l9_1498;
l9_1476=l9_1502;
}
float2 l9_1505=l9_1466;
bool l9_1506=l9_1467;
float3x3 l9_1507=l9_1468;
if (l9_1506)
{
l9_1505=float2((l9_1507*float3(l9_1505,1.0)).xy);
}
float2 l9_1508=l9_1505;
l9_1466=l9_1508;
float l9_1509=l9_1466.x;
int l9_1510=l9_1469.x;
bool l9_1511=l9_1475;
float l9_1512=l9_1476;
if ((l9_1510==0)||(l9_1510==3))
{
float l9_1513=l9_1509;
float l9_1514=0.0;
float l9_1515=1.0;
bool l9_1516=l9_1511;
float l9_1517=l9_1512;
float l9_1518=fast::clamp(l9_1513,l9_1514,l9_1515);
float l9_1519=step(abs(l9_1513-l9_1518),9.9999997e-06);
l9_1517*=(l9_1519+((1.0-float(l9_1516))*(1.0-l9_1519)));
l9_1513=l9_1518;
l9_1509=l9_1513;
l9_1512=l9_1517;
}
l9_1466.x=l9_1509;
l9_1476=l9_1512;
float l9_1520=l9_1466.y;
int l9_1521=l9_1469.y;
bool l9_1522=l9_1475;
float l9_1523=l9_1476;
if ((l9_1521==0)||(l9_1521==3))
{
float l9_1524=l9_1520;
float l9_1525=0.0;
float l9_1526=1.0;
bool l9_1527=l9_1522;
float l9_1528=l9_1523;
float l9_1529=fast::clamp(l9_1524,l9_1525,l9_1526);
float l9_1530=step(abs(l9_1524-l9_1529),9.9999997e-06);
l9_1528*=(l9_1530+((1.0-float(l9_1527))*(1.0-l9_1530)));
l9_1524=l9_1529;
l9_1520=l9_1524;
l9_1523=l9_1528;
}
l9_1466.y=l9_1520;
l9_1476=l9_1523;
float2 l9_1531=l9_1466;
int l9_1532=l9_1464;
int l9_1533=l9_1465;
float l9_1534=l9_1474;
float2 l9_1535=l9_1531;
int l9_1536=l9_1532;
int l9_1537=l9_1533;
float3 l9_1538=float3(0.0);
if (l9_1536==0)
{
l9_1538=float3(l9_1535,0.0);
}
else
{
if (l9_1536==1)
{
l9_1538=float3(l9_1535.x,(l9_1535.y*0.5)+(0.5-(float(l9_1537)*0.5)),0.0);
}
else
{
l9_1538=float3(l9_1535,float(l9_1537));
}
}
float3 l9_1539=l9_1538;
float3 l9_1540=l9_1539;
float4 l9_1541=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1540.xy,bias(l9_1534));
float4 l9_1542=l9_1541;
if (l9_1472)
{
l9_1542=mix(l9_1473,l9_1542,float4(l9_1476));
}
float4 l9_1543=l9_1542;
l9_1457=l9_1543;
float4 l9_1544=l9_1457;
l9_1348=mix(l9_1455,l9_1544,float4(l9_1365));
}
else
{
float2 l9_1545=l9_1350;
float4 l9_1546=float4(0.0);
int l9_1547;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1548=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1548=0;
}
else
{
l9_1548=in.varStereoViewID;
}
int l9_1549=l9_1548;
l9_1547=1-l9_1549;
}
else
{
int l9_1550=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1550=0;
}
else
{
l9_1550=in.varStereoViewID;
}
int l9_1551=l9_1550;
l9_1547=l9_1551;
}
int l9_1552=l9_1547;
int l9_1553=mainTextureLayout_tmp;
int l9_1554=l9_1552;
float2 l9_1555=l9_1545;
bool l9_1556=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1557=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1558=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1559=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1560=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1561=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1562=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1563=0.0;
bool l9_1564=l9_1561&&(!l9_1559);
float l9_1565=1.0;
float l9_1566=l9_1555.x;
int l9_1567=l9_1558.x;
if (l9_1567==1)
{
l9_1566=fract(l9_1566);
}
else
{
if (l9_1567==2)
{
float l9_1568=fract(l9_1566);
float l9_1569=l9_1566-l9_1568;
float l9_1570=step(0.25,fract(l9_1569*0.5));
l9_1566=mix(l9_1568,1.0-l9_1568,fast::clamp(l9_1570,0.0,1.0));
}
}
l9_1555.x=l9_1566;
float l9_1571=l9_1555.y;
int l9_1572=l9_1558.y;
if (l9_1572==1)
{
l9_1571=fract(l9_1571);
}
else
{
if (l9_1572==2)
{
float l9_1573=fract(l9_1571);
float l9_1574=l9_1571-l9_1573;
float l9_1575=step(0.25,fract(l9_1574*0.5));
l9_1571=mix(l9_1573,1.0-l9_1573,fast::clamp(l9_1575,0.0,1.0));
}
}
l9_1555.y=l9_1571;
if (l9_1559)
{
bool l9_1576=l9_1561;
bool l9_1577;
if (l9_1576)
{
l9_1577=l9_1558.x==3;
}
else
{
l9_1577=l9_1576;
}
float l9_1578=l9_1555.x;
float l9_1579=l9_1560.x;
float l9_1580=l9_1560.z;
bool l9_1581=l9_1577;
float l9_1582=l9_1565;
float l9_1583=fast::clamp(l9_1578,l9_1579,l9_1580);
float l9_1584=step(abs(l9_1578-l9_1583),9.9999997e-06);
l9_1582*=(l9_1584+((1.0-float(l9_1581))*(1.0-l9_1584)));
l9_1578=l9_1583;
l9_1555.x=l9_1578;
l9_1565=l9_1582;
bool l9_1585=l9_1561;
bool l9_1586;
if (l9_1585)
{
l9_1586=l9_1558.y==3;
}
else
{
l9_1586=l9_1585;
}
float l9_1587=l9_1555.y;
float l9_1588=l9_1560.y;
float l9_1589=l9_1560.w;
bool l9_1590=l9_1586;
float l9_1591=l9_1565;
float l9_1592=fast::clamp(l9_1587,l9_1588,l9_1589);
float l9_1593=step(abs(l9_1587-l9_1592),9.9999997e-06);
l9_1591*=(l9_1593+((1.0-float(l9_1590))*(1.0-l9_1593)));
l9_1587=l9_1592;
l9_1555.y=l9_1587;
l9_1565=l9_1591;
}
float2 l9_1594=l9_1555;
bool l9_1595=l9_1556;
float3x3 l9_1596=l9_1557;
if (l9_1595)
{
l9_1594=float2((l9_1596*float3(l9_1594,1.0)).xy);
}
float2 l9_1597=l9_1594;
l9_1555=l9_1597;
float l9_1598=l9_1555.x;
int l9_1599=l9_1558.x;
bool l9_1600=l9_1564;
float l9_1601=l9_1565;
if ((l9_1599==0)||(l9_1599==3))
{
float l9_1602=l9_1598;
float l9_1603=0.0;
float l9_1604=1.0;
bool l9_1605=l9_1600;
float l9_1606=l9_1601;
float l9_1607=fast::clamp(l9_1602,l9_1603,l9_1604);
float l9_1608=step(abs(l9_1602-l9_1607),9.9999997e-06);
l9_1606*=(l9_1608+((1.0-float(l9_1605))*(1.0-l9_1608)));
l9_1602=l9_1607;
l9_1598=l9_1602;
l9_1601=l9_1606;
}
l9_1555.x=l9_1598;
l9_1565=l9_1601;
float l9_1609=l9_1555.y;
int l9_1610=l9_1558.y;
bool l9_1611=l9_1564;
float l9_1612=l9_1565;
if ((l9_1610==0)||(l9_1610==3))
{
float l9_1613=l9_1609;
float l9_1614=0.0;
float l9_1615=1.0;
bool l9_1616=l9_1611;
float l9_1617=l9_1612;
float l9_1618=fast::clamp(l9_1613,l9_1614,l9_1615);
float l9_1619=step(abs(l9_1613-l9_1618),9.9999997e-06);
l9_1617*=(l9_1619+((1.0-float(l9_1616))*(1.0-l9_1619)));
l9_1613=l9_1618;
l9_1609=l9_1613;
l9_1612=l9_1617;
}
l9_1555.y=l9_1609;
l9_1565=l9_1612;
float2 l9_1620=l9_1555;
int l9_1621=l9_1553;
int l9_1622=l9_1554;
float l9_1623=l9_1563;
float2 l9_1624=l9_1620;
int l9_1625=l9_1621;
int l9_1626=l9_1622;
float3 l9_1627=float3(0.0);
if (l9_1625==0)
{
l9_1627=float3(l9_1624,0.0);
}
else
{
if (l9_1625==1)
{
l9_1627=float3(l9_1624.x,(l9_1624.y*0.5)+(0.5-(float(l9_1626)*0.5)),0.0);
}
else
{
l9_1627=float3(l9_1624,float(l9_1626));
}
}
float3 l9_1628=l9_1627;
float3 l9_1629=l9_1628;
float4 l9_1630=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1629.xy,bias(l9_1623));
float4 l9_1631=l9_1630;
if (l9_1561)
{
l9_1631=mix(l9_1562,l9_1631,float4(l9_1565));
}
float4 l9_1632=l9_1631;
l9_1546=l9_1632;
float4 l9_1633=l9_1546;
l9_1348=l9_1633;
}
float4 l9_1634=float4(0.0);
float l9_1635=ceil(l9_1342*N2_texSize.x)/N2_texSize.x;
float l9_1636=l9_1635;
if (N2_ENABLE_NORANDOFFSET)
{
float2 l9_1637=tempGlobals.Surface_UVCoord0;
l9_1636+=(l9_1637.x/N2_texSize.x);
}
float2 l9_1638=float2(l9_1636,0.5);
float4 l9_1639=float4(0.0);
int l9_1640;
if ((int(colorRampTextureHasSwappedViews_tmp)!=0))
{
int l9_1641=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1641=0;
}
else
{
l9_1641=in.varStereoViewID;
}
int l9_1642=l9_1641;
l9_1640=1-l9_1642;
}
else
{
int l9_1643=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1643=0;
}
else
{
l9_1643=in.varStereoViewID;
}
int l9_1644=l9_1643;
l9_1640=l9_1644;
}
int l9_1645=l9_1640;
int l9_1646=colorRampTextureLayout_tmp;
int l9_1647=l9_1645;
float2 l9_1648=l9_1638;
bool l9_1649=(int(SC_USE_UV_TRANSFORM_colorRampTexture_tmp)!=0);
float3x3 l9_1650=(*sc_set0.UserUniforms).colorRampTextureTransform;
int2 l9_1651=int2(SC_SOFTWARE_WRAP_MODE_U_colorRampTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRampTexture_tmp);
bool l9_1652=(int(SC_USE_UV_MIN_MAX_colorRampTexture_tmp)!=0);
float4 l9_1653=(*sc_set0.UserUniforms).colorRampTextureUvMinMax;
bool l9_1654=(int(SC_USE_CLAMP_TO_BORDER_colorRampTexture_tmp)!=0);
float4 l9_1655=(*sc_set0.UserUniforms).colorRampTextureBorderColor;
float l9_1656=0.0;
bool l9_1657=l9_1654&&(!l9_1652);
float l9_1658=1.0;
float l9_1659=l9_1648.x;
int l9_1660=l9_1651.x;
if (l9_1660==1)
{
l9_1659=fract(l9_1659);
}
else
{
if (l9_1660==2)
{
float l9_1661=fract(l9_1659);
float l9_1662=l9_1659-l9_1661;
float l9_1663=step(0.25,fract(l9_1662*0.5));
l9_1659=mix(l9_1661,1.0-l9_1661,fast::clamp(l9_1663,0.0,1.0));
}
}
l9_1648.x=l9_1659;
float l9_1664=l9_1648.y;
int l9_1665=l9_1651.y;
if (l9_1665==1)
{
l9_1664=fract(l9_1664);
}
else
{
if (l9_1665==2)
{
float l9_1666=fract(l9_1664);
float l9_1667=l9_1664-l9_1666;
float l9_1668=step(0.25,fract(l9_1667*0.5));
l9_1664=mix(l9_1666,1.0-l9_1666,fast::clamp(l9_1668,0.0,1.0));
}
}
l9_1648.y=l9_1664;
if (l9_1652)
{
bool l9_1669=l9_1654;
bool l9_1670;
if (l9_1669)
{
l9_1670=l9_1651.x==3;
}
else
{
l9_1670=l9_1669;
}
float l9_1671=l9_1648.x;
float l9_1672=l9_1653.x;
float l9_1673=l9_1653.z;
bool l9_1674=l9_1670;
float l9_1675=l9_1658;
float l9_1676=fast::clamp(l9_1671,l9_1672,l9_1673);
float l9_1677=step(abs(l9_1671-l9_1676),9.9999997e-06);
l9_1675*=(l9_1677+((1.0-float(l9_1674))*(1.0-l9_1677)));
l9_1671=l9_1676;
l9_1648.x=l9_1671;
l9_1658=l9_1675;
bool l9_1678=l9_1654;
bool l9_1679;
if (l9_1678)
{
l9_1679=l9_1651.y==3;
}
else
{
l9_1679=l9_1678;
}
float l9_1680=l9_1648.y;
float l9_1681=l9_1653.y;
float l9_1682=l9_1653.w;
bool l9_1683=l9_1679;
float l9_1684=l9_1658;
float l9_1685=fast::clamp(l9_1680,l9_1681,l9_1682);
float l9_1686=step(abs(l9_1680-l9_1685),9.9999997e-06);
l9_1684*=(l9_1686+((1.0-float(l9_1683))*(1.0-l9_1686)));
l9_1680=l9_1685;
l9_1648.y=l9_1680;
l9_1658=l9_1684;
}
float2 l9_1687=l9_1648;
bool l9_1688=l9_1649;
float3x3 l9_1689=l9_1650;
if (l9_1688)
{
l9_1687=float2((l9_1689*float3(l9_1687,1.0)).xy);
}
float2 l9_1690=l9_1687;
l9_1648=l9_1690;
float l9_1691=l9_1648.x;
int l9_1692=l9_1651.x;
bool l9_1693=l9_1657;
float l9_1694=l9_1658;
if ((l9_1692==0)||(l9_1692==3))
{
float l9_1695=l9_1691;
float l9_1696=0.0;
float l9_1697=1.0;
bool l9_1698=l9_1693;
float l9_1699=l9_1694;
float l9_1700=fast::clamp(l9_1695,l9_1696,l9_1697);
float l9_1701=step(abs(l9_1695-l9_1700),9.9999997e-06);
l9_1699*=(l9_1701+((1.0-float(l9_1698))*(1.0-l9_1701)));
l9_1695=l9_1700;
l9_1691=l9_1695;
l9_1694=l9_1699;
}
l9_1648.x=l9_1691;
l9_1658=l9_1694;
float l9_1702=l9_1648.y;
int l9_1703=l9_1651.y;
bool l9_1704=l9_1657;
float l9_1705=l9_1658;
if ((l9_1703==0)||(l9_1703==3))
{
float l9_1706=l9_1702;
float l9_1707=0.0;
float l9_1708=1.0;
bool l9_1709=l9_1704;
float l9_1710=l9_1705;
float l9_1711=fast::clamp(l9_1706,l9_1707,l9_1708);
float l9_1712=step(abs(l9_1706-l9_1711),9.9999997e-06);
l9_1710*=(l9_1712+((1.0-float(l9_1709))*(1.0-l9_1712)));
l9_1706=l9_1711;
l9_1702=l9_1706;
l9_1705=l9_1710;
}
l9_1648.y=l9_1702;
l9_1658=l9_1705;
float2 l9_1713=l9_1648;
int l9_1714=l9_1646;
int l9_1715=l9_1647;
float l9_1716=l9_1656;
float2 l9_1717=l9_1713;
int l9_1718=l9_1714;
int l9_1719=l9_1715;
float3 l9_1720=float3(0.0);
if (l9_1718==0)
{
l9_1720=float3(l9_1717,0.0);
}
else
{
if (l9_1718==1)
{
l9_1720=float3(l9_1717.x,(l9_1717.y*0.5)+(0.5-(float(l9_1719)*0.5)),0.0);
}
else
{
l9_1720=float3(l9_1717,float(l9_1719));
}
}
float3 l9_1721=l9_1720;
float3 l9_1722=l9_1721;
float4 l9_1723=sc_set0.colorRampTexture.sample(sc_set0.colorRampTextureSmpSC,l9_1722.xy,bias(l9_1716));
float4 l9_1724=l9_1723;
if (l9_1654)
{
l9_1724=mix(l9_1655,l9_1724,float4(l9_1658));
}
float4 l9_1725=l9_1724;
l9_1639=l9_1725;
float4 l9_1726=l9_1639;
l9_1634=l9_1726*N2_colorRampMult;
float4 l9_1727=float4(1.0);
float4 l9_1728=float4(1.0);
if (N2_ENABLE_BASETEXTURE)
{
float2 l9_1729=tempGlobals.Surface_UVCoord0;
float2 l9_1730=l9_1729;
float4 l9_1731=float4(0.0);
int l9_1732;
if ((int(mainTextureHasSwappedViews_tmp)!=0))
{
int l9_1733=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1733=0;
}
else
{
l9_1733=in.varStereoViewID;
}
int l9_1734=l9_1733;
l9_1732=1-l9_1734;
}
else
{
int l9_1735=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1735=0;
}
else
{
l9_1735=in.varStereoViewID;
}
int l9_1736=l9_1735;
l9_1732=l9_1736;
}
int l9_1737=l9_1732;
int l9_1738=mainTextureLayout_tmp;
int l9_1739=l9_1737;
float2 l9_1740=l9_1730;
bool l9_1741=(int(SC_USE_UV_TRANSFORM_mainTexture_tmp)!=0);
float3x3 l9_1742=(*sc_set0.UserUniforms).mainTextureTransform;
int2 l9_1743=int2(SC_SOFTWARE_WRAP_MODE_U_mainTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_mainTexture_tmp);
bool l9_1744=(int(SC_USE_UV_MIN_MAX_mainTexture_tmp)!=0);
float4 l9_1745=(*sc_set0.UserUniforms).mainTextureUvMinMax;
bool l9_1746=(int(SC_USE_CLAMP_TO_BORDER_mainTexture_tmp)!=0);
float4 l9_1747=(*sc_set0.UserUniforms).mainTextureBorderColor;
float l9_1748=0.0;
bool l9_1749=l9_1746&&(!l9_1744);
float l9_1750=1.0;
float l9_1751=l9_1740.x;
int l9_1752=l9_1743.x;
if (l9_1752==1)
{
l9_1751=fract(l9_1751);
}
else
{
if (l9_1752==2)
{
float l9_1753=fract(l9_1751);
float l9_1754=l9_1751-l9_1753;
float l9_1755=step(0.25,fract(l9_1754*0.5));
l9_1751=mix(l9_1753,1.0-l9_1753,fast::clamp(l9_1755,0.0,1.0));
}
}
l9_1740.x=l9_1751;
float l9_1756=l9_1740.y;
int l9_1757=l9_1743.y;
if (l9_1757==1)
{
l9_1756=fract(l9_1756);
}
else
{
if (l9_1757==2)
{
float l9_1758=fract(l9_1756);
float l9_1759=l9_1756-l9_1758;
float l9_1760=step(0.25,fract(l9_1759*0.5));
l9_1756=mix(l9_1758,1.0-l9_1758,fast::clamp(l9_1760,0.0,1.0));
}
}
l9_1740.y=l9_1756;
if (l9_1744)
{
bool l9_1761=l9_1746;
bool l9_1762;
if (l9_1761)
{
l9_1762=l9_1743.x==3;
}
else
{
l9_1762=l9_1761;
}
float l9_1763=l9_1740.x;
float l9_1764=l9_1745.x;
float l9_1765=l9_1745.z;
bool l9_1766=l9_1762;
float l9_1767=l9_1750;
float l9_1768=fast::clamp(l9_1763,l9_1764,l9_1765);
float l9_1769=step(abs(l9_1763-l9_1768),9.9999997e-06);
l9_1767*=(l9_1769+((1.0-float(l9_1766))*(1.0-l9_1769)));
l9_1763=l9_1768;
l9_1740.x=l9_1763;
l9_1750=l9_1767;
bool l9_1770=l9_1746;
bool l9_1771;
if (l9_1770)
{
l9_1771=l9_1743.y==3;
}
else
{
l9_1771=l9_1770;
}
float l9_1772=l9_1740.y;
float l9_1773=l9_1745.y;
float l9_1774=l9_1745.w;
bool l9_1775=l9_1771;
float l9_1776=l9_1750;
float l9_1777=fast::clamp(l9_1772,l9_1773,l9_1774);
float l9_1778=step(abs(l9_1772-l9_1777),9.9999997e-06);
l9_1776*=(l9_1778+((1.0-float(l9_1775))*(1.0-l9_1778)));
l9_1772=l9_1777;
l9_1740.y=l9_1772;
l9_1750=l9_1776;
}
float2 l9_1779=l9_1740;
bool l9_1780=l9_1741;
float3x3 l9_1781=l9_1742;
if (l9_1780)
{
l9_1779=float2((l9_1781*float3(l9_1779,1.0)).xy);
}
float2 l9_1782=l9_1779;
l9_1740=l9_1782;
float l9_1783=l9_1740.x;
int l9_1784=l9_1743.x;
bool l9_1785=l9_1749;
float l9_1786=l9_1750;
if ((l9_1784==0)||(l9_1784==3))
{
float l9_1787=l9_1783;
float l9_1788=0.0;
float l9_1789=1.0;
bool l9_1790=l9_1785;
float l9_1791=l9_1786;
float l9_1792=fast::clamp(l9_1787,l9_1788,l9_1789);
float l9_1793=step(abs(l9_1787-l9_1792),9.9999997e-06);
l9_1791*=(l9_1793+((1.0-float(l9_1790))*(1.0-l9_1793)));
l9_1787=l9_1792;
l9_1783=l9_1787;
l9_1786=l9_1791;
}
l9_1740.x=l9_1783;
l9_1750=l9_1786;
float l9_1794=l9_1740.y;
int l9_1795=l9_1743.y;
bool l9_1796=l9_1749;
float l9_1797=l9_1750;
if ((l9_1795==0)||(l9_1795==3))
{
float l9_1798=l9_1794;
float l9_1799=0.0;
float l9_1800=1.0;
bool l9_1801=l9_1796;
float l9_1802=l9_1797;
float l9_1803=fast::clamp(l9_1798,l9_1799,l9_1800);
float l9_1804=step(abs(l9_1798-l9_1803),9.9999997e-06);
l9_1802*=(l9_1804+((1.0-float(l9_1801))*(1.0-l9_1804)));
l9_1798=l9_1803;
l9_1794=l9_1798;
l9_1797=l9_1802;
}
l9_1740.y=l9_1794;
l9_1750=l9_1797;
float2 l9_1805=l9_1740;
int l9_1806=l9_1738;
int l9_1807=l9_1739;
float l9_1808=l9_1748;
float2 l9_1809=l9_1805;
int l9_1810=l9_1806;
int l9_1811=l9_1807;
float3 l9_1812=float3(0.0);
if (l9_1810==0)
{
l9_1812=float3(l9_1809,0.0);
}
else
{
if (l9_1810==1)
{
l9_1812=float3(l9_1809.x,(l9_1809.y*0.5)+(0.5-(float(l9_1811)*0.5)),0.0);
}
else
{
l9_1812=float3(l9_1809,float(l9_1811));
}
}
float3 l9_1813=l9_1812;
float3 l9_1814=l9_1813;
float4 l9_1815=sc_set0.mainTexture.sample(sc_set0.mainTextureSmpSC,l9_1814.xy,bias(l9_1808));
float4 l9_1816=l9_1815;
if (l9_1746)
{
l9_1816=mix(l9_1747,l9_1816,float4(l9_1750));
}
float4 l9_1817=l9_1816;
l9_1731=l9_1817;
float4 l9_1818=l9_1731;
l9_1727=l9_1818;
float2 l9_1819=tempGlobals.Surface_UVCoord0;
N2_uv=l9_1819;
if (N2_ENABLE_FLIPBOOK)
{
l9_1727=l9_1348;
N2_uv=l9_1350;
}
}
if (N2_ENABLE_COLORRAMP)
{
if (!(!(SC_DEVICE_CLASS_tmp>=2)))
{
l9_1728=l9_1634;
}
}
N2_result=(l9_1727*l9_1343)*l9_1728;
if (N2_ENABLE_SCREENFADE)
{
N2_result.w*=N2_nearCameraFade;
}
if (N2_ENABLE_ALPHADISSOLVE)
{
float l9_1820=l9_1342*N2_alphaDissolveMult;
N2_result.w=fast::clamp(N2_result.w-l9_1820,0.0,1.0);
}
if (N2_ENABLE_BLACKASALPHA)
{
float l9_1821=length(N2_result.xyz);
N2_result.w=l9_1821;
}
if (N2_ENABLE_PREMULTIPLIEDCOLOR)
{
float3 l9_1822=N2_result.xyz*N2_result.w;
N2_result=float4(l9_1822.x,l9_1822.y,l9_1822.z,N2_result.w);
}
}
return out;
}
} // RECEIVER MODE SHADER
