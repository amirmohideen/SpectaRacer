#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#ifdef ColorOnOffid03
#undef ColorOnOffid03
#endif
#ifdef pbrOnOffId03
#undef pbrOnOffId03
#endif
#ifdef rimOnOffId03
#undef rimOnOffId03
#endif
#ifdef patternOnOffId03
#undef patternOnOffId03
#endif
#ifdef pngPatternId03
#undef pngPatternId03
#endif
#ifdef ColorOnOffid02
#undef ColorOnOffid02
#endif
#ifdef pbrOnOffId02
#undef pbrOnOffId02
#endif
#ifdef rimOnOffId02
#undef rimOnOffId02
#endif
#ifdef patternOnOffId02
#undef patternOnOffId02
#endif
#ifdef pngPatternId02
#undef pngPatternId02
#endif
#ifdef pbrOnOffId01
#undef pbrOnOffId01
#endif
#ifdef rimOnOffId01
#undef rimOnOffId01
#endif
#ifdef patternOnOffId01
#undef patternOnOffId01
#endif
#ifdef pngPatternId01
#undef pngPatternId01
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
//sampler sampler Tweak_N27SmpSC 0:29
//sampler sampler greyMaskIdSmpSC 0:30
//sampler sampler intensityTextureSmpSC 0:31
//sampler sampler patternTextureId01SmpSC 0:32
//sampler sampler patternTextureId02SmpSC 0:33
//sampler sampler patternTextureId03SmpSC 0:34
//sampler sampler sc_EnvmapDiffuseSmpSC 0:35
//sampler sampler sc_EnvmapSpecularSmpSC 0:36
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:38
//sampler sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC 0:39
//sampler sampler sc_RayTracingRayDirectionSmpSC 0:40
//sampler sampler sc_RayTracingReflectionsSmpSC 0:41
//sampler sampler sc_RayTracingShadowsSmpSC 0:42
//sampler sampler sc_SSAOTextureSmpSC 0:43
//sampler sampler sc_ScreenTextureSmpSC 0:44
//sampler sampler sc_ShadowTextureSmpSC 0:45
//texture texture2D Tweak_N27 0:4:0:29
//texture texture2D greyMaskId 0:5:0:30
//texture texture2D intensityTexture 0:6:0:31
//texture texture2D patternTextureId01 0:7:0:32
//texture texture2D patternTextureId02 0:8:0:33
//texture texture2D patternTextureId03 0:9:0:34
//texture texture2D sc_EnvmapDiffuse 0:10:0:35
//texture texture2D sc_EnvmapSpecular 0:11:0:36
//texture texture2D sc_RayTracingGlobalIllumination 0:20:0:38
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:21:0:39
//texture texture2D sc_RayTracingRayDirection 0:22:0:40
//texture texture2D sc_RayTracingReflections 0:23:0:41
//texture texture2D sc_RayTracingShadows 0:24:0:42
//texture texture2D sc_SSAOTexture 0:25:0:43
//texture texture2D sc_ScreenTexture 0:26:0:44
//texture texture2D sc_ShadowTexture 0:27:0:45
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:47:6144 {
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
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
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
//uint4 sc_RayTracingCasterConfiguration 4064
//uint4 sc_RayTracingCasterOffsetPNTC 4080
//uint4 sc_RayTracingCasterOffsetTexture 4096
//uint4 sc_RayTracingCasterFormatPNTC 4112
//uint4 sc_RayTracingCasterFormatTexture 4128
//float4 voxelization_params_0 4192
//float4 voxelization_params_frustum_lrbt 4208
//float4 voxelization_params_frustum_nf 4224
//float3 voxelization_params_camera_pos 4240
//float4x4 sc_ModelMatrixVoxelization 4256
//float correctedIntensity 4320
//float3x3 intensityTextureTransform 4384
//float4 intensityTextureUvMinMax 4432
//float4 intensityTextureBorderColor 4448
//int PreviewEnabled 4612
//float alphaTestThreshold 4620
//bool ColorOnOffid03 4624
//bool pbrOnOffId03 4628
//bool rimOnOffId03 4632
//float rimExpId03 4636
//float rimIntId03 4640
//bool patternOnOffId03 4644
//float4 patternColorId03 4656
//bool pngPatternId03 4672
//float3x3 patternTextureId03Transform 4736
//float4 patternTextureId03UvMinMax 4784
//float4 patternTextureId03BorderColor 4800
//float2 patternScaleId03 4816
//float2 patternOffsetId03 4824
//float patternRotateId03 4832
//float4 colorId03 4848
//float3x3 greyMaskIdTransform 4912
//float4 greyMaskIdUvMinMax 4960
//float4 greyMaskIdBorderColor 4976
//float metallicId03 4992
//float rougnessId03 4996
//bool ColorOnOffid02 5000
//bool pbrOnOffId02 5004
//bool rimOnOffId02 5008
//float rimExpId02 5012
//float rimIntId02 5016
//bool patternOnOffId02 5020
//float4 patternColorId02 5024
//bool pngPatternId02 5040
//float3x3 patternTextureId02Transform 5104
//float4 patternTextureId02UvMinMax 5152
//float4 patternTextureId02BorderColor 5168
//float2 patternScaleId02 5184
//float2 patternOffsetId02 5192
//float patternRotateId02 5200
//float4 colorId02 5216
//float metallicId02 5232
//float rougnessId02 5236
//bool pbrOnOffId01 5240
//bool rimOnOffId01 5244
//float rimExpId01 5248
//float rimIntId01 5252
//bool patternOnOffId01 5256
//float4 patternColorId01 5264
//bool pngPatternId01 5280
//float3x3 patternTextureId01Transform 5344
//float4 patternTextureId01UvMinMax 5392
//float4 patternTextureId01BorderColor 5408
//float2 patternScaleId01 5424
//float2 patternOffsetId01 5432
//float patternRotateId01 5440
//float4 colorId01 5456
//float metallicId01 5472
//float rougnessId01 5476
//float3x3 Tweak_N27Transform 5536
//float4 Tweak_N27UvMinMax 5584
//float4 Tweak_N27BorderColor 5600
//float Tweak_N47 5616
//float2 Port_Center_N379 5624
//float2 Port_Center_N383 5632
//float Port_Input1_N006 5640
//float Port_Input1_N009 5644
//float4 Port_Default_N358 5648
//float Port_Opacity_N410 5668
//float3 Port_Emissive_N410 5696
//float3 Port_AO_N410 5712
//float3 Port_SpecularAO_N410 5728
//float2 Port_Center_N282 5744
//float2 Port_Center_N286 5752
//float Port_Input1_N038 5760
//float Port_Input1_N035 5764
//float4 Port_Default_N338 5776
//float Port_Opacity_N313 5796
//float3 Port_Emissive_N313 5824
//float3 Port_AO_N313 5840
//float3 Port_SpecularAO_N313 5856
//float2 Port_Center_N122 5872
//float2 Port_Center_N126 5880
//float Port_Input1_N034 5888
//float Port_Opacity_N152 5896
//float3 Port_Emissive_N152 5920
//float3 Port_AO_N152 5936
//float3 Port_SpecularAO_N152 5952
//float4 Port_Input1_N051 5984
//float4 Port_Input2_N051 6000
//float4 Port_Input0_N102 6016
//float Port_Import_N060 6048
//float4 Port_Input1_N062 6064
//float Port_Import_N063 6080
//float Port_Import_N100 6084
//float4 Port_Input1_N070 6096
//float4 Port_Input2_N070 6112
//float depthRef 6128
//}
//ssbo int sc_RayTracingCasterIndexBuffer 0:0:4 {
//uint sc_RayTracingCasterTriangles 0:[1]:4
//}
//ssbo float sc_RayTracingCasterNonAnimatedVertexBuffer 0:2:4 {
//float sc_RayTracingCasterNonAnimatedVertices 0:[1]:4
//}
//ssbo float sc_RayTracingCasterVertexBuffer 0:1:4 {
//float sc_RayTracingCasterVertices 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N27 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_greyMaskId 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_patternTextureId01 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_patternTextureId02 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_patternTextureId03 36 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N27 37 0
//spec_const bool SC_USE_UV_MIN_MAX_greyMaskId 38 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 39 0
//spec_const bool SC_USE_UV_MIN_MAX_patternTextureId01 40 0
//spec_const bool SC_USE_UV_MIN_MAX_patternTextureId02 41 0
//spec_const bool SC_USE_UV_MIN_MAX_patternTextureId03 42 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N27 43 0
//spec_const bool SC_USE_UV_TRANSFORM_greyMaskId 44 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 45 0
//spec_const bool SC_USE_UV_TRANSFORM_patternTextureId01 46 0
//spec_const bool SC_USE_UV_TRANSFORM_patternTextureId02 47 0
//spec_const bool SC_USE_UV_TRANSFORM_patternTextureId03 48 0
//spec_const bool Tweak_N27HasSwappedViews 49 0
//spec_const bool UseViewSpaceDepthVariant 50 1
//spec_const bool greyMaskIdHasSwappedViews 51 0
//spec_const bool intensityTextureHasSwappedViews 52 0
//spec_const bool patternTextureId01HasSwappedViews 53 0
//spec_const bool patternTextureId02HasSwappedViews 54 0
//spec_const bool patternTextureId03HasSwappedViews 55 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 56 0
//spec_const bool sc_BlendMode_Add 57 0
//spec_const bool sc_BlendMode_AlphaTest 58 0
//spec_const bool sc_BlendMode_AlphaToCoverage 59 0
//spec_const bool sc_BlendMode_ColoredGlass 60 0
//spec_const bool sc_BlendMode_Custom 61 0
//spec_const bool sc_BlendMode_Max 62 0
//spec_const bool sc_BlendMode_Min 63 0
//spec_const bool sc_BlendMode_MultiplyOriginal 64 0
//spec_const bool sc_BlendMode_Multiply 65 0
//spec_const bool sc_BlendMode_Normal 66 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 67 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 68 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 69 0
//spec_const bool sc_BlendMode_Screen 70 0
//spec_const bool sc_DepthOnly 71 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 72 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 73 0
//spec_const bool sc_FramebufferFetch 74 0
//spec_const bool sc_HasDiffuseEnvmap 75 0
//spec_const bool sc_IsEditor 76 0
//spec_const bool sc_LightEstimation 77 0
//spec_const bool sc_MotionVectorsPass 78 0
//spec_const bool sc_OITCompositingPass 79 0
//spec_const bool sc_OITDepthBoundsPass 80 0
//spec_const bool sc_OITDepthGatherPass 81 0
//spec_const bool sc_OutputBounds 82 0
//spec_const bool sc_ProjectiveShadowsCaster 83 0
//spec_const bool sc_ProjectiveShadowsReceiver 84 0
//spec_const bool sc_RayTracingCasterForceOpaque 85 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 86 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 87 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 88 0
//spec_const bool sc_RenderAlphaToColor 89 0
//spec_const bool sc_SSAOEnabled 90 0
//spec_const bool sc_ScreenTextureHasSwappedViews 91 0
//spec_const bool sc_TAAEnabled 92 0
//spec_const bool sc_VertexBlendingUseNormals 93 0
//spec_const bool sc_VertexBlending 94 0
//spec_const bool sc_Voxelization 95 0
//spec_const int SC_DEVICE_CLASS 96 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 97 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_greyMaskId 98 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_patternTextureId03 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_greyMaskId 104 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 105 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 106 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_patternTextureId03 108 -1
//spec_const int Tweak_N27Layout 109 0
//spec_const int greyMaskIdLayout 110 0
//spec_const int intensityTextureLayout 111 0
//spec_const int patternTextureId01Layout 112 0
//spec_const int patternTextureId02Layout 113 0
//spec_const int patternTextureId03Layout 114 0
//spec_const int sc_AmbientLightMode0 115 0
//spec_const int sc_AmbientLightMode1 116 0
//spec_const int sc_AmbientLightMode2 117 0
//spec_const int sc_AmbientLightMode_Constant 118 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 119 0
//spec_const int sc_AmbientLightMode_FromCamera 120 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 121 0
//spec_const int sc_AmbientLightsCount 122 0
//spec_const int sc_DepthBufferMode 123 0
//spec_const int sc_DirectionalLightsCount 124 0
//spec_const int sc_EnvLightMode 125 0
//spec_const int sc_EnvmapDiffuseLayout 126 0
//spec_const int sc_EnvmapSpecularLayout 127 0
//spec_const int sc_LightEstimationSGCount 128 0
//spec_const int sc_PointLightsCount 129 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 130 0
//spec_const int sc_RayTracingReflectionsLayout 131 0
//spec_const int sc_RayTracingShadowsLayout 132 0
//spec_const int sc_RenderingSpace 133 -1
//spec_const int sc_ScreenTextureLayout 134 0
//spec_const int sc_ShaderCacheConstant 135 0
//spec_const int sc_SkinBonesCount 136 0
//spec_const int sc_StereoRenderingMode 137 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 138 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N27 [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N27_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N27) ? SC_USE_CLAMP_TO_BORDER_Tweak_N27 : false;
constant bool SC_USE_CLAMP_TO_BORDER_greyMaskId [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_greyMaskId) ? SC_USE_CLAMP_TO_BORDER_greyMaskId : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId01 [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_patternTextureId01) ? SC_USE_CLAMP_TO_BORDER_patternTextureId01 : false;
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId02 [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_patternTextureId02) ? SC_USE_CLAMP_TO_BORDER_patternTextureId02 : false;
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId03 [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_patternTextureId03) ? SC_USE_CLAMP_TO_BORDER_patternTextureId03 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N27 [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N27_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N27) ? SC_USE_UV_MIN_MAX_Tweak_N27 : false;
constant bool SC_USE_UV_MIN_MAX_greyMaskId [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_greyMaskId_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_greyMaskId) ? SC_USE_UV_MIN_MAX_greyMaskId : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_patternTextureId01 [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_patternTextureId01_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_patternTextureId01) ? SC_USE_UV_MIN_MAX_patternTextureId01 : false;
constant bool SC_USE_UV_MIN_MAX_patternTextureId02 [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_patternTextureId02_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_patternTextureId02) ? SC_USE_UV_MIN_MAX_patternTextureId02 : false;
constant bool SC_USE_UV_MIN_MAX_patternTextureId03 [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_patternTextureId03_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_patternTextureId03) ? SC_USE_UV_MIN_MAX_patternTextureId03 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N27 [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N27_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N27) ? SC_USE_UV_TRANSFORM_Tweak_N27 : false;
constant bool SC_USE_UV_TRANSFORM_greyMaskId [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_greyMaskId_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_greyMaskId) ? SC_USE_UV_TRANSFORM_greyMaskId : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_patternTextureId01 [[function_constant(46)]];
constant bool SC_USE_UV_TRANSFORM_patternTextureId01_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_patternTextureId01) ? SC_USE_UV_TRANSFORM_patternTextureId01 : false;
constant bool SC_USE_UV_TRANSFORM_patternTextureId02 [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_patternTextureId02_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_patternTextureId02) ? SC_USE_UV_TRANSFORM_patternTextureId02 : false;
constant bool SC_USE_UV_TRANSFORM_patternTextureId03 [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_patternTextureId03_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_patternTextureId03) ? SC_USE_UV_TRANSFORM_patternTextureId03 : false;
constant bool Tweak_N27HasSwappedViews [[function_constant(49)]];
constant bool Tweak_N27HasSwappedViews_tmp = is_function_constant_defined(Tweak_N27HasSwappedViews) ? Tweak_N27HasSwappedViews : false;
constant bool UseViewSpaceDepthVariant [[function_constant(50)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool greyMaskIdHasSwappedViews [[function_constant(51)]];
constant bool greyMaskIdHasSwappedViews_tmp = is_function_constant_defined(greyMaskIdHasSwappedViews) ? greyMaskIdHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(52)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool patternTextureId01HasSwappedViews [[function_constant(53)]];
constant bool patternTextureId01HasSwappedViews_tmp = is_function_constant_defined(patternTextureId01HasSwappedViews) ? patternTextureId01HasSwappedViews : false;
constant bool patternTextureId02HasSwappedViews [[function_constant(54)]];
constant bool patternTextureId02HasSwappedViews_tmp = is_function_constant_defined(patternTextureId02HasSwappedViews) ? patternTextureId02HasSwappedViews : false;
constant bool patternTextureId03HasSwappedViews [[function_constant(55)]];
constant bool patternTextureId03HasSwappedViews_tmp = is_function_constant_defined(patternTextureId03HasSwappedViews) ? patternTextureId03HasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(56)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(57)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(58)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(59)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(60)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(61)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(62)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(63)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(64)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(65)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(66)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(67)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(68)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(69)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(70)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(71)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(72)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(73)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(74)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(75)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(76)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(77)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(78)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(79)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(80)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(81)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(82)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(83)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(84)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(85)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(86)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(87)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(88)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(89)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(90)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(91)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(92)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(93)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(94)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(95)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int SC_DEVICE_CLASS [[function_constant(96)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 [[function_constant(97)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N27) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_greyMaskId [[function_constant(98)]];
constant int SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_greyMaskId) ? SC_SOFTWARE_WRAP_MODE_U_greyMaskId : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(99)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01) ? SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02) ? SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId03 [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03) ? SC_SOFTWARE_WRAP_MODE_U_patternTextureId03 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N27) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_greyMaskId [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_greyMaskId) ? SC_SOFTWARE_WRAP_MODE_V_greyMaskId : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_patternTextureId01) ? SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_patternTextureId02) ? SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId03 [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_patternTextureId03) ? SC_SOFTWARE_WRAP_MODE_V_patternTextureId03 : -1;
constant int Tweak_N27Layout [[function_constant(109)]];
constant int Tweak_N27Layout_tmp = is_function_constant_defined(Tweak_N27Layout) ? Tweak_N27Layout : 0;
constant int greyMaskIdLayout [[function_constant(110)]];
constant int greyMaskIdLayout_tmp = is_function_constant_defined(greyMaskIdLayout) ? greyMaskIdLayout : 0;
constant int intensityTextureLayout [[function_constant(111)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int patternTextureId01Layout [[function_constant(112)]];
constant int patternTextureId01Layout_tmp = is_function_constant_defined(patternTextureId01Layout) ? patternTextureId01Layout : 0;
constant int patternTextureId02Layout [[function_constant(113)]];
constant int patternTextureId02Layout_tmp = is_function_constant_defined(patternTextureId02Layout) ? patternTextureId02Layout : 0;
constant int patternTextureId03Layout [[function_constant(114)]];
constant int patternTextureId03Layout_tmp = is_function_constant_defined(patternTextureId03Layout) ? patternTextureId03Layout : 0;
constant int sc_AmbientLightMode0 [[function_constant(115)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(116)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(117)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(118)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(119)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(120)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(121)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(122)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(123)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(124)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(125)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(126)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(127)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(128)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(129)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(130)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(131)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(132)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(133)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(134)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(135)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(136)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(137)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(138)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
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
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
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
int ColorOnOffid03;
int pbrOnOffId03;
int rimOnOffId03;
float rimExpId03;
float rimIntId03;
int patternOnOffId03;
float4 patternColorId03;
int pngPatternId03;
float4 patternTextureId03Size;
float4 patternTextureId03Dims;
float4 patternTextureId03View;
float3x3 patternTextureId03Transform;
float4 patternTextureId03UvMinMax;
float4 patternTextureId03BorderColor;
float2 patternScaleId03;
float2 patternOffsetId03;
float patternRotateId03;
float4 colorId03;
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
float metallicId03;
float rougnessId03;
int ColorOnOffid02;
int pbrOnOffId02;
int rimOnOffId02;
float rimExpId02;
float rimIntId02;
int patternOnOffId02;
float4 patternColorId02;
int pngPatternId02;
float4 patternTextureId02Size;
float4 patternTextureId02Dims;
float4 patternTextureId02View;
float3x3 patternTextureId02Transform;
float4 patternTextureId02UvMinMax;
float4 patternTextureId02BorderColor;
float2 patternScaleId02;
float2 patternOffsetId02;
float patternRotateId02;
float4 colorId02;
float metallicId02;
float rougnessId02;
int pbrOnOffId01;
int rimOnOffId01;
float rimExpId01;
float rimIntId01;
int patternOnOffId01;
float4 patternColorId01;
int pngPatternId01;
float4 patternTextureId01Size;
float4 patternTextureId01Dims;
float4 patternTextureId01View;
float3x3 patternTextureId01Transform;
float4 patternTextureId01UvMinMax;
float4 patternTextureId01BorderColor;
float2 patternScaleId01;
float2 patternOffsetId01;
float patternRotateId01;
float4 colorId01;
float metallicId01;
float rougnessId01;
float4 Tweak_N27Size;
float4 Tweak_N27Dims;
float4 Tweak_N27View;
float3x3 Tweak_N27Transform;
float4 Tweak_N27UvMinMax;
float4 Tweak_N27BorderColor;
float Tweak_N47;
float2 Port_Center_N379;
float2 Port_Center_N383;
float Port_Input1_N006;
float Port_Input1_N009;
float4 Port_Default_N358;
float Port_Mask_N399;
float Port_Opacity_N410;
float3 Port_Normal_N410;
float3 Port_Emissive_N410;
float3 Port_AO_N410;
float3 Port_SpecularAO_N410;
float2 Port_Center_N282;
float2 Port_Center_N286;
float Port_Input1_N038;
float Port_Input1_N035;
float4 Port_Default_N338;
float Port_Mask_N302;
float Port_Opacity_N313;
float3 Port_Normal_N313;
float3 Port_Emissive_N313;
float3 Port_AO_N313;
float3 Port_SpecularAO_N313;
float2 Port_Center_N122;
float2 Port_Center_N126;
float Port_Input1_N034;
float Port_Mask_N139;
float Port_Opacity_N152;
float3 Port_Normal_N152;
float3 Port_Emissive_N152;
float3 Port_AO_N152;
float3 Port_SpecularAO_N152;
float Port_Mask_N263;
float Port_Mask_N418;
float4 Port_Input1_N051;
float4 Port_Input2_N051;
float4 Port_Input0_N102;
float4 Port_Import_N059;
float Port_Import_N060;
float4 Port_Input1_N062;
float Port_Import_N063;
float Port_Import_N100;
float4 Port_Input1_N070;
float4 Port_Input2_N070;
float depthRef;
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
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> Tweak_N27 [[id(4)]];
texture2d<float> greyMaskId [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> patternTextureId01 [[id(7)]];
texture2d<float> patternTextureId02 [[id(8)]];
texture2d<float> patternTextureId03 [[id(9)]];
texture2d<float> sc_EnvmapDiffuse [[id(10)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(20)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(21)]];
texture2d<float> sc_RayTracingRayDirection [[id(22)]];
texture2d<float> sc_RayTracingReflections [[id(23)]];
texture2d<float> sc_RayTracingShadows [[id(24)]];
texture2d<float> sc_SSAOTexture [[id(25)]];
texture2d<float> sc_ScreenTexture [[id(26)]];
texture2d<float> sc_ShadowTexture [[id(27)]];
sampler Tweak_N27SmpSC [[id(29)]];
sampler greyMaskIdSmpSC [[id(30)]];
sampler intensityTextureSmpSC [[id(31)]];
sampler patternTextureId01SmpSC [[id(32)]];
sampler patternTextureId02SmpSC [[id(33)]];
sampler patternTextureId03SmpSC [[id(34)]];
sampler sc_EnvmapDiffuseSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(36)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(38)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(39)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(40)]];
sampler sc_RayTracingReflectionsSmpSC [[id(41)]];
sampler sc_RayTracingShadowsSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(47)]];
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
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_0=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1=dot(l9_0,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_2=l9_1;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_2;
}
}
float4 l9_3=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_3;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_5;
l9_5.position=in.position;
l9_5.normal=in.normal;
l9_5.tangent=in.tangent.xyz;
l9_5.texture0=in.texture0;
l9_5.texture1=in.texture1;
sc_Vertex_t l9_6=l9_5;
sc_Vertex_t param_1=l9_6;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_7=param_1;
param_1=l9_7;
}
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param_1.position.xyz.x,param_1.position.xyz.y,param_1.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_124=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varPosAndMotion=float4(l9_124.x,l9_124.y,l9_124.z,out.varPosAndMotion.w);
float3 l9_125=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
out.varNormalAndMotion=float4(l9_125.x,l9_125.y,l9_125.z,out.varNormalAndMotion.w);
float3 l9_126=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_126.x,l9_126.y,l9_126.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPosAndMotion=float4(param_3.x,param_3.y,param_3.z,out.varPosAndMotion.w);
float3 l9_127=normalize(param_4);
out.varNormalAndMotion=float4(l9_127.x,l9_127.y,l9_127.z,out.varNormalAndMotion.w);
float3 l9_128=normalize(param_5);
out.varTangent=float4(l9_128.x,l9_128.y,l9_128.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_129=param_2.position;
float4 l9_130=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_131=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_131=0;
}
else
{
l9_131=gl_InstanceIndex%2;
}
int l9_132=l9_131;
l9_130=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_132]*l9_129;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_133=0;
}
else
{
l9_133=gl_InstanceIndex%2;
}
int l9_134=l9_133;
l9_130=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_134]*l9_129;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_135=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_135=0;
}
else
{
l9_135=gl_InstanceIndex%2;
}
int l9_136=l9_135;
l9_130=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_136]*l9_129;
}
else
{
l9_130=l9_129;
}
}
}
float4 l9_137=l9_130;
out.varViewSpaceDepth=-l9_137.z;
}
float4 l9_138=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_138=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_139=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_139=0;
}
else
{
l9_139=gl_InstanceIndex%2;
}
int l9_140=l9_139;
l9_138=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_140]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_141=0;
}
else
{
l9_141=gl_InstanceIndex%2;
}
int l9_142=l9_141;
l9_138=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_142]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_143=0;
}
else
{
l9_143=gl_InstanceIndex%2;
}
int l9_144=l9_143;
l9_138=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_144]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_145=param_2.position;
float4 l9_146=l9_145;
if (sc_RenderingSpace_tmp==1)
{
l9_146=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_145;
}
float4 l9_147=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_146;
float2 l9_148=((l9_147.xy/float2(l9_147.w))*0.5)+float2(0.5);
out.varShadowTex=l9_148;
}
float4 l9_149=l9_138;
if (sc_DepthBufferMode_tmp==1)
{
int l9_150=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_150=0;
}
else
{
l9_150=gl_InstanceIndex%2;
}
int l9_151=l9_150;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_151][2].w!=0.0)
{
float l9_152=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_149.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_149.w))*l9_152)-1.0)*l9_149.w;
}
}
float4 l9_153=l9_149;
l9_138=l9_153;
float4 l9_154=l9_138;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_155=l9_154.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_154.w);
l9_154=float4(l9_155.x,l9_155.y,l9_154.z,l9_154.w);
}
float4 l9_156=l9_154;
l9_138=l9_156;
float4 l9_157=l9_138;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_157.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_158=l9_157;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_159=dot(l9_158,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_160=l9_159;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_160;
}
}
float4 l9_161=float4(l9_157.x,-l9_157.y,(l9_157.z*0.5)+(l9_157.w*0.5),l9_157.w);
out.gl_Position=l9_161;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_162=param_2;
sc_Vertex_t l9_163=l9_162;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_164=l9_163;
float3 l9_165=in.blendShape0Pos;
float3 l9_166=in.blendShape0Normal;
float l9_167=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_168=l9_164;
float3 l9_169=l9_165;
float l9_170=l9_167;
float3 l9_171=l9_168.position.xyz+(l9_169*l9_170);
l9_168.position=float4(l9_171.x,l9_171.y,l9_171.z,l9_168.position.w);
l9_164=l9_168;
l9_164.normal+=(l9_166*l9_167);
l9_163=l9_164;
sc_Vertex_t l9_172=l9_163;
float3 l9_173=in.blendShape1Pos;
float3 l9_174=in.blendShape1Normal;
float l9_175=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_176=l9_172;
float3 l9_177=l9_173;
float l9_178=l9_175;
float3 l9_179=l9_176.position.xyz+(l9_177*l9_178);
l9_176.position=float4(l9_179.x,l9_179.y,l9_179.z,l9_176.position.w);
l9_172=l9_176;
l9_172.normal+=(l9_174*l9_175);
l9_163=l9_172;
sc_Vertex_t l9_180=l9_163;
float3 l9_181=in.blendShape2Pos;
float3 l9_182=in.blendShape2Normal;
float l9_183=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_184=l9_180;
float3 l9_185=l9_181;
float l9_186=l9_183;
float3 l9_187=l9_184.position.xyz+(l9_185*l9_186);
l9_184.position=float4(l9_187.x,l9_187.y,l9_187.z,l9_184.position.w);
l9_180=l9_184;
l9_180.normal+=(l9_182*l9_183);
l9_163=l9_180;
}
else
{
sc_Vertex_t l9_188=l9_163;
float3 l9_189=in.blendShape0Pos;
float l9_190=(*sc_set0.UserUniforms).weights0.x;
float3 l9_191=l9_188.position.xyz+(l9_189*l9_190);
l9_188.position=float4(l9_191.x,l9_191.y,l9_191.z,l9_188.position.w);
l9_163=l9_188;
sc_Vertex_t l9_192=l9_163;
float3 l9_193=in.blendShape1Pos;
float l9_194=(*sc_set0.UserUniforms).weights0.y;
float3 l9_195=l9_192.position.xyz+(l9_193*l9_194);
l9_192.position=float4(l9_195.x,l9_195.y,l9_195.z,l9_192.position.w);
l9_163=l9_192;
sc_Vertex_t l9_196=l9_163;
float3 l9_197=in.blendShape2Pos;
float l9_198=(*sc_set0.UserUniforms).weights0.z;
float3 l9_199=l9_196.position.xyz+(l9_197*l9_198);
l9_196.position=float4(l9_199.x,l9_199.y,l9_199.z,l9_196.position.w);
l9_163=l9_196;
sc_Vertex_t l9_200=l9_163;
float3 l9_201=in.blendShape3Pos;
float l9_202=(*sc_set0.UserUniforms).weights0.w;
float3 l9_203=l9_200.position.xyz+(l9_201*l9_202);
l9_200.position=float4(l9_203.x,l9_203.y,l9_203.z,l9_200.position.w);
l9_163=l9_200;
sc_Vertex_t l9_204=l9_163;
float3 l9_205=in.blendShape4Pos;
float l9_206=(*sc_set0.UserUniforms).weights1.x;
float3 l9_207=l9_204.position.xyz+(l9_205*l9_206);
l9_204.position=float4(l9_207.x,l9_207.y,l9_207.z,l9_204.position.w);
l9_163=l9_204;
sc_Vertex_t l9_208=l9_163;
float3 l9_209=in.blendShape5Pos;
float l9_210=(*sc_set0.UserUniforms).weights1.y;
float3 l9_211=l9_208.position.xyz+(l9_209*l9_210);
l9_208.position=float4(l9_211.x,l9_211.y,l9_211.z,l9_208.position.w);
l9_163=l9_208;
}
}
l9_162=l9_163;
sc_Vertex_t l9_212=l9_162;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_213=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_213=float4(1.0,fract(in.boneData.yzw));
l9_213.x-=dot(l9_213.yzw,float3(1.0));
}
float4 l9_214=l9_213;
float4 l9_215=l9_214;
int l9_216=int(in.boneData.x);
int l9_217=int(in.boneData.y);
int l9_218=int(in.boneData.z);
int l9_219=int(in.boneData.w);
int l9_220=l9_216;
float4 l9_221=l9_212.position;
float3 l9_222=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_223=l9_220;
float4 l9_224=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[0];
float4 l9_225=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[1];
float4 l9_226=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[2];
float4 l9_227[3];
l9_227[0]=l9_224;
l9_227[1]=l9_225;
l9_227[2]=l9_226;
l9_222=float3(dot(l9_221,l9_227[0]),dot(l9_221,l9_227[1]),dot(l9_221,l9_227[2]));
}
else
{
l9_222=l9_221.xyz;
}
float3 l9_228=l9_222;
float3 l9_229=l9_228;
float l9_230=l9_215.x;
int l9_231=l9_217;
float4 l9_232=l9_212.position;
float3 l9_233=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_234=l9_231;
float4 l9_235=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[0];
float4 l9_236=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[1];
float4 l9_237=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[2];
float4 l9_238[3];
l9_238[0]=l9_235;
l9_238[1]=l9_236;
l9_238[2]=l9_237;
l9_233=float3(dot(l9_232,l9_238[0]),dot(l9_232,l9_238[1]),dot(l9_232,l9_238[2]));
}
else
{
l9_233=l9_232.xyz;
}
float3 l9_239=l9_233;
float3 l9_240=l9_239;
float l9_241=l9_215.y;
int l9_242=l9_218;
float4 l9_243=l9_212.position;
float3 l9_244=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_245=l9_242;
float4 l9_246=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[0];
float4 l9_247=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[1];
float4 l9_248=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[2];
float4 l9_249[3];
l9_249[0]=l9_246;
l9_249[1]=l9_247;
l9_249[2]=l9_248;
l9_244=float3(dot(l9_243,l9_249[0]),dot(l9_243,l9_249[1]),dot(l9_243,l9_249[2]));
}
else
{
l9_244=l9_243.xyz;
}
float3 l9_250=l9_244;
float3 l9_251=l9_250;
float l9_252=l9_215.z;
int l9_253=l9_219;
float4 l9_254=l9_212.position;
float3 l9_255=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_256=l9_253;
float4 l9_257=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[0];
float4 l9_258=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[1];
float4 l9_259=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[2];
float4 l9_260[3];
l9_260[0]=l9_257;
l9_260[1]=l9_258;
l9_260[2]=l9_259;
l9_255=float3(dot(l9_254,l9_260[0]),dot(l9_254,l9_260[1]),dot(l9_254,l9_260[2]));
}
else
{
l9_255=l9_254.xyz;
}
float3 l9_261=l9_255;
float3 l9_262=(((l9_229*l9_230)+(l9_240*l9_241))+(l9_251*l9_252))+(l9_261*l9_215.w);
l9_212.position=float4(l9_262.x,l9_262.y,l9_262.z,l9_212.position.w);
int l9_263=l9_216;
float3x3 l9_264=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[2].xyz));
float3x3 l9_265=l9_264;
float3x3 l9_266=l9_265;
int l9_267=l9_217;
float3x3 l9_268=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[2].xyz));
float3x3 l9_269=l9_268;
float3x3 l9_270=l9_269;
int l9_271=l9_218;
float3x3 l9_272=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[2].xyz));
float3x3 l9_273=l9_272;
float3x3 l9_274=l9_273;
int l9_275=l9_219;
float3x3 l9_276=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[2].xyz));
float3x3 l9_277=l9_276;
float3x3 l9_278=l9_277;
l9_212.normal=((((l9_266*l9_212.normal)*l9_215.x)+((l9_270*l9_212.normal)*l9_215.y))+((l9_274*l9_212.normal)*l9_215.z))+((l9_278*l9_212.normal)*l9_215.w);
l9_212.tangent=((((l9_266*l9_212.tangent)*l9_215.x)+((l9_270*l9_212.tangent)*l9_215.y))+((l9_274*l9_212.tangent)*l9_215.z))+((l9_278*l9_212.tangent)*l9_215.w);
}
l9_162=l9_212;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_284=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_285=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_286=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_287=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_288=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_289=l9_279/l9_280;
int l9_290=gl_InstanceIndex;
int l9_291=l9_290;
l9_162.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_162.position;
float3 l9_292=l9_162.position.xyz;
float3 l9_293=float3(float(l9_291%int(l9_281))*l9_279,float(l9_291/int(l9_281))*l9_279,(float(l9_291)*l9_289)+l9_286);
float3 l9_294=l9_292+l9_293;
float4 l9_295=float4(l9_294-l9_288,1.0);
float l9_296=l9_282;
float l9_297=l9_283;
float l9_298=l9_284;
float l9_299=l9_285;
float l9_300=l9_286;
float l9_301=l9_287;
float4x4 l9_302=float4x4(float4(2.0/(l9_297-l9_296),0.0,0.0,(-(l9_297+l9_296))/(l9_297-l9_296)),float4(0.0,2.0/(l9_299-l9_298),0.0,(-(l9_299+l9_298))/(l9_299-l9_298)),float4(0.0,0.0,(-2.0)/(l9_301-l9_300),(-(l9_301+l9_300))/(l9_301-l9_300)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_303=l9_302;
float4 l9_304=l9_303*l9_295;
l9_304.w=1.0;
out.varScreenPos=l9_304;
float4 l9_305=l9_304*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_305.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_306=l9_305;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_307=dot(l9_306,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_308=l9_307;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_308;
}
}
float4 l9_309=float4(l9_305.x,-l9_305.y,(l9_305.z*0.5)+(l9_305.w*0.5),l9_305.w);
out.gl_Position=l9_309;
param_2=l9_162;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_310=param_2;
sc_Vertex_t l9_311=l9_310;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_312=l9_311;
float3 l9_313=in.blendShape0Pos;
float3 l9_314=in.blendShape0Normal;
float l9_315=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_316=l9_312;
float3 l9_317=l9_313;
float l9_318=l9_315;
float3 l9_319=l9_316.position.xyz+(l9_317*l9_318);
l9_316.position=float4(l9_319.x,l9_319.y,l9_319.z,l9_316.position.w);
l9_312=l9_316;
l9_312.normal+=(l9_314*l9_315);
l9_311=l9_312;
sc_Vertex_t l9_320=l9_311;
float3 l9_321=in.blendShape1Pos;
float3 l9_322=in.blendShape1Normal;
float l9_323=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_324=l9_320;
float3 l9_325=l9_321;
float l9_326=l9_323;
float3 l9_327=l9_324.position.xyz+(l9_325*l9_326);
l9_324.position=float4(l9_327.x,l9_327.y,l9_327.z,l9_324.position.w);
l9_320=l9_324;
l9_320.normal+=(l9_322*l9_323);
l9_311=l9_320;
sc_Vertex_t l9_328=l9_311;
float3 l9_329=in.blendShape2Pos;
float3 l9_330=in.blendShape2Normal;
float l9_331=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_332=l9_328;
float3 l9_333=l9_329;
float l9_334=l9_331;
float3 l9_335=l9_332.position.xyz+(l9_333*l9_334);
l9_332.position=float4(l9_335.x,l9_335.y,l9_335.z,l9_332.position.w);
l9_328=l9_332;
l9_328.normal+=(l9_330*l9_331);
l9_311=l9_328;
}
else
{
sc_Vertex_t l9_336=l9_311;
float3 l9_337=in.blendShape0Pos;
float l9_338=(*sc_set0.UserUniforms).weights0.x;
float3 l9_339=l9_336.position.xyz+(l9_337*l9_338);
l9_336.position=float4(l9_339.x,l9_339.y,l9_339.z,l9_336.position.w);
l9_311=l9_336;
sc_Vertex_t l9_340=l9_311;
float3 l9_341=in.blendShape1Pos;
float l9_342=(*sc_set0.UserUniforms).weights0.y;
float3 l9_343=l9_340.position.xyz+(l9_341*l9_342);
l9_340.position=float4(l9_343.x,l9_343.y,l9_343.z,l9_340.position.w);
l9_311=l9_340;
sc_Vertex_t l9_344=l9_311;
float3 l9_345=in.blendShape2Pos;
float l9_346=(*sc_set0.UserUniforms).weights0.z;
float3 l9_347=l9_344.position.xyz+(l9_345*l9_346);
l9_344.position=float4(l9_347.x,l9_347.y,l9_347.z,l9_344.position.w);
l9_311=l9_344;
sc_Vertex_t l9_348=l9_311;
float3 l9_349=in.blendShape3Pos;
float l9_350=(*sc_set0.UserUniforms).weights0.w;
float3 l9_351=l9_348.position.xyz+(l9_349*l9_350);
l9_348.position=float4(l9_351.x,l9_351.y,l9_351.z,l9_348.position.w);
l9_311=l9_348;
sc_Vertex_t l9_352=l9_311;
float3 l9_353=in.blendShape4Pos;
float l9_354=(*sc_set0.UserUniforms).weights1.x;
float3 l9_355=l9_352.position.xyz+(l9_353*l9_354);
l9_352.position=float4(l9_355.x,l9_355.y,l9_355.z,l9_352.position.w);
l9_311=l9_352;
sc_Vertex_t l9_356=l9_311;
float3 l9_357=in.blendShape5Pos;
float l9_358=(*sc_set0.UserUniforms).weights1.y;
float3 l9_359=l9_356.position.xyz+(l9_357*l9_358);
l9_356.position=float4(l9_359.x,l9_359.y,l9_359.z,l9_356.position.w);
l9_311=l9_356;
}
}
l9_310=l9_311;
sc_Vertex_t l9_360=l9_310;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_361=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_361=float4(1.0,fract(in.boneData.yzw));
l9_361.x-=dot(l9_361.yzw,float3(1.0));
}
float4 l9_362=l9_361;
float4 l9_363=l9_362;
int l9_364=int(in.boneData.x);
int l9_365=int(in.boneData.y);
int l9_366=int(in.boneData.z);
int l9_367=int(in.boneData.w);
int l9_368=l9_364;
float4 l9_369=l9_360.position;
float3 l9_370=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_371=l9_368;
float4 l9_372=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[0];
float4 l9_373=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[1];
float4 l9_374=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[2];
float4 l9_375[3];
l9_375[0]=l9_372;
l9_375[1]=l9_373;
l9_375[2]=l9_374;
l9_370=float3(dot(l9_369,l9_375[0]),dot(l9_369,l9_375[1]),dot(l9_369,l9_375[2]));
}
else
{
l9_370=l9_369.xyz;
}
float3 l9_376=l9_370;
float3 l9_377=l9_376;
float l9_378=l9_363.x;
int l9_379=l9_365;
float4 l9_380=l9_360.position;
float3 l9_381=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_382=l9_379;
float4 l9_383=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[0];
float4 l9_384=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[1];
float4 l9_385=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[2];
float4 l9_386[3];
l9_386[0]=l9_383;
l9_386[1]=l9_384;
l9_386[2]=l9_385;
l9_381=float3(dot(l9_380,l9_386[0]),dot(l9_380,l9_386[1]),dot(l9_380,l9_386[2]));
}
else
{
l9_381=l9_380.xyz;
}
float3 l9_387=l9_381;
float3 l9_388=l9_387;
float l9_389=l9_363.y;
int l9_390=l9_366;
float4 l9_391=l9_360.position;
float3 l9_392=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_393=l9_390;
float4 l9_394=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[0];
float4 l9_395=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[1];
float4 l9_396=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[2];
float4 l9_397[3];
l9_397[0]=l9_394;
l9_397[1]=l9_395;
l9_397[2]=l9_396;
l9_392=float3(dot(l9_391,l9_397[0]),dot(l9_391,l9_397[1]),dot(l9_391,l9_397[2]));
}
else
{
l9_392=l9_391.xyz;
}
float3 l9_398=l9_392;
float3 l9_399=l9_398;
float l9_400=l9_363.z;
int l9_401=l9_367;
float4 l9_402=l9_360.position;
float3 l9_403=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_404=l9_401;
float4 l9_405=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[0];
float4 l9_406=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[1];
float4 l9_407=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[2];
float4 l9_408[3];
l9_408[0]=l9_405;
l9_408[1]=l9_406;
l9_408[2]=l9_407;
l9_403=float3(dot(l9_402,l9_408[0]),dot(l9_402,l9_408[1]),dot(l9_402,l9_408[2]));
}
else
{
l9_403=l9_402.xyz;
}
float3 l9_409=l9_403;
float3 l9_410=(((l9_377*l9_378)+(l9_388*l9_389))+(l9_399*l9_400))+(l9_409*l9_363.w);
l9_360.position=float4(l9_410.x,l9_410.y,l9_410.z,l9_360.position.w);
int l9_411=l9_364;
float3x3 l9_412=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[2].xyz));
float3x3 l9_413=l9_412;
float3x3 l9_414=l9_413;
int l9_415=l9_365;
float3x3 l9_416=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[2].xyz));
float3x3 l9_417=l9_416;
float3x3 l9_418=l9_417;
int l9_419=l9_366;
float3x3 l9_420=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[2].xyz));
float3x3 l9_421=l9_420;
float3x3 l9_422=l9_421;
int l9_423=l9_367;
float3x3 l9_424=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[2].xyz));
float3x3 l9_425=l9_424;
float3x3 l9_426=l9_425;
l9_360.normal=((((l9_414*l9_360.normal)*l9_363.x)+((l9_418*l9_360.normal)*l9_363.y))+((l9_422*l9_360.normal)*l9_363.z))+((l9_426*l9_360.normal)*l9_363.w);
l9_360.tangent=((((l9_414*l9_360.tangent)*l9_363.x)+((l9_418*l9_360.tangent)*l9_363.y))+((l9_422*l9_360.tangent)*l9_363.z))+((l9_426*l9_360.tangent)*l9_363.w);
}
l9_310=l9_360;
float3 l9_427=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_428=((l9_310.position.xy/float2(l9_310.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_428.x,l9_428.y,out.varTex01.z,out.varTex01.w);
l9_310.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_310.position;
float3 l9_429=l9_310.position.xyz-l9_427;
l9_310.position=float4(l9_429.x,l9_429.y,l9_429.z,l9_310.position.w);
out.varPosAndMotion=float4(l9_310.position.xyz.x,l9_310.position.xyz.y,l9_310.position.xyz.z,out.varPosAndMotion.w);
float3 l9_430=normalize(l9_310.normal);
out.varNormalAndMotion=float4(l9_430.x,l9_430.y,l9_430.z,out.varNormalAndMotion.w);
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_433=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_434=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_435=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_436=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_437=l9_431;
float l9_438=l9_432;
float l9_439=l9_433;
float l9_440=l9_434;
float l9_441=l9_435;
float l9_442=l9_436;
float4x4 l9_443=float4x4(float4(2.0/(l9_438-l9_437),0.0,0.0,(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,2.0/(l9_440-l9_439),0.0,(-(l9_440+l9_439))/(l9_440-l9_439)),float4(0.0,0.0,(-2.0)/(l9_442-l9_441),(-(l9_442+l9_441))/(l9_442-l9_441)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_444=l9_443;
float4 l9_445=float4(0.0);
float3 l9_446=(l9_444*l9_310.position).xyz;
l9_445=float4(l9_446.x,l9_446.y,l9_446.z,l9_445.w);
l9_445.w=1.0;
out.varScreenPos=l9_445;
float4 l9_447=l9_445*1.0;
float4 l9_448=l9_447;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_448.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_449=l9_448;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_450=dot(l9_449,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_451=l9_450;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_451;
}
}
float4 l9_452=float4(l9_448.x,-l9_448.y,(l9_448.z*0.5)+(l9_448.w*0.5),l9_448.w);
out.gl_Position=l9_452;
param_2=l9_310;
}
}
v=param_2;
float3 param_7=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_453=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_7,1.0);
float3 l9_454=param_7;
float3 l9_455=l9_453.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_456=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_456=0;
}
else
{
l9_456=gl_InstanceIndex%2;
}
int l9_457=l9_456;
float4 l9_458=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_457]*float4(l9_454,1.0);
float2 l9_459=l9_458.xy/float2(l9_458.w);
l9_458=float4(l9_459.x,l9_459.y,l9_458.z,l9_458.w);
int l9_460=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_460=0;
}
else
{
l9_460=gl_InstanceIndex%2;
}
int l9_461=l9_460;
float4 l9_462=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_461]*float4(l9_455,1.0);
float2 l9_463=l9_462.xy/float2(l9_462.w);
l9_462=float4(l9_463.x,l9_463.y,l9_462.z,l9_462.w);
float2 l9_464=(l9_458.xy-l9_462.xy)*0.5;
out.varPosAndMotion.w=l9_464.x;
out.varNormalAndMotion.w=l9_464.y;
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
struct sc_RayTracingHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
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
float3 VertexNormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
float2 Surface_UVCoord0;
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
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
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
int ColorOnOffid03;
int pbrOnOffId03;
int rimOnOffId03;
float rimExpId03;
float rimIntId03;
int patternOnOffId03;
float4 patternColorId03;
int pngPatternId03;
float4 patternTextureId03Size;
float4 patternTextureId03Dims;
float4 patternTextureId03View;
float3x3 patternTextureId03Transform;
float4 patternTextureId03UvMinMax;
float4 patternTextureId03BorderColor;
float2 patternScaleId03;
float2 patternOffsetId03;
float patternRotateId03;
float4 colorId03;
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
float metallicId03;
float rougnessId03;
int ColorOnOffid02;
int pbrOnOffId02;
int rimOnOffId02;
float rimExpId02;
float rimIntId02;
int patternOnOffId02;
float4 patternColorId02;
int pngPatternId02;
float4 patternTextureId02Size;
float4 patternTextureId02Dims;
float4 patternTextureId02View;
float3x3 patternTextureId02Transform;
float4 patternTextureId02UvMinMax;
float4 patternTextureId02BorderColor;
float2 patternScaleId02;
float2 patternOffsetId02;
float patternRotateId02;
float4 colorId02;
float metallicId02;
float rougnessId02;
int pbrOnOffId01;
int rimOnOffId01;
float rimExpId01;
float rimIntId01;
int patternOnOffId01;
float4 patternColorId01;
int pngPatternId01;
float4 patternTextureId01Size;
float4 patternTextureId01Dims;
float4 patternTextureId01View;
float3x3 patternTextureId01Transform;
float4 patternTextureId01UvMinMax;
float4 patternTextureId01BorderColor;
float2 patternScaleId01;
float2 patternOffsetId01;
float patternRotateId01;
float4 colorId01;
float metallicId01;
float rougnessId01;
float4 Tweak_N27Size;
float4 Tweak_N27Dims;
float4 Tweak_N27View;
float3x3 Tweak_N27Transform;
float4 Tweak_N27UvMinMax;
float4 Tweak_N27BorderColor;
float Tweak_N47;
float2 Port_Center_N379;
float2 Port_Center_N383;
float Port_Input1_N006;
float Port_Input1_N009;
float4 Port_Default_N358;
float Port_Mask_N399;
float Port_Opacity_N410;
float3 Port_Normal_N410;
float3 Port_Emissive_N410;
float3 Port_AO_N410;
float3 Port_SpecularAO_N410;
float2 Port_Center_N282;
float2 Port_Center_N286;
float Port_Input1_N038;
float Port_Input1_N035;
float4 Port_Default_N338;
float Port_Mask_N302;
float Port_Opacity_N313;
float3 Port_Normal_N313;
float3 Port_Emissive_N313;
float3 Port_AO_N313;
float3 Port_SpecularAO_N313;
float2 Port_Center_N122;
float2 Port_Center_N126;
float Port_Input1_N034;
float Port_Mask_N139;
float Port_Opacity_N152;
float3 Port_Normal_N152;
float3 Port_Emissive_N152;
float3 Port_AO_N152;
float3 Port_SpecularAO_N152;
float Port_Mask_N263;
float Port_Mask_N418;
float4 Port_Input1_N051;
float4 Port_Input2_N051;
float4 Port_Input0_N102;
float4 Port_Import_N059;
float Port_Import_N060;
float4 Port_Input1_N062;
float Port_Import_N063;
float Port_Import_N100;
float4 Port_Input1_N070;
float4 Port_Input2_N070;
float depthRef;
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
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
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> Tweak_N27 [[id(4)]];
texture2d<float> greyMaskId [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> patternTextureId01 [[id(7)]];
texture2d<float> patternTextureId02 [[id(8)]];
texture2d<float> patternTextureId03 [[id(9)]];
texture2d<float> sc_EnvmapDiffuse [[id(10)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(20)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(21)]];
texture2d<float> sc_RayTracingRayDirection [[id(22)]];
texture2d<float> sc_RayTracingReflections [[id(23)]];
texture2d<float> sc_RayTracingShadows [[id(24)]];
texture2d<float> sc_SSAOTexture [[id(25)]];
texture2d<float> sc_ScreenTexture [[id(26)]];
texture2d<float> sc_ShadowTexture [[id(27)]];
sampler Tweak_N27SmpSC [[id(29)]];
sampler greyMaskIdSmpSC [[id(30)]];
sampler intensityTextureSmpSC [[id(31)]];
sampler patternTextureId01SmpSC [[id(32)]];
sampler patternTextureId02SmpSC [[id(33)]];
sampler patternTextureId03SmpSC [[id(34)]];
sampler sc_EnvmapDiffuseSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(36)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(38)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(39)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(40)]];
sampler sc_RayTracingReflectionsSmpSC [[id(41)]];
sampler sc_RayTracingShadowsSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(47)]];
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
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
}
sc_RayTracingHitPayload sc_RayTracingEvaluateHitPayload(thread const int2& screenPos,constant userUniformsObj& UserUniforms,const device sc_RayTracingCasterVertexBuffer_obj& sc_RayTracingCasterVertexBuffer,const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj& sc_RayTracingCasterNonAnimatedVertexBuffer,const device sc_RayTracingCasterIndexBuffer_obj& sc_RayTracingCasterIndexBuffer,thread texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric,thread sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC,thread texture2d<float> sc_RayTracingRayDirection,thread sampler sc_RayTracingRayDirectionSmpSC)
{
uint4 idAndBarycentric=sc_RayTracingHitCasterIdAndBarycentric.read(uint2(screenPos),0);
sc_RayTracingHitPayload rhp;
rhp.id=idAndBarycentric.xy;
if (rhp.id.x!=(UserUniforms.sc_RayTracingCasterConfiguration.y&65535u))
{
return rhp;
}
float2 brcVW=float2(as_type<half2>(idAndBarycentric.z|(idAndBarycentric.w<<uint(16))));
float3 brc=float3((1.0-brcVW.x)-brcVW.y,brcVW);
float2 param=sc_RayTracingRayDirection.read(uint2(screenPos),0).xy;
float3 l9_0=float3(param.x,param.y,(1.0-abs(param.x))-abs(param.y));
float l9_1=fast::clamp(-l9_0.z,0.0,1.0);
float l9_2;
if (l9_0.x>=0.0)
{
l9_2=-l9_1;
}
else
{
l9_2=l9_1;
}
float l9_3=l9_2;
float l9_4;
if (l9_0.y>=0.0)
{
l9_4=-l9_1;
}
else
{
l9_4=l9_1;
}
float2 l9_5=l9_0.xy+float2(l9_3,l9_4);
l9_0=float3(l9_5.x,l9_5.y,l9_0.z);
float3 l9_6=normalize(l9_0);
float3 rayDir=l9_6;
rhp.viewDirWS=-rayDir;
uint param_1=rhp.id.y;
uint l9_7=min(param_1,UserUniforms.sc_RayTracingCasterConfiguration.z);
uint l9_8=l9_7*6u;
uint l9_9=l9_8&4294967292u;
uint4 l9_10=(uint4(uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[l9_9/4u]),uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[(l9_9/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
uint3 l9_11;
if (l9_8==l9_9)
{
l9_11=l9_10.xyz;
}
else
{
l9_11=l9_10.yzw;
}
uint3 l9_12=l9_11;
uint3 i=l9_12;
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_2=brc;
uint3 param_3=i;
uint param_4=0u;
uint3 l9_13=uint3((param_3*uint3(6u))+uint3(param_4));
uint l9_14=l9_13.x;
float3 l9_15=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+2u]);
uint l9_16=l9_13.y;
float3 l9_17=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+2u]);
uint l9_18=l9_13.z;
float3 l9_19=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+2u]);
float3 l9_20=((l9_15*param_2.x)+(l9_17*param_2.y))+(l9_19*param_2.z);
rhp.positionWS=l9_20;
}
else
{
float3 param_5=brc;
uint3 param_6=i;
uint3 l9_21=uint3((param_6.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x);
float3 l9_22=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==5u)
{
uint l9_23=l9_21.x;
float3 l9_24=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+2u]);
uint l9_25=l9_21.y;
float3 l9_26=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+2u]);
uint l9_27=l9_21.z;
float3 l9_28=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+2u]);
l9_22=((l9_24*param_5.x)+(l9_26*param_5.y))+(l9_28*param_5.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==6u)
{
uint l9_29=l9_21.x;
float3 l9_30=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29+1u]))).x);
uint l9_31=l9_21.y;
float3 l9_32=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31+1u]))).x);
uint l9_33=l9_21.z;
float3 l9_34=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33+1u]))).x);
l9_22=((l9_30*param_5.x)+(l9_32*param_5.y))+(l9_34*param_5.z);
}
else
{
l9_22=float3(1.0,0.0,0.0);
}
}
float3 l9_35=l9_22;
float3 positionOS=l9_35;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.sc_RayTracingCasterOffsetPNTC.y>0u)
{
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_7=brc;
uint3 param_8=i;
uint param_9=3u;
uint3 l9_36=uint3((param_8*uint3(6u))+uint3(param_9));
uint l9_37=l9_36.x;
float3 l9_38=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+2u]);
uint l9_39=l9_36.y;
float3 l9_40=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+2u]);
uint l9_41=l9_36.z;
float3 l9_42=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+2u]);
float3 l9_43=((l9_38*param_7.x)+(l9_40*param_7.y))+(l9_42*param_7.z);
rhp.normalWS=l9_43;
}
else
{
float3 param_10=brc;
uint3 param_11=i;
uint3 l9_44=uint3((param_11.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y);
float3 l9_45=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==5u)
{
uint l9_46=l9_44.x;
float3 l9_47=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+2u]);
uint l9_48=l9_44.y;
float3 l9_49=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+2u]);
uint l9_50=l9_44.z;
float3 l9_51=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+2u]);
l9_45=((l9_47*param_10.x)+(l9_49*param_10.y))+(l9_51*param_10.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==6u)
{
uint l9_52=l9_44.x;
float3 l9_53=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52+1u]))).x);
uint l9_54=l9_44.y;
float3 l9_55=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54+1u]))).x);
uint l9_56=l9_44.z;
float3 l9_57=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56+1u]))).x);
l9_45=((l9_53*param_10.x)+(l9_55*param_10.y))+(l9_57*param_10.z);
}
else
{
l9_45=float3(1.0,0.0,0.0);
}
}
float3 l9_58=l9_45;
float3 normalOS=l9_58;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_59=!(UserUniforms.sc_RayTracingCasterConfiguration.x==2u);
bool l9_60;
if (l9_59)
{
l9_60=UserUniforms.sc_RayTracingCasterOffsetPNTC.z>0u;
}
else
{
l9_60=l9_59;
}
if (l9_60)
{
float3 param_12=brc;
uint3 param_13=i;
uint3 l9_61=uint3((param_13.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z);
float4 l9_62=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==5u)
{
uint l9_63=l9_61.x;
float4 l9_64=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+3u]);
uint l9_65=l9_61.y;
float4 l9_66=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+3u]);
uint l9_67=l9_61.z;
float4 l9_68=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+3u]);
l9_62=((l9_64*param_12.x)+(l9_66*param_12.y))+(l9_68*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==6u)
{
uint l9_69=l9_61.x;
float4 l9_70=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69+1u]))));
uint l9_71=l9_61.y;
float4 l9_72=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71+1u]))));
uint l9_73=l9_61.z;
float4 l9_74=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73+1u]))));
l9_62=((l9_70*param_12.x)+(l9_72*param_12.y))+(l9_74*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==2u)
{
uint l9_75=l9_61.x;
uint l9_76=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_75]);
uint l9_77=l9_76&255u;
uint l9_78=(l9_76>>uint(8))&255u;
uint l9_79=(l9_76>>uint(16))&255u;
uint l9_80=(l9_76>>uint(24))&255u;
float4 l9_81=float4(float(l9_77),float(l9_78),float(l9_79),float(l9_80))/float4(255.0);
uint l9_82=l9_61.y;
uint l9_83=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_82]);
uint l9_84=l9_83&255u;
uint l9_85=(l9_83>>uint(8))&255u;
uint l9_86=(l9_83>>uint(16))&255u;
uint l9_87=(l9_83>>uint(24))&255u;
float4 l9_88=float4(float(l9_84),float(l9_85),float(l9_86),float(l9_87))/float4(255.0);
uint l9_89=l9_61.z;
uint l9_90=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_89]);
uint l9_91=l9_90&255u;
uint l9_92=(l9_90>>uint(8))&255u;
uint l9_93=(l9_90>>uint(16))&255u;
uint l9_94=(l9_90>>uint(24))&255u;
float4 l9_95=float4(float(l9_91),float(l9_92),float(l9_93),float(l9_94))/float4(255.0);
l9_62=((l9_81*param_12.x)+(l9_88*param_12.y))+(l9_95*param_12.z);
}
else
{
l9_62=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_96=l9_62;
float4 tangentOS=l9_96;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w>0u)
{
float3 param_14=brc;
uint3 param_15=i;
uint3 l9_97=uint3((param_15.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w);
float4 l9_98=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==5u)
{
uint l9_99=l9_97.x;
float4 l9_100=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+3u]);
uint l9_101=l9_97.y;
float4 l9_102=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+3u]);
uint l9_103=l9_97.z;
float4 l9_104=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+3u]);
l9_98=((l9_100*param_14.x)+(l9_102*param_14.y))+(l9_104*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==6u)
{
uint l9_105=l9_97.x;
float4 l9_106=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105+1u]))));
uint l9_107=l9_97.y;
float4 l9_108=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107+1u]))));
uint l9_109=l9_97.z;
float4 l9_110=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109+1u]))));
l9_98=((l9_106*param_14.x)+(l9_108*param_14.y))+(l9_110*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==2u)
{
uint l9_111=l9_97.x;
uint l9_112=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_111]);
uint l9_113=l9_112&255u;
uint l9_114=(l9_112>>uint(8))&255u;
uint l9_115=(l9_112>>uint(16))&255u;
uint l9_116=(l9_112>>uint(24))&255u;
float4 l9_117=float4(float(l9_113),float(l9_114),float(l9_115),float(l9_116))/float4(255.0);
uint l9_118=l9_97.y;
uint l9_119=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_118]);
uint l9_120=l9_119&255u;
uint l9_121=(l9_119>>uint(8))&255u;
uint l9_122=(l9_119>>uint(16))&255u;
uint l9_123=(l9_119>>uint(24))&255u;
float4 l9_124=float4(float(l9_120),float(l9_121),float(l9_122),float(l9_123))/float4(255.0);
uint l9_125=l9_97.z;
uint l9_126=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_125]);
uint l9_127=l9_126&255u;
uint l9_128=(l9_126>>uint(8))&255u;
uint l9_129=(l9_126>>uint(16))&255u;
uint l9_130=(l9_126>>uint(24))&255u;
float4 l9_131=float4(float(l9_127),float(l9_128),float(l9_129),float(l9_130))/float4(255.0);
l9_98=((l9_117*param_14.x)+(l9_124*param_14.y))+(l9_131*param_14.z);
}
else
{
l9_98=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_132=l9_98;
rhp.color=l9_132;
}
float2 dummyRedBlack=float2(dot(brc,float3(uint3(1u)-(i%uint3(2u)))),0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x>0u)
{
float3 param_16=brc;
uint3 param_17=i;
uint3 l9_133=uint3((param_17.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x);
float2 l9_134=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==5u)
{
uint l9_135=l9_133.x;
float2 l9_136=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135+1u]);
uint l9_137=l9_133.y;
float2 l9_138=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137+1u]);
uint l9_139=l9_133.z;
float2 l9_140=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139+1u]);
l9_134=((l9_136*param_16.x)+(l9_138*param_16.y))+(l9_140*param_16.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==6u)
{
uint l9_141=l9_133.x;
float2 l9_142=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_141])));
uint l9_143=l9_133.y;
float2 l9_144=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_143])));
uint l9_145=l9_133.z;
float2 l9_146=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_145])));
l9_134=((l9_142*param_16.x)+(l9_144*param_16.y))+(l9_146*param_16.z);
}
else
{
l9_134=float2(1.0,0.0);
}
}
float2 l9_147=l9_134;
rhp.uv0=l9_147;
}
else
{
rhp.uv0=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.y>0u)
{
float3 param_18=brc;
uint3 param_19=i;
uint3 l9_148=uint3((param_19.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y);
float2 l9_149=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==5u)
{
uint l9_150=l9_148.x;
float2 l9_151=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150+1u]);
uint l9_152=l9_148.y;
float2 l9_153=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152+1u]);
uint l9_154=l9_148.z;
float2 l9_155=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154+1u]);
l9_149=((l9_151*param_18.x)+(l9_153*param_18.y))+(l9_155*param_18.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==6u)
{
uint l9_156=l9_148.x;
float2 l9_157=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_156])));
uint l9_158=l9_148.y;
float2 l9_159=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_158])));
uint l9_160=l9_148.z;
float2 l9_161=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_160])));
l9_149=((l9_157*param_18.x)+(l9_159*param_18.y))+(l9_161*param_18.z);
}
else
{
l9_149=float2(1.0,0.0);
}
}
float2 l9_162=l9_149;
rhp.uv1=l9_162;
}
else
{
rhp.uv1=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.z>0u)
{
float3 param_20=brc;
uint3 param_21=i;
uint3 l9_163=uint3((param_21.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z);
float2 l9_164=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==5u)
{
uint l9_165=l9_163.x;
float2 l9_166=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165+1u]);
uint l9_167=l9_163.y;
float2 l9_168=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167+1u]);
uint l9_169=l9_163.z;
float2 l9_170=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169+1u]);
l9_164=((l9_166*param_20.x)+(l9_168*param_20.y))+(l9_170*param_20.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==6u)
{
uint l9_171=l9_163.x;
float2 l9_172=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_171])));
uint l9_173=l9_163.y;
float2 l9_174=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_173])));
uint l9_175=l9_163.z;
float2 l9_176=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_175])));
l9_164=((l9_172*param_20.x)+(l9_174*param_20.y))+(l9_176*param_20.z);
}
else
{
l9_164=float2(1.0,0.0);
}
}
float2 l9_177=l9_164;
rhp.uv2=l9_177;
}
else
{
rhp.uv2=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.w>0u)
{
float3 param_22=brc;
uint3 param_23=i;
uint3 l9_178=uint3((param_23.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w);
float2 l9_179=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==5u)
{
uint l9_180=l9_178.x;
float2 l9_181=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180+1u]);
uint l9_182=l9_178.y;
float2 l9_183=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182+1u]);
uint l9_184=l9_178.z;
float2 l9_185=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184+1u]);
l9_179=((l9_181*param_22.x)+(l9_183*param_22.y))+(l9_185*param_22.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==6u)
{
uint l9_186=l9_178.x;
float2 l9_187=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_186])));
uint l9_188=l9_178.y;
float2 l9_189=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_188])));
uint l9_190=l9_178.z;
float2 l9_191=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_190])));
l9_179=((l9_187*param_22.x)+(l9_189*param_22.y))+(l9_191*param_22.z);
}
else
{
l9_179=float2(1.0,0.0);
}
}
float2 l9_192=l9_179;
rhp.uv3=l9_192;
}
else
{
rhp.uv3=dummyRedBlack;
}
return rhp;
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
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V,constant userUniformsObj& UserUniforms)
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
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
l9_9=1e-07;
}
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
float4 ngsCalculateLighting(thread const float3& albedo,thread const float& opacity,thread const float3& normal,thread const float3& position,thread const float3& viewDir,thread const float3& emissive,thread const float& metallic,thread const float& roughness,thread const float3& ao,thread const float3& specularAO,thread int& varStereoViewID,thread texture2d<float> sc_EnvmapDiffuse,thread sampler sc_EnvmapDiffuseSmpSC,thread texture2d<float> sc_EnvmapSpecular,thread sampler sc_EnvmapSpecularSmpSC,thread texture2d<float> sc_ScreenTexture,thread sampler sc_ScreenTextureSmpSC,thread texture2d<float> sc_RayTracingReflections,thread sampler sc_RayTracingReflectionsSmpSC,thread texture2d<float> sc_RayTracingGlobalIllumination,thread sampler sc_RayTracingGlobalIlluminationSmpSC,thread texture2d<float> sc_RayTracingShadows,thread sampler sc_RayTracingShadowsSmpSC,thread float4& gl_FragCoord,constant userUniformsObj& UserUniforms,thread float2& varShadowTex,thread texture2d<float> sc_ShadowTexture,thread sampler sc_ShadowTextureSmpSC,thread float4& sc_FragData0,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
SurfaceProperties l9_0;
l9_0.albedo=float3(0.0);
l9_0.opacity=1.0;
l9_0.normal=float3(0.0);
l9_0.positionWS=float3(0.0);
l9_0.viewDirWS=float3(0.0);
l9_0.metallic=0.0;
l9_0.roughness=0.0;
l9_0.emissive=float3(0.0);
l9_0.ao=float3(1.0);
l9_0.specularAo=float3(1.0);
l9_0.bakedShadows=float3(1.0);
SurfaceProperties l9_1=l9_0;
SurfaceProperties surfaceProperties=l9_1;
surfaceProperties.opacity=opacity;
float3 param=albedo;
float3 l9_2;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2=float3(pow(param.x,2.2),pow(param.y,2.2),pow(param.z,2.2));
}
else
{
l9_2=param*param;
}
float3 l9_3=l9_2;
surfaceProperties.albedo=l9_3;
surfaceProperties.normal=normalize(normal);
surfaceProperties.positionWS=position;
surfaceProperties.viewDirWS=viewDir;
float3 param_1=emissive;
float3 l9_4;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4=float3(pow(param_1.x,2.2),pow(param_1.y,2.2),pow(param_1.z,2.2));
}
else
{
l9_4=param_1*param_1;
}
float3 l9_5=l9_4;
surfaceProperties.emissive=l9_5;
surfaceProperties.metallic=metallic;
surfaceProperties.roughness=roughness;
surfaceProperties.ao=ao;
surfaceProperties.specularAo=specularAO;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 param_2=surfaceProperties.positionWS;
surfaceProperties.ao=evaluateSSAO(param_2,varStereoViewID,UserUniforms,sc_SSAOTexture,sc_SSAOTextureSmpSC);
}
SurfaceProperties param_3=surfaceProperties;
SurfaceProperties l9_6=param_3;
float3 l9_7=mix(float3(0.039999999),l9_6.albedo*l9_6.metallic,float3(l9_6.metallic));
float3 l9_8=mix(l9_6.albedo*(1.0-l9_6.metallic),float3(0.0),float3(l9_6.metallic));
param_3.albedo=l9_8;
param_3.specColor=l9_7;
SurfaceProperties l9_9=param_3;
surfaceProperties=l9_9;
SurfaceProperties param_4=surfaceProperties;
LightingComponents l9_10;
l9_10.directDiffuse=float3(0.0);
l9_10.directSpecular=float3(0.0);
l9_10.indirectDiffuse=float3(1.0);
l9_10.indirectSpecular=float3(0.0);
l9_10.emitted=float3(0.0);
l9_10.transmitted=float3(0.0);
LightingComponents l9_11=l9_10;
LightingComponents l9_12=l9_11;
float3 l9_13=param_4.viewDirWS;
int l9_14=0;
float4 l9_15=float4(param_4.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_16;
LightProperties l9_17;
int l9_18=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_18<sc_DirectionalLightsCount_tmp)
{
l9_16.direction=UserUniforms.sc_DirectionalLights[l9_18].direction;
l9_16.color=UserUniforms.sc_DirectionalLights[l9_18].color;
l9_17.direction=l9_16.direction;
l9_17.color=l9_16.color.xyz;
l9_17.attenuation=l9_16.color.w;
l9_17.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
l9_14++;
LightingComponents l9_19=l9_12;
LightProperties l9_20=l9_17;
SurfaceProperties l9_21=param_4;
float3 l9_22=l9_13;
SurfaceProperties l9_23=l9_21;
float3 l9_24=l9_20.direction;
float l9_25=dot(l9_23.normal,l9_24);
float l9_26=fast::clamp(l9_25,0.0,1.0);
float3 l9_27=float3(l9_26);
l9_19.directDiffuse+=((l9_27*l9_20.color)*l9_20.attenuation);
SurfaceProperties l9_28=l9_21;
float3 l9_29=l9_20.direction;
float3 l9_30=l9_22;
l9_19.directSpecular+=((calculateDirectSpecular(l9_28,l9_29,l9_30,UserUniforms)*l9_20.color)*l9_20.attenuation);
LightingComponents l9_31=l9_19;
l9_12=l9_31;
l9_18++;
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
sc_PointLight_t_1 l9_32;
LightProperties l9_33;
int l9_34=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount_tmp)
{
l9_32.falloffEnabled=UserUniforms.sc_PointLights[l9_34].falloffEnabled!=0;
l9_32.falloffEndDistance=UserUniforms.sc_PointLights[l9_34].falloffEndDistance;
l9_32.negRcpFalloffEndDistance4=UserUniforms.sc_PointLights[l9_34].negRcpFalloffEndDistance4;
l9_32.angleScale=UserUniforms.sc_PointLights[l9_34].angleScale;
l9_32.angleOffset=UserUniforms.sc_PointLights[l9_34].angleOffset;
l9_32.direction=UserUniforms.sc_PointLights[l9_34].direction;
l9_32.position=UserUniforms.sc_PointLights[l9_34].position;
l9_32.color=UserUniforms.sc_PointLights[l9_34].color;
float3 l9_35=l9_32.position-param_4.positionWS;
l9_33.direction=normalize(l9_35);
l9_33.color=l9_32.color.xyz;
l9_33.attenuation=l9_32.color.w;
l9_33.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
float3 l9_36=l9_33.direction;
float3 l9_37=l9_32.direction;
float l9_38=l9_32.angleScale;
float l9_39=l9_32.angleOffset;
float l9_40=dot(l9_36,l9_37);
float l9_41=fast::clamp((l9_40*l9_38)+l9_39,0.0,1.0);
float l9_42=l9_41*l9_41;
l9_33.attenuation*=l9_42;
if (l9_32.falloffEnabled)
{
float l9_43=length(l9_35);
float l9_44=l9_32.falloffEndDistance;
l9_33.attenuation*=computeDistanceAttenuation(l9_43,l9_44);
}
l9_14++;
LightingComponents l9_45=l9_12;
LightProperties l9_46=l9_33;
SurfaceProperties l9_47=param_4;
float3 l9_48=l9_13;
SurfaceProperties l9_49=l9_47;
float3 l9_50=l9_46.direction;
float l9_51=dot(l9_49.normal,l9_50);
float l9_52=fast::clamp(l9_51,0.0,1.0);
float3 l9_53=float3(l9_52);
l9_45.directDiffuse+=((l9_53*l9_46.color)*l9_46.attenuation);
SurfaceProperties l9_54=l9_47;
float3 l9_55=l9_46.direction;
float3 l9_56=l9_48;
l9_45.directSpecular+=((calculateDirectSpecular(l9_54,l9_55,l9_56,UserUniforms)*l9_46.color)*l9_46.attenuation);
LightingComponents l9_57=l9_45;
l9_12=l9_57;
l9_34++;
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
float3 l9_58=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_59=abs(varShadowTex-float2(0.5));
float l9_60=fast::max(l9_59.x,l9_59.y);
float l9_61=step(l9_60,0.5);
float4 l9_62=sc_ShadowTexture.sample(sc_ShadowTextureSmpSC,varShadowTex)*l9_61;
float3 l9_63=mix(UserUniforms.sc_ShadowColor.xyz,UserUniforms.sc_ShadowColor.xyz*l9_62.xyz,float3(UserUniforms.sc_ShadowColor.w));
float l9_64=l9_62.w*UserUniforms.sc_ShadowDensity;
l9_58=mix(float3(1.0),l9_63,float3(l9_64));
}
else
{
l9_58=float3(1.0);
}
float3 l9_65=l9_58;
float3 l9_66=l9_65;
l9_12.directDiffuse*=l9_66;
l9_12.directSpecular*=l9_66;
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_67=gl_FragCoord;
float2 l9_68=l9_67.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_69=l9_68;
float2 l9_70=l9_69;
float l9_71=0.0;
int l9_72;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_73=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_73=0;
}
else
{
l9_73=varStereoViewID;
}
int l9_74=l9_73;
l9_72=1-l9_74;
}
else
{
int l9_75=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_75=0;
}
else
{
l9_75=varStereoViewID;
}
int l9_76=l9_75;
l9_72=l9_76;
}
int l9_77=l9_72;
float2 l9_78=l9_70;
int l9_79=sc_RayTracingShadowsLayout_tmp;
int l9_80=l9_77;
float l9_81=l9_71;
float2 l9_82=l9_78;
int l9_83=l9_79;
int l9_84=l9_80;
float3 l9_85=float3(0.0);
if (l9_83==0)
{
l9_85=float3(l9_82,0.0);
}
else
{
if (l9_83==1)
{
l9_85=float3(l9_82.x,(l9_82.y*0.5)+(0.5-(float(l9_84)*0.5)),0.0);
}
else
{
l9_85=float3(l9_82,float(l9_84));
}
}
float3 l9_86=l9_85;
float3 l9_87=l9_86;
float4 l9_88=sc_RayTracingShadows.sample(sc_RayTracingShadowsSmpSC,l9_87.xy,bias(l9_81));
float4 l9_89=l9_88;
float4 l9_90=l9_89;
float l9_91=l9_90.x;
float l9_92=1.0-l9_91;
l9_12.directDiffuse*=l9_92;
l9_12.directSpecular*=l9_92;
}
SurfaceProperties l9_93=param_4;
float3 l9_94=l9_93.normal;
float3 l9_95=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_96=l9_94;
float3 l9_97=l9_96;
float l9_98=UserUniforms.sc_EnvmapRotation.y;
float2 l9_99=float2(0.0);
float l9_100=l9_97.x;
float l9_101=-l9_97.z;
float l9_102=(l9_100<0.0) ? (-1.0) : 1.0;
float l9_103=l9_102*acos(fast::clamp(l9_101/length(float2(l9_100,l9_101)),-1.0,1.0));
l9_99.x=l9_103-1.5707964;
l9_99.y=acos(l9_97.y);
l9_99/=float2(6.2831855,3.1415927);
l9_99.y=1.0-l9_99.y;
l9_99.x+=(l9_98/360.0);
l9_99.x=fract((l9_99.x+floor(l9_99.x))+1.0);
float2 l9_104=l9_99;
float2 l9_105=l9_104;
float4 l9_106=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_107=l9_105;
float2 l9_108=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_109=5.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_107,l9_108,l9_109);
}
float2 l9_110=l9_105;
float l9_111=13.0;
int l9_112;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_113=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_113=0;
}
else
{
l9_113=varStereoViewID;
}
int l9_114=l9_113;
l9_112=1-l9_114;
}
else
{
int l9_115=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_115=0;
}
else
{
l9_115=varStereoViewID;
}
int l9_116=l9_115;
l9_112=l9_116;
}
int l9_117=l9_112;
float2 l9_118=l9_110;
int l9_119=sc_EnvmapSpecularLayout_tmp;
int l9_120=l9_117;
float l9_121=l9_111;
float2 l9_122=l9_118;
int l9_123=l9_119;
int l9_124=l9_120;
float3 l9_125=float3(0.0);
if (l9_123==0)
{
l9_125=float3(l9_122,0.0);
}
else
{
if (l9_123==1)
{
l9_125=float3(l9_122.x,(l9_122.y*0.5)+(0.5-(float(l9_124)*0.5)),0.0);
}
else
{
l9_125=float3(l9_122,float(l9_124));
}
}
float3 l9_126=l9_125;
float3 l9_127=l9_126;
float4 l9_128=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_127.xy,bias(l9_121));
float4 l9_129=l9_128;
l9_106=l9_129;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_130=l9_105;
float2 l9_131=UserUniforms.sc_EnvmapDiffuseSize.xy;
float l9_132=0.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_130,l9_131,l9_132);
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
float2 l9_133=l9_105;
float l9_134=0.0;
int l9_135;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=varStereoViewID;
}
int l9_137=l9_136;
l9_135=1-l9_137;
}
else
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=varStereoViewID;
}
int l9_139=l9_138;
l9_135=l9_139;
}
int l9_140=l9_135;
float2 l9_141=l9_133;
int l9_142=sc_EnvmapDiffuseLayout_tmp;
int l9_143=l9_140;
float l9_144=l9_134;
float2 l9_145=l9_141;
int l9_146=l9_142;
int l9_147=l9_143;
float3 l9_148=float3(0.0);
if (l9_146==0)
{
l9_148=float3(l9_145,0.0);
}
else
{
if (l9_146==1)
{
l9_148=float3(l9_145.x,(l9_145.y*0.5)+(0.5-(float(l9_147)*0.5)),0.0);
}
else
{
l9_148=float3(l9_145,float(l9_147));
}
}
float3 l9_149=l9_148;
float3 l9_150=l9_149;
float4 l9_151=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_150.xy,level(l9_144));
float4 l9_152=l9_151;
l9_106=l9_152;
}
else
{
float2 l9_153=l9_105;
float l9_154=-13.0;
int l9_155;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=varStereoViewID;
}
int l9_157=l9_156;
l9_155=1-l9_157;
}
else
{
int l9_158=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_158=0;
}
else
{
l9_158=varStereoViewID;
}
int l9_159=l9_158;
l9_155=l9_159;
}
int l9_160=l9_155;
float2 l9_161=l9_153;
int l9_162=sc_EnvmapDiffuseLayout_tmp;
int l9_163=l9_160;
float l9_164=l9_154;
float2 l9_165=l9_161;
int l9_166=l9_162;
int l9_167=l9_163;
float3 l9_168=float3(0.0);
if (l9_166==0)
{
l9_168=float3(l9_165,0.0);
}
else
{
if (l9_166==1)
{
l9_168=float3(l9_165.x,(l9_165.y*0.5)+(0.5-(float(l9_167)*0.5)),0.0);
}
else
{
l9_168=float3(l9_165,float(l9_167));
}
}
float3 l9_169=l9_168;
float3 l9_170=l9_169;
float4 l9_171=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_170.xy,bias(l9_164));
float4 l9_172=l9_171;
l9_106=l9_172;
}
}
else
{
float2 l9_173=l9_105;
float l9_174=13.0;
int l9_175;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_176=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_176=0;
}
else
{
l9_176=varStereoViewID;
}
int l9_177=l9_176;
l9_175=1-l9_177;
}
else
{
int l9_178=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_178=0;
}
else
{
l9_178=varStereoViewID;
}
int l9_179=l9_178;
l9_175=l9_179;
}
int l9_180=l9_175;
float2 l9_181=l9_173;
int l9_182=sc_EnvmapSpecularLayout_tmp;
int l9_183=l9_180;
float l9_184=l9_174;
float2 l9_185=l9_181;
int l9_186=l9_182;
int l9_187=l9_183;
float3 l9_188=float3(0.0);
if (l9_186==0)
{
l9_188=float3(l9_185,0.0);
}
else
{
if (l9_186==1)
{
l9_188=float3(l9_185.x,(l9_185.y*0.5)+(0.5-(float(l9_187)*0.5)),0.0);
}
else
{
l9_188=float3(l9_185,float(l9_187));
}
}
float3 l9_189=l9_188;
float3 l9_190=l9_189;
float4 l9_191=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_190.xy,bias(l9_184));
float4 l9_192=l9_191;
l9_106=l9_192;
}
}
float4 l9_193=l9_106;
float3 l9_194=l9_193.xyz*(1.0/l9_193.w);
float3 l9_195=l9_194*UserUniforms.sc_EnvmapExposure;
l9_95=l9_195;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_196=UserUniforms.sc_Sh[0];
float3 l9_197=UserUniforms.sc_Sh[1];
float3 l9_198=UserUniforms.sc_Sh[2];
float3 l9_199=UserUniforms.sc_Sh[3];
float3 l9_200=UserUniforms.sc_Sh[4];
float3 l9_201=UserUniforms.sc_Sh[5];
float3 l9_202=UserUniforms.sc_Sh[6];
float3 l9_203=UserUniforms.sc_Sh[7];
float3 l9_204=UserUniforms.sc_Sh[8];
float3 l9_205=-l9_94;
float l9_206=0.0;
l9_206=l9_205.x;
float l9_207=l9_205.y;
float l9_208=l9_205.z;
float l9_209=l9_206*l9_206;
float l9_210=l9_207*l9_207;
float l9_211=l9_208*l9_208;
float l9_212=l9_206*l9_207;
float l9_213=l9_207*l9_208;
float l9_214=l9_206*l9_208;
float3 l9_215=((((((l9_204*0.42904299)*(l9_209-l9_210))+((l9_202*0.74312502)*l9_211))+(l9_196*0.88622701))-(l9_202*0.24770799))+((((l9_200*l9_212)+(l9_203*l9_214))+(l9_201*l9_213))*0.85808599))+((((l9_199*l9_206)+(l9_197*l9_207))+(l9_198*l9_208))*1.0233279);
l9_95=l9_215*UserUniforms.sc_ShIntensity;
}
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_216=gl_FragCoord;
float2 l9_217=l9_216.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_218=l9_217;
float2 l9_219=l9_218;
float l9_220=0.0;
int l9_221;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_222=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_222=0;
}
else
{
l9_222=varStereoViewID;
}
int l9_223=l9_222;
l9_221=1-l9_223;
}
else
{
int l9_224=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_224=0;
}
else
{
l9_224=varStereoViewID;
}
int l9_225=l9_224;
l9_221=l9_225;
}
int l9_226=l9_221;
float2 l9_227=l9_219;
int l9_228=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_229=l9_226;
float l9_230=l9_220;
float2 l9_231=l9_227;
int l9_232=l9_228;
int l9_233=l9_229;
float3 l9_234=float3(0.0);
if (l9_232==0)
{
l9_234=float3(l9_231,0.0);
}
else
{
if (l9_232==1)
{
l9_234=float3(l9_231.x,(l9_231.y*0.5)+(0.5-(float(l9_233)*0.5)),0.0);
}
else
{
l9_234=float3(l9_231,float(l9_233));
}
}
float3 l9_235=l9_234;
float3 l9_236=l9_235;
float4 l9_237=sc_RayTracingGlobalIllumination.sample(sc_RayTracingGlobalIlluminationSmpSC,l9_236.xy,bias(l9_230));
float4 l9_238=l9_237;
float4 l9_239=l9_238;
float4 l9_240=l9_239;
l9_95=mix(l9_95,l9_240.xyz,float3(l9_240.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[0].color*UserUniforms.sc_AmbientLights[0].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[1].color*UserUniforms.sc_AmbientLights[1].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[2].color*UserUniforms.sc_AmbientLights[2].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_241=l9_94;
float3 l9_242=UserUniforms.sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_243;
float l9_244;
int l9_245=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_245<sc_LightEstimationSGCount_tmp)
{
l9_243.color=UserUniforms.sc_LightEstimationData.sg[l9_245].color;
l9_243.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_245].sharpness;
l9_243.axis=UserUniforms.sc_LightEstimationData.sg[l9_245].axis;
float3 l9_246=l9_241;
float l9_247=dot(l9_243.axis,l9_246);
float l9_248=l9_243.sharpness;
float l9_249=0.36000001;
float l9_250=1.0/(4.0*l9_249);
float l9_251=exp(-l9_248);
float l9_252=l9_251*l9_251;
float l9_253=1.0/l9_248;
float l9_254=(1.0+(2.0*l9_252))-l9_253;
float l9_255=((l9_251-l9_252)*l9_253)-l9_252;
float l9_256=sqrt(1.0-l9_254);
float l9_257=l9_249*l9_247;
float l9_258=l9_250*l9_256;
float l9_259=l9_257+l9_258;
float l9_260=l9_247;
float l9_261=fast::clamp(l9_260,0.0,1.0);
float l9_262=l9_261;
if (step(abs(l9_257),l9_258)>0.5)
{
l9_244=(l9_259*l9_259)/l9_256;
}
else
{
l9_244=l9_262;
}
l9_262=l9_244;
float l9_263=(l9_254*l9_262)+l9_255;
sc_SphericalGaussianLight_t l9_264=l9_243;
float3 l9_265=(l9_264.color/float3(l9_264.sharpness))*6.2831855;
float3 l9_266=(l9_265*l9_263)/float3(3.1415927);
l9_242+=l9_266;
l9_245++;
continue;
}
else
{
break;
}
}
float3 l9_267=l9_242;
l9_95+=l9_267;
}
float3 l9_268=l9_95;
float3 l9_269=l9_268;
l9_12.indirectDiffuse=l9_269;
SurfaceProperties l9_270=param_4;
float3 l9_271=l9_13;
float3 l9_272=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_273=l9_270;
float3 l9_274=l9_271;
float3 l9_275=l9_273.normal;
float3 l9_276=reflect(-l9_274,l9_275);
float3 l9_277=l9_275;
float3 l9_278=l9_276;
float l9_279=l9_273.roughness;
l9_276=getSpecularDominantDir(l9_277,l9_278,l9_279);
float l9_280=l9_273.roughness;
float l9_281=pow(l9_280,0.66666669);
float l9_282=fast::clamp(l9_281,0.0,1.0);
float l9_283=l9_282*5.0;
float l9_284=l9_283;
float l9_285=l9_284;
float3 l9_286=l9_276;
float l9_287=l9_285;
float3 l9_288=l9_286;
float l9_289=l9_287;
float4 l9_290=float4(0.0);
float3 l9_291=l9_288;
float l9_292=UserUniforms.sc_EnvmapRotation.y;
float2 l9_293=float2(0.0);
float l9_294=l9_291.x;
float l9_295=-l9_291.z;
float l9_296=(l9_294<0.0) ? (-1.0) : 1.0;
float l9_297=l9_296*acos(fast::clamp(l9_295/length(float2(l9_294,l9_295)),-1.0,1.0));
l9_293.x=l9_297-1.5707964;
l9_293.y=acos(l9_291.y);
l9_293/=float2(6.2831855,3.1415927);
l9_293.y=1.0-l9_293.y;
l9_293.x+=(l9_292/360.0);
l9_293.x=fract((l9_293.x+floor(l9_293.x))+1.0);
float2 l9_298=l9_293;
float2 l9_299=l9_298;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_300=floor(l9_289);
float l9_301=ceil(l9_289);
float l9_302=l9_289-l9_300;
float2 l9_303=l9_299;
float2 l9_304=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_305=l9_300;
float2 l9_306=calcSeamlessPanoramicUvsForSampling(l9_303,l9_304,l9_305);
float2 l9_307=l9_306;
float l9_308=l9_300;
float2 l9_309=l9_307;
float l9_310=l9_308;
int l9_311;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_312=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_312=0;
}
else
{
l9_312=varStereoViewID;
}
int l9_313=l9_312;
l9_311=1-l9_313;
}
else
{
int l9_314=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_314=0;
}
else
{
l9_314=varStereoViewID;
}
int l9_315=l9_314;
l9_311=l9_315;
}
int l9_316=l9_311;
float2 l9_317=l9_309;
int l9_318=sc_EnvmapSpecularLayout_tmp;
int l9_319=l9_316;
float l9_320=l9_310;
float2 l9_321=l9_317;
int l9_322=l9_318;
int l9_323=l9_319;
float3 l9_324=float3(0.0);
if (l9_322==0)
{
l9_324=float3(l9_321,0.0);
}
else
{
if (l9_322==1)
{
l9_324=float3(l9_321.x,(l9_321.y*0.5)+(0.5-(float(l9_323)*0.5)),0.0);
}
else
{
l9_324=float3(l9_321,float(l9_323));
}
}
float3 l9_325=l9_324;
float3 l9_326=l9_325;
float4 l9_327=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_326.xy,level(l9_320));
float4 l9_328=l9_327;
float4 l9_329=l9_328;
float4 l9_330=l9_329;
float2 l9_331=l9_299;
float2 l9_332=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_333=l9_301;
float2 l9_334=calcSeamlessPanoramicUvsForSampling(l9_331,l9_332,l9_333);
float2 l9_335=l9_334;
float l9_336=l9_301;
float2 l9_337=l9_335;
float l9_338=l9_336;
int l9_339;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_340=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_340=0;
}
else
{
l9_340=varStereoViewID;
}
int l9_341=l9_340;
l9_339=1-l9_341;
}
else
{
int l9_342=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_342=0;
}
else
{
l9_342=varStereoViewID;
}
int l9_343=l9_342;
l9_339=l9_343;
}
int l9_344=l9_339;
float2 l9_345=l9_337;
int l9_346=sc_EnvmapSpecularLayout_tmp;
int l9_347=l9_344;
float l9_348=l9_338;
float2 l9_349=l9_345;
int l9_350=l9_346;
int l9_351=l9_347;
float3 l9_352=float3(0.0);
if (l9_350==0)
{
l9_352=float3(l9_349,0.0);
}
else
{
if (l9_350==1)
{
l9_352=float3(l9_349.x,(l9_349.y*0.5)+(0.5-(float(l9_351)*0.5)),0.0);
}
else
{
l9_352=float3(l9_349,float(l9_351));
}
}
float3 l9_353=l9_352;
float3 l9_354=l9_353;
float4 l9_355=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_354.xy,level(l9_348));
float4 l9_356=l9_355;
float4 l9_357=l9_356;
float4 l9_358=l9_357;
l9_290=mix(l9_330,l9_358,float4(l9_302));
}
else
{
float2 l9_359=l9_299;
float l9_360=l9_289;
float2 l9_361=l9_359;
float l9_362=l9_360;
int l9_363;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_364=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_364=0;
}
else
{
l9_364=varStereoViewID;
}
int l9_365=l9_364;
l9_363=1-l9_365;
}
else
{
int l9_366=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_366=0;
}
else
{
l9_366=varStereoViewID;
}
int l9_367=l9_366;
l9_363=l9_367;
}
int l9_368=l9_363;
float2 l9_369=l9_361;
int l9_370=sc_EnvmapSpecularLayout_tmp;
int l9_371=l9_368;
float l9_372=l9_362;
float2 l9_373=l9_369;
int l9_374=l9_370;
int l9_375=l9_371;
float3 l9_376=float3(0.0);
if (l9_374==0)
{
l9_376=float3(l9_373,0.0);
}
else
{
if (l9_374==1)
{
l9_376=float3(l9_373.x,(l9_373.y*0.5)+(0.5-(float(l9_375)*0.5)),0.0);
}
else
{
l9_376=float3(l9_373,float(l9_375));
}
}
float3 l9_377=l9_376;
float3 l9_378=l9_377;
float4 l9_379=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_378.xy,level(l9_372));
float4 l9_380=l9_379;
float4 l9_381=l9_380;
l9_290=l9_381;
}
float4 l9_382=l9_290;
float3 l9_383=l9_382.xyz*(1.0/l9_382.w);
float3 l9_384=l9_383;
float3 l9_385=l9_384*UserUniforms.sc_EnvmapExposure;
l9_385+=float3(1e-06);
float3 l9_386=l9_385;
float3 l9_387=l9_386;
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_388=gl_FragCoord;
float2 l9_389=l9_388.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_390=l9_389;
float2 l9_391=l9_390;
float l9_392=0.0;
int l9_393;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_394=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_394=0;
}
else
{
l9_394=varStereoViewID;
}
int l9_395=l9_394;
l9_393=1-l9_395;
}
else
{
int l9_396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_396=0;
}
else
{
l9_396=varStereoViewID;
}
int l9_397=l9_396;
l9_393=l9_397;
}
int l9_398=l9_393;
float2 l9_399=l9_391;
int l9_400=sc_RayTracingReflectionsLayout_tmp;
int l9_401=l9_398;
float l9_402=l9_392;
float2 l9_403=l9_399;
int l9_404=l9_400;
int l9_405=l9_401;
float3 l9_406=float3(0.0);
if (l9_404==0)
{
l9_406=float3(l9_403,0.0);
}
else
{
if (l9_404==1)
{
l9_406=float3(l9_403.x,(l9_403.y*0.5)+(0.5-(float(l9_405)*0.5)),0.0);
}
else
{
l9_406=float3(l9_403,float(l9_405));
}
}
float3 l9_407=l9_406;
float3 l9_408=l9_407;
float4 l9_409=sc_RayTracingReflections.sample(sc_RayTracingReflectionsSmpSC,l9_408.xy,bias(l9_402));
float4 l9_410=l9_409;
float4 l9_411=l9_410;
float4 l9_412=l9_411;
l9_387=mix(l9_387,l9_412.xyz,float3(l9_412.w));
}
float l9_413=abs(dot(l9_275,l9_274));
SurfaceProperties l9_414=l9_273;
float l9_415=l9_413;
float3 l9_416=l9_387*envBRDFApprox(l9_414,l9_415);
l9_272+=l9_416;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_417=l9_270;
float3 l9_418=l9_271;
float l9_419=fast::clamp(l9_417.roughness*l9_417.roughness,0.0099999998,1.0);
float3 l9_420=UserUniforms.sc_LightEstimationData.ambientLight*l9_417.specColor;
sc_SphericalGaussianLight_t l9_421;
sc_SphericalGaussianLight_t l9_422;
sc_SphericalGaussianLight_t l9_423;
int l9_424=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_424<sc_LightEstimationSGCount_tmp)
{
l9_421.color=UserUniforms.sc_LightEstimationData.sg[l9_424].color;
l9_421.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_424].sharpness;
l9_421.axis=UserUniforms.sc_LightEstimationData.sg[l9_424].axis;
float3 l9_425=l9_417.normal;
float l9_426=l9_419;
float3 l9_427=l9_418;
float3 l9_428=l9_417.specColor;
float3 l9_429=l9_425;
float l9_430=l9_426;
l9_422.axis=l9_429;
float l9_431=l9_430*l9_430;
l9_422.sharpness=2.0/l9_431;
l9_422.color=float3(1.0/(3.1415927*l9_431));
sc_SphericalGaussianLight_t l9_432=l9_422;
sc_SphericalGaussianLight_t l9_433=l9_432;
sc_SphericalGaussianLight_t l9_434=l9_433;
float3 l9_435=l9_427;
l9_423.axis=reflect(-l9_435,l9_434.axis);
l9_423.color=l9_434.color;
l9_423.sharpness=l9_434.sharpness;
l9_423.sharpness/=(4.0*fast::max(dot(l9_434.axis,l9_435),9.9999997e-05));
sc_SphericalGaussianLight_t l9_436=l9_423;
sc_SphericalGaussianLight_t l9_437=l9_436;
sc_SphericalGaussianLight_t l9_438=l9_437;
sc_SphericalGaussianLight_t l9_439=l9_421;
float l9_440=length((l9_438.axis*l9_438.sharpness)+(l9_439.axis*l9_439.sharpness));
float3 l9_441=(l9_438.color*exp((l9_440-l9_438.sharpness)-l9_439.sharpness))*l9_439.color;
float l9_442=1.0-exp((-2.0)*l9_440);
float3 l9_443=((l9_441*6.2831855)*l9_442)/float3(l9_440);
float3 l9_444=l9_443;
float3 l9_445=l9_437.axis;
float l9_446=l9_426*l9_426;
float l9_447=dot(l9_425,l9_445);
float l9_448=fast::clamp(l9_447,0.0,1.0);
float l9_449=l9_448;
float l9_450=dot(l9_425,l9_427);
float l9_451=fast::clamp(l9_450,0.0,1.0);
float l9_452=l9_451;
float3 l9_453=normalize(l9_437.axis+l9_427);
float l9_454=l9_446;
float l9_455=l9_449;
float l9_456=1.0/(l9_455+sqrt(l9_454+(((1.0-l9_454)*l9_455)*l9_455)));
float l9_457=l9_446;
float l9_458=l9_452;
float l9_459=1.0/(l9_458+sqrt(l9_457+(((1.0-l9_457)*l9_458)*l9_458)));
l9_444*=(l9_456*l9_459);
float l9_460=dot(l9_445,l9_453);
float l9_461=fast::clamp(l9_460,0.0,1.0);
float l9_462=pow(1.0-l9_461,5.0);
l9_444*=(l9_428+((float3(1.0)-l9_428)*l9_462));
l9_444*=l9_449;
float3 l9_463=l9_444;
l9_420+=l9_463;
l9_424++;
continue;
}
else
{
break;
}
}
float3 l9_464=l9_420;
l9_272+=l9_464;
}
float3 l9_465=l9_272;
l9_12.indirectSpecular=l9_465;
LightingComponents l9_466=l9_12;
LightingComponents lighting=l9_466;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
lighting.directDiffuse=float3(0.0);
lighting.indirectDiffuse=float3(0.0);
float4 l9_467=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_468=sc_FragData0;
l9_467=l9_468;
}
else
{
float4 l9_469=gl_FragCoord;
float2 l9_470=l9_469.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_471=l9_470;
float2 l9_472=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_473=1;
int l9_474=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_474=0;
}
else
{
l9_474=varStereoViewID;
}
int l9_475=l9_474;
int l9_476=l9_475;
float3 l9_477=float3(l9_471,0.0);
int l9_478=l9_473;
int l9_479=l9_476;
if (l9_478==1)
{
l9_477.y=((2.0*l9_477.y)+float(l9_479))-1.0;
}
float2 l9_480=l9_477.xy;
l9_472=l9_480;
}
else
{
l9_472=l9_471;
}
float2 l9_481=l9_472;
float2 l9_482=l9_481;
float2 l9_483=l9_482;
float2 l9_484=l9_483;
float l9_485=0.0;
int l9_486;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_487=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_487=0;
}
else
{
l9_487=varStereoViewID;
}
int l9_488=l9_487;
l9_486=1-l9_488;
}
else
{
int l9_489=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_489=0;
}
else
{
l9_489=varStereoViewID;
}
int l9_490=l9_489;
l9_486=l9_490;
}
int l9_491=l9_486;
float2 l9_492=l9_484;
int l9_493=sc_ScreenTextureLayout_tmp;
int l9_494=l9_491;
float l9_495=l9_485;
float2 l9_496=l9_492;
int l9_497=l9_493;
int l9_498=l9_494;
float3 l9_499=float3(0.0);
if (l9_497==0)
{
l9_499=float3(l9_496,0.0);
}
else
{
if (l9_497==1)
{
l9_499=float3(l9_496.x,(l9_496.y*0.5)+(0.5-(float(l9_498)*0.5)),0.0);
}
else
{
l9_499=float3(l9_496,float(l9_498));
}
}
float3 l9_500=l9_499;
float3 l9_501=l9_500;
float4 l9_502=sc_ScreenTexture.sample(sc_ScreenTextureSmpSC,l9_501.xy,bias(l9_495));
float4 l9_503=l9_502;
float4 l9_504=l9_503;
l9_467=l9_504;
}
float4 l9_505=l9_467;
float3 param_5=l9_505.xyz;
float3 l9_506;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_506=float3(pow(param_5.x,2.2),pow(param_5.y,2.2),pow(param_5.z,2.2));
}
else
{
l9_506=param_5*param_5;
}
float3 l9_507=l9_506;
float3 framebuffer=l9_507;
lighting.transmitted=framebuffer*mix(float3(1.0),surfaceProperties.albedo,float3(surfaceProperties.opacity));
surfaceProperties.opacity=1.0;
}
bool enablePremultipliedAlpha=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
enablePremultipliedAlpha=true;
}
SurfaceProperties param_6=surfaceProperties;
LightingComponents param_7=lighting;
bool param_8=enablePremultipliedAlpha;
float3 l9_508=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*param_6.ao));
float3 l9_509=param_7.directSpecular+(param_7.indirectSpecular*param_6.specularAo);
float3 l9_510=param_6.emissive;
float3 l9_511=param_7.transmitted;
if (param_8)
{
float l9_512=param_6.opacity;
l9_508*=srgbToLinear(l9_512);
}
float3 l9_513=((l9_508+l9_509)+l9_510)+l9_511;
float3 l9_514=l9_513;
float4 Output=float4(l9_514,surfaceProperties.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
Output.x+=((surfaceProperties.ao.x*surfaceProperties.specularAo.x)*9.9999997e-06);
}
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
return Output;
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 param_9=Output.xyz;
float l9_515=1.8;
float l9_516=1.4;
float l9_517=0.5;
float l9_518=1.5;
float3 l9_519=(param_9*((param_9*l9_515)+float3(l9_516)))/((param_9*((param_9*l9_515)+float3(l9_517)))+float3(l9_518));
Output=float4(l9_519.x,l9_519.y,l9_519.z,Output.w);
}
float3 param_10=Output.xyz;
float l9_520=param_10.x;
float l9_521=param_10.y;
float l9_522=param_10.z;
float3 l9_523=float3(linearToSrgb(l9_520),linearToSrgb(l9_521),linearToSrgb(l9_522));
Output=float4(l9_523.x,l9_523.y,l9_523.z,Output.w);
return Output;
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
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 l9_0=gl_FragCoord;
int2 param=int2(l9_0.xy);
sc_RayTracingHitPayload rhp=sc_RayTracingEvaluateHitPayload(param,(*sc_set0.UserUniforms),(*sc_set0.sc_RayTracingCasterVertexBuffer),(*sc_set0.sc_RayTracingCasterNonAnimatedVertexBuffer),(*sc_set0.sc_RayTracingCasterIndexBuffer),sc_set0.sc_RayTracingHitCasterIdAndBarycentric,sc_set0.sc_RayTracingHitCasterIdAndBarycentricSmpSC,sc_set0.sc_RayTracingRayDirection,sc_set0.sc_RayTracingRayDirectionSmpSC);
if (rhp.id.x!=((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.y&65535u))
{
return out;
}
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=rhp.viewDirWS;
Globals.PositionWS=rhp.positionWS;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
Globals.Surface_UVCoord0=rhp.uv0;
}
else
{
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
Globals.Surface_UVCoord0=in.varTex01.xy;
}
float4 Result_N419=float4(0.0);
float param_1=0.0;
float4 param_2=float4(0.0);
float4 param_3=float4(0.0);
ssGlobals param_5=Globals;
float l9_1=0.0;
float l9_2=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1=l9_2;
param_1=l9_1;
float4 param_4;
if ((param_1*1.0)!=0.0)
{
float4 l9_3=float4(0.0);
float l9_4=0.0;
float4 l9_5=float4(0.0);
float4 l9_6=float4(0.0);
ssGlobals l9_7=param_5;
float l9_8=0.0;
float l9_9=float((*sc_set0.UserUniforms).pbrOnOffId03!=0);
l9_8=l9_9;
l9_4=l9_8;
float4 l9_10;
if ((l9_4*1.0)!=0.0)
{
float4 l9_11=float4(0.0);
float l9_12=0.0;
float4 l9_13=float4(0.0);
float4 l9_14=float4(0.0);
ssGlobals l9_15=l9_7;
float l9_16=0.0;
float l9_17=float((*sc_set0.UserUniforms).rimOnOffId03!=0);
l9_16=l9_17;
l9_12=l9_16;
float4 l9_18;
if ((l9_12*1.0)!=0.0)
{
float l9_19=0.0;
float l9_20=(*sc_set0.UserUniforms).rimExpId03;
l9_19=l9_20;
float l9_21=0.0;
float l9_22=(*sc_set0.UserUniforms).rimIntId03;
l9_21=l9_22;
float l9_23=0.0;
float l9_24=l9_19;
float l9_25=l9_21;
ssGlobals l9_26=l9_15;
float l9_27=abs(dot(-l9_26.ViewDirWS,l9_26.VertexNormal_WorldSpace));
float l9_28=1.0-pow(1.0-l9_27,l9_24);
l9_28=fast::max(l9_28,0.0);
l9_28*=l9_25;
l9_23=l9_28;
float4 l9_29=float4(0.0);
float l9_30=0.0;
float4 l9_31=float4(0.0);
float4 l9_32=float4(0.0);
ssGlobals l9_33=l9_15;
float l9_34=0.0;
float l9_35=float((*sc_set0.UserUniforms).patternOnOffId03!=0);
l9_34=l9_35;
l9_30=l9_34;
float4 l9_36;
if ((l9_30*1.0)!=0.0)
{
float4 l9_37=float4(0.0);
float4 l9_38=(*sc_set0.UserUniforms).patternColorId03;
l9_37=l9_38;
float4 l9_39=float4(0.0);
float l9_40=0.0;
float4 l9_41=float4(0.0);
float4 l9_42=float4(0.0);
ssGlobals l9_43=l9_33;
float l9_44=0.0;
float l9_45=float((*sc_set0.UserUniforms).pngPatternId03!=0);
l9_44=l9_45;
l9_40=l9_44;
float4 l9_46;
if ((l9_40*1.0)!=0.0)
{
float2 l9_47=float2(0.0);
l9_47=l9_43.Surface_UVCoord0;
float2 l9_48=float2(0.0);
float2 l9_49=(*sc_set0.UserUniforms).patternScaleId03;
l9_48=l9_49;
float2 l9_50=float2(0.0);
l9_50=((l9_47-(*sc_set0.UserUniforms).Port_Center_N379)*l9_48)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_51=float2(0.0);
float2 l9_52=(*sc_set0.UserUniforms).patternOffsetId03;
l9_51=l9_52;
float2 l9_53=float2(0.0);
l9_53=l9_50+l9_51;
float l9_54=0.0;
float l9_55=(*sc_set0.UserUniforms).patternRotateId03;
l9_54=l9_55;
float2 l9_56=float2(0.0);
float2 l9_57=l9_53;
float l9_58=l9_54;
float2 l9_59=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_60=sin(radians(l9_58));
float l9_61=cos(radians(l9_58));
float2 l9_62=l9_57-l9_59;
l9_62=float2(dot(float2(l9_61,l9_60),l9_62),dot(float2(-l9_60,l9_61),l9_62))+l9_59;
l9_56=l9_62;
float4 l9_63=float4(0.0);
int l9_64;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_65=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_65=0;
}
else
{
l9_65=in.varStereoViewID;
}
int l9_66=l9_65;
l9_64=1-l9_66;
}
else
{
int l9_67=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_67=0;
}
else
{
l9_67=in.varStereoViewID;
}
int l9_68=l9_67;
l9_64=l9_68;
}
int l9_69=l9_64;
int l9_70=patternTextureId03Layout_tmp;
int l9_71=l9_69;
float2 l9_72=l9_56;
bool l9_73=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_74=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_75=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_76=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_77=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_78=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_79=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_80=0.0;
bool l9_81=l9_78&&(!l9_76);
float l9_82=1.0;
float l9_83=l9_72.x;
int l9_84=l9_75.x;
if (l9_84==1)
{
l9_83=fract(l9_83);
}
else
{
if (l9_84==2)
{
float l9_85=fract(l9_83);
float l9_86=l9_83-l9_85;
float l9_87=step(0.25,fract(l9_86*0.5));
l9_83=mix(l9_85,1.0-l9_85,fast::clamp(l9_87,0.0,1.0));
}
}
l9_72.x=l9_83;
float l9_88=l9_72.y;
int l9_89=l9_75.y;
if (l9_89==1)
{
l9_88=fract(l9_88);
}
else
{
if (l9_89==2)
{
float l9_90=fract(l9_88);
float l9_91=l9_88-l9_90;
float l9_92=step(0.25,fract(l9_91*0.5));
l9_88=mix(l9_90,1.0-l9_90,fast::clamp(l9_92,0.0,1.0));
}
}
l9_72.y=l9_88;
if (l9_76)
{
bool l9_93=l9_78;
bool l9_94;
if (l9_93)
{
l9_94=l9_75.x==3;
}
else
{
l9_94=l9_93;
}
float l9_95=l9_72.x;
float l9_96=l9_77.x;
float l9_97=l9_77.z;
bool l9_98=l9_94;
float l9_99=l9_82;
float l9_100=fast::clamp(l9_95,l9_96,l9_97);
float l9_101=step(abs(l9_95-l9_100),9.9999997e-06);
l9_99*=(l9_101+((1.0-float(l9_98))*(1.0-l9_101)));
l9_95=l9_100;
l9_72.x=l9_95;
l9_82=l9_99;
bool l9_102=l9_78;
bool l9_103;
if (l9_102)
{
l9_103=l9_75.y==3;
}
else
{
l9_103=l9_102;
}
float l9_104=l9_72.y;
float l9_105=l9_77.y;
float l9_106=l9_77.w;
bool l9_107=l9_103;
float l9_108=l9_82;
float l9_109=fast::clamp(l9_104,l9_105,l9_106);
float l9_110=step(abs(l9_104-l9_109),9.9999997e-06);
l9_108*=(l9_110+((1.0-float(l9_107))*(1.0-l9_110)));
l9_104=l9_109;
l9_72.y=l9_104;
l9_82=l9_108;
}
float2 l9_111=l9_72;
bool l9_112=l9_73;
float3x3 l9_113=l9_74;
if (l9_112)
{
l9_111=float2((l9_113*float3(l9_111,1.0)).xy);
}
float2 l9_114=l9_111;
l9_72=l9_114;
float l9_115=l9_72.x;
int l9_116=l9_75.x;
bool l9_117=l9_81;
float l9_118=l9_82;
if ((l9_116==0)||(l9_116==3))
{
float l9_119=l9_115;
float l9_120=0.0;
float l9_121=1.0;
bool l9_122=l9_117;
float l9_123=l9_118;
float l9_124=fast::clamp(l9_119,l9_120,l9_121);
float l9_125=step(abs(l9_119-l9_124),9.9999997e-06);
l9_123*=(l9_125+((1.0-float(l9_122))*(1.0-l9_125)));
l9_119=l9_124;
l9_115=l9_119;
l9_118=l9_123;
}
l9_72.x=l9_115;
l9_82=l9_118;
float l9_126=l9_72.y;
int l9_127=l9_75.y;
bool l9_128=l9_81;
float l9_129=l9_82;
if ((l9_127==0)||(l9_127==3))
{
float l9_130=l9_126;
float l9_131=0.0;
float l9_132=1.0;
bool l9_133=l9_128;
float l9_134=l9_129;
float l9_135=fast::clamp(l9_130,l9_131,l9_132);
float l9_136=step(abs(l9_130-l9_135),9.9999997e-06);
l9_134*=(l9_136+((1.0-float(l9_133))*(1.0-l9_136)));
l9_130=l9_135;
l9_126=l9_130;
l9_129=l9_134;
}
l9_72.y=l9_126;
l9_82=l9_129;
float2 l9_137=l9_72;
int l9_138=l9_70;
int l9_139=l9_71;
float l9_140=l9_80;
float2 l9_141=l9_137;
int l9_142=l9_138;
int l9_143=l9_139;
float3 l9_144=float3(0.0);
if (l9_142==0)
{
l9_144=float3(l9_141,0.0);
}
else
{
if (l9_142==1)
{
l9_144=float3(l9_141.x,(l9_141.y*0.5)+(0.5-(float(l9_143)*0.5)),0.0);
}
else
{
l9_144=float3(l9_141,float(l9_143));
}
}
float3 l9_145=l9_144;
float3 l9_146=l9_145;
float4 l9_147=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_146.xy,bias(l9_140));
float4 l9_148=l9_147;
if (l9_78)
{
l9_148=mix(l9_79,l9_148,float4(l9_82));
}
float4 l9_149=l9_148;
l9_63=l9_149;
l9_41=l9_63;
l9_46=l9_41;
}
else
{
float2 l9_150=float2(0.0);
l9_150=l9_43.Surface_UVCoord0;
float2 l9_151=float2(0.0);
float2 l9_152=(*sc_set0.UserUniforms).patternScaleId03;
l9_151=l9_152;
float2 l9_153=float2(0.0);
l9_153=((l9_150-(*sc_set0.UserUniforms).Port_Center_N379)*l9_151)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_154=float2(0.0);
float2 l9_155=(*sc_set0.UserUniforms).patternOffsetId03;
l9_154=l9_155;
float2 l9_156=float2(0.0);
l9_156=l9_153+l9_154;
float l9_157=0.0;
float l9_158=(*sc_set0.UserUniforms).patternRotateId03;
l9_157=l9_158;
float2 l9_159=float2(0.0);
float2 l9_160=l9_156;
float l9_161=l9_157;
float2 l9_162=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_163=sin(radians(l9_161));
float l9_164=cos(radians(l9_161));
float2 l9_165=l9_160-l9_162;
l9_165=float2(dot(float2(l9_164,l9_163),l9_165),dot(float2(-l9_163,l9_164),l9_165))+l9_162;
l9_159=l9_165;
float4 l9_166=float4(0.0);
int l9_167;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_168=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_168=0;
}
else
{
l9_168=in.varStereoViewID;
}
int l9_169=l9_168;
l9_167=1-l9_169;
}
else
{
int l9_170=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_170=0;
}
else
{
l9_170=in.varStereoViewID;
}
int l9_171=l9_170;
l9_167=l9_171;
}
int l9_172=l9_167;
int l9_173=patternTextureId03Layout_tmp;
int l9_174=l9_172;
float2 l9_175=l9_159;
bool l9_176=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_177=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_178=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_179=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_180=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_181=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_182=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_183=0.0;
bool l9_184=l9_181&&(!l9_179);
float l9_185=1.0;
float l9_186=l9_175.x;
int l9_187=l9_178.x;
if (l9_187==1)
{
l9_186=fract(l9_186);
}
else
{
if (l9_187==2)
{
float l9_188=fract(l9_186);
float l9_189=l9_186-l9_188;
float l9_190=step(0.25,fract(l9_189*0.5));
l9_186=mix(l9_188,1.0-l9_188,fast::clamp(l9_190,0.0,1.0));
}
}
l9_175.x=l9_186;
float l9_191=l9_175.y;
int l9_192=l9_178.y;
if (l9_192==1)
{
l9_191=fract(l9_191);
}
else
{
if (l9_192==2)
{
float l9_193=fract(l9_191);
float l9_194=l9_191-l9_193;
float l9_195=step(0.25,fract(l9_194*0.5));
l9_191=mix(l9_193,1.0-l9_193,fast::clamp(l9_195,0.0,1.0));
}
}
l9_175.y=l9_191;
if (l9_179)
{
bool l9_196=l9_181;
bool l9_197;
if (l9_196)
{
l9_197=l9_178.x==3;
}
else
{
l9_197=l9_196;
}
float l9_198=l9_175.x;
float l9_199=l9_180.x;
float l9_200=l9_180.z;
bool l9_201=l9_197;
float l9_202=l9_185;
float l9_203=fast::clamp(l9_198,l9_199,l9_200);
float l9_204=step(abs(l9_198-l9_203),9.9999997e-06);
l9_202*=(l9_204+((1.0-float(l9_201))*(1.0-l9_204)));
l9_198=l9_203;
l9_175.x=l9_198;
l9_185=l9_202;
bool l9_205=l9_181;
bool l9_206;
if (l9_205)
{
l9_206=l9_178.y==3;
}
else
{
l9_206=l9_205;
}
float l9_207=l9_175.y;
float l9_208=l9_180.y;
float l9_209=l9_180.w;
bool l9_210=l9_206;
float l9_211=l9_185;
float l9_212=fast::clamp(l9_207,l9_208,l9_209);
float l9_213=step(abs(l9_207-l9_212),9.9999997e-06);
l9_211*=(l9_213+((1.0-float(l9_210))*(1.0-l9_213)));
l9_207=l9_212;
l9_175.y=l9_207;
l9_185=l9_211;
}
float2 l9_214=l9_175;
bool l9_215=l9_176;
float3x3 l9_216=l9_177;
if (l9_215)
{
l9_214=float2((l9_216*float3(l9_214,1.0)).xy);
}
float2 l9_217=l9_214;
l9_175=l9_217;
float l9_218=l9_175.x;
int l9_219=l9_178.x;
bool l9_220=l9_184;
float l9_221=l9_185;
if ((l9_219==0)||(l9_219==3))
{
float l9_222=l9_218;
float l9_223=0.0;
float l9_224=1.0;
bool l9_225=l9_220;
float l9_226=l9_221;
float l9_227=fast::clamp(l9_222,l9_223,l9_224);
float l9_228=step(abs(l9_222-l9_227),9.9999997e-06);
l9_226*=(l9_228+((1.0-float(l9_225))*(1.0-l9_228)));
l9_222=l9_227;
l9_218=l9_222;
l9_221=l9_226;
}
l9_175.x=l9_218;
l9_185=l9_221;
float l9_229=l9_175.y;
int l9_230=l9_178.y;
bool l9_231=l9_184;
float l9_232=l9_185;
if ((l9_230==0)||(l9_230==3))
{
float l9_233=l9_229;
float l9_234=0.0;
float l9_235=1.0;
bool l9_236=l9_231;
float l9_237=l9_232;
float l9_238=fast::clamp(l9_233,l9_234,l9_235);
float l9_239=step(abs(l9_233-l9_238),9.9999997e-06);
l9_237*=(l9_239+((1.0-float(l9_236))*(1.0-l9_239)));
l9_233=l9_238;
l9_229=l9_233;
l9_232=l9_237;
}
l9_175.y=l9_229;
l9_185=l9_232;
float2 l9_240=l9_175;
int l9_241=l9_173;
int l9_242=l9_174;
float l9_243=l9_183;
float2 l9_244=l9_240;
int l9_245=l9_241;
int l9_246=l9_242;
float3 l9_247=float3(0.0);
if (l9_245==0)
{
l9_247=float3(l9_244,0.0);
}
else
{
if (l9_245==1)
{
l9_247=float3(l9_244.x,(l9_244.y*0.5)+(0.5-(float(l9_246)*0.5)),0.0);
}
else
{
l9_247=float3(l9_244,float(l9_246));
}
}
float3 l9_248=l9_247;
float3 l9_249=l9_248;
float4 l9_250=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_249.xy,bias(l9_243));
float4 l9_251=l9_250;
if (l9_181)
{
l9_251=mix(l9_182,l9_251,float4(l9_185));
}
float4 l9_252=l9_251;
l9_166=l9_252;
float l9_253=0.0;
float3 l9_254=l9_166.xyz;
float l9_255=l9_254.x;
l9_253=l9_255;
l9_42=float4(l9_253);
l9_46=l9_42;
}
l9_39=l9_46;
float4 l9_256=float4(0.0);
l9_256=l9_37*l9_39;
l9_31=l9_256;
l9_36=l9_31;
}
else
{
float4 l9_257=float4(0.0);
float4 l9_258=(*sc_set0.UserUniforms).colorId03;
l9_257=l9_258;
float4 l9_259=float4(0.0);
float l9_260=0.0;
float4 l9_261=float4(0.0);
float4 l9_262=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_263=l9_33;
float l9_264=0.0;
float l9_265=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_264=l9_265;
l9_260=l9_264;
float4 l9_266;
if ((l9_260*1.0)!=0.0)
{
float2 l9_267=float2(0.0);
l9_267=l9_263.Surface_UVCoord0;
float4 l9_268=float4(0.0);
int l9_269;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_270=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_270=0;
}
else
{
l9_270=in.varStereoViewID;
}
int l9_271=l9_270;
l9_269=1-l9_271;
}
else
{
int l9_272=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_272=0;
}
else
{
l9_272=in.varStereoViewID;
}
int l9_273=l9_272;
l9_269=l9_273;
}
int l9_274=l9_269;
int l9_275=greyMaskIdLayout_tmp;
int l9_276=l9_274;
float2 l9_277=l9_267;
bool l9_278=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_279=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_280=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_281=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_282=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_283=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_284=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_285=0.0;
bool l9_286=l9_283&&(!l9_281);
float l9_287=1.0;
float l9_288=l9_277.x;
int l9_289=l9_280.x;
if (l9_289==1)
{
l9_288=fract(l9_288);
}
else
{
if (l9_289==2)
{
float l9_290=fract(l9_288);
float l9_291=l9_288-l9_290;
float l9_292=step(0.25,fract(l9_291*0.5));
l9_288=mix(l9_290,1.0-l9_290,fast::clamp(l9_292,0.0,1.0));
}
}
l9_277.x=l9_288;
float l9_293=l9_277.y;
int l9_294=l9_280.y;
if (l9_294==1)
{
l9_293=fract(l9_293);
}
else
{
if (l9_294==2)
{
float l9_295=fract(l9_293);
float l9_296=l9_293-l9_295;
float l9_297=step(0.25,fract(l9_296*0.5));
l9_293=mix(l9_295,1.0-l9_295,fast::clamp(l9_297,0.0,1.0));
}
}
l9_277.y=l9_293;
if (l9_281)
{
bool l9_298=l9_283;
bool l9_299;
if (l9_298)
{
l9_299=l9_280.x==3;
}
else
{
l9_299=l9_298;
}
float l9_300=l9_277.x;
float l9_301=l9_282.x;
float l9_302=l9_282.z;
bool l9_303=l9_299;
float l9_304=l9_287;
float l9_305=fast::clamp(l9_300,l9_301,l9_302);
float l9_306=step(abs(l9_300-l9_305),9.9999997e-06);
l9_304*=(l9_306+((1.0-float(l9_303))*(1.0-l9_306)));
l9_300=l9_305;
l9_277.x=l9_300;
l9_287=l9_304;
bool l9_307=l9_283;
bool l9_308;
if (l9_307)
{
l9_308=l9_280.y==3;
}
else
{
l9_308=l9_307;
}
float l9_309=l9_277.y;
float l9_310=l9_282.y;
float l9_311=l9_282.w;
bool l9_312=l9_308;
float l9_313=l9_287;
float l9_314=fast::clamp(l9_309,l9_310,l9_311);
float l9_315=step(abs(l9_309-l9_314),9.9999997e-06);
l9_313*=(l9_315+((1.0-float(l9_312))*(1.0-l9_315)));
l9_309=l9_314;
l9_277.y=l9_309;
l9_287=l9_313;
}
float2 l9_316=l9_277;
bool l9_317=l9_278;
float3x3 l9_318=l9_279;
if (l9_317)
{
l9_316=float2((l9_318*float3(l9_316,1.0)).xy);
}
float2 l9_319=l9_316;
l9_277=l9_319;
float l9_320=l9_277.x;
int l9_321=l9_280.x;
bool l9_322=l9_286;
float l9_323=l9_287;
if ((l9_321==0)||(l9_321==3))
{
float l9_324=l9_320;
float l9_325=0.0;
float l9_326=1.0;
bool l9_327=l9_322;
float l9_328=l9_323;
float l9_329=fast::clamp(l9_324,l9_325,l9_326);
float l9_330=step(abs(l9_324-l9_329),9.9999997e-06);
l9_328*=(l9_330+((1.0-float(l9_327))*(1.0-l9_330)));
l9_324=l9_329;
l9_320=l9_324;
l9_323=l9_328;
}
l9_277.x=l9_320;
l9_287=l9_323;
float l9_331=l9_277.y;
int l9_332=l9_280.y;
bool l9_333=l9_286;
float l9_334=l9_287;
if ((l9_332==0)||(l9_332==3))
{
float l9_335=l9_331;
float l9_336=0.0;
float l9_337=1.0;
bool l9_338=l9_333;
float l9_339=l9_334;
float l9_340=fast::clamp(l9_335,l9_336,l9_337);
float l9_341=step(abs(l9_335-l9_340),9.9999997e-06);
l9_339*=(l9_341+((1.0-float(l9_338))*(1.0-l9_341)));
l9_335=l9_340;
l9_331=l9_335;
l9_334=l9_339;
}
l9_277.y=l9_331;
l9_287=l9_334;
float2 l9_342=l9_277;
int l9_343=l9_275;
int l9_344=l9_276;
float l9_345=l9_285;
float2 l9_346=l9_342;
int l9_347=l9_343;
int l9_348=l9_344;
float3 l9_349=float3(0.0);
if (l9_347==0)
{
l9_349=float3(l9_346,0.0);
}
else
{
if (l9_347==1)
{
l9_349=float3(l9_346.x,(l9_346.y*0.5)+(0.5-(float(l9_348)*0.5)),0.0);
}
else
{
l9_349=float3(l9_346,float(l9_348));
}
}
float3 l9_350=l9_349;
float3 l9_351=l9_350;
float4 l9_352=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_351.xy,bias(l9_345));
float4 l9_353=l9_352;
if (l9_283)
{
l9_353=mix(l9_284,l9_353,float4(l9_287));
}
float4 l9_354=l9_353;
l9_268=l9_354;
float l9_355=0.0;
l9_355=l9_268.x;
float l9_356=0.0;
l9_356=step(l9_355,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_357=0.0;
l9_357=step(l9_355,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_358=0.0;
l9_358=l9_356-l9_357;
l9_261=float4(l9_358);
l9_266=l9_261;
}
else
{
l9_266=l9_262;
}
l9_259=l9_266;
float4 l9_359=float4(0.0);
l9_359=l9_257*l9_259;
l9_32=l9_359;
l9_36=l9_32;
}
l9_29=l9_36;
float4 l9_360=float4(0.0);
float l9_361=0.0;
float4 l9_362=float4(0.0);
float4 l9_363=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_364=l9_15;
float l9_365=0.0;
float l9_366=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_365=l9_366;
l9_361=l9_365;
float4 l9_367;
if ((l9_361*1.0)!=0.0)
{
float2 l9_368=float2(0.0);
l9_368=l9_364.Surface_UVCoord0;
float4 l9_369=float4(0.0);
int l9_370;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_371=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_371=0;
}
else
{
l9_371=in.varStereoViewID;
}
int l9_372=l9_371;
l9_370=1-l9_372;
}
else
{
int l9_373=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_373=0;
}
else
{
l9_373=in.varStereoViewID;
}
int l9_374=l9_373;
l9_370=l9_374;
}
int l9_375=l9_370;
int l9_376=greyMaskIdLayout_tmp;
int l9_377=l9_375;
float2 l9_378=l9_368;
bool l9_379=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_380=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_381=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_382=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_383=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_384=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_385=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_386=0.0;
bool l9_387=l9_384&&(!l9_382);
float l9_388=1.0;
float l9_389=l9_378.x;
int l9_390=l9_381.x;
if (l9_390==1)
{
l9_389=fract(l9_389);
}
else
{
if (l9_390==2)
{
float l9_391=fract(l9_389);
float l9_392=l9_389-l9_391;
float l9_393=step(0.25,fract(l9_392*0.5));
l9_389=mix(l9_391,1.0-l9_391,fast::clamp(l9_393,0.0,1.0));
}
}
l9_378.x=l9_389;
float l9_394=l9_378.y;
int l9_395=l9_381.y;
if (l9_395==1)
{
l9_394=fract(l9_394);
}
else
{
if (l9_395==2)
{
float l9_396=fract(l9_394);
float l9_397=l9_394-l9_396;
float l9_398=step(0.25,fract(l9_397*0.5));
l9_394=mix(l9_396,1.0-l9_396,fast::clamp(l9_398,0.0,1.0));
}
}
l9_378.y=l9_394;
if (l9_382)
{
bool l9_399=l9_384;
bool l9_400;
if (l9_399)
{
l9_400=l9_381.x==3;
}
else
{
l9_400=l9_399;
}
float l9_401=l9_378.x;
float l9_402=l9_383.x;
float l9_403=l9_383.z;
bool l9_404=l9_400;
float l9_405=l9_388;
float l9_406=fast::clamp(l9_401,l9_402,l9_403);
float l9_407=step(abs(l9_401-l9_406),9.9999997e-06);
l9_405*=(l9_407+((1.0-float(l9_404))*(1.0-l9_407)));
l9_401=l9_406;
l9_378.x=l9_401;
l9_388=l9_405;
bool l9_408=l9_384;
bool l9_409;
if (l9_408)
{
l9_409=l9_381.y==3;
}
else
{
l9_409=l9_408;
}
float l9_410=l9_378.y;
float l9_411=l9_383.y;
float l9_412=l9_383.w;
bool l9_413=l9_409;
float l9_414=l9_388;
float l9_415=fast::clamp(l9_410,l9_411,l9_412);
float l9_416=step(abs(l9_410-l9_415),9.9999997e-06);
l9_414*=(l9_416+((1.0-float(l9_413))*(1.0-l9_416)));
l9_410=l9_415;
l9_378.y=l9_410;
l9_388=l9_414;
}
float2 l9_417=l9_378;
bool l9_418=l9_379;
float3x3 l9_419=l9_380;
if (l9_418)
{
l9_417=float2((l9_419*float3(l9_417,1.0)).xy);
}
float2 l9_420=l9_417;
l9_378=l9_420;
float l9_421=l9_378.x;
int l9_422=l9_381.x;
bool l9_423=l9_387;
float l9_424=l9_388;
if ((l9_422==0)||(l9_422==3))
{
float l9_425=l9_421;
float l9_426=0.0;
float l9_427=1.0;
bool l9_428=l9_423;
float l9_429=l9_424;
float l9_430=fast::clamp(l9_425,l9_426,l9_427);
float l9_431=step(abs(l9_425-l9_430),9.9999997e-06);
l9_429*=(l9_431+((1.0-float(l9_428))*(1.0-l9_431)));
l9_425=l9_430;
l9_421=l9_425;
l9_424=l9_429;
}
l9_378.x=l9_421;
l9_388=l9_424;
float l9_432=l9_378.y;
int l9_433=l9_381.y;
bool l9_434=l9_387;
float l9_435=l9_388;
if ((l9_433==0)||(l9_433==3))
{
float l9_436=l9_432;
float l9_437=0.0;
float l9_438=1.0;
bool l9_439=l9_434;
float l9_440=l9_435;
float l9_441=fast::clamp(l9_436,l9_437,l9_438);
float l9_442=step(abs(l9_436-l9_441),9.9999997e-06);
l9_440*=(l9_442+((1.0-float(l9_439))*(1.0-l9_442)));
l9_436=l9_441;
l9_432=l9_436;
l9_435=l9_440;
}
l9_378.y=l9_432;
l9_388=l9_435;
float2 l9_443=l9_378;
int l9_444=l9_376;
int l9_445=l9_377;
float l9_446=l9_386;
float2 l9_447=l9_443;
int l9_448=l9_444;
int l9_449=l9_445;
float3 l9_450=float3(0.0);
if (l9_448==0)
{
l9_450=float3(l9_447,0.0);
}
else
{
if (l9_448==1)
{
l9_450=float3(l9_447.x,(l9_447.y*0.5)+(0.5-(float(l9_449)*0.5)),0.0);
}
else
{
l9_450=float3(l9_447,float(l9_449));
}
}
float3 l9_451=l9_450;
float3 l9_452=l9_451;
float4 l9_453=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_452.xy,bias(l9_446));
float4 l9_454=l9_453;
if (l9_384)
{
l9_454=mix(l9_385,l9_454,float4(l9_388));
}
float4 l9_455=l9_454;
l9_369=l9_455;
float l9_456=0.0;
l9_456=l9_369.x;
float l9_457=0.0;
l9_457=step(l9_456,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_458=0.0;
l9_458=step(l9_456,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_459=0.0;
l9_459=l9_457-l9_458;
l9_362=float4(l9_459);
l9_367=l9_362;
}
else
{
l9_367=l9_363;
}
l9_360=l9_367;
float4 l9_460=float4(0.0);
l9_460=l9_29*l9_360;
float4 l9_461=float4(0.0);
float4 l9_462=(*sc_set0.UserUniforms).colorId03;
l9_461=l9_462;
float4 l9_463=float4(0.0);
l9_463=l9_461*l9_360;
float4 l9_464=float4(0.0);
float4 l9_465=l9_460;
float4 l9_466=l9_463;
float4 l9_467=l9_465;
float4 l9_468=l9_466;
float3 l9_469=l9_467.xyz*l9_467.w;
l9_467=float4(l9_469.x,l9_469.y,l9_469.z,l9_467.w);
float4 l9_470=l9_467+(l9_468*(1.0-l9_467.w));
l9_464=l9_470;
float4 l9_471=float4(0.0);
l9_471=float4(l9_23)*l9_464;
float4 l9_472=float4(0.0);
l9_472=l9_471+l9_464;
l9_13=l9_472;
l9_18=l9_13;
}
else
{
float4 l9_473=float4(0.0);
float l9_474=0.0;
float4 l9_475=float4(0.0);
float4 l9_476=float4(0.0);
ssGlobals l9_477=l9_15;
float l9_478=0.0;
float l9_479=float((*sc_set0.UserUniforms).patternOnOffId03!=0);
l9_478=l9_479;
l9_474=l9_478;
float4 l9_480;
if ((l9_474*1.0)!=0.0)
{
float4 l9_481=float4(0.0);
float4 l9_482=(*sc_set0.UserUniforms).patternColorId03;
l9_481=l9_482;
float4 l9_483=float4(0.0);
float l9_484=0.0;
float4 l9_485=float4(0.0);
float4 l9_486=float4(0.0);
ssGlobals l9_487=l9_477;
float l9_488=0.0;
float l9_489=float((*sc_set0.UserUniforms).pngPatternId03!=0);
l9_488=l9_489;
l9_484=l9_488;
float4 l9_490;
if ((l9_484*1.0)!=0.0)
{
float2 l9_491=float2(0.0);
l9_491=l9_487.Surface_UVCoord0;
float2 l9_492=float2(0.0);
float2 l9_493=(*sc_set0.UserUniforms).patternScaleId03;
l9_492=l9_493;
float2 l9_494=float2(0.0);
l9_494=((l9_491-(*sc_set0.UserUniforms).Port_Center_N379)*l9_492)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_495=float2(0.0);
float2 l9_496=(*sc_set0.UserUniforms).patternOffsetId03;
l9_495=l9_496;
float2 l9_497=float2(0.0);
l9_497=l9_494+l9_495;
float l9_498=0.0;
float l9_499=(*sc_set0.UserUniforms).patternRotateId03;
l9_498=l9_499;
float2 l9_500=float2(0.0);
float2 l9_501=l9_497;
float l9_502=l9_498;
float2 l9_503=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_504=sin(radians(l9_502));
float l9_505=cos(radians(l9_502));
float2 l9_506=l9_501-l9_503;
l9_506=float2(dot(float2(l9_505,l9_504),l9_506),dot(float2(-l9_504,l9_505),l9_506))+l9_503;
l9_500=l9_506;
float4 l9_507=float4(0.0);
int l9_508;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_509=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_509=0;
}
else
{
l9_509=in.varStereoViewID;
}
int l9_510=l9_509;
l9_508=1-l9_510;
}
else
{
int l9_511=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_511=0;
}
else
{
l9_511=in.varStereoViewID;
}
int l9_512=l9_511;
l9_508=l9_512;
}
int l9_513=l9_508;
int l9_514=patternTextureId03Layout_tmp;
int l9_515=l9_513;
float2 l9_516=l9_500;
bool l9_517=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_518=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_519=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_520=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_521=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_522=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_523=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_524=0.0;
bool l9_525=l9_522&&(!l9_520);
float l9_526=1.0;
float l9_527=l9_516.x;
int l9_528=l9_519.x;
if (l9_528==1)
{
l9_527=fract(l9_527);
}
else
{
if (l9_528==2)
{
float l9_529=fract(l9_527);
float l9_530=l9_527-l9_529;
float l9_531=step(0.25,fract(l9_530*0.5));
l9_527=mix(l9_529,1.0-l9_529,fast::clamp(l9_531,0.0,1.0));
}
}
l9_516.x=l9_527;
float l9_532=l9_516.y;
int l9_533=l9_519.y;
if (l9_533==1)
{
l9_532=fract(l9_532);
}
else
{
if (l9_533==2)
{
float l9_534=fract(l9_532);
float l9_535=l9_532-l9_534;
float l9_536=step(0.25,fract(l9_535*0.5));
l9_532=mix(l9_534,1.0-l9_534,fast::clamp(l9_536,0.0,1.0));
}
}
l9_516.y=l9_532;
if (l9_520)
{
bool l9_537=l9_522;
bool l9_538;
if (l9_537)
{
l9_538=l9_519.x==3;
}
else
{
l9_538=l9_537;
}
float l9_539=l9_516.x;
float l9_540=l9_521.x;
float l9_541=l9_521.z;
bool l9_542=l9_538;
float l9_543=l9_526;
float l9_544=fast::clamp(l9_539,l9_540,l9_541);
float l9_545=step(abs(l9_539-l9_544),9.9999997e-06);
l9_543*=(l9_545+((1.0-float(l9_542))*(1.0-l9_545)));
l9_539=l9_544;
l9_516.x=l9_539;
l9_526=l9_543;
bool l9_546=l9_522;
bool l9_547;
if (l9_546)
{
l9_547=l9_519.y==3;
}
else
{
l9_547=l9_546;
}
float l9_548=l9_516.y;
float l9_549=l9_521.y;
float l9_550=l9_521.w;
bool l9_551=l9_547;
float l9_552=l9_526;
float l9_553=fast::clamp(l9_548,l9_549,l9_550);
float l9_554=step(abs(l9_548-l9_553),9.9999997e-06);
l9_552*=(l9_554+((1.0-float(l9_551))*(1.0-l9_554)));
l9_548=l9_553;
l9_516.y=l9_548;
l9_526=l9_552;
}
float2 l9_555=l9_516;
bool l9_556=l9_517;
float3x3 l9_557=l9_518;
if (l9_556)
{
l9_555=float2((l9_557*float3(l9_555,1.0)).xy);
}
float2 l9_558=l9_555;
l9_516=l9_558;
float l9_559=l9_516.x;
int l9_560=l9_519.x;
bool l9_561=l9_525;
float l9_562=l9_526;
if ((l9_560==0)||(l9_560==3))
{
float l9_563=l9_559;
float l9_564=0.0;
float l9_565=1.0;
bool l9_566=l9_561;
float l9_567=l9_562;
float l9_568=fast::clamp(l9_563,l9_564,l9_565);
float l9_569=step(abs(l9_563-l9_568),9.9999997e-06);
l9_567*=(l9_569+((1.0-float(l9_566))*(1.0-l9_569)));
l9_563=l9_568;
l9_559=l9_563;
l9_562=l9_567;
}
l9_516.x=l9_559;
l9_526=l9_562;
float l9_570=l9_516.y;
int l9_571=l9_519.y;
bool l9_572=l9_525;
float l9_573=l9_526;
if ((l9_571==0)||(l9_571==3))
{
float l9_574=l9_570;
float l9_575=0.0;
float l9_576=1.0;
bool l9_577=l9_572;
float l9_578=l9_573;
float l9_579=fast::clamp(l9_574,l9_575,l9_576);
float l9_580=step(abs(l9_574-l9_579),9.9999997e-06);
l9_578*=(l9_580+((1.0-float(l9_577))*(1.0-l9_580)));
l9_574=l9_579;
l9_570=l9_574;
l9_573=l9_578;
}
l9_516.y=l9_570;
l9_526=l9_573;
float2 l9_581=l9_516;
int l9_582=l9_514;
int l9_583=l9_515;
float l9_584=l9_524;
float2 l9_585=l9_581;
int l9_586=l9_582;
int l9_587=l9_583;
float3 l9_588=float3(0.0);
if (l9_586==0)
{
l9_588=float3(l9_585,0.0);
}
else
{
if (l9_586==1)
{
l9_588=float3(l9_585.x,(l9_585.y*0.5)+(0.5-(float(l9_587)*0.5)),0.0);
}
else
{
l9_588=float3(l9_585,float(l9_587));
}
}
float3 l9_589=l9_588;
float3 l9_590=l9_589;
float4 l9_591=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_590.xy,bias(l9_584));
float4 l9_592=l9_591;
if (l9_522)
{
l9_592=mix(l9_523,l9_592,float4(l9_526));
}
float4 l9_593=l9_592;
l9_507=l9_593;
l9_485=l9_507;
l9_490=l9_485;
}
else
{
float2 l9_594=float2(0.0);
l9_594=l9_487.Surface_UVCoord0;
float2 l9_595=float2(0.0);
float2 l9_596=(*sc_set0.UserUniforms).patternScaleId03;
l9_595=l9_596;
float2 l9_597=float2(0.0);
l9_597=((l9_594-(*sc_set0.UserUniforms).Port_Center_N379)*l9_595)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_598=float2(0.0);
float2 l9_599=(*sc_set0.UserUniforms).patternOffsetId03;
l9_598=l9_599;
float2 l9_600=float2(0.0);
l9_600=l9_597+l9_598;
float l9_601=0.0;
float l9_602=(*sc_set0.UserUniforms).patternRotateId03;
l9_601=l9_602;
float2 l9_603=float2(0.0);
float2 l9_604=l9_600;
float l9_605=l9_601;
float2 l9_606=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_607=sin(radians(l9_605));
float l9_608=cos(radians(l9_605));
float2 l9_609=l9_604-l9_606;
l9_609=float2(dot(float2(l9_608,l9_607),l9_609),dot(float2(-l9_607,l9_608),l9_609))+l9_606;
l9_603=l9_609;
float4 l9_610=float4(0.0);
int l9_611;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_612=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_612=0;
}
else
{
l9_612=in.varStereoViewID;
}
int l9_613=l9_612;
l9_611=1-l9_613;
}
else
{
int l9_614=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_614=0;
}
else
{
l9_614=in.varStereoViewID;
}
int l9_615=l9_614;
l9_611=l9_615;
}
int l9_616=l9_611;
int l9_617=patternTextureId03Layout_tmp;
int l9_618=l9_616;
float2 l9_619=l9_603;
bool l9_620=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_621=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_622=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_623=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_624=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_625=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_626=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_627=0.0;
bool l9_628=l9_625&&(!l9_623);
float l9_629=1.0;
float l9_630=l9_619.x;
int l9_631=l9_622.x;
if (l9_631==1)
{
l9_630=fract(l9_630);
}
else
{
if (l9_631==2)
{
float l9_632=fract(l9_630);
float l9_633=l9_630-l9_632;
float l9_634=step(0.25,fract(l9_633*0.5));
l9_630=mix(l9_632,1.0-l9_632,fast::clamp(l9_634,0.0,1.0));
}
}
l9_619.x=l9_630;
float l9_635=l9_619.y;
int l9_636=l9_622.y;
if (l9_636==1)
{
l9_635=fract(l9_635);
}
else
{
if (l9_636==2)
{
float l9_637=fract(l9_635);
float l9_638=l9_635-l9_637;
float l9_639=step(0.25,fract(l9_638*0.5));
l9_635=mix(l9_637,1.0-l9_637,fast::clamp(l9_639,0.0,1.0));
}
}
l9_619.y=l9_635;
if (l9_623)
{
bool l9_640=l9_625;
bool l9_641;
if (l9_640)
{
l9_641=l9_622.x==3;
}
else
{
l9_641=l9_640;
}
float l9_642=l9_619.x;
float l9_643=l9_624.x;
float l9_644=l9_624.z;
bool l9_645=l9_641;
float l9_646=l9_629;
float l9_647=fast::clamp(l9_642,l9_643,l9_644);
float l9_648=step(abs(l9_642-l9_647),9.9999997e-06);
l9_646*=(l9_648+((1.0-float(l9_645))*(1.0-l9_648)));
l9_642=l9_647;
l9_619.x=l9_642;
l9_629=l9_646;
bool l9_649=l9_625;
bool l9_650;
if (l9_649)
{
l9_650=l9_622.y==3;
}
else
{
l9_650=l9_649;
}
float l9_651=l9_619.y;
float l9_652=l9_624.y;
float l9_653=l9_624.w;
bool l9_654=l9_650;
float l9_655=l9_629;
float l9_656=fast::clamp(l9_651,l9_652,l9_653);
float l9_657=step(abs(l9_651-l9_656),9.9999997e-06);
l9_655*=(l9_657+((1.0-float(l9_654))*(1.0-l9_657)));
l9_651=l9_656;
l9_619.y=l9_651;
l9_629=l9_655;
}
float2 l9_658=l9_619;
bool l9_659=l9_620;
float3x3 l9_660=l9_621;
if (l9_659)
{
l9_658=float2((l9_660*float3(l9_658,1.0)).xy);
}
float2 l9_661=l9_658;
l9_619=l9_661;
float l9_662=l9_619.x;
int l9_663=l9_622.x;
bool l9_664=l9_628;
float l9_665=l9_629;
if ((l9_663==0)||(l9_663==3))
{
float l9_666=l9_662;
float l9_667=0.0;
float l9_668=1.0;
bool l9_669=l9_664;
float l9_670=l9_665;
float l9_671=fast::clamp(l9_666,l9_667,l9_668);
float l9_672=step(abs(l9_666-l9_671),9.9999997e-06);
l9_670*=(l9_672+((1.0-float(l9_669))*(1.0-l9_672)));
l9_666=l9_671;
l9_662=l9_666;
l9_665=l9_670;
}
l9_619.x=l9_662;
l9_629=l9_665;
float l9_673=l9_619.y;
int l9_674=l9_622.y;
bool l9_675=l9_628;
float l9_676=l9_629;
if ((l9_674==0)||(l9_674==3))
{
float l9_677=l9_673;
float l9_678=0.0;
float l9_679=1.0;
bool l9_680=l9_675;
float l9_681=l9_676;
float l9_682=fast::clamp(l9_677,l9_678,l9_679);
float l9_683=step(abs(l9_677-l9_682),9.9999997e-06);
l9_681*=(l9_683+((1.0-float(l9_680))*(1.0-l9_683)));
l9_677=l9_682;
l9_673=l9_677;
l9_676=l9_681;
}
l9_619.y=l9_673;
l9_629=l9_676;
float2 l9_684=l9_619;
int l9_685=l9_617;
int l9_686=l9_618;
float l9_687=l9_627;
float2 l9_688=l9_684;
int l9_689=l9_685;
int l9_690=l9_686;
float3 l9_691=float3(0.0);
if (l9_689==0)
{
l9_691=float3(l9_688,0.0);
}
else
{
if (l9_689==1)
{
l9_691=float3(l9_688.x,(l9_688.y*0.5)+(0.5-(float(l9_690)*0.5)),0.0);
}
else
{
l9_691=float3(l9_688,float(l9_690));
}
}
float3 l9_692=l9_691;
float3 l9_693=l9_692;
float4 l9_694=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_693.xy,bias(l9_687));
float4 l9_695=l9_694;
if (l9_625)
{
l9_695=mix(l9_626,l9_695,float4(l9_629));
}
float4 l9_696=l9_695;
l9_610=l9_696;
float l9_697=0.0;
float3 l9_698=l9_610.xyz;
float l9_699=l9_698.x;
l9_697=l9_699;
l9_486=float4(l9_697);
l9_490=l9_486;
}
l9_483=l9_490;
float4 l9_700=float4(0.0);
l9_700=l9_481*l9_483;
l9_475=l9_700;
l9_480=l9_475;
}
else
{
float4 l9_701=float4(0.0);
float4 l9_702=(*sc_set0.UserUniforms).colorId03;
l9_701=l9_702;
float4 l9_703=float4(0.0);
float l9_704=0.0;
float4 l9_705=float4(0.0);
float4 l9_706=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_707=l9_477;
float l9_708=0.0;
float l9_709=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_708=l9_709;
l9_704=l9_708;
float4 l9_710;
if ((l9_704*1.0)!=0.0)
{
float2 l9_711=float2(0.0);
l9_711=l9_707.Surface_UVCoord0;
float4 l9_712=float4(0.0);
int l9_713;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_714=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_714=0;
}
else
{
l9_714=in.varStereoViewID;
}
int l9_715=l9_714;
l9_713=1-l9_715;
}
else
{
int l9_716=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_716=0;
}
else
{
l9_716=in.varStereoViewID;
}
int l9_717=l9_716;
l9_713=l9_717;
}
int l9_718=l9_713;
int l9_719=greyMaskIdLayout_tmp;
int l9_720=l9_718;
float2 l9_721=l9_711;
bool l9_722=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_723=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_724=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_725=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_726=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_727=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_728=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_729=0.0;
bool l9_730=l9_727&&(!l9_725);
float l9_731=1.0;
float l9_732=l9_721.x;
int l9_733=l9_724.x;
if (l9_733==1)
{
l9_732=fract(l9_732);
}
else
{
if (l9_733==2)
{
float l9_734=fract(l9_732);
float l9_735=l9_732-l9_734;
float l9_736=step(0.25,fract(l9_735*0.5));
l9_732=mix(l9_734,1.0-l9_734,fast::clamp(l9_736,0.0,1.0));
}
}
l9_721.x=l9_732;
float l9_737=l9_721.y;
int l9_738=l9_724.y;
if (l9_738==1)
{
l9_737=fract(l9_737);
}
else
{
if (l9_738==2)
{
float l9_739=fract(l9_737);
float l9_740=l9_737-l9_739;
float l9_741=step(0.25,fract(l9_740*0.5));
l9_737=mix(l9_739,1.0-l9_739,fast::clamp(l9_741,0.0,1.0));
}
}
l9_721.y=l9_737;
if (l9_725)
{
bool l9_742=l9_727;
bool l9_743;
if (l9_742)
{
l9_743=l9_724.x==3;
}
else
{
l9_743=l9_742;
}
float l9_744=l9_721.x;
float l9_745=l9_726.x;
float l9_746=l9_726.z;
bool l9_747=l9_743;
float l9_748=l9_731;
float l9_749=fast::clamp(l9_744,l9_745,l9_746);
float l9_750=step(abs(l9_744-l9_749),9.9999997e-06);
l9_748*=(l9_750+((1.0-float(l9_747))*(1.0-l9_750)));
l9_744=l9_749;
l9_721.x=l9_744;
l9_731=l9_748;
bool l9_751=l9_727;
bool l9_752;
if (l9_751)
{
l9_752=l9_724.y==3;
}
else
{
l9_752=l9_751;
}
float l9_753=l9_721.y;
float l9_754=l9_726.y;
float l9_755=l9_726.w;
bool l9_756=l9_752;
float l9_757=l9_731;
float l9_758=fast::clamp(l9_753,l9_754,l9_755);
float l9_759=step(abs(l9_753-l9_758),9.9999997e-06);
l9_757*=(l9_759+((1.0-float(l9_756))*(1.0-l9_759)));
l9_753=l9_758;
l9_721.y=l9_753;
l9_731=l9_757;
}
float2 l9_760=l9_721;
bool l9_761=l9_722;
float3x3 l9_762=l9_723;
if (l9_761)
{
l9_760=float2((l9_762*float3(l9_760,1.0)).xy);
}
float2 l9_763=l9_760;
l9_721=l9_763;
float l9_764=l9_721.x;
int l9_765=l9_724.x;
bool l9_766=l9_730;
float l9_767=l9_731;
if ((l9_765==0)||(l9_765==3))
{
float l9_768=l9_764;
float l9_769=0.0;
float l9_770=1.0;
bool l9_771=l9_766;
float l9_772=l9_767;
float l9_773=fast::clamp(l9_768,l9_769,l9_770);
float l9_774=step(abs(l9_768-l9_773),9.9999997e-06);
l9_772*=(l9_774+((1.0-float(l9_771))*(1.0-l9_774)));
l9_768=l9_773;
l9_764=l9_768;
l9_767=l9_772;
}
l9_721.x=l9_764;
l9_731=l9_767;
float l9_775=l9_721.y;
int l9_776=l9_724.y;
bool l9_777=l9_730;
float l9_778=l9_731;
if ((l9_776==0)||(l9_776==3))
{
float l9_779=l9_775;
float l9_780=0.0;
float l9_781=1.0;
bool l9_782=l9_777;
float l9_783=l9_778;
float l9_784=fast::clamp(l9_779,l9_780,l9_781);
float l9_785=step(abs(l9_779-l9_784),9.9999997e-06);
l9_783*=(l9_785+((1.0-float(l9_782))*(1.0-l9_785)));
l9_779=l9_784;
l9_775=l9_779;
l9_778=l9_783;
}
l9_721.y=l9_775;
l9_731=l9_778;
float2 l9_786=l9_721;
int l9_787=l9_719;
int l9_788=l9_720;
float l9_789=l9_729;
float2 l9_790=l9_786;
int l9_791=l9_787;
int l9_792=l9_788;
float3 l9_793=float3(0.0);
if (l9_791==0)
{
l9_793=float3(l9_790,0.0);
}
else
{
if (l9_791==1)
{
l9_793=float3(l9_790.x,(l9_790.y*0.5)+(0.5-(float(l9_792)*0.5)),0.0);
}
else
{
l9_793=float3(l9_790,float(l9_792));
}
}
float3 l9_794=l9_793;
float3 l9_795=l9_794;
float4 l9_796=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_795.xy,bias(l9_789));
float4 l9_797=l9_796;
if (l9_727)
{
l9_797=mix(l9_728,l9_797,float4(l9_731));
}
float4 l9_798=l9_797;
l9_712=l9_798;
float l9_799=0.0;
l9_799=l9_712.x;
float l9_800=0.0;
l9_800=step(l9_799,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_801=0.0;
l9_801=step(l9_799,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_802=0.0;
l9_802=l9_800-l9_801;
l9_705=float4(l9_802);
l9_710=l9_705;
}
else
{
l9_710=l9_706;
}
l9_703=l9_710;
float4 l9_803=float4(0.0);
l9_803=l9_701*l9_703;
l9_476=l9_803;
l9_480=l9_476;
}
l9_473=l9_480;
float4 l9_804=float4(0.0);
float l9_805=0.0;
float4 l9_806=float4(0.0);
float4 l9_807=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_808=l9_15;
float l9_809=0.0;
float l9_810=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_809=l9_810;
l9_805=l9_809;
float4 l9_811;
if ((l9_805*1.0)!=0.0)
{
float2 l9_812=float2(0.0);
l9_812=l9_808.Surface_UVCoord0;
float4 l9_813=float4(0.0);
int l9_814;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_815=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_815=0;
}
else
{
l9_815=in.varStereoViewID;
}
int l9_816=l9_815;
l9_814=1-l9_816;
}
else
{
int l9_817=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_817=0;
}
else
{
l9_817=in.varStereoViewID;
}
int l9_818=l9_817;
l9_814=l9_818;
}
int l9_819=l9_814;
int l9_820=greyMaskIdLayout_tmp;
int l9_821=l9_819;
float2 l9_822=l9_812;
bool l9_823=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_824=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_825=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_826=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_827=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_828=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_829=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_830=0.0;
bool l9_831=l9_828&&(!l9_826);
float l9_832=1.0;
float l9_833=l9_822.x;
int l9_834=l9_825.x;
if (l9_834==1)
{
l9_833=fract(l9_833);
}
else
{
if (l9_834==2)
{
float l9_835=fract(l9_833);
float l9_836=l9_833-l9_835;
float l9_837=step(0.25,fract(l9_836*0.5));
l9_833=mix(l9_835,1.0-l9_835,fast::clamp(l9_837,0.0,1.0));
}
}
l9_822.x=l9_833;
float l9_838=l9_822.y;
int l9_839=l9_825.y;
if (l9_839==1)
{
l9_838=fract(l9_838);
}
else
{
if (l9_839==2)
{
float l9_840=fract(l9_838);
float l9_841=l9_838-l9_840;
float l9_842=step(0.25,fract(l9_841*0.5));
l9_838=mix(l9_840,1.0-l9_840,fast::clamp(l9_842,0.0,1.0));
}
}
l9_822.y=l9_838;
if (l9_826)
{
bool l9_843=l9_828;
bool l9_844;
if (l9_843)
{
l9_844=l9_825.x==3;
}
else
{
l9_844=l9_843;
}
float l9_845=l9_822.x;
float l9_846=l9_827.x;
float l9_847=l9_827.z;
bool l9_848=l9_844;
float l9_849=l9_832;
float l9_850=fast::clamp(l9_845,l9_846,l9_847);
float l9_851=step(abs(l9_845-l9_850),9.9999997e-06);
l9_849*=(l9_851+((1.0-float(l9_848))*(1.0-l9_851)));
l9_845=l9_850;
l9_822.x=l9_845;
l9_832=l9_849;
bool l9_852=l9_828;
bool l9_853;
if (l9_852)
{
l9_853=l9_825.y==3;
}
else
{
l9_853=l9_852;
}
float l9_854=l9_822.y;
float l9_855=l9_827.y;
float l9_856=l9_827.w;
bool l9_857=l9_853;
float l9_858=l9_832;
float l9_859=fast::clamp(l9_854,l9_855,l9_856);
float l9_860=step(abs(l9_854-l9_859),9.9999997e-06);
l9_858*=(l9_860+((1.0-float(l9_857))*(1.0-l9_860)));
l9_854=l9_859;
l9_822.y=l9_854;
l9_832=l9_858;
}
float2 l9_861=l9_822;
bool l9_862=l9_823;
float3x3 l9_863=l9_824;
if (l9_862)
{
l9_861=float2((l9_863*float3(l9_861,1.0)).xy);
}
float2 l9_864=l9_861;
l9_822=l9_864;
float l9_865=l9_822.x;
int l9_866=l9_825.x;
bool l9_867=l9_831;
float l9_868=l9_832;
if ((l9_866==0)||(l9_866==3))
{
float l9_869=l9_865;
float l9_870=0.0;
float l9_871=1.0;
bool l9_872=l9_867;
float l9_873=l9_868;
float l9_874=fast::clamp(l9_869,l9_870,l9_871);
float l9_875=step(abs(l9_869-l9_874),9.9999997e-06);
l9_873*=(l9_875+((1.0-float(l9_872))*(1.0-l9_875)));
l9_869=l9_874;
l9_865=l9_869;
l9_868=l9_873;
}
l9_822.x=l9_865;
l9_832=l9_868;
float l9_876=l9_822.y;
int l9_877=l9_825.y;
bool l9_878=l9_831;
float l9_879=l9_832;
if ((l9_877==0)||(l9_877==3))
{
float l9_880=l9_876;
float l9_881=0.0;
float l9_882=1.0;
bool l9_883=l9_878;
float l9_884=l9_879;
float l9_885=fast::clamp(l9_880,l9_881,l9_882);
float l9_886=step(abs(l9_880-l9_885),9.9999997e-06);
l9_884*=(l9_886+((1.0-float(l9_883))*(1.0-l9_886)));
l9_880=l9_885;
l9_876=l9_880;
l9_879=l9_884;
}
l9_822.y=l9_876;
l9_832=l9_879;
float2 l9_887=l9_822;
int l9_888=l9_820;
int l9_889=l9_821;
float l9_890=l9_830;
float2 l9_891=l9_887;
int l9_892=l9_888;
int l9_893=l9_889;
float3 l9_894=float3(0.0);
if (l9_892==0)
{
l9_894=float3(l9_891,0.0);
}
else
{
if (l9_892==1)
{
l9_894=float3(l9_891.x,(l9_891.y*0.5)+(0.5-(float(l9_893)*0.5)),0.0);
}
else
{
l9_894=float3(l9_891,float(l9_893));
}
}
float3 l9_895=l9_894;
float3 l9_896=l9_895;
float4 l9_897=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_896.xy,bias(l9_890));
float4 l9_898=l9_897;
if (l9_828)
{
l9_898=mix(l9_829,l9_898,float4(l9_832));
}
float4 l9_899=l9_898;
l9_813=l9_899;
float l9_900=0.0;
l9_900=l9_813.x;
float l9_901=0.0;
l9_901=step(l9_900,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_902=0.0;
l9_902=step(l9_900,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_903=0.0;
l9_903=l9_901-l9_902;
l9_806=float4(l9_903);
l9_811=l9_806;
}
else
{
l9_811=l9_807;
}
l9_804=l9_811;
float4 l9_904=float4(0.0);
l9_904=l9_473*l9_804;
float4 l9_905=float4(0.0);
float4 l9_906=(*sc_set0.UserUniforms).colorId03;
l9_905=l9_906;
float4 l9_907=float4(0.0);
l9_907=l9_905*l9_804;
float4 l9_908=float4(0.0);
float4 l9_909=l9_904;
float4 l9_910=l9_907;
float4 l9_911=l9_909;
float4 l9_912=l9_910;
float3 l9_913=l9_911.xyz*l9_911.w;
l9_911=float4(l9_913.x,l9_913.y,l9_913.z,l9_911.w);
float4 l9_914=l9_911+(l9_912*(1.0-l9_911.w));
l9_908=l9_914;
l9_14=l9_908;
l9_18=l9_14;
}
l9_11=l9_18;
float l9_915=0.0;
float l9_916=(*sc_set0.UserUniforms).metallicId03;
l9_915=l9_916;
float l9_917=0.0;
float l9_918=(*sc_set0.UserUniforms).rougnessId03;
l9_917=l9_918;
float4 l9_919=float4(0.0);
float3 l9_920=l9_11.xyz;
float l9_921=(*sc_set0.UserUniforms).Port_Opacity_N410;
float3 l9_922=(*sc_set0.UserUniforms).Port_Emissive_N410;
float l9_923=l9_915;
float l9_924=l9_917;
float3 l9_925=(*sc_set0.UserUniforms).Port_AO_N410;
float3 l9_926=(*sc_set0.UserUniforms).Port_SpecularAO_N410;
ssGlobals l9_927=l9_7;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_927.BumpedNormal=l9_927.VertexNormal_WorldSpace;
}
float l9_928=l9_921;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_928<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_929=gl_FragCoord;
float2 l9_930=floor(mod(l9_929.xy,float2(4.0)));
float l9_931=(mod(dot(l9_930,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_928<l9_931)
{
discard_fragment();
}
}
l9_920=fast::max(l9_920,float3(0.0));
float4 l9_932;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_932=float4(l9_920,l9_921);
}
else
{
l9_923=fast::clamp(l9_923,0.0,1.0);
l9_924=fast::clamp(l9_924,0.0,1.0);
float3 l9_933=l9_920;
float l9_934=l9_921;
float3 l9_935=l9_927.BumpedNormal;
float3 l9_936=l9_927.PositionWS;
float3 l9_937=l9_927.ViewDirWS;
float3 l9_938=l9_922;
float l9_939=l9_923;
float l9_940=l9_924;
float3 l9_941=l9_925;
float3 l9_942=l9_926;
l9_932=ngsCalculateLighting(l9_933,l9_934,l9_935,l9_936,l9_937,l9_938,l9_939,l9_940,l9_941,l9_942,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_932=fast::max(l9_932,float4(0.0));
l9_919=l9_932;
l9_5=l9_919;
l9_10=l9_5;
}
else
{
float4 l9_943=float4(0.0);
float l9_944=0.0;
float4 l9_945=float4(0.0);
float4 l9_946=float4(0.0);
ssGlobals l9_947=l9_7;
float l9_948=0.0;
float l9_949=float((*sc_set0.UserUniforms).rimOnOffId03!=0);
l9_948=l9_949;
l9_944=l9_948;
float4 l9_950;
if ((l9_944*1.0)!=0.0)
{
float l9_951=0.0;
float l9_952=(*sc_set0.UserUniforms).rimExpId03;
l9_951=l9_952;
float l9_953=0.0;
float l9_954=(*sc_set0.UserUniforms).rimIntId03;
l9_953=l9_954;
float l9_955=0.0;
float l9_956=l9_951;
float l9_957=l9_953;
ssGlobals l9_958=l9_947;
float l9_959=abs(dot(-l9_958.ViewDirWS,l9_958.VertexNormal_WorldSpace));
float l9_960=1.0-pow(1.0-l9_959,l9_956);
l9_960=fast::max(l9_960,0.0);
l9_960*=l9_957;
l9_955=l9_960;
float4 l9_961=float4(0.0);
float l9_962=0.0;
float4 l9_963=float4(0.0);
float4 l9_964=float4(0.0);
ssGlobals l9_965=l9_947;
float l9_966=0.0;
float l9_967=float((*sc_set0.UserUniforms).patternOnOffId03!=0);
l9_966=l9_967;
l9_962=l9_966;
float4 l9_968;
if ((l9_962*1.0)!=0.0)
{
float4 l9_969=float4(0.0);
float4 l9_970=(*sc_set0.UserUniforms).patternColorId03;
l9_969=l9_970;
float4 l9_971=float4(0.0);
float l9_972=0.0;
float4 l9_973=float4(0.0);
float4 l9_974=float4(0.0);
ssGlobals l9_975=l9_965;
float l9_976=0.0;
float l9_977=float((*sc_set0.UserUniforms).pngPatternId03!=0);
l9_976=l9_977;
l9_972=l9_976;
float4 l9_978;
if ((l9_972*1.0)!=0.0)
{
float2 l9_979=float2(0.0);
l9_979=l9_975.Surface_UVCoord0;
float2 l9_980=float2(0.0);
float2 l9_981=(*sc_set0.UserUniforms).patternScaleId03;
l9_980=l9_981;
float2 l9_982=float2(0.0);
l9_982=((l9_979-(*sc_set0.UserUniforms).Port_Center_N379)*l9_980)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_983=float2(0.0);
float2 l9_984=(*sc_set0.UserUniforms).patternOffsetId03;
l9_983=l9_984;
float2 l9_985=float2(0.0);
l9_985=l9_982+l9_983;
float l9_986=0.0;
float l9_987=(*sc_set0.UserUniforms).patternRotateId03;
l9_986=l9_987;
float2 l9_988=float2(0.0);
float2 l9_989=l9_985;
float l9_990=l9_986;
float2 l9_991=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_992=sin(radians(l9_990));
float l9_993=cos(radians(l9_990));
float2 l9_994=l9_989-l9_991;
l9_994=float2(dot(float2(l9_993,l9_992),l9_994),dot(float2(-l9_992,l9_993),l9_994))+l9_991;
l9_988=l9_994;
float4 l9_995=float4(0.0);
int l9_996;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_997=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_997=0;
}
else
{
l9_997=in.varStereoViewID;
}
int l9_998=l9_997;
l9_996=1-l9_998;
}
else
{
int l9_999=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_999=0;
}
else
{
l9_999=in.varStereoViewID;
}
int l9_1000=l9_999;
l9_996=l9_1000;
}
int l9_1001=l9_996;
int l9_1002=patternTextureId03Layout_tmp;
int l9_1003=l9_1001;
float2 l9_1004=l9_988;
bool l9_1005=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_1006=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_1007=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_1008=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_1009=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_1010=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_1011=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_1012=0.0;
bool l9_1013=l9_1010&&(!l9_1008);
float l9_1014=1.0;
float l9_1015=l9_1004.x;
int l9_1016=l9_1007.x;
if (l9_1016==1)
{
l9_1015=fract(l9_1015);
}
else
{
if (l9_1016==2)
{
float l9_1017=fract(l9_1015);
float l9_1018=l9_1015-l9_1017;
float l9_1019=step(0.25,fract(l9_1018*0.5));
l9_1015=mix(l9_1017,1.0-l9_1017,fast::clamp(l9_1019,0.0,1.0));
}
}
l9_1004.x=l9_1015;
float l9_1020=l9_1004.y;
int l9_1021=l9_1007.y;
if (l9_1021==1)
{
l9_1020=fract(l9_1020);
}
else
{
if (l9_1021==2)
{
float l9_1022=fract(l9_1020);
float l9_1023=l9_1020-l9_1022;
float l9_1024=step(0.25,fract(l9_1023*0.5));
l9_1020=mix(l9_1022,1.0-l9_1022,fast::clamp(l9_1024,0.0,1.0));
}
}
l9_1004.y=l9_1020;
if (l9_1008)
{
bool l9_1025=l9_1010;
bool l9_1026;
if (l9_1025)
{
l9_1026=l9_1007.x==3;
}
else
{
l9_1026=l9_1025;
}
float l9_1027=l9_1004.x;
float l9_1028=l9_1009.x;
float l9_1029=l9_1009.z;
bool l9_1030=l9_1026;
float l9_1031=l9_1014;
float l9_1032=fast::clamp(l9_1027,l9_1028,l9_1029);
float l9_1033=step(abs(l9_1027-l9_1032),9.9999997e-06);
l9_1031*=(l9_1033+((1.0-float(l9_1030))*(1.0-l9_1033)));
l9_1027=l9_1032;
l9_1004.x=l9_1027;
l9_1014=l9_1031;
bool l9_1034=l9_1010;
bool l9_1035;
if (l9_1034)
{
l9_1035=l9_1007.y==3;
}
else
{
l9_1035=l9_1034;
}
float l9_1036=l9_1004.y;
float l9_1037=l9_1009.y;
float l9_1038=l9_1009.w;
bool l9_1039=l9_1035;
float l9_1040=l9_1014;
float l9_1041=fast::clamp(l9_1036,l9_1037,l9_1038);
float l9_1042=step(abs(l9_1036-l9_1041),9.9999997e-06);
l9_1040*=(l9_1042+((1.0-float(l9_1039))*(1.0-l9_1042)));
l9_1036=l9_1041;
l9_1004.y=l9_1036;
l9_1014=l9_1040;
}
float2 l9_1043=l9_1004;
bool l9_1044=l9_1005;
float3x3 l9_1045=l9_1006;
if (l9_1044)
{
l9_1043=float2((l9_1045*float3(l9_1043,1.0)).xy);
}
float2 l9_1046=l9_1043;
l9_1004=l9_1046;
float l9_1047=l9_1004.x;
int l9_1048=l9_1007.x;
bool l9_1049=l9_1013;
float l9_1050=l9_1014;
if ((l9_1048==0)||(l9_1048==3))
{
float l9_1051=l9_1047;
float l9_1052=0.0;
float l9_1053=1.0;
bool l9_1054=l9_1049;
float l9_1055=l9_1050;
float l9_1056=fast::clamp(l9_1051,l9_1052,l9_1053);
float l9_1057=step(abs(l9_1051-l9_1056),9.9999997e-06);
l9_1055*=(l9_1057+((1.0-float(l9_1054))*(1.0-l9_1057)));
l9_1051=l9_1056;
l9_1047=l9_1051;
l9_1050=l9_1055;
}
l9_1004.x=l9_1047;
l9_1014=l9_1050;
float l9_1058=l9_1004.y;
int l9_1059=l9_1007.y;
bool l9_1060=l9_1013;
float l9_1061=l9_1014;
if ((l9_1059==0)||(l9_1059==3))
{
float l9_1062=l9_1058;
float l9_1063=0.0;
float l9_1064=1.0;
bool l9_1065=l9_1060;
float l9_1066=l9_1061;
float l9_1067=fast::clamp(l9_1062,l9_1063,l9_1064);
float l9_1068=step(abs(l9_1062-l9_1067),9.9999997e-06);
l9_1066*=(l9_1068+((1.0-float(l9_1065))*(1.0-l9_1068)));
l9_1062=l9_1067;
l9_1058=l9_1062;
l9_1061=l9_1066;
}
l9_1004.y=l9_1058;
l9_1014=l9_1061;
float2 l9_1069=l9_1004;
int l9_1070=l9_1002;
int l9_1071=l9_1003;
float l9_1072=l9_1012;
float2 l9_1073=l9_1069;
int l9_1074=l9_1070;
int l9_1075=l9_1071;
float3 l9_1076=float3(0.0);
if (l9_1074==0)
{
l9_1076=float3(l9_1073,0.0);
}
else
{
if (l9_1074==1)
{
l9_1076=float3(l9_1073.x,(l9_1073.y*0.5)+(0.5-(float(l9_1075)*0.5)),0.0);
}
else
{
l9_1076=float3(l9_1073,float(l9_1075));
}
}
float3 l9_1077=l9_1076;
float3 l9_1078=l9_1077;
float4 l9_1079=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_1078.xy,bias(l9_1072));
float4 l9_1080=l9_1079;
if (l9_1010)
{
l9_1080=mix(l9_1011,l9_1080,float4(l9_1014));
}
float4 l9_1081=l9_1080;
l9_995=l9_1081;
l9_973=l9_995;
l9_978=l9_973;
}
else
{
float2 l9_1082=float2(0.0);
l9_1082=l9_975.Surface_UVCoord0;
float2 l9_1083=float2(0.0);
float2 l9_1084=(*sc_set0.UserUniforms).patternScaleId03;
l9_1083=l9_1084;
float2 l9_1085=float2(0.0);
l9_1085=((l9_1082-(*sc_set0.UserUniforms).Port_Center_N379)*l9_1083)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_1086=float2(0.0);
float2 l9_1087=(*sc_set0.UserUniforms).patternOffsetId03;
l9_1086=l9_1087;
float2 l9_1088=float2(0.0);
l9_1088=l9_1085+l9_1086;
float l9_1089=0.0;
float l9_1090=(*sc_set0.UserUniforms).patternRotateId03;
l9_1089=l9_1090;
float2 l9_1091=float2(0.0);
float2 l9_1092=l9_1088;
float l9_1093=l9_1089;
float2 l9_1094=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_1095=sin(radians(l9_1093));
float l9_1096=cos(radians(l9_1093));
float2 l9_1097=l9_1092-l9_1094;
l9_1097=float2(dot(float2(l9_1096,l9_1095),l9_1097),dot(float2(-l9_1095,l9_1096),l9_1097))+l9_1094;
l9_1091=l9_1097;
float4 l9_1098=float4(0.0);
int l9_1099;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_1100=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1100=0;
}
else
{
l9_1100=in.varStereoViewID;
}
int l9_1101=l9_1100;
l9_1099=1-l9_1101;
}
else
{
int l9_1102=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1102=0;
}
else
{
l9_1102=in.varStereoViewID;
}
int l9_1103=l9_1102;
l9_1099=l9_1103;
}
int l9_1104=l9_1099;
int l9_1105=patternTextureId03Layout_tmp;
int l9_1106=l9_1104;
float2 l9_1107=l9_1091;
bool l9_1108=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_1109=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_1110=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_1111=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_1112=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_1113=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_1114=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_1115=0.0;
bool l9_1116=l9_1113&&(!l9_1111);
float l9_1117=1.0;
float l9_1118=l9_1107.x;
int l9_1119=l9_1110.x;
if (l9_1119==1)
{
l9_1118=fract(l9_1118);
}
else
{
if (l9_1119==2)
{
float l9_1120=fract(l9_1118);
float l9_1121=l9_1118-l9_1120;
float l9_1122=step(0.25,fract(l9_1121*0.5));
l9_1118=mix(l9_1120,1.0-l9_1120,fast::clamp(l9_1122,0.0,1.0));
}
}
l9_1107.x=l9_1118;
float l9_1123=l9_1107.y;
int l9_1124=l9_1110.y;
if (l9_1124==1)
{
l9_1123=fract(l9_1123);
}
else
{
if (l9_1124==2)
{
float l9_1125=fract(l9_1123);
float l9_1126=l9_1123-l9_1125;
float l9_1127=step(0.25,fract(l9_1126*0.5));
l9_1123=mix(l9_1125,1.0-l9_1125,fast::clamp(l9_1127,0.0,1.0));
}
}
l9_1107.y=l9_1123;
if (l9_1111)
{
bool l9_1128=l9_1113;
bool l9_1129;
if (l9_1128)
{
l9_1129=l9_1110.x==3;
}
else
{
l9_1129=l9_1128;
}
float l9_1130=l9_1107.x;
float l9_1131=l9_1112.x;
float l9_1132=l9_1112.z;
bool l9_1133=l9_1129;
float l9_1134=l9_1117;
float l9_1135=fast::clamp(l9_1130,l9_1131,l9_1132);
float l9_1136=step(abs(l9_1130-l9_1135),9.9999997e-06);
l9_1134*=(l9_1136+((1.0-float(l9_1133))*(1.0-l9_1136)));
l9_1130=l9_1135;
l9_1107.x=l9_1130;
l9_1117=l9_1134;
bool l9_1137=l9_1113;
bool l9_1138;
if (l9_1137)
{
l9_1138=l9_1110.y==3;
}
else
{
l9_1138=l9_1137;
}
float l9_1139=l9_1107.y;
float l9_1140=l9_1112.y;
float l9_1141=l9_1112.w;
bool l9_1142=l9_1138;
float l9_1143=l9_1117;
float l9_1144=fast::clamp(l9_1139,l9_1140,l9_1141);
float l9_1145=step(abs(l9_1139-l9_1144),9.9999997e-06);
l9_1143*=(l9_1145+((1.0-float(l9_1142))*(1.0-l9_1145)));
l9_1139=l9_1144;
l9_1107.y=l9_1139;
l9_1117=l9_1143;
}
float2 l9_1146=l9_1107;
bool l9_1147=l9_1108;
float3x3 l9_1148=l9_1109;
if (l9_1147)
{
l9_1146=float2((l9_1148*float3(l9_1146,1.0)).xy);
}
float2 l9_1149=l9_1146;
l9_1107=l9_1149;
float l9_1150=l9_1107.x;
int l9_1151=l9_1110.x;
bool l9_1152=l9_1116;
float l9_1153=l9_1117;
if ((l9_1151==0)||(l9_1151==3))
{
float l9_1154=l9_1150;
float l9_1155=0.0;
float l9_1156=1.0;
bool l9_1157=l9_1152;
float l9_1158=l9_1153;
float l9_1159=fast::clamp(l9_1154,l9_1155,l9_1156);
float l9_1160=step(abs(l9_1154-l9_1159),9.9999997e-06);
l9_1158*=(l9_1160+((1.0-float(l9_1157))*(1.0-l9_1160)));
l9_1154=l9_1159;
l9_1150=l9_1154;
l9_1153=l9_1158;
}
l9_1107.x=l9_1150;
l9_1117=l9_1153;
float l9_1161=l9_1107.y;
int l9_1162=l9_1110.y;
bool l9_1163=l9_1116;
float l9_1164=l9_1117;
if ((l9_1162==0)||(l9_1162==3))
{
float l9_1165=l9_1161;
float l9_1166=0.0;
float l9_1167=1.0;
bool l9_1168=l9_1163;
float l9_1169=l9_1164;
float l9_1170=fast::clamp(l9_1165,l9_1166,l9_1167);
float l9_1171=step(abs(l9_1165-l9_1170),9.9999997e-06);
l9_1169*=(l9_1171+((1.0-float(l9_1168))*(1.0-l9_1171)));
l9_1165=l9_1170;
l9_1161=l9_1165;
l9_1164=l9_1169;
}
l9_1107.y=l9_1161;
l9_1117=l9_1164;
float2 l9_1172=l9_1107;
int l9_1173=l9_1105;
int l9_1174=l9_1106;
float l9_1175=l9_1115;
float2 l9_1176=l9_1172;
int l9_1177=l9_1173;
int l9_1178=l9_1174;
float3 l9_1179=float3(0.0);
if (l9_1177==0)
{
l9_1179=float3(l9_1176,0.0);
}
else
{
if (l9_1177==1)
{
l9_1179=float3(l9_1176.x,(l9_1176.y*0.5)+(0.5-(float(l9_1178)*0.5)),0.0);
}
else
{
l9_1179=float3(l9_1176,float(l9_1178));
}
}
float3 l9_1180=l9_1179;
float3 l9_1181=l9_1180;
float4 l9_1182=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_1181.xy,bias(l9_1175));
float4 l9_1183=l9_1182;
if (l9_1113)
{
l9_1183=mix(l9_1114,l9_1183,float4(l9_1117));
}
float4 l9_1184=l9_1183;
l9_1098=l9_1184;
float l9_1185=0.0;
float3 l9_1186=l9_1098.xyz;
float l9_1187=l9_1186.x;
l9_1185=l9_1187;
l9_974=float4(l9_1185);
l9_978=l9_974;
}
l9_971=l9_978;
float4 l9_1188=float4(0.0);
l9_1188=l9_969*l9_971;
l9_963=l9_1188;
l9_968=l9_963;
}
else
{
float4 l9_1189=float4(0.0);
float4 l9_1190=(*sc_set0.UserUniforms).colorId03;
l9_1189=l9_1190;
float4 l9_1191=float4(0.0);
float l9_1192=0.0;
float4 l9_1193=float4(0.0);
float4 l9_1194=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_1195=l9_965;
float l9_1196=0.0;
float l9_1197=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1196=l9_1197;
l9_1192=l9_1196;
float4 l9_1198;
if ((l9_1192*1.0)!=0.0)
{
float2 l9_1199=float2(0.0);
l9_1199=l9_1195.Surface_UVCoord0;
float4 l9_1200=float4(0.0);
int l9_1201;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_1202=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1202=0;
}
else
{
l9_1202=in.varStereoViewID;
}
int l9_1203=l9_1202;
l9_1201=1-l9_1203;
}
else
{
int l9_1204=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1204=0;
}
else
{
l9_1204=in.varStereoViewID;
}
int l9_1205=l9_1204;
l9_1201=l9_1205;
}
int l9_1206=l9_1201;
int l9_1207=greyMaskIdLayout_tmp;
int l9_1208=l9_1206;
float2 l9_1209=l9_1199;
bool l9_1210=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_1211=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_1212=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_1213=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_1214=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_1215=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_1216=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_1217=0.0;
bool l9_1218=l9_1215&&(!l9_1213);
float l9_1219=1.0;
float l9_1220=l9_1209.x;
int l9_1221=l9_1212.x;
if (l9_1221==1)
{
l9_1220=fract(l9_1220);
}
else
{
if (l9_1221==2)
{
float l9_1222=fract(l9_1220);
float l9_1223=l9_1220-l9_1222;
float l9_1224=step(0.25,fract(l9_1223*0.5));
l9_1220=mix(l9_1222,1.0-l9_1222,fast::clamp(l9_1224,0.0,1.0));
}
}
l9_1209.x=l9_1220;
float l9_1225=l9_1209.y;
int l9_1226=l9_1212.y;
if (l9_1226==1)
{
l9_1225=fract(l9_1225);
}
else
{
if (l9_1226==2)
{
float l9_1227=fract(l9_1225);
float l9_1228=l9_1225-l9_1227;
float l9_1229=step(0.25,fract(l9_1228*0.5));
l9_1225=mix(l9_1227,1.0-l9_1227,fast::clamp(l9_1229,0.0,1.0));
}
}
l9_1209.y=l9_1225;
if (l9_1213)
{
bool l9_1230=l9_1215;
bool l9_1231;
if (l9_1230)
{
l9_1231=l9_1212.x==3;
}
else
{
l9_1231=l9_1230;
}
float l9_1232=l9_1209.x;
float l9_1233=l9_1214.x;
float l9_1234=l9_1214.z;
bool l9_1235=l9_1231;
float l9_1236=l9_1219;
float l9_1237=fast::clamp(l9_1232,l9_1233,l9_1234);
float l9_1238=step(abs(l9_1232-l9_1237),9.9999997e-06);
l9_1236*=(l9_1238+((1.0-float(l9_1235))*(1.0-l9_1238)));
l9_1232=l9_1237;
l9_1209.x=l9_1232;
l9_1219=l9_1236;
bool l9_1239=l9_1215;
bool l9_1240;
if (l9_1239)
{
l9_1240=l9_1212.y==3;
}
else
{
l9_1240=l9_1239;
}
float l9_1241=l9_1209.y;
float l9_1242=l9_1214.y;
float l9_1243=l9_1214.w;
bool l9_1244=l9_1240;
float l9_1245=l9_1219;
float l9_1246=fast::clamp(l9_1241,l9_1242,l9_1243);
float l9_1247=step(abs(l9_1241-l9_1246),9.9999997e-06);
l9_1245*=(l9_1247+((1.0-float(l9_1244))*(1.0-l9_1247)));
l9_1241=l9_1246;
l9_1209.y=l9_1241;
l9_1219=l9_1245;
}
float2 l9_1248=l9_1209;
bool l9_1249=l9_1210;
float3x3 l9_1250=l9_1211;
if (l9_1249)
{
l9_1248=float2((l9_1250*float3(l9_1248,1.0)).xy);
}
float2 l9_1251=l9_1248;
l9_1209=l9_1251;
float l9_1252=l9_1209.x;
int l9_1253=l9_1212.x;
bool l9_1254=l9_1218;
float l9_1255=l9_1219;
if ((l9_1253==0)||(l9_1253==3))
{
float l9_1256=l9_1252;
float l9_1257=0.0;
float l9_1258=1.0;
bool l9_1259=l9_1254;
float l9_1260=l9_1255;
float l9_1261=fast::clamp(l9_1256,l9_1257,l9_1258);
float l9_1262=step(abs(l9_1256-l9_1261),9.9999997e-06);
l9_1260*=(l9_1262+((1.0-float(l9_1259))*(1.0-l9_1262)));
l9_1256=l9_1261;
l9_1252=l9_1256;
l9_1255=l9_1260;
}
l9_1209.x=l9_1252;
l9_1219=l9_1255;
float l9_1263=l9_1209.y;
int l9_1264=l9_1212.y;
bool l9_1265=l9_1218;
float l9_1266=l9_1219;
if ((l9_1264==0)||(l9_1264==3))
{
float l9_1267=l9_1263;
float l9_1268=0.0;
float l9_1269=1.0;
bool l9_1270=l9_1265;
float l9_1271=l9_1266;
float l9_1272=fast::clamp(l9_1267,l9_1268,l9_1269);
float l9_1273=step(abs(l9_1267-l9_1272),9.9999997e-06);
l9_1271*=(l9_1273+((1.0-float(l9_1270))*(1.0-l9_1273)));
l9_1267=l9_1272;
l9_1263=l9_1267;
l9_1266=l9_1271;
}
l9_1209.y=l9_1263;
l9_1219=l9_1266;
float2 l9_1274=l9_1209;
int l9_1275=l9_1207;
int l9_1276=l9_1208;
float l9_1277=l9_1217;
float2 l9_1278=l9_1274;
int l9_1279=l9_1275;
int l9_1280=l9_1276;
float3 l9_1281=float3(0.0);
if (l9_1279==0)
{
l9_1281=float3(l9_1278,0.0);
}
else
{
if (l9_1279==1)
{
l9_1281=float3(l9_1278.x,(l9_1278.y*0.5)+(0.5-(float(l9_1280)*0.5)),0.0);
}
else
{
l9_1281=float3(l9_1278,float(l9_1280));
}
}
float3 l9_1282=l9_1281;
float3 l9_1283=l9_1282;
float4 l9_1284=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_1283.xy,bias(l9_1277));
float4 l9_1285=l9_1284;
if (l9_1215)
{
l9_1285=mix(l9_1216,l9_1285,float4(l9_1219));
}
float4 l9_1286=l9_1285;
l9_1200=l9_1286;
float l9_1287=0.0;
l9_1287=l9_1200.x;
float l9_1288=0.0;
l9_1288=step(l9_1287,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_1289=0.0;
l9_1289=step(l9_1287,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_1290=0.0;
l9_1290=l9_1288-l9_1289;
l9_1193=float4(l9_1290);
l9_1198=l9_1193;
}
else
{
l9_1198=l9_1194;
}
l9_1191=l9_1198;
float4 l9_1291=float4(0.0);
l9_1291=l9_1189*l9_1191;
l9_964=l9_1291;
l9_968=l9_964;
}
l9_961=l9_968;
float4 l9_1292=float4(0.0);
float l9_1293=0.0;
float4 l9_1294=float4(0.0);
float4 l9_1295=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_1296=l9_947;
float l9_1297=0.0;
float l9_1298=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1297=l9_1298;
l9_1293=l9_1297;
float4 l9_1299;
if ((l9_1293*1.0)!=0.0)
{
float2 l9_1300=float2(0.0);
l9_1300=l9_1296.Surface_UVCoord0;
float4 l9_1301=float4(0.0);
int l9_1302;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_1303=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1303=0;
}
else
{
l9_1303=in.varStereoViewID;
}
int l9_1304=l9_1303;
l9_1302=1-l9_1304;
}
else
{
int l9_1305=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1305=0;
}
else
{
l9_1305=in.varStereoViewID;
}
int l9_1306=l9_1305;
l9_1302=l9_1306;
}
int l9_1307=l9_1302;
int l9_1308=greyMaskIdLayout_tmp;
int l9_1309=l9_1307;
float2 l9_1310=l9_1300;
bool l9_1311=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_1312=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_1313=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_1314=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_1315=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_1316=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_1317=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_1318=0.0;
bool l9_1319=l9_1316&&(!l9_1314);
float l9_1320=1.0;
float l9_1321=l9_1310.x;
int l9_1322=l9_1313.x;
if (l9_1322==1)
{
l9_1321=fract(l9_1321);
}
else
{
if (l9_1322==2)
{
float l9_1323=fract(l9_1321);
float l9_1324=l9_1321-l9_1323;
float l9_1325=step(0.25,fract(l9_1324*0.5));
l9_1321=mix(l9_1323,1.0-l9_1323,fast::clamp(l9_1325,0.0,1.0));
}
}
l9_1310.x=l9_1321;
float l9_1326=l9_1310.y;
int l9_1327=l9_1313.y;
if (l9_1327==1)
{
l9_1326=fract(l9_1326);
}
else
{
if (l9_1327==2)
{
float l9_1328=fract(l9_1326);
float l9_1329=l9_1326-l9_1328;
float l9_1330=step(0.25,fract(l9_1329*0.5));
l9_1326=mix(l9_1328,1.0-l9_1328,fast::clamp(l9_1330,0.0,1.0));
}
}
l9_1310.y=l9_1326;
if (l9_1314)
{
bool l9_1331=l9_1316;
bool l9_1332;
if (l9_1331)
{
l9_1332=l9_1313.x==3;
}
else
{
l9_1332=l9_1331;
}
float l9_1333=l9_1310.x;
float l9_1334=l9_1315.x;
float l9_1335=l9_1315.z;
bool l9_1336=l9_1332;
float l9_1337=l9_1320;
float l9_1338=fast::clamp(l9_1333,l9_1334,l9_1335);
float l9_1339=step(abs(l9_1333-l9_1338),9.9999997e-06);
l9_1337*=(l9_1339+((1.0-float(l9_1336))*(1.0-l9_1339)));
l9_1333=l9_1338;
l9_1310.x=l9_1333;
l9_1320=l9_1337;
bool l9_1340=l9_1316;
bool l9_1341;
if (l9_1340)
{
l9_1341=l9_1313.y==3;
}
else
{
l9_1341=l9_1340;
}
float l9_1342=l9_1310.y;
float l9_1343=l9_1315.y;
float l9_1344=l9_1315.w;
bool l9_1345=l9_1341;
float l9_1346=l9_1320;
float l9_1347=fast::clamp(l9_1342,l9_1343,l9_1344);
float l9_1348=step(abs(l9_1342-l9_1347),9.9999997e-06);
l9_1346*=(l9_1348+((1.0-float(l9_1345))*(1.0-l9_1348)));
l9_1342=l9_1347;
l9_1310.y=l9_1342;
l9_1320=l9_1346;
}
float2 l9_1349=l9_1310;
bool l9_1350=l9_1311;
float3x3 l9_1351=l9_1312;
if (l9_1350)
{
l9_1349=float2((l9_1351*float3(l9_1349,1.0)).xy);
}
float2 l9_1352=l9_1349;
l9_1310=l9_1352;
float l9_1353=l9_1310.x;
int l9_1354=l9_1313.x;
bool l9_1355=l9_1319;
float l9_1356=l9_1320;
if ((l9_1354==0)||(l9_1354==3))
{
float l9_1357=l9_1353;
float l9_1358=0.0;
float l9_1359=1.0;
bool l9_1360=l9_1355;
float l9_1361=l9_1356;
float l9_1362=fast::clamp(l9_1357,l9_1358,l9_1359);
float l9_1363=step(abs(l9_1357-l9_1362),9.9999997e-06);
l9_1361*=(l9_1363+((1.0-float(l9_1360))*(1.0-l9_1363)));
l9_1357=l9_1362;
l9_1353=l9_1357;
l9_1356=l9_1361;
}
l9_1310.x=l9_1353;
l9_1320=l9_1356;
float l9_1364=l9_1310.y;
int l9_1365=l9_1313.y;
bool l9_1366=l9_1319;
float l9_1367=l9_1320;
if ((l9_1365==0)||(l9_1365==3))
{
float l9_1368=l9_1364;
float l9_1369=0.0;
float l9_1370=1.0;
bool l9_1371=l9_1366;
float l9_1372=l9_1367;
float l9_1373=fast::clamp(l9_1368,l9_1369,l9_1370);
float l9_1374=step(abs(l9_1368-l9_1373),9.9999997e-06);
l9_1372*=(l9_1374+((1.0-float(l9_1371))*(1.0-l9_1374)));
l9_1368=l9_1373;
l9_1364=l9_1368;
l9_1367=l9_1372;
}
l9_1310.y=l9_1364;
l9_1320=l9_1367;
float2 l9_1375=l9_1310;
int l9_1376=l9_1308;
int l9_1377=l9_1309;
float l9_1378=l9_1318;
float2 l9_1379=l9_1375;
int l9_1380=l9_1376;
int l9_1381=l9_1377;
float3 l9_1382=float3(0.0);
if (l9_1380==0)
{
l9_1382=float3(l9_1379,0.0);
}
else
{
if (l9_1380==1)
{
l9_1382=float3(l9_1379.x,(l9_1379.y*0.5)+(0.5-(float(l9_1381)*0.5)),0.0);
}
else
{
l9_1382=float3(l9_1379,float(l9_1381));
}
}
float3 l9_1383=l9_1382;
float3 l9_1384=l9_1383;
float4 l9_1385=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_1384.xy,bias(l9_1378));
float4 l9_1386=l9_1385;
if (l9_1316)
{
l9_1386=mix(l9_1317,l9_1386,float4(l9_1320));
}
float4 l9_1387=l9_1386;
l9_1301=l9_1387;
float l9_1388=0.0;
l9_1388=l9_1301.x;
float l9_1389=0.0;
l9_1389=step(l9_1388,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_1390=0.0;
l9_1390=step(l9_1388,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_1391=0.0;
l9_1391=l9_1389-l9_1390;
l9_1294=float4(l9_1391);
l9_1299=l9_1294;
}
else
{
l9_1299=l9_1295;
}
l9_1292=l9_1299;
float4 l9_1392=float4(0.0);
l9_1392=l9_961*l9_1292;
float4 l9_1393=float4(0.0);
float4 l9_1394=(*sc_set0.UserUniforms).colorId03;
l9_1393=l9_1394;
float4 l9_1395=float4(0.0);
l9_1395=l9_1393*l9_1292;
float4 l9_1396=float4(0.0);
float4 l9_1397=l9_1392;
float4 l9_1398=l9_1395;
float4 l9_1399=l9_1397;
float4 l9_1400=l9_1398;
float3 l9_1401=l9_1399.xyz*l9_1399.w;
l9_1399=float4(l9_1401.x,l9_1401.y,l9_1401.z,l9_1399.w);
float4 l9_1402=l9_1399+(l9_1400*(1.0-l9_1399.w));
l9_1396=l9_1402;
float4 l9_1403=float4(0.0);
l9_1403=float4(l9_955)*l9_1396;
float4 l9_1404=float4(0.0);
l9_1404=l9_1403+l9_1396;
l9_945=l9_1404;
l9_950=l9_945;
}
else
{
float4 l9_1405=float4(0.0);
float l9_1406=0.0;
float4 l9_1407=float4(0.0);
float4 l9_1408=float4(0.0);
ssGlobals l9_1409=l9_947;
float l9_1410=0.0;
float l9_1411=float((*sc_set0.UserUniforms).patternOnOffId03!=0);
l9_1410=l9_1411;
l9_1406=l9_1410;
float4 l9_1412;
if ((l9_1406*1.0)!=0.0)
{
float4 l9_1413=float4(0.0);
float4 l9_1414=(*sc_set0.UserUniforms).patternColorId03;
l9_1413=l9_1414;
float4 l9_1415=float4(0.0);
float l9_1416=0.0;
float4 l9_1417=float4(0.0);
float4 l9_1418=float4(0.0);
ssGlobals l9_1419=l9_1409;
float l9_1420=0.0;
float l9_1421=float((*sc_set0.UserUniforms).pngPatternId03!=0);
l9_1420=l9_1421;
l9_1416=l9_1420;
float4 l9_1422;
if ((l9_1416*1.0)!=0.0)
{
float2 l9_1423=float2(0.0);
l9_1423=l9_1419.Surface_UVCoord0;
float2 l9_1424=float2(0.0);
float2 l9_1425=(*sc_set0.UserUniforms).patternScaleId03;
l9_1424=l9_1425;
float2 l9_1426=float2(0.0);
l9_1426=((l9_1423-(*sc_set0.UserUniforms).Port_Center_N379)*l9_1424)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_1427=float2(0.0);
float2 l9_1428=(*sc_set0.UserUniforms).patternOffsetId03;
l9_1427=l9_1428;
float2 l9_1429=float2(0.0);
l9_1429=l9_1426+l9_1427;
float l9_1430=0.0;
float l9_1431=(*sc_set0.UserUniforms).patternRotateId03;
l9_1430=l9_1431;
float2 l9_1432=float2(0.0);
float2 l9_1433=l9_1429;
float l9_1434=l9_1430;
float2 l9_1435=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_1436=sin(radians(l9_1434));
float l9_1437=cos(radians(l9_1434));
float2 l9_1438=l9_1433-l9_1435;
l9_1438=float2(dot(float2(l9_1437,l9_1436),l9_1438),dot(float2(-l9_1436,l9_1437),l9_1438))+l9_1435;
l9_1432=l9_1438;
float4 l9_1439=float4(0.0);
int l9_1440;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_1441=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1441=0;
}
else
{
l9_1441=in.varStereoViewID;
}
int l9_1442=l9_1441;
l9_1440=1-l9_1442;
}
else
{
int l9_1443=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1443=0;
}
else
{
l9_1443=in.varStereoViewID;
}
int l9_1444=l9_1443;
l9_1440=l9_1444;
}
int l9_1445=l9_1440;
int l9_1446=patternTextureId03Layout_tmp;
int l9_1447=l9_1445;
float2 l9_1448=l9_1432;
bool l9_1449=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_1450=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_1451=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_1452=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_1453=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_1454=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_1455=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_1456=0.0;
bool l9_1457=l9_1454&&(!l9_1452);
float l9_1458=1.0;
float l9_1459=l9_1448.x;
int l9_1460=l9_1451.x;
if (l9_1460==1)
{
l9_1459=fract(l9_1459);
}
else
{
if (l9_1460==2)
{
float l9_1461=fract(l9_1459);
float l9_1462=l9_1459-l9_1461;
float l9_1463=step(0.25,fract(l9_1462*0.5));
l9_1459=mix(l9_1461,1.0-l9_1461,fast::clamp(l9_1463,0.0,1.0));
}
}
l9_1448.x=l9_1459;
float l9_1464=l9_1448.y;
int l9_1465=l9_1451.y;
if (l9_1465==1)
{
l9_1464=fract(l9_1464);
}
else
{
if (l9_1465==2)
{
float l9_1466=fract(l9_1464);
float l9_1467=l9_1464-l9_1466;
float l9_1468=step(0.25,fract(l9_1467*0.5));
l9_1464=mix(l9_1466,1.0-l9_1466,fast::clamp(l9_1468,0.0,1.0));
}
}
l9_1448.y=l9_1464;
if (l9_1452)
{
bool l9_1469=l9_1454;
bool l9_1470;
if (l9_1469)
{
l9_1470=l9_1451.x==3;
}
else
{
l9_1470=l9_1469;
}
float l9_1471=l9_1448.x;
float l9_1472=l9_1453.x;
float l9_1473=l9_1453.z;
bool l9_1474=l9_1470;
float l9_1475=l9_1458;
float l9_1476=fast::clamp(l9_1471,l9_1472,l9_1473);
float l9_1477=step(abs(l9_1471-l9_1476),9.9999997e-06);
l9_1475*=(l9_1477+((1.0-float(l9_1474))*(1.0-l9_1477)));
l9_1471=l9_1476;
l9_1448.x=l9_1471;
l9_1458=l9_1475;
bool l9_1478=l9_1454;
bool l9_1479;
if (l9_1478)
{
l9_1479=l9_1451.y==3;
}
else
{
l9_1479=l9_1478;
}
float l9_1480=l9_1448.y;
float l9_1481=l9_1453.y;
float l9_1482=l9_1453.w;
bool l9_1483=l9_1479;
float l9_1484=l9_1458;
float l9_1485=fast::clamp(l9_1480,l9_1481,l9_1482);
float l9_1486=step(abs(l9_1480-l9_1485),9.9999997e-06);
l9_1484*=(l9_1486+((1.0-float(l9_1483))*(1.0-l9_1486)));
l9_1480=l9_1485;
l9_1448.y=l9_1480;
l9_1458=l9_1484;
}
float2 l9_1487=l9_1448;
bool l9_1488=l9_1449;
float3x3 l9_1489=l9_1450;
if (l9_1488)
{
l9_1487=float2((l9_1489*float3(l9_1487,1.0)).xy);
}
float2 l9_1490=l9_1487;
l9_1448=l9_1490;
float l9_1491=l9_1448.x;
int l9_1492=l9_1451.x;
bool l9_1493=l9_1457;
float l9_1494=l9_1458;
if ((l9_1492==0)||(l9_1492==3))
{
float l9_1495=l9_1491;
float l9_1496=0.0;
float l9_1497=1.0;
bool l9_1498=l9_1493;
float l9_1499=l9_1494;
float l9_1500=fast::clamp(l9_1495,l9_1496,l9_1497);
float l9_1501=step(abs(l9_1495-l9_1500),9.9999997e-06);
l9_1499*=(l9_1501+((1.0-float(l9_1498))*(1.0-l9_1501)));
l9_1495=l9_1500;
l9_1491=l9_1495;
l9_1494=l9_1499;
}
l9_1448.x=l9_1491;
l9_1458=l9_1494;
float l9_1502=l9_1448.y;
int l9_1503=l9_1451.y;
bool l9_1504=l9_1457;
float l9_1505=l9_1458;
if ((l9_1503==0)||(l9_1503==3))
{
float l9_1506=l9_1502;
float l9_1507=0.0;
float l9_1508=1.0;
bool l9_1509=l9_1504;
float l9_1510=l9_1505;
float l9_1511=fast::clamp(l9_1506,l9_1507,l9_1508);
float l9_1512=step(abs(l9_1506-l9_1511),9.9999997e-06);
l9_1510*=(l9_1512+((1.0-float(l9_1509))*(1.0-l9_1512)));
l9_1506=l9_1511;
l9_1502=l9_1506;
l9_1505=l9_1510;
}
l9_1448.y=l9_1502;
l9_1458=l9_1505;
float2 l9_1513=l9_1448;
int l9_1514=l9_1446;
int l9_1515=l9_1447;
float l9_1516=l9_1456;
float2 l9_1517=l9_1513;
int l9_1518=l9_1514;
int l9_1519=l9_1515;
float3 l9_1520=float3(0.0);
if (l9_1518==0)
{
l9_1520=float3(l9_1517,0.0);
}
else
{
if (l9_1518==1)
{
l9_1520=float3(l9_1517.x,(l9_1517.y*0.5)+(0.5-(float(l9_1519)*0.5)),0.0);
}
else
{
l9_1520=float3(l9_1517,float(l9_1519));
}
}
float3 l9_1521=l9_1520;
float3 l9_1522=l9_1521;
float4 l9_1523=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_1522.xy,bias(l9_1516));
float4 l9_1524=l9_1523;
if (l9_1454)
{
l9_1524=mix(l9_1455,l9_1524,float4(l9_1458));
}
float4 l9_1525=l9_1524;
l9_1439=l9_1525;
l9_1417=l9_1439;
l9_1422=l9_1417;
}
else
{
float2 l9_1526=float2(0.0);
l9_1526=l9_1419.Surface_UVCoord0;
float2 l9_1527=float2(0.0);
float2 l9_1528=(*sc_set0.UserUniforms).patternScaleId03;
l9_1527=l9_1528;
float2 l9_1529=float2(0.0);
l9_1529=((l9_1526-(*sc_set0.UserUniforms).Port_Center_N379)*l9_1527)+(*sc_set0.UserUniforms).Port_Center_N379;
float2 l9_1530=float2(0.0);
float2 l9_1531=(*sc_set0.UserUniforms).patternOffsetId03;
l9_1530=l9_1531;
float2 l9_1532=float2(0.0);
l9_1532=l9_1529+l9_1530;
float l9_1533=0.0;
float l9_1534=(*sc_set0.UserUniforms).patternRotateId03;
l9_1533=l9_1534;
float2 l9_1535=float2(0.0);
float2 l9_1536=l9_1532;
float l9_1537=l9_1533;
float2 l9_1538=(*sc_set0.UserUniforms).Port_Center_N383;
float l9_1539=sin(radians(l9_1537));
float l9_1540=cos(radians(l9_1537));
float2 l9_1541=l9_1536-l9_1538;
l9_1541=float2(dot(float2(l9_1540,l9_1539),l9_1541),dot(float2(-l9_1539,l9_1540),l9_1541))+l9_1538;
l9_1535=l9_1541;
float4 l9_1542=float4(0.0);
int l9_1543;
if ((int(patternTextureId03HasSwappedViews_tmp)!=0))
{
int l9_1544=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1544=0;
}
else
{
l9_1544=in.varStereoViewID;
}
int l9_1545=l9_1544;
l9_1543=1-l9_1545;
}
else
{
int l9_1546=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1546=0;
}
else
{
l9_1546=in.varStereoViewID;
}
int l9_1547=l9_1546;
l9_1543=l9_1547;
}
int l9_1548=l9_1543;
int l9_1549=patternTextureId03Layout_tmp;
int l9_1550=l9_1548;
float2 l9_1551=l9_1535;
bool l9_1552=(int(SC_USE_UV_TRANSFORM_patternTextureId03_tmp)!=0);
float3x3 l9_1553=(*sc_set0.UserUniforms).patternTextureId03Transform;
int2 l9_1554=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId03_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId03_tmp);
bool l9_1555=(int(SC_USE_UV_MIN_MAX_patternTextureId03_tmp)!=0);
float4 l9_1556=(*sc_set0.UserUniforms).patternTextureId03UvMinMax;
bool l9_1557=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId03_tmp)!=0);
float4 l9_1558=(*sc_set0.UserUniforms).patternTextureId03BorderColor;
float l9_1559=0.0;
bool l9_1560=l9_1557&&(!l9_1555);
float l9_1561=1.0;
float l9_1562=l9_1551.x;
int l9_1563=l9_1554.x;
if (l9_1563==1)
{
l9_1562=fract(l9_1562);
}
else
{
if (l9_1563==2)
{
float l9_1564=fract(l9_1562);
float l9_1565=l9_1562-l9_1564;
float l9_1566=step(0.25,fract(l9_1565*0.5));
l9_1562=mix(l9_1564,1.0-l9_1564,fast::clamp(l9_1566,0.0,1.0));
}
}
l9_1551.x=l9_1562;
float l9_1567=l9_1551.y;
int l9_1568=l9_1554.y;
if (l9_1568==1)
{
l9_1567=fract(l9_1567);
}
else
{
if (l9_1568==2)
{
float l9_1569=fract(l9_1567);
float l9_1570=l9_1567-l9_1569;
float l9_1571=step(0.25,fract(l9_1570*0.5));
l9_1567=mix(l9_1569,1.0-l9_1569,fast::clamp(l9_1571,0.0,1.0));
}
}
l9_1551.y=l9_1567;
if (l9_1555)
{
bool l9_1572=l9_1557;
bool l9_1573;
if (l9_1572)
{
l9_1573=l9_1554.x==3;
}
else
{
l9_1573=l9_1572;
}
float l9_1574=l9_1551.x;
float l9_1575=l9_1556.x;
float l9_1576=l9_1556.z;
bool l9_1577=l9_1573;
float l9_1578=l9_1561;
float l9_1579=fast::clamp(l9_1574,l9_1575,l9_1576);
float l9_1580=step(abs(l9_1574-l9_1579),9.9999997e-06);
l9_1578*=(l9_1580+((1.0-float(l9_1577))*(1.0-l9_1580)));
l9_1574=l9_1579;
l9_1551.x=l9_1574;
l9_1561=l9_1578;
bool l9_1581=l9_1557;
bool l9_1582;
if (l9_1581)
{
l9_1582=l9_1554.y==3;
}
else
{
l9_1582=l9_1581;
}
float l9_1583=l9_1551.y;
float l9_1584=l9_1556.y;
float l9_1585=l9_1556.w;
bool l9_1586=l9_1582;
float l9_1587=l9_1561;
float l9_1588=fast::clamp(l9_1583,l9_1584,l9_1585);
float l9_1589=step(abs(l9_1583-l9_1588),9.9999997e-06);
l9_1587*=(l9_1589+((1.0-float(l9_1586))*(1.0-l9_1589)));
l9_1583=l9_1588;
l9_1551.y=l9_1583;
l9_1561=l9_1587;
}
float2 l9_1590=l9_1551;
bool l9_1591=l9_1552;
float3x3 l9_1592=l9_1553;
if (l9_1591)
{
l9_1590=float2((l9_1592*float3(l9_1590,1.0)).xy);
}
float2 l9_1593=l9_1590;
l9_1551=l9_1593;
float l9_1594=l9_1551.x;
int l9_1595=l9_1554.x;
bool l9_1596=l9_1560;
float l9_1597=l9_1561;
if ((l9_1595==0)||(l9_1595==3))
{
float l9_1598=l9_1594;
float l9_1599=0.0;
float l9_1600=1.0;
bool l9_1601=l9_1596;
float l9_1602=l9_1597;
float l9_1603=fast::clamp(l9_1598,l9_1599,l9_1600);
float l9_1604=step(abs(l9_1598-l9_1603),9.9999997e-06);
l9_1602*=(l9_1604+((1.0-float(l9_1601))*(1.0-l9_1604)));
l9_1598=l9_1603;
l9_1594=l9_1598;
l9_1597=l9_1602;
}
l9_1551.x=l9_1594;
l9_1561=l9_1597;
float l9_1605=l9_1551.y;
int l9_1606=l9_1554.y;
bool l9_1607=l9_1560;
float l9_1608=l9_1561;
if ((l9_1606==0)||(l9_1606==3))
{
float l9_1609=l9_1605;
float l9_1610=0.0;
float l9_1611=1.0;
bool l9_1612=l9_1607;
float l9_1613=l9_1608;
float l9_1614=fast::clamp(l9_1609,l9_1610,l9_1611);
float l9_1615=step(abs(l9_1609-l9_1614),9.9999997e-06);
l9_1613*=(l9_1615+((1.0-float(l9_1612))*(1.0-l9_1615)));
l9_1609=l9_1614;
l9_1605=l9_1609;
l9_1608=l9_1613;
}
l9_1551.y=l9_1605;
l9_1561=l9_1608;
float2 l9_1616=l9_1551;
int l9_1617=l9_1549;
int l9_1618=l9_1550;
float l9_1619=l9_1559;
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
float4 l9_1626=sc_set0.patternTextureId03.sample(sc_set0.patternTextureId03SmpSC,l9_1625.xy,bias(l9_1619));
float4 l9_1627=l9_1626;
if (l9_1557)
{
l9_1627=mix(l9_1558,l9_1627,float4(l9_1561));
}
float4 l9_1628=l9_1627;
l9_1542=l9_1628;
float l9_1629=0.0;
float3 l9_1630=l9_1542.xyz;
float l9_1631=l9_1630.x;
l9_1629=l9_1631;
l9_1418=float4(l9_1629);
l9_1422=l9_1418;
}
l9_1415=l9_1422;
float4 l9_1632=float4(0.0);
l9_1632=l9_1413*l9_1415;
l9_1407=l9_1632;
l9_1412=l9_1407;
}
else
{
float4 l9_1633=float4(0.0);
float4 l9_1634=(*sc_set0.UserUniforms).colorId03;
l9_1633=l9_1634;
float4 l9_1635=float4(0.0);
float l9_1636=0.0;
float4 l9_1637=float4(0.0);
float4 l9_1638=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_1639=l9_1409;
float l9_1640=0.0;
float l9_1641=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1640=l9_1641;
l9_1636=l9_1640;
float4 l9_1642;
if ((l9_1636*1.0)!=0.0)
{
float2 l9_1643=float2(0.0);
l9_1643=l9_1639.Surface_UVCoord0;
float4 l9_1644=float4(0.0);
int l9_1645;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_1646=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1646=0;
}
else
{
l9_1646=in.varStereoViewID;
}
int l9_1647=l9_1646;
l9_1645=1-l9_1647;
}
else
{
int l9_1648=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1648=0;
}
else
{
l9_1648=in.varStereoViewID;
}
int l9_1649=l9_1648;
l9_1645=l9_1649;
}
int l9_1650=l9_1645;
int l9_1651=greyMaskIdLayout_tmp;
int l9_1652=l9_1650;
float2 l9_1653=l9_1643;
bool l9_1654=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_1655=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_1656=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_1657=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_1658=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_1659=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_1660=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_1661=0.0;
bool l9_1662=l9_1659&&(!l9_1657);
float l9_1663=1.0;
float l9_1664=l9_1653.x;
int l9_1665=l9_1656.x;
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
l9_1653.x=l9_1664;
float l9_1669=l9_1653.y;
int l9_1670=l9_1656.y;
if (l9_1670==1)
{
l9_1669=fract(l9_1669);
}
else
{
if (l9_1670==2)
{
float l9_1671=fract(l9_1669);
float l9_1672=l9_1669-l9_1671;
float l9_1673=step(0.25,fract(l9_1672*0.5));
l9_1669=mix(l9_1671,1.0-l9_1671,fast::clamp(l9_1673,0.0,1.0));
}
}
l9_1653.y=l9_1669;
if (l9_1657)
{
bool l9_1674=l9_1659;
bool l9_1675;
if (l9_1674)
{
l9_1675=l9_1656.x==3;
}
else
{
l9_1675=l9_1674;
}
float l9_1676=l9_1653.x;
float l9_1677=l9_1658.x;
float l9_1678=l9_1658.z;
bool l9_1679=l9_1675;
float l9_1680=l9_1663;
float l9_1681=fast::clamp(l9_1676,l9_1677,l9_1678);
float l9_1682=step(abs(l9_1676-l9_1681),9.9999997e-06);
l9_1680*=(l9_1682+((1.0-float(l9_1679))*(1.0-l9_1682)));
l9_1676=l9_1681;
l9_1653.x=l9_1676;
l9_1663=l9_1680;
bool l9_1683=l9_1659;
bool l9_1684;
if (l9_1683)
{
l9_1684=l9_1656.y==3;
}
else
{
l9_1684=l9_1683;
}
float l9_1685=l9_1653.y;
float l9_1686=l9_1658.y;
float l9_1687=l9_1658.w;
bool l9_1688=l9_1684;
float l9_1689=l9_1663;
float l9_1690=fast::clamp(l9_1685,l9_1686,l9_1687);
float l9_1691=step(abs(l9_1685-l9_1690),9.9999997e-06);
l9_1689*=(l9_1691+((1.0-float(l9_1688))*(1.0-l9_1691)));
l9_1685=l9_1690;
l9_1653.y=l9_1685;
l9_1663=l9_1689;
}
float2 l9_1692=l9_1653;
bool l9_1693=l9_1654;
float3x3 l9_1694=l9_1655;
if (l9_1693)
{
l9_1692=float2((l9_1694*float3(l9_1692,1.0)).xy);
}
float2 l9_1695=l9_1692;
l9_1653=l9_1695;
float l9_1696=l9_1653.x;
int l9_1697=l9_1656.x;
bool l9_1698=l9_1662;
float l9_1699=l9_1663;
if ((l9_1697==0)||(l9_1697==3))
{
float l9_1700=l9_1696;
float l9_1701=0.0;
float l9_1702=1.0;
bool l9_1703=l9_1698;
float l9_1704=l9_1699;
float l9_1705=fast::clamp(l9_1700,l9_1701,l9_1702);
float l9_1706=step(abs(l9_1700-l9_1705),9.9999997e-06);
l9_1704*=(l9_1706+((1.0-float(l9_1703))*(1.0-l9_1706)));
l9_1700=l9_1705;
l9_1696=l9_1700;
l9_1699=l9_1704;
}
l9_1653.x=l9_1696;
l9_1663=l9_1699;
float l9_1707=l9_1653.y;
int l9_1708=l9_1656.y;
bool l9_1709=l9_1662;
float l9_1710=l9_1663;
if ((l9_1708==0)||(l9_1708==3))
{
float l9_1711=l9_1707;
float l9_1712=0.0;
float l9_1713=1.0;
bool l9_1714=l9_1709;
float l9_1715=l9_1710;
float l9_1716=fast::clamp(l9_1711,l9_1712,l9_1713);
float l9_1717=step(abs(l9_1711-l9_1716),9.9999997e-06);
l9_1715*=(l9_1717+((1.0-float(l9_1714))*(1.0-l9_1717)));
l9_1711=l9_1716;
l9_1707=l9_1711;
l9_1710=l9_1715;
}
l9_1653.y=l9_1707;
l9_1663=l9_1710;
float2 l9_1718=l9_1653;
int l9_1719=l9_1651;
int l9_1720=l9_1652;
float l9_1721=l9_1661;
float2 l9_1722=l9_1718;
int l9_1723=l9_1719;
int l9_1724=l9_1720;
float3 l9_1725=float3(0.0);
if (l9_1723==0)
{
l9_1725=float3(l9_1722,0.0);
}
else
{
if (l9_1723==1)
{
l9_1725=float3(l9_1722.x,(l9_1722.y*0.5)+(0.5-(float(l9_1724)*0.5)),0.0);
}
else
{
l9_1725=float3(l9_1722,float(l9_1724));
}
}
float3 l9_1726=l9_1725;
float3 l9_1727=l9_1726;
float4 l9_1728=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_1727.xy,bias(l9_1721));
float4 l9_1729=l9_1728;
if (l9_1659)
{
l9_1729=mix(l9_1660,l9_1729,float4(l9_1663));
}
float4 l9_1730=l9_1729;
l9_1644=l9_1730;
float l9_1731=0.0;
l9_1731=l9_1644.x;
float l9_1732=0.0;
l9_1732=step(l9_1731,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_1733=0.0;
l9_1733=step(l9_1731,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_1734=0.0;
l9_1734=l9_1732-l9_1733;
l9_1637=float4(l9_1734);
l9_1642=l9_1637;
}
else
{
l9_1642=l9_1638;
}
l9_1635=l9_1642;
float4 l9_1735=float4(0.0);
l9_1735=l9_1633*l9_1635;
l9_1408=l9_1735;
l9_1412=l9_1408;
}
l9_1405=l9_1412;
float4 l9_1736=float4(0.0);
float l9_1737=0.0;
float4 l9_1738=float4(0.0);
float4 l9_1739=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_1740=l9_947;
float l9_1741=0.0;
float l9_1742=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1741=l9_1742;
l9_1737=l9_1741;
float4 l9_1743;
if ((l9_1737*1.0)!=0.0)
{
float2 l9_1744=float2(0.0);
l9_1744=l9_1740.Surface_UVCoord0;
float4 l9_1745=float4(0.0);
int l9_1746;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_1747=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1747=0;
}
else
{
l9_1747=in.varStereoViewID;
}
int l9_1748=l9_1747;
l9_1746=1-l9_1748;
}
else
{
int l9_1749=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1749=0;
}
else
{
l9_1749=in.varStereoViewID;
}
int l9_1750=l9_1749;
l9_1746=l9_1750;
}
int l9_1751=l9_1746;
int l9_1752=greyMaskIdLayout_tmp;
int l9_1753=l9_1751;
float2 l9_1754=l9_1744;
bool l9_1755=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_1756=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_1757=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_1758=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_1759=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_1760=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_1761=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_1762=0.0;
bool l9_1763=l9_1760&&(!l9_1758);
float l9_1764=1.0;
float l9_1765=l9_1754.x;
int l9_1766=l9_1757.x;
if (l9_1766==1)
{
l9_1765=fract(l9_1765);
}
else
{
if (l9_1766==2)
{
float l9_1767=fract(l9_1765);
float l9_1768=l9_1765-l9_1767;
float l9_1769=step(0.25,fract(l9_1768*0.5));
l9_1765=mix(l9_1767,1.0-l9_1767,fast::clamp(l9_1769,0.0,1.0));
}
}
l9_1754.x=l9_1765;
float l9_1770=l9_1754.y;
int l9_1771=l9_1757.y;
if (l9_1771==1)
{
l9_1770=fract(l9_1770);
}
else
{
if (l9_1771==2)
{
float l9_1772=fract(l9_1770);
float l9_1773=l9_1770-l9_1772;
float l9_1774=step(0.25,fract(l9_1773*0.5));
l9_1770=mix(l9_1772,1.0-l9_1772,fast::clamp(l9_1774,0.0,1.0));
}
}
l9_1754.y=l9_1770;
if (l9_1758)
{
bool l9_1775=l9_1760;
bool l9_1776;
if (l9_1775)
{
l9_1776=l9_1757.x==3;
}
else
{
l9_1776=l9_1775;
}
float l9_1777=l9_1754.x;
float l9_1778=l9_1759.x;
float l9_1779=l9_1759.z;
bool l9_1780=l9_1776;
float l9_1781=l9_1764;
float l9_1782=fast::clamp(l9_1777,l9_1778,l9_1779);
float l9_1783=step(abs(l9_1777-l9_1782),9.9999997e-06);
l9_1781*=(l9_1783+((1.0-float(l9_1780))*(1.0-l9_1783)));
l9_1777=l9_1782;
l9_1754.x=l9_1777;
l9_1764=l9_1781;
bool l9_1784=l9_1760;
bool l9_1785;
if (l9_1784)
{
l9_1785=l9_1757.y==3;
}
else
{
l9_1785=l9_1784;
}
float l9_1786=l9_1754.y;
float l9_1787=l9_1759.y;
float l9_1788=l9_1759.w;
bool l9_1789=l9_1785;
float l9_1790=l9_1764;
float l9_1791=fast::clamp(l9_1786,l9_1787,l9_1788);
float l9_1792=step(abs(l9_1786-l9_1791),9.9999997e-06);
l9_1790*=(l9_1792+((1.0-float(l9_1789))*(1.0-l9_1792)));
l9_1786=l9_1791;
l9_1754.y=l9_1786;
l9_1764=l9_1790;
}
float2 l9_1793=l9_1754;
bool l9_1794=l9_1755;
float3x3 l9_1795=l9_1756;
if (l9_1794)
{
l9_1793=float2((l9_1795*float3(l9_1793,1.0)).xy);
}
float2 l9_1796=l9_1793;
l9_1754=l9_1796;
float l9_1797=l9_1754.x;
int l9_1798=l9_1757.x;
bool l9_1799=l9_1763;
float l9_1800=l9_1764;
if ((l9_1798==0)||(l9_1798==3))
{
float l9_1801=l9_1797;
float l9_1802=0.0;
float l9_1803=1.0;
bool l9_1804=l9_1799;
float l9_1805=l9_1800;
float l9_1806=fast::clamp(l9_1801,l9_1802,l9_1803);
float l9_1807=step(abs(l9_1801-l9_1806),9.9999997e-06);
l9_1805*=(l9_1807+((1.0-float(l9_1804))*(1.0-l9_1807)));
l9_1801=l9_1806;
l9_1797=l9_1801;
l9_1800=l9_1805;
}
l9_1754.x=l9_1797;
l9_1764=l9_1800;
float l9_1808=l9_1754.y;
int l9_1809=l9_1757.y;
bool l9_1810=l9_1763;
float l9_1811=l9_1764;
if ((l9_1809==0)||(l9_1809==3))
{
float l9_1812=l9_1808;
float l9_1813=0.0;
float l9_1814=1.0;
bool l9_1815=l9_1810;
float l9_1816=l9_1811;
float l9_1817=fast::clamp(l9_1812,l9_1813,l9_1814);
float l9_1818=step(abs(l9_1812-l9_1817),9.9999997e-06);
l9_1816*=(l9_1818+((1.0-float(l9_1815))*(1.0-l9_1818)));
l9_1812=l9_1817;
l9_1808=l9_1812;
l9_1811=l9_1816;
}
l9_1754.y=l9_1808;
l9_1764=l9_1811;
float2 l9_1819=l9_1754;
int l9_1820=l9_1752;
int l9_1821=l9_1753;
float l9_1822=l9_1762;
float2 l9_1823=l9_1819;
int l9_1824=l9_1820;
int l9_1825=l9_1821;
float3 l9_1826=float3(0.0);
if (l9_1824==0)
{
l9_1826=float3(l9_1823,0.0);
}
else
{
if (l9_1824==1)
{
l9_1826=float3(l9_1823.x,(l9_1823.y*0.5)+(0.5-(float(l9_1825)*0.5)),0.0);
}
else
{
l9_1826=float3(l9_1823,float(l9_1825));
}
}
float3 l9_1827=l9_1826;
float3 l9_1828=l9_1827;
float4 l9_1829=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_1828.xy,bias(l9_1822));
float4 l9_1830=l9_1829;
if (l9_1760)
{
l9_1830=mix(l9_1761,l9_1830,float4(l9_1764));
}
float4 l9_1831=l9_1830;
l9_1745=l9_1831;
float l9_1832=0.0;
l9_1832=l9_1745.x;
float l9_1833=0.0;
l9_1833=step(l9_1832,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_1834=0.0;
l9_1834=step(l9_1832,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_1835=0.0;
l9_1835=l9_1833-l9_1834;
l9_1738=float4(l9_1835);
l9_1743=l9_1738;
}
else
{
l9_1743=l9_1739;
}
l9_1736=l9_1743;
float4 l9_1836=float4(0.0);
l9_1836=l9_1405*l9_1736;
float4 l9_1837=float4(0.0);
float4 l9_1838=(*sc_set0.UserUniforms).colorId03;
l9_1837=l9_1838;
float4 l9_1839=float4(0.0);
l9_1839=l9_1837*l9_1736;
float4 l9_1840=float4(0.0);
float4 l9_1841=l9_1836;
float4 l9_1842=l9_1839;
float4 l9_1843=l9_1841;
float4 l9_1844=l9_1842;
float3 l9_1845=l9_1843.xyz*l9_1843.w;
l9_1843=float4(l9_1845.x,l9_1845.y,l9_1845.z,l9_1843.w);
float4 l9_1846=l9_1843+(l9_1844*(1.0-l9_1843.w));
l9_1840=l9_1846;
l9_946=l9_1840;
l9_950=l9_946;
}
l9_943=l9_950;
l9_6=l9_943;
l9_10=l9_6;
}
l9_3=l9_10;
float4 l9_1847=float4(0.0);
float l9_1848=0.0;
float4 l9_1849=float4(0.0);
float4 l9_1850=(*sc_set0.UserUniforms).Port_Default_N358;
ssGlobals l9_1851=param_5;
float l9_1852=0.0;
float l9_1853=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_1852=l9_1853;
l9_1848=l9_1852;
float4 l9_1854;
if ((l9_1848*1.0)!=0.0)
{
float2 l9_1855=float2(0.0);
l9_1855=l9_1851.Surface_UVCoord0;
float4 l9_1856=float4(0.0);
int l9_1857;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_1858=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1858=0;
}
else
{
l9_1858=in.varStereoViewID;
}
int l9_1859=l9_1858;
l9_1857=1-l9_1859;
}
else
{
int l9_1860=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1860=0;
}
else
{
l9_1860=in.varStereoViewID;
}
int l9_1861=l9_1860;
l9_1857=l9_1861;
}
int l9_1862=l9_1857;
int l9_1863=greyMaskIdLayout_tmp;
int l9_1864=l9_1862;
float2 l9_1865=l9_1855;
bool l9_1866=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_1867=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_1868=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_1869=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_1870=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_1871=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_1872=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_1873=0.0;
bool l9_1874=l9_1871&&(!l9_1869);
float l9_1875=1.0;
float l9_1876=l9_1865.x;
int l9_1877=l9_1868.x;
if (l9_1877==1)
{
l9_1876=fract(l9_1876);
}
else
{
if (l9_1877==2)
{
float l9_1878=fract(l9_1876);
float l9_1879=l9_1876-l9_1878;
float l9_1880=step(0.25,fract(l9_1879*0.5));
l9_1876=mix(l9_1878,1.0-l9_1878,fast::clamp(l9_1880,0.0,1.0));
}
}
l9_1865.x=l9_1876;
float l9_1881=l9_1865.y;
int l9_1882=l9_1868.y;
if (l9_1882==1)
{
l9_1881=fract(l9_1881);
}
else
{
if (l9_1882==2)
{
float l9_1883=fract(l9_1881);
float l9_1884=l9_1881-l9_1883;
float l9_1885=step(0.25,fract(l9_1884*0.5));
l9_1881=mix(l9_1883,1.0-l9_1883,fast::clamp(l9_1885,0.0,1.0));
}
}
l9_1865.y=l9_1881;
if (l9_1869)
{
bool l9_1886=l9_1871;
bool l9_1887;
if (l9_1886)
{
l9_1887=l9_1868.x==3;
}
else
{
l9_1887=l9_1886;
}
float l9_1888=l9_1865.x;
float l9_1889=l9_1870.x;
float l9_1890=l9_1870.z;
bool l9_1891=l9_1887;
float l9_1892=l9_1875;
float l9_1893=fast::clamp(l9_1888,l9_1889,l9_1890);
float l9_1894=step(abs(l9_1888-l9_1893),9.9999997e-06);
l9_1892*=(l9_1894+((1.0-float(l9_1891))*(1.0-l9_1894)));
l9_1888=l9_1893;
l9_1865.x=l9_1888;
l9_1875=l9_1892;
bool l9_1895=l9_1871;
bool l9_1896;
if (l9_1895)
{
l9_1896=l9_1868.y==3;
}
else
{
l9_1896=l9_1895;
}
float l9_1897=l9_1865.y;
float l9_1898=l9_1870.y;
float l9_1899=l9_1870.w;
bool l9_1900=l9_1896;
float l9_1901=l9_1875;
float l9_1902=fast::clamp(l9_1897,l9_1898,l9_1899);
float l9_1903=step(abs(l9_1897-l9_1902),9.9999997e-06);
l9_1901*=(l9_1903+((1.0-float(l9_1900))*(1.0-l9_1903)));
l9_1897=l9_1902;
l9_1865.y=l9_1897;
l9_1875=l9_1901;
}
float2 l9_1904=l9_1865;
bool l9_1905=l9_1866;
float3x3 l9_1906=l9_1867;
if (l9_1905)
{
l9_1904=float2((l9_1906*float3(l9_1904,1.0)).xy);
}
float2 l9_1907=l9_1904;
l9_1865=l9_1907;
float l9_1908=l9_1865.x;
int l9_1909=l9_1868.x;
bool l9_1910=l9_1874;
float l9_1911=l9_1875;
if ((l9_1909==0)||(l9_1909==3))
{
float l9_1912=l9_1908;
float l9_1913=0.0;
float l9_1914=1.0;
bool l9_1915=l9_1910;
float l9_1916=l9_1911;
float l9_1917=fast::clamp(l9_1912,l9_1913,l9_1914);
float l9_1918=step(abs(l9_1912-l9_1917),9.9999997e-06);
l9_1916*=(l9_1918+((1.0-float(l9_1915))*(1.0-l9_1918)));
l9_1912=l9_1917;
l9_1908=l9_1912;
l9_1911=l9_1916;
}
l9_1865.x=l9_1908;
l9_1875=l9_1911;
float l9_1919=l9_1865.y;
int l9_1920=l9_1868.y;
bool l9_1921=l9_1874;
float l9_1922=l9_1875;
if ((l9_1920==0)||(l9_1920==3))
{
float l9_1923=l9_1919;
float l9_1924=0.0;
float l9_1925=1.0;
bool l9_1926=l9_1921;
float l9_1927=l9_1922;
float l9_1928=fast::clamp(l9_1923,l9_1924,l9_1925);
float l9_1929=step(abs(l9_1923-l9_1928),9.9999997e-06);
l9_1927*=(l9_1929+((1.0-float(l9_1926))*(1.0-l9_1929)));
l9_1923=l9_1928;
l9_1919=l9_1923;
l9_1922=l9_1927;
}
l9_1865.y=l9_1919;
l9_1875=l9_1922;
float2 l9_1930=l9_1865;
int l9_1931=l9_1863;
int l9_1932=l9_1864;
float l9_1933=l9_1873;
float2 l9_1934=l9_1930;
int l9_1935=l9_1931;
int l9_1936=l9_1932;
float3 l9_1937=float3(0.0);
if (l9_1935==0)
{
l9_1937=float3(l9_1934,0.0);
}
else
{
if (l9_1935==1)
{
l9_1937=float3(l9_1934.x,(l9_1934.y*0.5)+(0.5-(float(l9_1936)*0.5)),0.0);
}
else
{
l9_1937=float3(l9_1934,float(l9_1936));
}
}
float3 l9_1938=l9_1937;
float3 l9_1939=l9_1938;
float4 l9_1940=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_1939.xy,bias(l9_1933));
float4 l9_1941=l9_1940;
if (l9_1871)
{
l9_1941=mix(l9_1872,l9_1941,float4(l9_1875));
}
float4 l9_1942=l9_1941;
l9_1856=l9_1942;
float l9_1943=0.0;
l9_1943=l9_1856.x;
float l9_1944=0.0;
l9_1944=step(l9_1943,(*sc_set0.UserUniforms).Port_Input1_N006);
float l9_1945=0.0;
l9_1945=step(l9_1943,(*sc_set0.UserUniforms).Port_Input1_N009);
float l9_1946=0.0;
l9_1946=l9_1944-l9_1945;
l9_1849=float4(l9_1946);
l9_1854=l9_1849;
}
else
{
l9_1854=l9_1850;
}
l9_1847=l9_1854;
float4 l9_1947=float4(0.0);
l9_1947=l9_3*l9_1847;
float4 l9_1948=float4(0.0);
float l9_1949=0.0;
float4 l9_1950=float4(0.0);
float4 l9_1951=float4(0.0);
ssGlobals l9_1952=param_5;
float l9_1953=0.0;
float l9_1954=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_1953=l9_1954;
l9_1949=l9_1953;
float4 l9_1955;
if ((l9_1949*1.0)!=0.0)
{
float4 l9_1956=float4(0.0);
float l9_1957=0.0;
float4 l9_1958=float4(0.0);
float4 l9_1959=float4(0.0);
ssGlobals l9_1960=l9_1952;
float l9_1961=0.0;
float l9_1962=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
l9_1961=l9_1962;
l9_1957=l9_1961;
float4 l9_1963;
if ((l9_1957*1.0)!=0.0)
{
float4 l9_1964=float4(0.0);
float l9_1965=0.0;
float4 l9_1966=float4(0.0);
float4 l9_1967=float4(0.0);
ssGlobals l9_1968=l9_1960;
float l9_1969=0.0;
float l9_1970=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_1969=l9_1970;
l9_1965=l9_1969;
float4 l9_1971;
if ((l9_1965*1.0)!=0.0)
{
float l9_1972=0.0;
float l9_1973=(*sc_set0.UserUniforms).rimExpId02;
l9_1972=l9_1973;
float l9_1974=0.0;
float l9_1975=(*sc_set0.UserUniforms).rimIntId02;
l9_1974=l9_1975;
float l9_1976=0.0;
float l9_1977=l9_1972;
float l9_1978=l9_1974;
ssGlobals l9_1979=l9_1968;
float l9_1980=abs(dot(-l9_1979.ViewDirWS,l9_1979.VertexNormal_WorldSpace));
float l9_1981=1.0-pow(1.0-l9_1980,l9_1977);
l9_1981=fast::max(l9_1981,0.0);
l9_1981*=l9_1978;
l9_1976=l9_1981;
float4 l9_1982=float4(0.0);
float l9_1983=0.0;
float4 l9_1984=float4(0.0);
float4 l9_1985=float4(0.0);
ssGlobals l9_1986=l9_1968;
float l9_1987=0.0;
float l9_1988=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_1987=l9_1988;
l9_1983=l9_1987;
float4 l9_1989;
if ((l9_1983*1.0)!=0.0)
{
float4 l9_1990=float4(0.0);
float4 l9_1991=(*sc_set0.UserUniforms).patternColorId02;
l9_1990=l9_1991;
float4 l9_1992=float4(0.0);
float l9_1993=0.0;
float4 l9_1994=float4(0.0);
float4 l9_1995=float4(0.0);
ssGlobals l9_1996=l9_1986;
float l9_1997=0.0;
float l9_1998=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_1997=l9_1998;
l9_1993=l9_1997;
float4 l9_1999;
if ((l9_1993*1.0)!=0.0)
{
float2 l9_2000=float2(0.0);
l9_2000=l9_1996.Surface_UVCoord0;
float2 l9_2001=float2(0.0);
float2 l9_2002=(*sc_set0.UserUniforms).patternScaleId02;
l9_2001=l9_2002;
float2 l9_2003=float2(0.0);
l9_2003=((l9_2000-(*sc_set0.UserUniforms).Port_Center_N282)*l9_2001)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_2004=float2(0.0);
float2 l9_2005=(*sc_set0.UserUniforms).patternOffsetId02;
l9_2004=l9_2005;
float2 l9_2006=float2(0.0);
l9_2006=l9_2003+l9_2004;
float l9_2007=0.0;
float l9_2008=(*sc_set0.UserUniforms).patternRotateId02;
l9_2007=l9_2008;
float2 l9_2009=float2(0.0);
float2 l9_2010=l9_2006;
float l9_2011=l9_2007;
float2 l9_2012=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_2013=sin(radians(l9_2011));
float l9_2014=cos(radians(l9_2011));
float2 l9_2015=l9_2010-l9_2012;
l9_2015=float2(dot(float2(l9_2014,l9_2013),l9_2015),dot(float2(-l9_2013,l9_2014),l9_2015))+l9_2012;
l9_2009=l9_2015;
float4 l9_2016=float4(0.0);
int l9_2017;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_2018=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2018=0;
}
else
{
l9_2018=in.varStereoViewID;
}
int l9_2019=l9_2018;
l9_2017=1-l9_2019;
}
else
{
int l9_2020=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2020=0;
}
else
{
l9_2020=in.varStereoViewID;
}
int l9_2021=l9_2020;
l9_2017=l9_2021;
}
int l9_2022=l9_2017;
int l9_2023=patternTextureId02Layout_tmp;
int l9_2024=l9_2022;
float2 l9_2025=l9_2009;
bool l9_2026=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_2027=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_2028=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_2029=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_2030=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_2031=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_2032=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_2033=0.0;
bool l9_2034=l9_2031&&(!l9_2029);
float l9_2035=1.0;
float l9_2036=l9_2025.x;
int l9_2037=l9_2028.x;
if (l9_2037==1)
{
l9_2036=fract(l9_2036);
}
else
{
if (l9_2037==2)
{
float l9_2038=fract(l9_2036);
float l9_2039=l9_2036-l9_2038;
float l9_2040=step(0.25,fract(l9_2039*0.5));
l9_2036=mix(l9_2038,1.0-l9_2038,fast::clamp(l9_2040,0.0,1.0));
}
}
l9_2025.x=l9_2036;
float l9_2041=l9_2025.y;
int l9_2042=l9_2028.y;
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
l9_2025.y=l9_2041;
if (l9_2029)
{
bool l9_2046=l9_2031;
bool l9_2047;
if (l9_2046)
{
l9_2047=l9_2028.x==3;
}
else
{
l9_2047=l9_2046;
}
float l9_2048=l9_2025.x;
float l9_2049=l9_2030.x;
float l9_2050=l9_2030.z;
bool l9_2051=l9_2047;
float l9_2052=l9_2035;
float l9_2053=fast::clamp(l9_2048,l9_2049,l9_2050);
float l9_2054=step(abs(l9_2048-l9_2053),9.9999997e-06);
l9_2052*=(l9_2054+((1.0-float(l9_2051))*(1.0-l9_2054)));
l9_2048=l9_2053;
l9_2025.x=l9_2048;
l9_2035=l9_2052;
bool l9_2055=l9_2031;
bool l9_2056;
if (l9_2055)
{
l9_2056=l9_2028.y==3;
}
else
{
l9_2056=l9_2055;
}
float l9_2057=l9_2025.y;
float l9_2058=l9_2030.y;
float l9_2059=l9_2030.w;
bool l9_2060=l9_2056;
float l9_2061=l9_2035;
float l9_2062=fast::clamp(l9_2057,l9_2058,l9_2059);
float l9_2063=step(abs(l9_2057-l9_2062),9.9999997e-06);
l9_2061*=(l9_2063+((1.0-float(l9_2060))*(1.0-l9_2063)));
l9_2057=l9_2062;
l9_2025.y=l9_2057;
l9_2035=l9_2061;
}
float2 l9_2064=l9_2025;
bool l9_2065=l9_2026;
float3x3 l9_2066=l9_2027;
if (l9_2065)
{
l9_2064=float2((l9_2066*float3(l9_2064,1.0)).xy);
}
float2 l9_2067=l9_2064;
l9_2025=l9_2067;
float l9_2068=l9_2025.x;
int l9_2069=l9_2028.x;
bool l9_2070=l9_2034;
float l9_2071=l9_2035;
if ((l9_2069==0)||(l9_2069==3))
{
float l9_2072=l9_2068;
float l9_2073=0.0;
float l9_2074=1.0;
bool l9_2075=l9_2070;
float l9_2076=l9_2071;
float l9_2077=fast::clamp(l9_2072,l9_2073,l9_2074);
float l9_2078=step(abs(l9_2072-l9_2077),9.9999997e-06);
l9_2076*=(l9_2078+((1.0-float(l9_2075))*(1.0-l9_2078)));
l9_2072=l9_2077;
l9_2068=l9_2072;
l9_2071=l9_2076;
}
l9_2025.x=l9_2068;
l9_2035=l9_2071;
float l9_2079=l9_2025.y;
int l9_2080=l9_2028.y;
bool l9_2081=l9_2034;
float l9_2082=l9_2035;
if ((l9_2080==0)||(l9_2080==3))
{
float l9_2083=l9_2079;
float l9_2084=0.0;
float l9_2085=1.0;
bool l9_2086=l9_2081;
float l9_2087=l9_2082;
float l9_2088=fast::clamp(l9_2083,l9_2084,l9_2085);
float l9_2089=step(abs(l9_2083-l9_2088),9.9999997e-06);
l9_2087*=(l9_2089+((1.0-float(l9_2086))*(1.0-l9_2089)));
l9_2083=l9_2088;
l9_2079=l9_2083;
l9_2082=l9_2087;
}
l9_2025.y=l9_2079;
l9_2035=l9_2082;
float2 l9_2090=l9_2025;
int l9_2091=l9_2023;
int l9_2092=l9_2024;
float l9_2093=l9_2033;
float2 l9_2094=l9_2090;
int l9_2095=l9_2091;
int l9_2096=l9_2092;
float3 l9_2097=float3(0.0);
if (l9_2095==0)
{
l9_2097=float3(l9_2094,0.0);
}
else
{
if (l9_2095==1)
{
l9_2097=float3(l9_2094.x,(l9_2094.y*0.5)+(0.5-(float(l9_2096)*0.5)),0.0);
}
else
{
l9_2097=float3(l9_2094,float(l9_2096));
}
}
float3 l9_2098=l9_2097;
float3 l9_2099=l9_2098;
float4 l9_2100=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_2099.xy,bias(l9_2093));
float4 l9_2101=l9_2100;
if (l9_2031)
{
l9_2101=mix(l9_2032,l9_2101,float4(l9_2035));
}
float4 l9_2102=l9_2101;
l9_2016=l9_2102;
l9_1994=l9_2016;
l9_1999=l9_1994;
}
else
{
float2 l9_2103=float2(0.0);
l9_2103=l9_1996.Surface_UVCoord0;
float2 l9_2104=float2(0.0);
float2 l9_2105=(*sc_set0.UserUniforms).patternScaleId02;
l9_2104=l9_2105;
float2 l9_2106=float2(0.0);
l9_2106=((l9_2103-(*sc_set0.UserUniforms).Port_Center_N282)*l9_2104)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_2107=float2(0.0);
float2 l9_2108=(*sc_set0.UserUniforms).patternOffsetId02;
l9_2107=l9_2108;
float2 l9_2109=float2(0.0);
l9_2109=l9_2106+l9_2107;
float l9_2110=0.0;
float l9_2111=(*sc_set0.UserUniforms).patternRotateId02;
l9_2110=l9_2111;
float2 l9_2112=float2(0.0);
float2 l9_2113=l9_2109;
float l9_2114=l9_2110;
float2 l9_2115=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_2116=sin(radians(l9_2114));
float l9_2117=cos(radians(l9_2114));
float2 l9_2118=l9_2113-l9_2115;
l9_2118=float2(dot(float2(l9_2117,l9_2116),l9_2118),dot(float2(-l9_2116,l9_2117),l9_2118))+l9_2115;
l9_2112=l9_2118;
float4 l9_2119=float4(0.0);
int l9_2120;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_2121=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2121=0;
}
else
{
l9_2121=in.varStereoViewID;
}
int l9_2122=l9_2121;
l9_2120=1-l9_2122;
}
else
{
int l9_2123=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2123=0;
}
else
{
l9_2123=in.varStereoViewID;
}
int l9_2124=l9_2123;
l9_2120=l9_2124;
}
int l9_2125=l9_2120;
int l9_2126=patternTextureId02Layout_tmp;
int l9_2127=l9_2125;
float2 l9_2128=l9_2112;
bool l9_2129=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_2130=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_2131=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_2132=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_2133=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_2134=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_2135=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_2136=0.0;
bool l9_2137=l9_2134&&(!l9_2132);
float l9_2138=1.0;
float l9_2139=l9_2128.x;
int l9_2140=l9_2131.x;
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
l9_2128.x=l9_2139;
float l9_2144=l9_2128.y;
int l9_2145=l9_2131.y;
if (l9_2145==1)
{
l9_2144=fract(l9_2144);
}
else
{
if (l9_2145==2)
{
float l9_2146=fract(l9_2144);
float l9_2147=l9_2144-l9_2146;
float l9_2148=step(0.25,fract(l9_2147*0.5));
l9_2144=mix(l9_2146,1.0-l9_2146,fast::clamp(l9_2148,0.0,1.0));
}
}
l9_2128.y=l9_2144;
if (l9_2132)
{
bool l9_2149=l9_2134;
bool l9_2150;
if (l9_2149)
{
l9_2150=l9_2131.x==3;
}
else
{
l9_2150=l9_2149;
}
float l9_2151=l9_2128.x;
float l9_2152=l9_2133.x;
float l9_2153=l9_2133.z;
bool l9_2154=l9_2150;
float l9_2155=l9_2138;
float l9_2156=fast::clamp(l9_2151,l9_2152,l9_2153);
float l9_2157=step(abs(l9_2151-l9_2156),9.9999997e-06);
l9_2155*=(l9_2157+((1.0-float(l9_2154))*(1.0-l9_2157)));
l9_2151=l9_2156;
l9_2128.x=l9_2151;
l9_2138=l9_2155;
bool l9_2158=l9_2134;
bool l9_2159;
if (l9_2158)
{
l9_2159=l9_2131.y==3;
}
else
{
l9_2159=l9_2158;
}
float l9_2160=l9_2128.y;
float l9_2161=l9_2133.y;
float l9_2162=l9_2133.w;
bool l9_2163=l9_2159;
float l9_2164=l9_2138;
float l9_2165=fast::clamp(l9_2160,l9_2161,l9_2162);
float l9_2166=step(abs(l9_2160-l9_2165),9.9999997e-06);
l9_2164*=(l9_2166+((1.0-float(l9_2163))*(1.0-l9_2166)));
l9_2160=l9_2165;
l9_2128.y=l9_2160;
l9_2138=l9_2164;
}
float2 l9_2167=l9_2128;
bool l9_2168=l9_2129;
float3x3 l9_2169=l9_2130;
if (l9_2168)
{
l9_2167=float2((l9_2169*float3(l9_2167,1.0)).xy);
}
float2 l9_2170=l9_2167;
l9_2128=l9_2170;
float l9_2171=l9_2128.x;
int l9_2172=l9_2131.x;
bool l9_2173=l9_2137;
float l9_2174=l9_2138;
if ((l9_2172==0)||(l9_2172==3))
{
float l9_2175=l9_2171;
float l9_2176=0.0;
float l9_2177=1.0;
bool l9_2178=l9_2173;
float l9_2179=l9_2174;
float l9_2180=fast::clamp(l9_2175,l9_2176,l9_2177);
float l9_2181=step(abs(l9_2175-l9_2180),9.9999997e-06);
l9_2179*=(l9_2181+((1.0-float(l9_2178))*(1.0-l9_2181)));
l9_2175=l9_2180;
l9_2171=l9_2175;
l9_2174=l9_2179;
}
l9_2128.x=l9_2171;
l9_2138=l9_2174;
float l9_2182=l9_2128.y;
int l9_2183=l9_2131.y;
bool l9_2184=l9_2137;
float l9_2185=l9_2138;
if ((l9_2183==0)||(l9_2183==3))
{
float l9_2186=l9_2182;
float l9_2187=0.0;
float l9_2188=1.0;
bool l9_2189=l9_2184;
float l9_2190=l9_2185;
float l9_2191=fast::clamp(l9_2186,l9_2187,l9_2188);
float l9_2192=step(abs(l9_2186-l9_2191),9.9999997e-06);
l9_2190*=(l9_2192+((1.0-float(l9_2189))*(1.0-l9_2192)));
l9_2186=l9_2191;
l9_2182=l9_2186;
l9_2185=l9_2190;
}
l9_2128.y=l9_2182;
l9_2138=l9_2185;
float2 l9_2193=l9_2128;
int l9_2194=l9_2126;
int l9_2195=l9_2127;
float l9_2196=l9_2136;
float2 l9_2197=l9_2193;
int l9_2198=l9_2194;
int l9_2199=l9_2195;
float3 l9_2200=float3(0.0);
if (l9_2198==0)
{
l9_2200=float3(l9_2197,0.0);
}
else
{
if (l9_2198==1)
{
l9_2200=float3(l9_2197.x,(l9_2197.y*0.5)+(0.5-(float(l9_2199)*0.5)),0.0);
}
else
{
l9_2200=float3(l9_2197,float(l9_2199));
}
}
float3 l9_2201=l9_2200;
float3 l9_2202=l9_2201;
float4 l9_2203=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_2202.xy,bias(l9_2196));
float4 l9_2204=l9_2203;
if (l9_2134)
{
l9_2204=mix(l9_2135,l9_2204,float4(l9_2138));
}
float4 l9_2205=l9_2204;
l9_2119=l9_2205;
float l9_2206=0.0;
float3 l9_2207=l9_2119.xyz;
float l9_2208=l9_2207.x;
l9_2206=l9_2208;
l9_1995=float4(l9_2206);
l9_1999=l9_1995;
}
l9_1992=l9_1999;
float4 l9_2209=float4(0.0);
l9_2209=l9_1990*l9_1992;
l9_1984=l9_2209;
l9_1989=l9_1984;
}
else
{
float4 l9_2210=float4(0.0);
float4 l9_2211=(*sc_set0.UserUniforms).colorId02;
l9_2210=l9_2211;
float4 l9_2212=float4(0.0);
float l9_2213=0.0;
float4 l9_2214=float4(0.0);
float4 l9_2215=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_2216=l9_1986;
float l9_2217=0.0;
float l9_2218=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_2217=l9_2218;
l9_2213=l9_2217;
float4 l9_2219;
if ((l9_2213*1.0)!=0.0)
{
float2 l9_2220=float2(0.0);
l9_2220=l9_2216.Surface_UVCoord0;
float4 l9_2221=float4(0.0);
int l9_2222;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2223=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2223=0;
}
else
{
l9_2223=in.varStereoViewID;
}
int l9_2224=l9_2223;
l9_2222=1-l9_2224;
}
else
{
int l9_2225=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2225=0;
}
else
{
l9_2225=in.varStereoViewID;
}
int l9_2226=l9_2225;
l9_2222=l9_2226;
}
int l9_2227=l9_2222;
int l9_2228=greyMaskIdLayout_tmp;
int l9_2229=l9_2227;
float2 l9_2230=l9_2220;
bool l9_2231=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2232=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2233=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2234=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2235=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2236=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2237=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2238=0.0;
bool l9_2239=l9_2236&&(!l9_2234);
float l9_2240=1.0;
float l9_2241=l9_2230.x;
int l9_2242=l9_2233.x;
if (l9_2242==1)
{
l9_2241=fract(l9_2241);
}
else
{
if (l9_2242==2)
{
float l9_2243=fract(l9_2241);
float l9_2244=l9_2241-l9_2243;
float l9_2245=step(0.25,fract(l9_2244*0.5));
l9_2241=mix(l9_2243,1.0-l9_2243,fast::clamp(l9_2245,0.0,1.0));
}
}
l9_2230.x=l9_2241;
float l9_2246=l9_2230.y;
int l9_2247=l9_2233.y;
if (l9_2247==1)
{
l9_2246=fract(l9_2246);
}
else
{
if (l9_2247==2)
{
float l9_2248=fract(l9_2246);
float l9_2249=l9_2246-l9_2248;
float l9_2250=step(0.25,fract(l9_2249*0.5));
l9_2246=mix(l9_2248,1.0-l9_2248,fast::clamp(l9_2250,0.0,1.0));
}
}
l9_2230.y=l9_2246;
if (l9_2234)
{
bool l9_2251=l9_2236;
bool l9_2252;
if (l9_2251)
{
l9_2252=l9_2233.x==3;
}
else
{
l9_2252=l9_2251;
}
float l9_2253=l9_2230.x;
float l9_2254=l9_2235.x;
float l9_2255=l9_2235.z;
bool l9_2256=l9_2252;
float l9_2257=l9_2240;
float l9_2258=fast::clamp(l9_2253,l9_2254,l9_2255);
float l9_2259=step(abs(l9_2253-l9_2258),9.9999997e-06);
l9_2257*=(l9_2259+((1.0-float(l9_2256))*(1.0-l9_2259)));
l9_2253=l9_2258;
l9_2230.x=l9_2253;
l9_2240=l9_2257;
bool l9_2260=l9_2236;
bool l9_2261;
if (l9_2260)
{
l9_2261=l9_2233.y==3;
}
else
{
l9_2261=l9_2260;
}
float l9_2262=l9_2230.y;
float l9_2263=l9_2235.y;
float l9_2264=l9_2235.w;
bool l9_2265=l9_2261;
float l9_2266=l9_2240;
float l9_2267=fast::clamp(l9_2262,l9_2263,l9_2264);
float l9_2268=step(abs(l9_2262-l9_2267),9.9999997e-06);
l9_2266*=(l9_2268+((1.0-float(l9_2265))*(1.0-l9_2268)));
l9_2262=l9_2267;
l9_2230.y=l9_2262;
l9_2240=l9_2266;
}
float2 l9_2269=l9_2230;
bool l9_2270=l9_2231;
float3x3 l9_2271=l9_2232;
if (l9_2270)
{
l9_2269=float2((l9_2271*float3(l9_2269,1.0)).xy);
}
float2 l9_2272=l9_2269;
l9_2230=l9_2272;
float l9_2273=l9_2230.x;
int l9_2274=l9_2233.x;
bool l9_2275=l9_2239;
float l9_2276=l9_2240;
if ((l9_2274==0)||(l9_2274==3))
{
float l9_2277=l9_2273;
float l9_2278=0.0;
float l9_2279=1.0;
bool l9_2280=l9_2275;
float l9_2281=l9_2276;
float l9_2282=fast::clamp(l9_2277,l9_2278,l9_2279);
float l9_2283=step(abs(l9_2277-l9_2282),9.9999997e-06);
l9_2281*=(l9_2283+((1.0-float(l9_2280))*(1.0-l9_2283)));
l9_2277=l9_2282;
l9_2273=l9_2277;
l9_2276=l9_2281;
}
l9_2230.x=l9_2273;
l9_2240=l9_2276;
float l9_2284=l9_2230.y;
int l9_2285=l9_2233.y;
bool l9_2286=l9_2239;
float l9_2287=l9_2240;
if ((l9_2285==0)||(l9_2285==3))
{
float l9_2288=l9_2284;
float l9_2289=0.0;
float l9_2290=1.0;
bool l9_2291=l9_2286;
float l9_2292=l9_2287;
float l9_2293=fast::clamp(l9_2288,l9_2289,l9_2290);
float l9_2294=step(abs(l9_2288-l9_2293),9.9999997e-06);
l9_2292*=(l9_2294+((1.0-float(l9_2291))*(1.0-l9_2294)));
l9_2288=l9_2293;
l9_2284=l9_2288;
l9_2287=l9_2292;
}
l9_2230.y=l9_2284;
l9_2240=l9_2287;
float2 l9_2295=l9_2230;
int l9_2296=l9_2228;
int l9_2297=l9_2229;
float l9_2298=l9_2238;
float2 l9_2299=l9_2295;
int l9_2300=l9_2296;
int l9_2301=l9_2297;
float3 l9_2302=float3(0.0);
if (l9_2300==0)
{
l9_2302=float3(l9_2299,0.0);
}
else
{
if (l9_2300==1)
{
l9_2302=float3(l9_2299.x,(l9_2299.y*0.5)+(0.5-(float(l9_2301)*0.5)),0.0);
}
else
{
l9_2302=float3(l9_2299,float(l9_2301));
}
}
float3 l9_2303=l9_2302;
float3 l9_2304=l9_2303;
float4 l9_2305=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2304.xy,bias(l9_2298));
float4 l9_2306=l9_2305;
if (l9_2236)
{
l9_2306=mix(l9_2237,l9_2306,float4(l9_2240));
}
float4 l9_2307=l9_2306;
l9_2221=l9_2307;
float l9_2308=0.0;
l9_2308=l9_2221.x;
float l9_2309=0.0;
l9_2309=step(l9_2308,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_2310=0.0;
l9_2310=step(l9_2308,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_2311=0.0;
l9_2311=l9_2309-l9_2310;
l9_2214=float4(l9_2311);
l9_2219=l9_2214;
}
else
{
l9_2219=l9_2215;
}
l9_2212=l9_2219;
float4 l9_2312=float4(0.0);
l9_2312=l9_2210*l9_2212;
l9_1985=l9_2312;
l9_1989=l9_1985;
}
l9_1982=l9_1989;
float4 l9_2313=float4(0.0);
float l9_2314=0.0;
float4 l9_2315=float4(0.0);
float4 l9_2316=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_2317=l9_1968;
float l9_2318=0.0;
float l9_2319=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_2318=l9_2319;
l9_2314=l9_2318;
float4 l9_2320;
if ((l9_2314*1.0)!=0.0)
{
float2 l9_2321=float2(0.0);
l9_2321=l9_2317.Surface_UVCoord0;
float4 l9_2322=float4(0.0);
int l9_2323;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2324=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2324=0;
}
else
{
l9_2324=in.varStereoViewID;
}
int l9_2325=l9_2324;
l9_2323=1-l9_2325;
}
else
{
int l9_2326=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2326=0;
}
else
{
l9_2326=in.varStereoViewID;
}
int l9_2327=l9_2326;
l9_2323=l9_2327;
}
int l9_2328=l9_2323;
int l9_2329=greyMaskIdLayout_tmp;
int l9_2330=l9_2328;
float2 l9_2331=l9_2321;
bool l9_2332=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2333=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2334=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2335=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2336=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2337=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2338=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2339=0.0;
bool l9_2340=l9_2337&&(!l9_2335);
float l9_2341=1.0;
float l9_2342=l9_2331.x;
int l9_2343=l9_2334.x;
if (l9_2343==1)
{
l9_2342=fract(l9_2342);
}
else
{
if (l9_2343==2)
{
float l9_2344=fract(l9_2342);
float l9_2345=l9_2342-l9_2344;
float l9_2346=step(0.25,fract(l9_2345*0.5));
l9_2342=mix(l9_2344,1.0-l9_2344,fast::clamp(l9_2346,0.0,1.0));
}
}
l9_2331.x=l9_2342;
float l9_2347=l9_2331.y;
int l9_2348=l9_2334.y;
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
l9_2331.y=l9_2347;
if (l9_2335)
{
bool l9_2352=l9_2337;
bool l9_2353;
if (l9_2352)
{
l9_2353=l9_2334.x==3;
}
else
{
l9_2353=l9_2352;
}
float l9_2354=l9_2331.x;
float l9_2355=l9_2336.x;
float l9_2356=l9_2336.z;
bool l9_2357=l9_2353;
float l9_2358=l9_2341;
float l9_2359=fast::clamp(l9_2354,l9_2355,l9_2356);
float l9_2360=step(abs(l9_2354-l9_2359),9.9999997e-06);
l9_2358*=(l9_2360+((1.0-float(l9_2357))*(1.0-l9_2360)));
l9_2354=l9_2359;
l9_2331.x=l9_2354;
l9_2341=l9_2358;
bool l9_2361=l9_2337;
bool l9_2362;
if (l9_2361)
{
l9_2362=l9_2334.y==3;
}
else
{
l9_2362=l9_2361;
}
float l9_2363=l9_2331.y;
float l9_2364=l9_2336.y;
float l9_2365=l9_2336.w;
bool l9_2366=l9_2362;
float l9_2367=l9_2341;
float l9_2368=fast::clamp(l9_2363,l9_2364,l9_2365);
float l9_2369=step(abs(l9_2363-l9_2368),9.9999997e-06);
l9_2367*=(l9_2369+((1.0-float(l9_2366))*(1.0-l9_2369)));
l9_2363=l9_2368;
l9_2331.y=l9_2363;
l9_2341=l9_2367;
}
float2 l9_2370=l9_2331;
bool l9_2371=l9_2332;
float3x3 l9_2372=l9_2333;
if (l9_2371)
{
l9_2370=float2((l9_2372*float3(l9_2370,1.0)).xy);
}
float2 l9_2373=l9_2370;
l9_2331=l9_2373;
float l9_2374=l9_2331.x;
int l9_2375=l9_2334.x;
bool l9_2376=l9_2340;
float l9_2377=l9_2341;
if ((l9_2375==0)||(l9_2375==3))
{
float l9_2378=l9_2374;
float l9_2379=0.0;
float l9_2380=1.0;
bool l9_2381=l9_2376;
float l9_2382=l9_2377;
float l9_2383=fast::clamp(l9_2378,l9_2379,l9_2380);
float l9_2384=step(abs(l9_2378-l9_2383),9.9999997e-06);
l9_2382*=(l9_2384+((1.0-float(l9_2381))*(1.0-l9_2384)));
l9_2378=l9_2383;
l9_2374=l9_2378;
l9_2377=l9_2382;
}
l9_2331.x=l9_2374;
l9_2341=l9_2377;
float l9_2385=l9_2331.y;
int l9_2386=l9_2334.y;
bool l9_2387=l9_2340;
float l9_2388=l9_2341;
if ((l9_2386==0)||(l9_2386==3))
{
float l9_2389=l9_2385;
float l9_2390=0.0;
float l9_2391=1.0;
bool l9_2392=l9_2387;
float l9_2393=l9_2388;
float l9_2394=fast::clamp(l9_2389,l9_2390,l9_2391);
float l9_2395=step(abs(l9_2389-l9_2394),9.9999997e-06);
l9_2393*=(l9_2395+((1.0-float(l9_2392))*(1.0-l9_2395)));
l9_2389=l9_2394;
l9_2385=l9_2389;
l9_2388=l9_2393;
}
l9_2331.y=l9_2385;
l9_2341=l9_2388;
float2 l9_2396=l9_2331;
int l9_2397=l9_2329;
int l9_2398=l9_2330;
float l9_2399=l9_2339;
float2 l9_2400=l9_2396;
int l9_2401=l9_2397;
int l9_2402=l9_2398;
float3 l9_2403=float3(0.0);
if (l9_2401==0)
{
l9_2403=float3(l9_2400,0.0);
}
else
{
if (l9_2401==1)
{
l9_2403=float3(l9_2400.x,(l9_2400.y*0.5)+(0.5-(float(l9_2402)*0.5)),0.0);
}
else
{
l9_2403=float3(l9_2400,float(l9_2402));
}
}
float3 l9_2404=l9_2403;
float3 l9_2405=l9_2404;
float4 l9_2406=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2405.xy,bias(l9_2399));
float4 l9_2407=l9_2406;
if (l9_2337)
{
l9_2407=mix(l9_2338,l9_2407,float4(l9_2341));
}
float4 l9_2408=l9_2407;
l9_2322=l9_2408;
float l9_2409=0.0;
l9_2409=l9_2322.x;
float l9_2410=0.0;
l9_2410=step(l9_2409,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_2411=0.0;
l9_2411=step(l9_2409,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_2412=0.0;
l9_2412=l9_2410-l9_2411;
l9_2315=float4(l9_2412);
l9_2320=l9_2315;
}
else
{
l9_2320=l9_2316;
}
l9_2313=l9_2320;
float4 l9_2413=float4(0.0);
l9_2413=l9_1982*l9_2313;
float4 l9_2414=float4(0.0);
float4 l9_2415=(*sc_set0.UserUniforms).colorId02;
l9_2414=l9_2415;
float4 l9_2416=float4(0.0);
l9_2416=l9_2414*l9_2313;
float4 l9_2417=float4(0.0);
float4 l9_2418=l9_2413;
float4 l9_2419=l9_2416;
float4 l9_2420=l9_2418;
float4 l9_2421=l9_2419;
float3 l9_2422=l9_2420.xyz*l9_2420.w;
l9_2420=float4(l9_2422.x,l9_2422.y,l9_2422.z,l9_2420.w);
float4 l9_2423=l9_2420+(l9_2421*(1.0-l9_2420.w));
l9_2417=l9_2423;
float4 l9_2424=float4(0.0);
l9_2424=float4(l9_1976)*l9_2417;
float4 l9_2425=float4(0.0);
l9_2425=l9_2424+l9_2417;
l9_1966=l9_2425;
l9_1971=l9_1966;
}
else
{
float4 l9_2426=float4(0.0);
float l9_2427=0.0;
float4 l9_2428=float4(0.0);
float4 l9_2429=float4(0.0);
ssGlobals l9_2430=l9_1968;
float l9_2431=0.0;
float l9_2432=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_2431=l9_2432;
l9_2427=l9_2431;
float4 l9_2433;
if ((l9_2427*1.0)!=0.0)
{
float4 l9_2434=float4(0.0);
float4 l9_2435=(*sc_set0.UserUniforms).patternColorId02;
l9_2434=l9_2435;
float4 l9_2436=float4(0.0);
float l9_2437=0.0;
float4 l9_2438=float4(0.0);
float4 l9_2439=float4(0.0);
ssGlobals l9_2440=l9_2430;
float l9_2441=0.0;
float l9_2442=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_2441=l9_2442;
l9_2437=l9_2441;
float4 l9_2443;
if ((l9_2437*1.0)!=0.0)
{
float2 l9_2444=float2(0.0);
l9_2444=l9_2440.Surface_UVCoord0;
float2 l9_2445=float2(0.0);
float2 l9_2446=(*sc_set0.UserUniforms).patternScaleId02;
l9_2445=l9_2446;
float2 l9_2447=float2(0.0);
l9_2447=((l9_2444-(*sc_set0.UserUniforms).Port_Center_N282)*l9_2445)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_2448=float2(0.0);
float2 l9_2449=(*sc_set0.UserUniforms).patternOffsetId02;
l9_2448=l9_2449;
float2 l9_2450=float2(0.0);
l9_2450=l9_2447+l9_2448;
float l9_2451=0.0;
float l9_2452=(*sc_set0.UserUniforms).patternRotateId02;
l9_2451=l9_2452;
float2 l9_2453=float2(0.0);
float2 l9_2454=l9_2450;
float l9_2455=l9_2451;
float2 l9_2456=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_2457=sin(radians(l9_2455));
float l9_2458=cos(radians(l9_2455));
float2 l9_2459=l9_2454-l9_2456;
l9_2459=float2(dot(float2(l9_2458,l9_2457),l9_2459),dot(float2(-l9_2457,l9_2458),l9_2459))+l9_2456;
l9_2453=l9_2459;
float4 l9_2460=float4(0.0);
int l9_2461;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_2462=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2462=0;
}
else
{
l9_2462=in.varStereoViewID;
}
int l9_2463=l9_2462;
l9_2461=1-l9_2463;
}
else
{
int l9_2464=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2464=0;
}
else
{
l9_2464=in.varStereoViewID;
}
int l9_2465=l9_2464;
l9_2461=l9_2465;
}
int l9_2466=l9_2461;
int l9_2467=patternTextureId02Layout_tmp;
int l9_2468=l9_2466;
float2 l9_2469=l9_2453;
bool l9_2470=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_2471=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_2472=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_2473=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_2474=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_2475=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_2476=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_2477=0.0;
bool l9_2478=l9_2475&&(!l9_2473);
float l9_2479=1.0;
float l9_2480=l9_2469.x;
int l9_2481=l9_2472.x;
if (l9_2481==1)
{
l9_2480=fract(l9_2480);
}
else
{
if (l9_2481==2)
{
float l9_2482=fract(l9_2480);
float l9_2483=l9_2480-l9_2482;
float l9_2484=step(0.25,fract(l9_2483*0.5));
l9_2480=mix(l9_2482,1.0-l9_2482,fast::clamp(l9_2484,0.0,1.0));
}
}
l9_2469.x=l9_2480;
float l9_2485=l9_2469.y;
int l9_2486=l9_2472.y;
if (l9_2486==1)
{
l9_2485=fract(l9_2485);
}
else
{
if (l9_2486==2)
{
float l9_2487=fract(l9_2485);
float l9_2488=l9_2485-l9_2487;
float l9_2489=step(0.25,fract(l9_2488*0.5));
l9_2485=mix(l9_2487,1.0-l9_2487,fast::clamp(l9_2489,0.0,1.0));
}
}
l9_2469.y=l9_2485;
if (l9_2473)
{
bool l9_2490=l9_2475;
bool l9_2491;
if (l9_2490)
{
l9_2491=l9_2472.x==3;
}
else
{
l9_2491=l9_2490;
}
float l9_2492=l9_2469.x;
float l9_2493=l9_2474.x;
float l9_2494=l9_2474.z;
bool l9_2495=l9_2491;
float l9_2496=l9_2479;
float l9_2497=fast::clamp(l9_2492,l9_2493,l9_2494);
float l9_2498=step(abs(l9_2492-l9_2497),9.9999997e-06);
l9_2496*=(l9_2498+((1.0-float(l9_2495))*(1.0-l9_2498)));
l9_2492=l9_2497;
l9_2469.x=l9_2492;
l9_2479=l9_2496;
bool l9_2499=l9_2475;
bool l9_2500;
if (l9_2499)
{
l9_2500=l9_2472.y==3;
}
else
{
l9_2500=l9_2499;
}
float l9_2501=l9_2469.y;
float l9_2502=l9_2474.y;
float l9_2503=l9_2474.w;
bool l9_2504=l9_2500;
float l9_2505=l9_2479;
float l9_2506=fast::clamp(l9_2501,l9_2502,l9_2503);
float l9_2507=step(abs(l9_2501-l9_2506),9.9999997e-06);
l9_2505*=(l9_2507+((1.0-float(l9_2504))*(1.0-l9_2507)));
l9_2501=l9_2506;
l9_2469.y=l9_2501;
l9_2479=l9_2505;
}
float2 l9_2508=l9_2469;
bool l9_2509=l9_2470;
float3x3 l9_2510=l9_2471;
if (l9_2509)
{
l9_2508=float2((l9_2510*float3(l9_2508,1.0)).xy);
}
float2 l9_2511=l9_2508;
l9_2469=l9_2511;
float l9_2512=l9_2469.x;
int l9_2513=l9_2472.x;
bool l9_2514=l9_2478;
float l9_2515=l9_2479;
if ((l9_2513==0)||(l9_2513==3))
{
float l9_2516=l9_2512;
float l9_2517=0.0;
float l9_2518=1.0;
bool l9_2519=l9_2514;
float l9_2520=l9_2515;
float l9_2521=fast::clamp(l9_2516,l9_2517,l9_2518);
float l9_2522=step(abs(l9_2516-l9_2521),9.9999997e-06);
l9_2520*=(l9_2522+((1.0-float(l9_2519))*(1.0-l9_2522)));
l9_2516=l9_2521;
l9_2512=l9_2516;
l9_2515=l9_2520;
}
l9_2469.x=l9_2512;
l9_2479=l9_2515;
float l9_2523=l9_2469.y;
int l9_2524=l9_2472.y;
bool l9_2525=l9_2478;
float l9_2526=l9_2479;
if ((l9_2524==0)||(l9_2524==3))
{
float l9_2527=l9_2523;
float l9_2528=0.0;
float l9_2529=1.0;
bool l9_2530=l9_2525;
float l9_2531=l9_2526;
float l9_2532=fast::clamp(l9_2527,l9_2528,l9_2529);
float l9_2533=step(abs(l9_2527-l9_2532),9.9999997e-06);
l9_2531*=(l9_2533+((1.0-float(l9_2530))*(1.0-l9_2533)));
l9_2527=l9_2532;
l9_2523=l9_2527;
l9_2526=l9_2531;
}
l9_2469.y=l9_2523;
l9_2479=l9_2526;
float2 l9_2534=l9_2469;
int l9_2535=l9_2467;
int l9_2536=l9_2468;
float l9_2537=l9_2477;
float2 l9_2538=l9_2534;
int l9_2539=l9_2535;
int l9_2540=l9_2536;
float3 l9_2541=float3(0.0);
if (l9_2539==0)
{
l9_2541=float3(l9_2538,0.0);
}
else
{
if (l9_2539==1)
{
l9_2541=float3(l9_2538.x,(l9_2538.y*0.5)+(0.5-(float(l9_2540)*0.5)),0.0);
}
else
{
l9_2541=float3(l9_2538,float(l9_2540));
}
}
float3 l9_2542=l9_2541;
float3 l9_2543=l9_2542;
float4 l9_2544=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_2543.xy,bias(l9_2537));
float4 l9_2545=l9_2544;
if (l9_2475)
{
l9_2545=mix(l9_2476,l9_2545,float4(l9_2479));
}
float4 l9_2546=l9_2545;
l9_2460=l9_2546;
l9_2438=l9_2460;
l9_2443=l9_2438;
}
else
{
float2 l9_2547=float2(0.0);
l9_2547=l9_2440.Surface_UVCoord0;
float2 l9_2548=float2(0.0);
float2 l9_2549=(*sc_set0.UserUniforms).patternScaleId02;
l9_2548=l9_2549;
float2 l9_2550=float2(0.0);
l9_2550=((l9_2547-(*sc_set0.UserUniforms).Port_Center_N282)*l9_2548)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_2551=float2(0.0);
float2 l9_2552=(*sc_set0.UserUniforms).patternOffsetId02;
l9_2551=l9_2552;
float2 l9_2553=float2(0.0);
l9_2553=l9_2550+l9_2551;
float l9_2554=0.0;
float l9_2555=(*sc_set0.UserUniforms).patternRotateId02;
l9_2554=l9_2555;
float2 l9_2556=float2(0.0);
float2 l9_2557=l9_2553;
float l9_2558=l9_2554;
float2 l9_2559=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_2560=sin(radians(l9_2558));
float l9_2561=cos(radians(l9_2558));
float2 l9_2562=l9_2557-l9_2559;
l9_2562=float2(dot(float2(l9_2561,l9_2560),l9_2562),dot(float2(-l9_2560,l9_2561),l9_2562))+l9_2559;
l9_2556=l9_2562;
float4 l9_2563=float4(0.0);
int l9_2564;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_2565=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2565=0;
}
else
{
l9_2565=in.varStereoViewID;
}
int l9_2566=l9_2565;
l9_2564=1-l9_2566;
}
else
{
int l9_2567=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2567=0;
}
else
{
l9_2567=in.varStereoViewID;
}
int l9_2568=l9_2567;
l9_2564=l9_2568;
}
int l9_2569=l9_2564;
int l9_2570=patternTextureId02Layout_tmp;
int l9_2571=l9_2569;
float2 l9_2572=l9_2556;
bool l9_2573=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_2574=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_2575=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_2576=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_2577=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_2578=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_2579=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_2580=0.0;
bool l9_2581=l9_2578&&(!l9_2576);
float l9_2582=1.0;
float l9_2583=l9_2572.x;
int l9_2584=l9_2575.x;
if (l9_2584==1)
{
l9_2583=fract(l9_2583);
}
else
{
if (l9_2584==2)
{
float l9_2585=fract(l9_2583);
float l9_2586=l9_2583-l9_2585;
float l9_2587=step(0.25,fract(l9_2586*0.5));
l9_2583=mix(l9_2585,1.0-l9_2585,fast::clamp(l9_2587,0.0,1.0));
}
}
l9_2572.x=l9_2583;
float l9_2588=l9_2572.y;
int l9_2589=l9_2575.y;
if (l9_2589==1)
{
l9_2588=fract(l9_2588);
}
else
{
if (l9_2589==2)
{
float l9_2590=fract(l9_2588);
float l9_2591=l9_2588-l9_2590;
float l9_2592=step(0.25,fract(l9_2591*0.5));
l9_2588=mix(l9_2590,1.0-l9_2590,fast::clamp(l9_2592,0.0,1.0));
}
}
l9_2572.y=l9_2588;
if (l9_2576)
{
bool l9_2593=l9_2578;
bool l9_2594;
if (l9_2593)
{
l9_2594=l9_2575.x==3;
}
else
{
l9_2594=l9_2593;
}
float l9_2595=l9_2572.x;
float l9_2596=l9_2577.x;
float l9_2597=l9_2577.z;
bool l9_2598=l9_2594;
float l9_2599=l9_2582;
float l9_2600=fast::clamp(l9_2595,l9_2596,l9_2597);
float l9_2601=step(abs(l9_2595-l9_2600),9.9999997e-06);
l9_2599*=(l9_2601+((1.0-float(l9_2598))*(1.0-l9_2601)));
l9_2595=l9_2600;
l9_2572.x=l9_2595;
l9_2582=l9_2599;
bool l9_2602=l9_2578;
bool l9_2603;
if (l9_2602)
{
l9_2603=l9_2575.y==3;
}
else
{
l9_2603=l9_2602;
}
float l9_2604=l9_2572.y;
float l9_2605=l9_2577.y;
float l9_2606=l9_2577.w;
bool l9_2607=l9_2603;
float l9_2608=l9_2582;
float l9_2609=fast::clamp(l9_2604,l9_2605,l9_2606);
float l9_2610=step(abs(l9_2604-l9_2609),9.9999997e-06);
l9_2608*=(l9_2610+((1.0-float(l9_2607))*(1.0-l9_2610)));
l9_2604=l9_2609;
l9_2572.y=l9_2604;
l9_2582=l9_2608;
}
float2 l9_2611=l9_2572;
bool l9_2612=l9_2573;
float3x3 l9_2613=l9_2574;
if (l9_2612)
{
l9_2611=float2((l9_2613*float3(l9_2611,1.0)).xy);
}
float2 l9_2614=l9_2611;
l9_2572=l9_2614;
float l9_2615=l9_2572.x;
int l9_2616=l9_2575.x;
bool l9_2617=l9_2581;
float l9_2618=l9_2582;
if ((l9_2616==0)||(l9_2616==3))
{
float l9_2619=l9_2615;
float l9_2620=0.0;
float l9_2621=1.0;
bool l9_2622=l9_2617;
float l9_2623=l9_2618;
float l9_2624=fast::clamp(l9_2619,l9_2620,l9_2621);
float l9_2625=step(abs(l9_2619-l9_2624),9.9999997e-06);
l9_2623*=(l9_2625+((1.0-float(l9_2622))*(1.0-l9_2625)));
l9_2619=l9_2624;
l9_2615=l9_2619;
l9_2618=l9_2623;
}
l9_2572.x=l9_2615;
l9_2582=l9_2618;
float l9_2626=l9_2572.y;
int l9_2627=l9_2575.y;
bool l9_2628=l9_2581;
float l9_2629=l9_2582;
if ((l9_2627==0)||(l9_2627==3))
{
float l9_2630=l9_2626;
float l9_2631=0.0;
float l9_2632=1.0;
bool l9_2633=l9_2628;
float l9_2634=l9_2629;
float l9_2635=fast::clamp(l9_2630,l9_2631,l9_2632);
float l9_2636=step(abs(l9_2630-l9_2635),9.9999997e-06);
l9_2634*=(l9_2636+((1.0-float(l9_2633))*(1.0-l9_2636)));
l9_2630=l9_2635;
l9_2626=l9_2630;
l9_2629=l9_2634;
}
l9_2572.y=l9_2626;
l9_2582=l9_2629;
float2 l9_2637=l9_2572;
int l9_2638=l9_2570;
int l9_2639=l9_2571;
float l9_2640=l9_2580;
float2 l9_2641=l9_2637;
int l9_2642=l9_2638;
int l9_2643=l9_2639;
float3 l9_2644=float3(0.0);
if (l9_2642==0)
{
l9_2644=float3(l9_2641,0.0);
}
else
{
if (l9_2642==1)
{
l9_2644=float3(l9_2641.x,(l9_2641.y*0.5)+(0.5-(float(l9_2643)*0.5)),0.0);
}
else
{
l9_2644=float3(l9_2641,float(l9_2643));
}
}
float3 l9_2645=l9_2644;
float3 l9_2646=l9_2645;
float4 l9_2647=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_2646.xy,bias(l9_2640));
float4 l9_2648=l9_2647;
if (l9_2578)
{
l9_2648=mix(l9_2579,l9_2648,float4(l9_2582));
}
float4 l9_2649=l9_2648;
l9_2563=l9_2649;
float l9_2650=0.0;
float3 l9_2651=l9_2563.xyz;
float l9_2652=l9_2651.x;
l9_2650=l9_2652;
l9_2439=float4(l9_2650);
l9_2443=l9_2439;
}
l9_2436=l9_2443;
float4 l9_2653=float4(0.0);
l9_2653=l9_2434*l9_2436;
l9_2428=l9_2653;
l9_2433=l9_2428;
}
else
{
float4 l9_2654=float4(0.0);
float4 l9_2655=(*sc_set0.UserUniforms).colorId02;
l9_2654=l9_2655;
float4 l9_2656=float4(0.0);
float l9_2657=0.0;
float4 l9_2658=float4(0.0);
float4 l9_2659=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_2660=l9_2430;
float l9_2661=0.0;
float l9_2662=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_2661=l9_2662;
l9_2657=l9_2661;
float4 l9_2663;
if ((l9_2657*1.0)!=0.0)
{
float2 l9_2664=float2(0.0);
l9_2664=l9_2660.Surface_UVCoord0;
float4 l9_2665=float4(0.0);
int l9_2666;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2667=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2667=0;
}
else
{
l9_2667=in.varStereoViewID;
}
int l9_2668=l9_2667;
l9_2666=1-l9_2668;
}
else
{
int l9_2669=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2669=0;
}
else
{
l9_2669=in.varStereoViewID;
}
int l9_2670=l9_2669;
l9_2666=l9_2670;
}
int l9_2671=l9_2666;
int l9_2672=greyMaskIdLayout_tmp;
int l9_2673=l9_2671;
float2 l9_2674=l9_2664;
bool l9_2675=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2676=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2677=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2678=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2679=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2680=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2681=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2682=0.0;
bool l9_2683=l9_2680&&(!l9_2678);
float l9_2684=1.0;
float l9_2685=l9_2674.x;
int l9_2686=l9_2677.x;
if (l9_2686==1)
{
l9_2685=fract(l9_2685);
}
else
{
if (l9_2686==2)
{
float l9_2687=fract(l9_2685);
float l9_2688=l9_2685-l9_2687;
float l9_2689=step(0.25,fract(l9_2688*0.5));
l9_2685=mix(l9_2687,1.0-l9_2687,fast::clamp(l9_2689,0.0,1.0));
}
}
l9_2674.x=l9_2685;
float l9_2690=l9_2674.y;
int l9_2691=l9_2677.y;
if (l9_2691==1)
{
l9_2690=fract(l9_2690);
}
else
{
if (l9_2691==2)
{
float l9_2692=fract(l9_2690);
float l9_2693=l9_2690-l9_2692;
float l9_2694=step(0.25,fract(l9_2693*0.5));
l9_2690=mix(l9_2692,1.0-l9_2692,fast::clamp(l9_2694,0.0,1.0));
}
}
l9_2674.y=l9_2690;
if (l9_2678)
{
bool l9_2695=l9_2680;
bool l9_2696;
if (l9_2695)
{
l9_2696=l9_2677.x==3;
}
else
{
l9_2696=l9_2695;
}
float l9_2697=l9_2674.x;
float l9_2698=l9_2679.x;
float l9_2699=l9_2679.z;
bool l9_2700=l9_2696;
float l9_2701=l9_2684;
float l9_2702=fast::clamp(l9_2697,l9_2698,l9_2699);
float l9_2703=step(abs(l9_2697-l9_2702),9.9999997e-06);
l9_2701*=(l9_2703+((1.0-float(l9_2700))*(1.0-l9_2703)));
l9_2697=l9_2702;
l9_2674.x=l9_2697;
l9_2684=l9_2701;
bool l9_2704=l9_2680;
bool l9_2705;
if (l9_2704)
{
l9_2705=l9_2677.y==3;
}
else
{
l9_2705=l9_2704;
}
float l9_2706=l9_2674.y;
float l9_2707=l9_2679.y;
float l9_2708=l9_2679.w;
bool l9_2709=l9_2705;
float l9_2710=l9_2684;
float l9_2711=fast::clamp(l9_2706,l9_2707,l9_2708);
float l9_2712=step(abs(l9_2706-l9_2711),9.9999997e-06);
l9_2710*=(l9_2712+((1.0-float(l9_2709))*(1.0-l9_2712)));
l9_2706=l9_2711;
l9_2674.y=l9_2706;
l9_2684=l9_2710;
}
float2 l9_2713=l9_2674;
bool l9_2714=l9_2675;
float3x3 l9_2715=l9_2676;
if (l9_2714)
{
l9_2713=float2((l9_2715*float3(l9_2713,1.0)).xy);
}
float2 l9_2716=l9_2713;
l9_2674=l9_2716;
float l9_2717=l9_2674.x;
int l9_2718=l9_2677.x;
bool l9_2719=l9_2683;
float l9_2720=l9_2684;
if ((l9_2718==0)||(l9_2718==3))
{
float l9_2721=l9_2717;
float l9_2722=0.0;
float l9_2723=1.0;
bool l9_2724=l9_2719;
float l9_2725=l9_2720;
float l9_2726=fast::clamp(l9_2721,l9_2722,l9_2723);
float l9_2727=step(abs(l9_2721-l9_2726),9.9999997e-06);
l9_2725*=(l9_2727+((1.0-float(l9_2724))*(1.0-l9_2727)));
l9_2721=l9_2726;
l9_2717=l9_2721;
l9_2720=l9_2725;
}
l9_2674.x=l9_2717;
l9_2684=l9_2720;
float l9_2728=l9_2674.y;
int l9_2729=l9_2677.y;
bool l9_2730=l9_2683;
float l9_2731=l9_2684;
if ((l9_2729==0)||(l9_2729==3))
{
float l9_2732=l9_2728;
float l9_2733=0.0;
float l9_2734=1.0;
bool l9_2735=l9_2730;
float l9_2736=l9_2731;
float l9_2737=fast::clamp(l9_2732,l9_2733,l9_2734);
float l9_2738=step(abs(l9_2732-l9_2737),9.9999997e-06);
l9_2736*=(l9_2738+((1.0-float(l9_2735))*(1.0-l9_2738)));
l9_2732=l9_2737;
l9_2728=l9_2732;
l9_2731=l9_2736;
}
l9_2674.y=l9_2728;
l9_2684=l9_2731;
float2 l9_2739=l9_2674;
int l9_2740=l9_2672;
int l9_2741=l9_2673;
float l9_2742=l9_2682;
float2 l9_2743=l9_2739;
int l9_2744=l9_2740;
int l9_2745=l9_2741;
float3 l9_2746=float3(0.0);
if (l9_2744==0)
{
l9_2746=float3(l9_2743,0.0);
}
else
{
if (l9_2744==1)
{
l9_2746=float3(l9_2743.x,(l9_2743.y*0.5)+(0.5-(float(l9_2745)*0.5)),0.0);
}
else
{
l9_2746=float3(l9_2743,float(l9_2745));
}
}
float3 l9_2747=l9_2746;
float3 l9_2748=l9_2747;
float4 l9_2749=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2748.xy,bias(l9_2742));
float4 l9_2750=l9_2749;
if (l9_2680)
{
l9_2750=mix(l9_2681,l9_2750,float4(l9_2684));
}
float4 l9_2751=l9_2750;
l9_2665=l9_2751;
float l9_2752=0.0;
l9_2752=l9_2665.x;
float l9_2753=0.0;
l9_2753=step(l9_2752,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_2754=0.0;
l9_2754=step(l9_2752,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_2755=0.0;
l9_2755=l9_2753-l9_2754;
l9_2658=float4(l9_2755);
l9_2663=l9_2658;
}
else
{
l9_2663=l9_2659;
}
l9_2656=l9_2663;
float4 l9_2756=float4(0.0);
l9_2756=l9_2654*l9_2656;
l9_2429=l9_2756;
l9_2433=l9_2429;
}
l9_2426=l9_2433;
float4 l9_2757=float4(0.0);
float l9_2758=0.0;
float4 l9_2759=float4(0.0);
float4 l9_2760=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_2761=l9_1968;
float l9_2762=0.0;
float l9_2763=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_2762=l9_2763;
l9_2758=l9_2762;
float4 l9_2764;
if ((l9_2758*1.0)!=0.0)
{
float2 l9_2765=float2(0.0);
l9_2765=l9_2761.Surface_UVCoord0;
float4 l9_2766=float4(0.0);
int l9_2767;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2768=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2768=0;
}
else
{
l9_2768=in.varStereoViewID;
}
int l9_2769=l9_2768;
l9_2767=1-l9_2769;
}
else
{
int l9_2770=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2770=0;
}
else
{
l9_2770=in.varStereoViewID;
}
int l9_2771=l9_2770;
l9_2767=l9_2771;
}
int l9_2772=l9_2767;
int l9_2773=greyMaskIdLayout_tmp;
int l9_2774=l9_2772;
float2 l9_2775=l9_2765;
bool l9_2776=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2777=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2778=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2779=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2780=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2781=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2782=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2783=0.0;
bool l9_2784=l9_2781&&(!l9_2779);
float l9_2785=1.0;
float l9_2786=l9_2775.x;
int l9_2787=l9_2778.x;
if (l9_2787==1)
{
l9_2786=fract(l9_2786);
}
else
{
if (l9_2787==2)
{
float l9_2788=fract(l9_2786);
float l9_2789=l9_2786-l9_2788;
float l9_2790=step(0.25,fract(l9_2789*0.5));
l9_2786=mix(l9_2788,1.0-l9_2788,fast::clamp(l9_2790,0.0,1.0));
}
}
l9_2775.x=l9_2786;
float l9_2791=l9_2775.y;
int l9_2792=l9_2778.y;
if (l9_2792==1)
{
l9_2791=fract(l9_2791);
}
else
{
if (l9_2792==2)
{
float l9_2793=fract(l9_2791);
float l9_2794=l9_2791-l9_2793;
float l9_2795=step(0.25,fract(l9_2794*0.5));
l9_2791=mix(l9_2793,1.0-l9_2793,fast::clamp(l9_2795,0.0,1.0));
}
}
l9_2775.y=l9_2791;
if (l9_2779)
{
bool l9_2796=l9_2781;
bool l9_2797;
if (l9_2796)
{
l9_2797=l9_2778.x==3;
}
else
{
l9_2797=l9_2796;
}
float l9_2798=l9_2775.x;
float l9_2799=l9_2780.x;
float l9_2800=l9_2780.z;
bool l9_2801=l9_2797;
float l9_2802=l9_2785;
float l9_2803=fast::clamp(l9_2798,l9_2799,l9_2800);
float l9_2804=step(abs(l9_2798-l9_2803),9.9999997e-06);
l9_2802*=(l9_2804+((1.0-float(l9_2801))*(1.0-l9_2804)));
l9_2798=l9_2803;
l9_2775.x=l9_2798;
l9_2785=l9_2802;
bool l9_2805=l9_2781;
bool l9_2806;
if (l9_2805)
{
l9_2806=l9_2778.y==3;
}
else
{
l9_2806=l9_2805;
}
float l9_2807=l9_2775.y;
float l9_2808=l9_2780.y;
float l9_2809=l9_2780.w;
bool l9_2810=l9_2806;
float l9_2811=l9_2785;
float l9_2812=fast::clamp(l9_2807,l9_2808,l9_2809);
float l9_2813=step(abs(l9_2807-l9_2812),9.9999997e-06);
l9_2811*=(l9_2813+((1.0-float(l9_2810))*(1.0-l9_2813)));
l9_2807=l9_2812;
l9_2775.y=l9_2807;
l9_2785=l9_2811;
}
float2 l9_2814=l9_2775;
bool l9_2815=l9_2776;
float3x3 l9_2816=l9_2777;
if (l9_2815)
{
l9_2814=float2((l9_2816*float3(l9_2814,1.0)).xy);
}
float2 l9_2817=l9_2814;
l9_2775=l9_2817;
float l9_2818=l9_2775.x;
int l9_2819=l9_2778.x;
bool l9_2820=l9_2784;
float l9_2821=l9_2785;
if ((l9_2819==0)||(l9_2819==3))
{
float l9_2822=l9_2818;
float l9_2823=0.0;
float l9_2824=1.0;
bool l9_2825=l9_2820;
float l9_2826=l9_2821;
float l9_2827=fast::clamp(l9_2822,l9_2823,l9_2824);
float l9_2828=step(abs(l9_2822-l9_2827),9.9999997e-06);
l9_2826*=(l9_2828+((1.0-float(l9_2825))*(1.0-l9_2828)));
l9_2822=l9_2827;
l9_2818=l9_2822;
l9_2821=l9_2826;
}
l9_2775.x=l9_2818;
l9_2785=l9_2821;
float l9_2829=l9_2775.y;
int l9_2830=l9_2778.y;
bool l9_2831=l9_2784;
float l9_2832=l9_2785;
if ((l9_2830==0)||(l9_2830==3))
{
float l9_2833=l9_2829;
float l9_2834=0.0;
float l9_2835=1.0;
bool l9_2836=l9_2831;
float l9_2837=l9_2832;
float l9_2838=fast::clamp(l9_2833,l9_2834,l9_2835);
float l9_2839=step(abs(l9_2833-l9_2838),9.9999997e-06);
l9_2837*=(l9_2839+((1.0-float(l9_2836))*(1.0-l9_2839)));
l9_2833=l9_2838;
l9_2829=l9_2833;
l9_2832=l9_2837;
}
l9_2775.y=l9_2829;
l9_2785=l9_2832;
float2 l9_2840=l9_2775;
int l9_2841=l9_2773;
int l9_2842=l9_2774;
float l9_2843=l9_2783;
float2 l9_2844=l9_2840;
int l9_2845=l9_2841;
int l9_2846=l9_2842;
float3 l9_2847=float3(0.0);
if (l9_2845==0)
{
l9_2847=float3(l9_2844,0.0);
}
else
{
if (l9_2845==1)
{
l9_2847=float3(l9_2844.x,(l9_2844.y*0.5)+(0.5-(float(l9_2846)*0.5)),0.0);
}
else
{
l9_2847=float3(l9_2844,float(l9_2846));
}
}
float3 l9_2848=l9_2847;
float3 l9_2849=l9_2848;
float4 l9_2850=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2849.xy,bias(l9_2843));
float4 l9_2851=l9_2850;
if (l9_2781)
{
l9_2851=mix(l9_2782,l9_2851,float4(l9_2785));
}
float4 l9_2852=l9_2851;
l9_2766=l9_2852;
float l9_2853=0.0;
l9_2853=l9_2766.x;
float l9_2854=0.0;
l9_2854=step(l9_2853,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_2855=0.0;
l9_2855=step(l9_2853,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_2856=0.0;
l9_2856=l9_2854-l9_2855;
l9_2759=float4(l9_2856);
l9_2764=l9_2759;
}
else
{
l9_2764=l9_2760;
}
l9_2757=l9_2764;
float4 l9_2857=float4(0.0);
l9_2857=l9_2426*l9_2757;
float4 l9_2858=float4(0.0);
float4 l9_2859=(*sc_set0.UserUniforms).colorId02;
l9_2858=l9_2859;
float4 l9_2860=float4(0.0);
l9_2860=l9_2858*l9_2757;
float4 l9_2861=float4(0.0);
float4 l9_2862=l9_2857;
float4 l9_2863=l9_2860;
float4 l9_2864=l9_2862;
float4 l9_2865=l9_2863;
float3 l9_2866=l9_2864.xyz*l9_2864.w;
l9_2864=float4(l9_2866.x,l9_2866.y,l9_2866.z,l9_2864.w);
float4 l9_2867=l9_2864+(l9_2865*(1.0-l9_2864.w));
l9_2861=l9_2867;
l9_1967=l9_2861;
l9_1971=l9_1967;
}
l9_1964=l9_1971;
float l9_2868=0.0;
float l9_2869=(*sc_set0.UserUniforms).metallicId02;
l9_2868=l9_2869;
float l9_2870=0.0;
float l9_2871=(*sc_set0.UserUniforms).rougnessId02;
l9_2870=l9_2871;
float4 l9_2872=float4(0.0);
float3 l9_2873=l9_1964.xyz;
float l9_2874=(*sc_set0.UserUniforms).Port_Opacity_N313;
float3 l9_2875=(*sc_set0.UserUniforms).Port_Emissive_N313;
float l9_2876=l9_2868;
float l9_2877=l9_2870;
float3 l9_2878=(*sc_set0.UserUniforms).Port_AO_N313;
float3 l9_2879=(*sc_set0.UserUniforms).Port_SpecularAO_N313;
ssGlobals l9_2880=l9_1960;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_2880.BumpedNormal=l9_2880.VertexNormal_WorldSpace;
}
float l9_2881=l9_2874;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_2881<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2882=gl_FragCoord;
float2 l9_2883=floor(mod(l9_2882.xy,float2(4.0)));
float l9_2884=(mod(dot(l9_2883,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_2881<l9_2884)
{
discard_fragment();
}
}
l9_2873=fast::max(l9_2873,float3(0.0));
float4 l9_2885;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_2885=float4(l9_2873,l9_2874);
}
else
{
l9_2876=fast::clamp(l9_2876,0.0,1.0);
l9_2877=fast::clamp(l9_2877,0.0,1.0);
float3 l9_2886=l9_2873;
float l9_2887=l9_2874;
float3 l9_2888=l9_2880.BumpedNormal;
float3 l9_2889=l9_2880.PositionWS;
float3 l9_2890=l9_2880.ViewDirWS;
float3 l9_2891=l9_2875;
float l9_2892=l9_2876;
float l9_2893=l9_2877;
float3 l9_2894=l9_2878;
float3 l9_2895=l9_2879;
l9_2885=ngsCalculateLighting(l9_2886,l9_2887,l9_2888,l9_2889,l9_2890,l9_2891,l9_2892,l9_2893,l9_2894,l9_2895,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_2885=fast::max(l9_2885,float4(0.0));
l9_2872=l9_2885;
l9_1958=l9_2872;
l9_1963=l9_1958;
}
else
{
float4 l9_2896=float4(0.0);
float l9_2897=0.0;
float4 l9_2898=float4(0.0);
float4 l9_2899=float4(0.0);
ssGlobals l9_2900=l9_1960;
float l9_2901=0.0;
float l9_2902=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_2901=l9_2902;
l9_2897=l9_2901;
float4 l9_2903;
if ((l9_2897*1.0)!=0.0)
{
float l9_2904=0.0;
float l9_2905=(*sc_set0.UserUniforms).rimExpId02;
l9_2904=l9_2905;
float l9_2906=0.0;
float l9_2907=(*sc_set0.UserUniforms).rimIntId02;
l9_2906=l9_2907;
float l9_2908=0.0;
float l9_2909=l9_2904;
float l9_2910=l9_2906;
ssGlobals l9_2911=l9_2900;
float l9_2912=abs(dot(-l9_2911.ViewDirWS,l9_2911.VertexNormal_WorldSpace));
float l9_2913=1.0-pow(1.0-l9_2912,l9_2909);
l9_2913=fast::max(l9_2913,0.0);
l9_2913*=l9_2910;
l9_2908=l9_2913;
float4 l9_2914=float4(0.0);
float l9_2915=0.0;
float4 l9_2916=float4(0.0);
float4 l9_2917=float4(0.0);
ssGlobals l9_2918=l9_2900;
float l9_2919=0.0;
float l9_2920=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_2919=l9_2920;
l9_2915=l9_2919;
float4 l9_2921;
if ((l9_2915*1.0)!=0.0)
{
float4 l9_2922=float4(0.0);
float4 l9_2923=(*sc_set0.UserUniforms).patternColorId02;
l9_2922=l9_2923;
float4 l9_2924=float4(0.0);
float l9_2925=0.0;
float4 l9_2926=float4(0.0);
float4 l9_2927=float4(0.0);
ssGlobals l9_2928=l9_2918;
float l9_2929=0.0;
float l9_2930=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_2929=l9_2930;
l9_2925=l9_2929;
float4 l9_2931;
if ((l9_2925*1.0)!=0.0)
{
float2 l9_2932=float2(0.0);
l9_2932=l9_2928.Surface_UVCoord0;
float2 l9_2933=float2(0.0);
float2 l9_2934=(*sc_set0.UserUniforms).patternScaleId02;
l9_2933=l9_2934;
float2 l9_2935=float2(0.0);
l9_2935=((l9_2932-(*sc_set0.UserUniforms).Port_Center_N282)*l9_2933)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_2936=float2(0.0);
float2 l9_2937=(*sc_set0.UserUniforms).patternOffsetId02;
l9_2936=l9_2937;
float2 l9_2938=float2(0.0);
l9_2938=l9_2935+l9_2936;
float l9_2939=0.0;
float l9_2940=(*sc_set0.UserUniforms).patternRotateId02;
l9_2939=l9_2940;
float2 l9_2941=float2(0.0);
float2 l9_2942=l9_2938;
float l9_2943=l9_2939;
float2 l9_2944=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_2945=sin(radians(l9_2943));
float l9_2946=cos(radians(l9_2943));
float2 l9_2947=l9_2942-l9_2944;
l9_2947=float2(dot(float2(l9_2946,l9_2945),l9_2947),dot(float2(-l9_2945,l9_2946),l9_2947))+l9_2944;
l9_2941=l9_2947;
float4 l9_2948=float4(0.0);
int l9_2949;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_2950=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2950=0;
}
else
{
l9_2950=in.varStereoViewID;
}
int l9_2951=l9_2950;
l9_2949=1-l9_2951;
}
else
{
int l9_2952=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2952=0;
}
else
{
l9_2952=in.varStereoViewID;
}
int l9_2953=l9_2952;
l9_2949=l9_2953;
}
int l9_2954=l9_2949;
int l9_2955=patternTextureId02Layout_tmp;
int l9_2956=l9_2954;
float2 l9_2957=l9_2941;
bool l9_2958=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_2959=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_2960=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_2961=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_2962=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_2963=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_2964=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_2965=0.0;
bool l9_2966=l9_2963&&(!l9_2961);
float l9_2967=1.0;
float l9_2968=l9_2957.x;
int l9_2969=l9_2960.x;
if (l9_2969==1)
{
l9_2968=fract(l9_2968);
}
else
{
if (l9_2969==2)
{
float l9_2970=fract(l9_2968);
float l9_2971=l9_2968-l9_2970;
float l9_2972=step(0.25,fract(l9_2971*0.5));
l9_2968=mix(l9_2970,1.0-l9_2970,fast::clamp(l9_2972,0.0,1.0));
}
}
l9_2957.x=l9_2968;
float l9_2973=l9_2957.y;
int l9_2974=l9_2960.y;
if (l9_2974==1)
{
l9_2973=fract(l9_2973);
}
else
{
if (l9_2974==2)
{
float l9_2975=fract(l9_2973);
float l9_2976=l9_2973-l9_2975;
float l9_2977=step(0.25,fract(l9_2976*0.5));
l9_2973=mix(l9_2975,1.0-l9_2975,fast::clamp(l9_2977,0.0,1.0));
}
}
l9_2957.y=l9_2973;
if (l9_2961)
{
bool l9_2978=l9_2963;
bool l9_2979;
if (l9_2978)
{
l9_2979=l9_2960.x==3;
}
else
{
l9_2979=l9_2978;
}
float l9_2980=l9_2957.x;
float l9_2981=l9_2962.x;
float l9_2982=l9_2962.z;
bool l9_2983=l9_2979;
float l9_2984=l9_2967;
float l9_2985=fast::clamp(l9_2980,l9_2981,l9_2982);
float l9_2986=step(abs(l9_2980-l9_2985),9.9999997e-06);
l9_2984*=(l9_2986+((1.0-float(l9_2983))*(1.0-l9_2986)));
l9_2980=l9_2985;
l9_2957.x=l9_2980;
l9_2967=l9_2984;
bool l9_2987=l9_2963;
bool l9_2988;
if (l9_2987)
{
l9_2988=l9_2960.y==3;
}
else
{
l9_2988=l9_2987;
}
float l9_2989=l9_2957.y;
float l9_2990=l9_2962.y;
float l9_2991=l9_2962.w;
bool l9_2992=l9_2988;
float l9_2993=l9_2967;
float l9_2994=fast::clamp(l9_2989,l9_2990,l9_2991);
float l9_2995=step(abs(l9_2989-l9_2994),9.9999997e-06);
l9_2993*=(l9_2995+((1.0-float(l9_2992))*(1.0-l9_2995)));
l9_2989=l9_2994;
l9_2957.y=l9_2989;
l9_2967=l9_2993;
}
float2 l9_2996=l9_2957;
bool l9_2997=l9_2958;
float3x3 l9_2998=l9_2959;
if (l9_2997)
{
l9_2996=float2((l9_2998*float3(l9_2996,1.0)).xy);
}
float2 l9_2999=l9_2996;
l9_2957=l9_2999;
float l9_3000=l9_2957.x;
int l9_3001=l9_2960.x;
bool l9_3002=l9_2966;
float l9_3003=l9_2967;
if ((l9_3001==0)||(l9_3001==3))
{
float l9_3004=l9_3000;
float l9_3005=0.0;
float l9_3006=1.0;
bool l9_3007=l9_3002;
float l9_3008=l9_3003;
float l9_3009=fast::clamp(l9_3004,l9_3005,l9_3006);
float l9_3010=step(abs(l9_3004-l9_3009),9.9999997e-06);
l9_3008*=(l9_3010+((1.0-float(l9_3007))*(1.0-l9_3010)));
l9_3004=l9_3009;
l9_3000=l9_3004;
l9_3003=l9_3008;
}
l9_2957.x=l9_3000;
l9_2967=l9_3003;
float l9_3011=l9_2957.y;
int l9_3012=l9_2960.y;
bool l9_3013=l9_2966;
float l9_3014=l9_2967;
if ((l9_3012==0)||(l9_3012==3))
{
float l9_3015=l9_3011;
float l9_3016=0.0;
float l9_3017=1.0;
bool l9_3018=l9_3013;
float l9_3019=l9_3014;
float l9_3020=fast::clamp(l9_3015,l9_3016,l9_3017);
float l9_3021=step(abs(l9_3015-l9_3020),9.9999997e-06);
l9_3019*=(l9_3021+((1.0-float(l9_3018))*(1.0-l9_3021)));
l9_3015=l9_3020;
l9_3011=l9_3015;
l9_3014=l9_3019;
}
l9_2957.y=l9_3011;
l9_2967=l9_3014;
float2 l9_3022=l9_2957;
int l9_3023=l9_2955;
int l9_3024=l9_2956;
float l9_3025=l9_2965;
float2 l9_3026=l9_3022;
int l9_3027=l9_3023;
int l9_3028=l9_3024;
float3 l9_3029=float3(0.0);
if (l9_3027==0)
{
l9_3029=float3(l9_3026,0.0);
}
else
{
if (l9_3027==1)
{
l9_3029=float3(l9_3026.x,(l9_3026.y*0.5)+(0.5-(float(l9_3028)*0.5)),0.0);
}
else
{
l9_3029=float3(l9_3026,float(l9_3028));
}
}
float3 l9_3030=l9_3029;
float3 l9_3031=l9_3030;
float4 l9_3032=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_3031.xy,bias(l9_3025));
float4 l9_3033=l9_3032;
if (l9_2963)
{
l9_3033=mix(l9_2964,l9_3033,float4(l9_2967));
}
float4 l9_3034=l9_3033;
l9_2948=l9_3034;
l9_2926=l9_2948;
l9_2931=l9_2926;
}
else
{
float2 l9_3035=float2(0.0);
l9_3035=l9_2928.Surface_UVCoord0;
float2 l9_3036=float2(0.0);
float2 l9_3037=(*sc_set0.UserUniforms).patternScaleId02;
l9_3036=l9_3037;
float2 l9_3038=float2(0.0);
l9_3038=((l9_3035-(*sc_set0.UserUniforms).Port_Center_N282)*l9_3036)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_3039=float2(0.0);
float2 l9_3040=(*sc_set0.UserUniforms).patternOffsetId02;
l9_3039=l9_3040;
float2 l9_3041=float2(0.0);
l9_3041=l9_3038+l9_3039;
float l9_3042=0.0;
float l9_3043=(*sc_set0.UserUniforms).patternRotateId02;
l9_3042=l9_3043;
float2 l9_3044=float2(0.0);
float2 l9_3045=l9_3041;
float l9_3046=l9_3042;
float2 l9_3047=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_3048=sin(radians(l9_3046));
float l9_3049=cos(radians(l9_3046));
float2 l9_3050=l9_3045-l9_3047;
l9_3050=float2(dot(float2(l9_3049,l9_3048),l9_3050),dot(float2(-l9_3048,l9_3049),l9_3050))+l9_3047;
l9_3044=l9_3050;
float4 l9_3051=float4(0.0);
int l9_3052;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_3053=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3053=0;
}
else
{
l9_3053=in.varStereoViewID;
}
int l9_3054=l9_3053;
l9_3052=1-l9_3054;
}
else
{
int l9_3055=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3055=0;
}
else
{
l9_3055=in.varStereoViewID;
}
int l9_3056=l9_3055;
l9_3052=l9_3056;
}
int l9_3057=l9_3052;
int l9_3058=patternTextureId02Layout_tmp;
int l9_3059=l9_3057;
float2 l9_3060=l9_3044;
bool l9_3061=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_3062=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_3063=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_3064=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_3065=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_3066=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_3067=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_3068=0.0;
bool l9_3069=l9_3066&&(!l9_3064);
float l9_3070=1.0;
float l9_3071=l9_3060.x;
int l9_3072=l9_3063.x;
if (l9_3072==1)
{
l9_3071=fract(l9_3071);
}
else
{
if (l9_3072==2)
{
float l9_3073=fract(l9_3071);
float l9_3074=l9_3071-l9_3073;
float l9_3075=step(0.25,fract(l9_3074*0.5));
l9_3071=mix(l9_3073,1.0-l9_3073,fast::clamp(l9_3075,0.0,1.0));
}
}
l9_3060.x=l9_3071;
float l9_3076=l9_3060.y;
int l9_3077=l9_3063.y;
if (l9_3077==1)
{
l9_3076=fract(l9_3076);
}
else
{
if (l9_3077==2)
{
float l9_3078=fract(l9_3076);
float l9_3079=l9_3076-l9_3078;
float l9_3080=step(0.25,fract(l9_3079*0.5));
l9_3076=mix(l9_3078,1.0-l9_3078,fast::clamp(l9_3080,0.0,1.0));
}
}
l9_3060.y=l9_3076;
if (l9_3064)
{
bool l9_3081=l9_3066;
bool l9_3082;
if (l9_3081)
{
l9_3082=l9_3063.x==3;
}
else
{
l9_3082=l9_3081;
}
float l9_3083=l9_3060.x;
float l9_3084=l9_3065.x;
float l9_3085=l9_3065.z;
bool l9_3086=l9_3082;
float l9_3087=l9_3070;
float l9_3088=fast::clamp(l9_3083,l9_3084,l9_3085);
float l9_3089=step(abs(l9_3083-l9_3088),9.9999997e-06);
l9_3087*=(l9_3089+((1.0-float(l9_3086))*(1.0-l9_3089)));
l9_3083=l9_3088;
l9_3060.x=l9_3083;
l9_3070=l9_3087;
bool l9_3090=l9_3066;
bool l9_3091;
if (l9_3090)
{
l9_3091=l9_3063.y==3;
}
else
{
l9_3091=l9_3090;
}
float l9_3092=l9_3060.y;
float l9_3093=l9_3065.y;
float l9_3094=l9_3065.w;
bool l9_3095=l9_3091;
float l9_3096=l9_3070;
float l9_3097=fast::clamp(l9_3092,l9_3093,l9_3094);
float l9_3098=step(abs(l9_3092-l9_3097),9.9999997e-06);
l9_3096*=(l9_3098+((1.0-float(l9_3095))*(1.0-l9_3098)));
l9_3092=l9_3097;
l9_3060.y=l9_3092;
l9_3070=l9_3096;
}
float2 l9_3099=l9_3060;
bool l9_3100=l9_3061;
float3x3 l9_3101=l9_3062;
if (l9_3100)
{
l9_3099=float2((l9_3101*float3(l9_3099,1.0)).xy);
}
float2 l9_3102=l9_3099;
l9_3060=l9_3102;
float l9_3103=l9_3060.x;
int l9_3104=l9_3063.x;
bool l9_3105=l9_3069;
float l9_3106=l9_3070;
if ((l9_3104==0)||(l9_3104==3))
{
float l9_3107=l9_3103;
float l9_3108=0.0;
float l9_3109=1.0;
bool l9_3110=l9_3105;
float l9_3111=l9_3106;
float l9_3112=fast::clamp(l9_3107,l9_3108,l9_3109);
float l9_3113=step(abs(l9_3107-l9_3112),9.9999997e-06);
l9_3111*=(l9_3113+((1.0-float(l9_3110))*(1.0-l9_3113)));
l9_3107=l9_3112;
l9_3103=l9_3107;
l9_3106=l9_3111;
}
l9_3060.x=l9_3103;
l9_3070=l9_3106;
float l9_3114=l9_3060.y;
int l9_3115=l9_3063.y;
bool l9_3116=l9_3069;
float l9_3117=l9_3070;
if ((l9_3115==0)||(l9_3115==3))
{
float l9_3118=l9_3114;
float l9_3119=0.0;
float l9_3120=1.0;
bool l9_3121=l9_3116;
float l9_3122=l9_3117;
float l9_3123=fast::clamp(l9_3118,l9_3119,l9_3120);
float l9_3124=step(abs(l9_3118-l9_3123),9.9999997e-06);
l9_3122*=(l9_3124+((1.0-float(l9_3121))*(1.0-l9_3124)));
l9_3118=l9_3123;
l9_3114=l9_3118;
l9_3117=l9_3122;
}
l9_3060.y=l9_3114;
l9_3070=l9_3117;
float2 l9_3125=l9_3060;
int l9_3126=l9_3058;
int l9_3127=l9_3059;
float l9_3128=l9_3068;
float2 l9_3129=l9_3125;
int l9_3130=l9_3126;
int l9_3131=l9_3127;
float3 l9_3132=float3(0.0);
if (l9_3130==0)
{
l9_3132=float3(l9_3129,0.0);
}
else
{
if (l9_3130==1)
{
l9_3132=float3(l9_3129.x,(l9_3129.y*0.5)+(0.5-(float(l9_3131)*0.5)),0.0);
}
else
{
l9_3132=float3(l9_3129,float(l9_3131));
}
}
float3 l9_3133=l9_3132;
float3 l9_3134=l9_3133;
float4 l9_3135=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_3134.xy,bias(l9_3128));
float4 l9_3136=l9_3135;
if (l9_3066)
{
l9_3136=mix(l9_3067,l9_3136,float4(l9_3070));
}
float4 l9_3137=l9_3136;
l9_3051=l9_3137;
float l9_3138=0.0;
float3 l9_3139=l9_3051.xyz;
float l9_3140=l9_3139.x;
l9_3138=l9_3140;
l9_2927=float4(l9_3138);
l9_2931=l9_2927;
}
l9_2924=l9_2931;
float4 l9_3141=float4(0.0);
l9_3141=l9_2922*l9_2924;
l9_2916=l9_3141;
l9_2921=l9_2916;
}
else
{
float4 l9_3142=float4(0.0);
float4 l9_3143=(*sc_set0.UserUniforms).colorId02;
l9_3142=l9_3143;
float4 l9_3144=float4(0.0);
float l9_3145=0.0;
float4 l9_3146=float4(0.0);
float4 l9_3147=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_3148=l9_2918;
float l9_3149=0.0;
float l9_3150=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_3149=l9_3150;
l9_3145=l9_3149;
float4 l9_3151;
if ((l9_3145*1.0)!=0.0)
{
float2 l9_3152=float2(0.0);
l9_3152=l9_3148.Surface_UVCoord0;
float4 l9_3153=float4(0.0);
int l9_3154;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3155=0;
}
else
{
l9_3155=in.varStereoViewID;
}
int l9_3156=l9_3155;
l9_3154=1-l9_3156;
}
else
{
int l9_3157=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3157=0;
}
else
{
l9_3157=in.varStereoViewID;
}
int l9_3158=l9_3157;
l9_3154=l9_3158;
}
int l9_3159=l9_3154;
int l9_3160=greyMaskIdLayout_tmp;
int l9_3161=l9_3159;
float2 l9_3162=l9_3152;
bool l9_3163=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3164=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3165=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3166=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3167=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3168=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3169=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3170=0.0;
bool l9_3171=l9_3168&&(!l9_3166);
float l9_3172=1.0;
float l9_3173=l9_3162.x;
int l9_3174=l9_3165.x;
if (l9_3174==1)
{
l9_3173=fract(l9_3173);
}
else
{
if (l9_3174==2)
{
float l9_3175=fract(l9_3173);
float l9_3176=l9_3173-l9_3175;
float l9_3177=step(0.25,fract(l9_3176*0.5));
l9_3173=mix(l9_3175,1.0-l9_3175,fast::clamp(l9_3177,0.0,1.0));
}
}
l9_3162.x=l9_3173;
float l9_3178=l9_3162.y;
int l9_3179=l9_3165.y;
if (l9_3179==1)
{
l9_3178=fract(l9_3178);
}
else
{
if (l9_3179==2)
{
float l9_3180=fract(l9_3178);
float l9_3181=l9_3178-l9_3180;
float l9_3182=step(0.25,fract(l9_3181*0.5));
l9_3178=mix(l9_3180,1.0-l9_3180,fast::clamp(l9_3182,0.0,1.0));
}
}
l9_3162.y=l9_3178;
if (l9_3166)
{
bool l9_3183=l9_3168;
bool l9_3184;
if (l9_3183)
{
l9_3184=l9_3165.x==3;
}
else
{
l9_3184=l9_3183;
}
float l9_3185=l9_3162.x;
float l9_3186=l9_3167.x;
float l9_3187=l9_3167.z;
bool l9_3188=l9_3184;
float l9_3189=l9_3172;
float l9_3190=fast::clamp(l9_3185,l9_3186,l9_3187);
float l9_3191=step(abs(l9_3185-l9_3190),9.9999997e-06);
l9_3189*=(l9_3191+((1.0-float(l9_3188))*(1.0-l9_3191)));
l9_3185=l9_3190;
l9_3162.x=l9_3185;
l9_3172=l9_3189;
bool l9_3192=l9_3168;
bool l9_3193;
if (l9_3192)
{
l9_3193=l9_3165.y==3;
}
else
{
l9_3193=l9_3192;
}
float l9_3194=l9_3162.y;
float l9_3195=l9_3167.y;
float l9_3196=l9_3167.w;
bool l9_3197=l9_3193;
float l9_3198=l9_3172;
float l9_3199=fast::clamp(l9_3194,l9_3195,l9_3196);
float l9_3200=step(abs(l9_3194-l9_3199),9.9999997e-06);
l9_3198*=(l9_3200+((1.0-float(l9_3197))*(1.0-l9_3200)));
l9_3194=l9_3199;
l9_3162.y=l9_3194;
l9_3172=l9_3198;
}
float2 l9_3201=l9_3162;
bool l9_3202=l9_3163;
float3x3 l9_3203=l9_3164;
if (l9_3202)
{
l9_3201=float2((l9_3203*float3(l9_3201,1.0)).xy);
}
float2 l9_3204=l9_3201;
l9_3162=l9_3204;
float l9_3205=l9_3162.x;
int l9_3206=l9_3165.x;
bool l9_3207=l9_3171;
float l9_3208=l9_3172;
if ((l9_3206==0)||(l9_3206==3))
{
float l9_3209=l9_3205;
float l9_3210=0.0;
float l9_3211=1.0;
bool l9_3212=l9_3207;
float l9_3213=l9_3208;
float l9_3214=fast::clamp(l9_3209,l9_3210,l9_3211);
float l9_3215=step(abs(l9_3209-l9_3214),9.9999997e-06);
l9_3213*=(l9_3215+((1.0-float(l9_3212))*(1.0-l9_3215)));
l9_3209=l9_3214;
l9_3205=l9_3209;
l9_3208=l9_3213;
}
l9_3162.x=l9_3205;
l9_3172=l9_3208;
float l9_3216=l9_3162.y;
int l9_3217=l9_3165.y;
bool l9_3218=l9_3171;
float l9_3219=l9_3172;
if ((l9_3217==0)||(l9_3217==3))
{
float l9_3220=l9_3216;
float l9_3221=0.0;
float l9_3222=1.0;
bool l9_3223=l9_3218;
float l9_3224=l9_3219;
float l9_3225=fast::clamp(l9_3220,l9_3221,l9_3222);
float l9_3226=step(abs(l9_3220-l9_3225),9.9999997e-06);
l9_3224*=(l9_3226+((1.0-float(l9_3223))*(1.0-l9_3226)));
l9_3220=l9_3225;
l9_3216=l9_3220;
l9_3219=l9_3224;
}
l9_3162.y=l9_3216;
l9_3172=l9_3219;
float2 l9_3227=l9_3162;
int l9_3228=l9_3160;
int l9_3229=l9_3161;
float l9_3230=l9_3170;
float2 l9_3231=l9_3227;
int l9_3232=l9_3228;
int l9_3233=l9_3229;
float3 l9_3234=float3(0.0);
if (l9_3232==0)
{
l9_3234=float3(l9_3231,0.0);
}
else
{
if (l9_3232==1)
{
l9_3234=float3(l9_3231.x,(l9_3231.y*0.5)+(0.5-(float(l9_3233)*0.5)),0.0);
}
else
{
l9_3234=float3(l9_3231,float(l9_3233));
}
}
float3 l9_3235=l9_3234;
float3 l9_3236=l9_3235;
float4 l9_3237=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3236.xy,bias(l9_3230));
float4 l9_3238=l9_3237;
if (l9_3168)
{
l9_3238=mix(l9_3169,l9_3238,float4(l9_3172));
}
float4 l9_3239=l9_3238;
l9_3153=l9_3239;
float l9_3240=0.0;
l9_3240=l9_3153.x;
float l9_3241=0.0;
l9_3241=step(l9_3240,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_3242=0.0;
l9_3242=step(l9_3240,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_3243=0.0;
l9_3243=l9_3241-l9_3242;
l9_3146=float4(l9_3243);
l9_3151=l9_3146;
}
else
{
l9_3151=l9_3147;
}
l9_3144=l9_3151;
float4 l9_3244=float4(0.0);
l9_3244=l9_3142*l9_3144;
l9_2917=l9_3244;
l9_2921=l9_2917;
}
l9_2914=l9_2921;
float4 l9_3245=float4(0.0);
float l9_3246=0.0;
float4 l9_3247=float4(0.0);
float4 l9_3248=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_3249=l9_2900;
float l9_3250=0.0;
float l9_3251=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_3250=l9_3251;
l9_3246=l9_3250;
float4 l9_3252;
if ((l9_3246*1.0)!=0.0)
{
float2 l9_3253=float2(0.0);
l9_3253=l9_3249.Surface_UVCoord0;
float4 l9_3254=float4(0.0);
int l9_3255;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3256=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3256=0;
}
else
{
l9_3256=in.varStereoViewID;
}
int l9_3257=l9_3256;
l9_3255=1-l9_3257;
}
else
{
int l9_3258=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3258=0;
}
else
{
l9_3258=in.varStereoViewID;
}
int l9_3259=l9_3258;
l9_3255=l9_3259;
}
int l9_3260=l9_3255;
int l9_3261=greyMaskIdLayout_tmp;
int l9_3262=l9_3260;
float2 l9_3263=l9_3253;
bool l9_3264=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3265=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3266=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3267=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3268=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3269=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3270=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3271=0.0;
bool l9_3272=l9_3269&&(!l9_3267);
float l9_3273=1.0;
float l9_3274=l9_3263.x;
int l9_3275=l9_3266.x;
if (l9_3275==1)
{
l9_3274=fract(l9_3274);
}
else
{
if (l9_3275==2)
{
float l9_3276=fract(l9_3274);
float l9_3277=l9_3274-l9_3276;
float l9_3278=step(0.25,fract(l9_3277*0.5));
l9_3274=mix(l9_3276,1.0-l9_3276,fast::clamp(l9_3278,0.0,1.0));
}
}
l9_3263.x=l9_3274;
float l9_3279=l9_3263.y;
int l9_3280=l9_3266.y;
if (l9_3280==1)
{
l9_3279=fract(l9_3279);
}
else
{
if (l9_3280==2)
{
float l9_3281=fract(l9_3279);
float l9_3282=l9_3279-l9_3281;
float l9_3283=step(0.25,fract(l9_3282*0.5));
l9_3279=mix(l9_3281,1.0-l9_3281,fast::clamp(l9_3283,0.0,1.0));
}
}
l9_3263.y=l9_3279;
if (l9_3267)
{
bool l9_3284=l9_3269;
bool l9_3285;
if (l9_3284)
{
l9_3285=l9_3266.x==3;
}
else
{
l9_3285=l9_3284;
}
float l9_3286=l9_3263.x;
float l9_3287=l9_3268.x;
float l9_3288=l9_3268.z;
bool l9_3289=l9_3285;
float l9_3290=l9_3273;
float l9_3291=fast::clamp(l9_3286,l9_3287,l9_3288);
float l9_3292=step(abs(l9_3286-l9_3291),9.9999997e-06);
l9_3290*=(l9_3292+((1.0-float(l9_3289))*(1.0-l9_3292)));
l9_3286=l9_3291;
l9_3263.x=l9_3286;
l9_3273=l9_3290;
bool l9_3293=l9_3269;
bool l9_3294;
if (l9_3293)
{
l9_3294=l9_3266.y==3;
}
else
{
l9_3294=l9_3293;
}
float l9_3295=l9_3263.y;
float l9_3296=l9_3268.y;
float l9_3297=l9_3268.w;
bool l9_3298=l9_3294;
float l9_3299=l9_3273;
float l9_3300=fast::clamp(l9_3295,l9_3296,l9_3297);
float l9_3301=step(abs(l9_3295-l9_3300),9.9999997e-06);
l9_3299*=(l9_3301+((1.0-float(l9_3298))*(1.0-l9_3301)));
l9_3295=l9_3300;
l9_3263.y=l9_3295;
l9_3273=l9_3299;
}
float2 l9_3302=l9_3263;
bool l9_3303=l9_3264;
float3x3 l9_3304=l9_3265;
if (l9_3303)
{
l9_3302=float2((l9_3304*float3(l9_3302,1.0)).xy);
}
float2 l9_3305=l9_3302;
l9_3263=l9_3305;
float l9_3306=l9_3263.x;
int l9_3307=l9_3266.x;
bool l9_3308=l9_3272;
float l9_3309=l9_3273;
if ((l9_3307==0)||(l9_3307==3))
{
float l9_3310=l9_3306;
float l9_3311=0.0;
float l9_3312=1.0;
bool l9_3313=l9_3308;
float l9_3314=l9_3309;
float l9_3315=fast::clamp(l9_3310,l9_3311,l9_3312);
float l9_3316=step(abs(l9_3310-l9_3315),9.9999997e-06);
l9_3314*=(l9_3316+((1.0-float(l9_3313))*(1.0-l9_3316)));
l9_3310=l9_3315;
l9_3306=l9_3310;
l9_3309=l9_3314;
}
l9_3263.x=l9_3306;
l9_3273=l9_3309;
float l9_3317=l9_3263.y;
int l9_3318=l9_3266.y;
bool l9_3319=l9_3272;
float l9_3320=l9_3273;
if ((l9_3318==0)||(l9_3318==3))
{
float l9_3321=l9_3317;
float l9_3322=0.0;
float l9_3323=1.0;
bool l9_3324=l9_3319;
float l9_3325=l9_3320;
float l9_3326=fast::clamp(l9_3321,l9_3322,l9_3323);
float l9_3327=step(abs(l9_3321-l9_3326),9.9999997e-06);
l9_3325*=(l9_3327+((1.0-float(l9_3324))*(1.0-l9_3327)));
l9_3321=l9_3326;
l9_3317=l9_3321;
l9_3320=l9_3325;
}
l9_3263.y=l9_3317;
l9_3273=l9_3320;
float2 l9_3328=l9_3263;
int l9_3329=l9_3261;
int l9_3330=l9_3262;
float l9_3331=l9_3271;
float2 l9_3332=l9_3328;
int l9_3333=l9_3329;
int l9_3334=l9_3330;
float3 l9_3335=float3(0.0);
if (l9_3333==0)
{
l9_3335=float3(l9_3332,0.0);
}
else
{
if (l9_3333==1)
{
l9_3335=float3(l9_3332.x,(l9_3332.y*0.5)+(0.5-(float(l9_3334)*0.5)),0.0);
}
else
{
l9_3335=float3(l9_3332,float(l9_3334));
}
}
float3 l9_3336=l9_3335;
float3 l9_3337=l9_3336;
float4 l9_3338=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3337.xy,bias(l9_3331));
float4 l9_3339=l9_3338;
if (l9_3269)
{
l9_3339=mix(l9_3270,l9_3339,float4(l9_3273));
}
float4 l9_3340=l9_3339;
l9_3254=l9_3340;
float l9_3341=0.0;
l9_3341=l9_3254.x;
float l9_3342=0.0;
l9_3342=step(l9_3341,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_3343=0.0;
l9_3343=step(l9_3341,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_3344=0.0;
l9_3344=l9_3342-l9_3343;
l9_3247=float4(l9_3344);
l9_3252=l9_3247;
}
else
{
l9_3252=l9_3248;
}
l9_3245=l9_3252;
float4 l9_3345=float4(0.0);
l9_3345=l9_2914*l9_3245;
float4 l9_3346=float4(0.0);
float4 l9_3347=(*sc_set0.UserUniforms).colorId02;
l9_3346=l9_3347;
float4 l9_3348=float4(0.0);
l9_3348=l9_3346*l9_3245;
float4 l9_3349=float4(0.0);
float4 l9_3350=l9_3345;
float4 l9_3351=l9_3348;
float4 l9_3352=l9_3350;
float4 l9_3353=l9_3351;
float3 l9_3354=l9_3352.xyz*l9_3352.w;
l9_3352=float4(l9_3354.x,l9_3354.y,l9_3354.z,l9_3352.w);
float4 l9_3355=l9_3352+(l9_3353*(1.0-l9_3352.w));
l9_3349=l9_3355;
float4 l9_3356=float4(0.0);
l9_3356=float4(l9_2908)*l9_3349;
float4 l9_3357=float4(0.0);
l9_3357=l9_3356+l9_3349;
l9_2898=l9_3357;
l9_2903=l9_2898;
}
else
{
float4 l9_3358=float4(0.0);
float l9_3359=0.0;
float4 l9_3360=float4(0.0);
float4 l9_3361=float4(0.0);
ssGlobals l9_3362=l9_2900;
float l9_3363=0.0;
float l9_3364=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_3363=l9_3364;
l9_3359=l9_3363;
float4 l9_3365;
if ((l9_3359*1.0)!=0.0)
{
float4 l9_3366=float4(0.0);
float4 l9_3367=(*sc_set0.UserUniforms).patternColorId02;
l9_3366=l9_3367;
float4 l9_3368=float4(0.0);
float l9_3369=0.0;
float4 l9_3370=float4(0.0);
float4 l9_3371=float4(0.0);
ssGlobals l9_3372=l9_3362;
float l9_3373=0.0;
float l9_3374=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_3373=l9_3374;
l9_3369=l9_3373;
float4 l9_3375;
if ((l9_3369*1.0)!=0.0)
{
float2 l9_3376=float2(0.0);
l9_3376=l9_3372.Surface_UVCoord0;
float2 l9_3377=float2(0.0);
float2 l9_3378=(*sc_set0.UserUniforms).patternScaleId02;
l9_3377=l9_3378;
float2 l9_3379=float2(0.0);
l9_3379=((l9_3376-(*sc_set0.UserUniforms).Port_Center_N282)*l9_3377)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_3380=float2(0.0);
float2 l9_3381=(*sc_set0.UserUniforms).patternOffsetId02;
l9_3380=l9_3381;
float2 l9_3382=float2(0.0);
l9_3382=l9_3379+l9_3380;
float l9_3383=0.0;
float l9_3384=(*sc_set0.UserUniforms).patternRotateId02;
l9_3383=l9_3384;
float2 l9_3385=float2(0.0);
float2 l9_3386=l9_3382;
float l9_3387=l9_3383;
float2 l9_3388=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_3389=sin(radians(l9_3387));
float l9_3390=cos(radians(l9_3387));
float2 l9_3391=l9_3386-l9_3388;
l9_3391=float2(dot(float2(l9_3390,l9_3389),l9_3391),dot(float2(-l9_3389,l9_3390),l9_3391))+l9_3388;
l9_3385=l9_3391;
float4 l9_3392=float4(0.0);
int l9_3393;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_3394=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3394=0;
}
else
{
l9_3394=in.varStereoViewID;
}
int l9_3395=l9_3394;
l9_3393=1-l9_3395;
}
else
{
int l9_3396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3396=0;
}
else
{
l9_3396=in.varStereoViewID;
}
int l9_3397=l9_3396;
l9_3393=l9_3397;
}
int l9_3398=l9_3393;
int l9_3399=patternTextureId02Layout_tmp;
int l9_3400=l9_3398;
float2 l9_3401=l9_3385;
bool l9_3402=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_3403=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_3404=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_3405=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_3406=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_3407=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_3408=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_3409=0.0;
bool l9_3410=l9_3407&&(!l9_3405);
float l9_3411=1.0;
float l9_3412=l9_3401.x;
int l9_3413=l9_3404.x;
if (l9_3413==1)
{
l9_3412=fract(l9_3412);
}
else
{
if (l9_3413==2)
{
float l9_3414=fract(l9_3412);
float l9_3415=l9_3412-l9_3414;
float l9_3416=step(0.25,fract(l9_3415*0.5));
l9_3412=mix(l9_3414,1.0-l9_3414,fast::clamp(l9_3416,0.0,1.0));
}
}
l9_3401.x=l9_3412;
float l9_3417=l9_3401.y;
int l9_3418=l9_3404.y;
if (l9_3418==1)
{
l9_3417=fract(l9_3417);
}
else
{
if (l9_3418==2)
{
float l9_3419=fract(l9_3417);
float l9_3420=l9_3417-l9_3419;
float l9_3421=step(0.25,fract(l9_3420*0.5));
l9_3417=mix(l9_3419,1.0-l9_3419,fast::clamp(l9_3421,0.0,1.0));
}
}
l9_3401.y=l9_3417;
if (l9_3405)
{
bool l9_3422=l9_3407;
bool l9_3423;
if (l9_3422)
{
l9_3423=l9_3404.x==3;
}
else
{
l9_3423=l9_3422;
}
float l9_3424=l9_3401.x;
float l9_3425=l9_3406.x;
float l9_3426=l9_3406.z;
bool l9_3427=l9_3423;
float l9_3428=l9_3411;
float l9_3429=fast::clamp(l9_3424,l9_3425,l9_3426);
float l9_3430=step(abs(l9_3424-l9_3429),9.9999997e-06);
l9_3428*=(l9_3430+((1.0-float(l9_3427))*(1.0-l9_3430)));
l9_3424=l9_3429;
l9_3401.x=l9_3424;
l9_3411=l9_3428;
bool l9_3431=l9_3407;
bool l9_3432;
if (l9_3431)
{
l9_3432=l9_3404.y==3;
}
else
{
l9_3432=l9_3431;
}
float l9_3433=l9_3401.y;
float l9_3434=l9_3406.y;
float l9_3435=l9_3406.w;
bool l9_3436=l9_3432;
float l9_3437=l9_3411;
float l9_3438=fast::clamp(l9_3433,l9_3434,l9_3435);
float l9_3439=step(abs(l9_3433-l9_3438),9.9999997e-06);
l9_3437*=(l9_3439+((1.0-float(l9_3436))*(1.0-l9_3439)));
l9_3433=l9_3438;
l9_3401.y=l9_3433;
l9_3411=l9_3437;
}
float2 l9_3440=l9_3401;
bool l9_3441=l9_3402;
float3x3 l9_3442=l9_3403;
if (l9_3441)
{
l9_3440=float2((l9_3442*float3(l9_3440,1.0)).xy);
}
float2 l9_3443=l9_3440;
l9_3401=l9_3443;
float l9_3444=l9_3401.x;
int l9_3445=l9_3404.x;
bool l9_3446=l9_3410;
float l9_3447=l9_3411;
if ((l9_3445==0)||(l9_3445==3))
{
float l9_3448=l9_3444;
float l9_3449=0.0;
float l9_3450=1.0;
bool l9_3451=l9_3446;
float l9_3452=l9_3447;
float l9_3453=fast::clamp(l9_3448,l9_3449,l9_3450);
float l9_3454=step(abs(l9_3448-l9_3453),9.9999997e-06);
l9_3452*=(l9_3454+((1.0-float(l9_3451))*(1.0-l9_3454)));
l9_3448=l9_3453;
l9_3444=l9_3448;
l9_3447=l9_3452;
}
l9_3401.x=l9_3444;
l9_3411=l9_3447;
float l9_3455=l9_3401.y;
int l9_3456=l9_3404.y;
bool l9_3457=l9_3410;
float l9_3458=l9_3411;
if ((l9_3456==0)||(l9_3456==3))
{
float l9_3459=l9_3455;
float l9_3460=0.0;
float l9_3461=1.0;
bool l9_3462=l9_3457;
float l9_3463=l9_3458;
float l9_3464=fast::clamp(l9_3459,l9_3460,l9_3461);
float l9_3465=step(abs(l9_3459-l9_3464),9.9999997e-06);
l9_3463*=(l9_3465+((1.0-float(l9_3462))*(1.0-l9_3465)));
l9_3459=l9_3464;
l9_3455=l9_3459;
l9_3458=l9_3463;
}
l9_3401.y=l9_3455;
l9_3411=l9_3458;
float2 l9_3466=l9_3401;
int l9_3467=l9_3399;
int l9_3468=l9_3400;
float l9_3469=l9_3409;
float2 l9_3470=l9_3466;
int l9_3471=l9_3467;
int l9_3472=l9_3468;
float3 l9_3473=float3(0.0);
if (l9_3471==0)
{
l9_3473=float3(l9_3470,0.0);
}
else
{
if (l9_3471==1)
{
l9_3473=float3(l9_3470.x,(l9_3470.y*0.5)+(0.5-(float(l9_3472)*0.5)),0.0);
}
else
{
l9_3473=float3(l9_3470,float(l9_3472));
}
}
float3 l9_3474=l9_3473;
float3 l9_3475=l9_3474;
float4 l9_3476=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_3475.xy,bias(l9_3469));
float4 l9_3477=l9_3476;
if (l9_3407)
{
l9_3477=mix(l9_3408,l9_3477,float4(l9_3411));
}
float4 l9_3478=l9_3477;
l9_3392=l9_3478;
l9_3370=l9_3392;
l9_3375=l9_3370;
}
else
{
float2 l9_3479=float2(0.0);
l9_3479=l9_3372.Surface_UVCoord0;
float2 l9_3480=float2(0.0);
float2 l9_3481=(*sc_set0.UserUniforms).patternScaleId02;
l9_3480=l9_3481;
float2 l9_3482=float2(0.0);
l9_3482=((l9_3479-(*sc_set0.UserUniforms).Port_Center_N282)*l9_3480)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_3483=float2(0.0);
float2 l9_3484=(*sc_set0.UserUniforms).patternOffsetId02;
l9_3483=l9_3484;
float2 l9_3485=float2(0.0);
l9_3485=l9_3482+l9_3483;
float l9_3486=0.0;
float l9_3487=(*sc_set0.UserUniforms).patternRotateId02;
l9_3486=l9_3487;
float2 l9_3488=float2(0.0);
float2 l9_3489=l9_3485;
float l9_3490=l9_3486;
float2 l9_3491=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_3492=sin(radians(l9_3490));
float l9_3493=cos(radians(l9_3490));
float2 l9_3494=l9_3489-l9_3491;
l9_3494=float2(dot(float2(l9_3493,l9_3492),l9_3494),dot(float2(-l9_3492,l9_3493),l9_3494))+l9_3491;
l9_3488=l9_3494;
float4 l9_3495=float4(0.0);
int l9_3496;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_3497=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3497=0;
}
else
{
l9_3497=in.varStereoViewID;
}
int l9_3498=l9_3497;
l9_3496=1-l9_3498;
}
else
{
int l9_3499=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3499=0;
}
else
{
l9_3499=in.varStereoViewID;
}
int l9_3500=l9_3499;
l9_3496=l9_3500;
}
int l9_3501=l9_3496;
int l9_3502=patternTextureId02Layout_tmp;
int l9_3503=l9_3501;
float2 l9_3504=l9_3488;
bool l9_3505=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_3506=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_3507=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_3508=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_3509=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_3510=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_3511=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_3512=0.0;
bool l9_3513=l9_3510&&(!l9_3508);
float l9_3514=1.0;
float l9_3515=l9_3504.x;
int l9_3516=l9_3507.x;
if (l9_3516==1)
{
l9_3515=fract(l9_3515);
}
else
{
if (l9_3516==2)
{
float l9_3517=fract(l9_3515);
float l9_3518=l9_3515-l9_3517;
float l9_3519=step(0.25,fract(l9_3518*0.5));
l9_3515=mix(l9_3517,1.0-l9_3517,fast::clamp(l9_3519,0.0,1.0));
}
}
l9_3504.x=l9_3515;
float l9_3520=l9_3504.y;
int l9_3521=l9_3507.y;
if (l9_3521==1)
{
l9_3520=fract(l9_3520);
}
else
{
if (l9_3521==2)
{
float l9_3522=fract(l9_3520);
float l9_3523=l9_3520-l9_3522;
float l9_3524=step(0.25,fract(l9_3523*0.5));
l9_3520=mix(l9_3522,1.0-l9_3522,fast::clamp(l9_3524,0.0,1.0));
}
}
l9_3504.y=l9_3520;
if (l9_3508)
{
bool l9_3525=l9_3510;
bool l9_3526;
if (l9_3525)
{
l9_3526=l9_3507.x==3;
}
else
{
l9_3526=l9_3525;
}
float l9_3527=l9_3504.x;
float l9_3528=l9_3509.x;
float l9_3529=l9_3509.z;
bool l9_3530=l9_3526;
float l9_3531=l9_3514;
float l9_3532=fast::clamp(l9_3527,l9_3528,l9_3529);
float l9_3533=step(abs(l9_3527-l9_3532),9.9999997e-06);
l9_3531*=(l9_3533+((1.0-float(l9_3530))*(1.0-l9_3533)));
l9_3527=l9_3532;
l9_3504.x=l9_3527;
l9_3514=l9_3531;
bool l9_3534=l9_3510;
bool l9_3535;
if (l9_3534)
{
l9_3535=l9_3507.y==3;
}
else
{
l9_3535=l9_3534;
}
float l9_3536=l9_3504.y;
float l9_3537=l9_3509.y;
float l9_3538=l9_3509.w;
bool l9_3539=l9_3535;
float l9_3540=l9_3514;
float l9_3541=fast::clamp(l9_3536,l9_3537,l9_3538);
float l9_3542=step(abs(l9_3536-l9_3541),9.9999997e-06);
l9_3540*=(l9_3542+((1.0-float(l9_3539))*(1.0-l9_3542)));
l9_3536=l9_3541;
l9_3504.y=l9_3536;
l9_3514=l9_3540;
}
float2 l9_3543=l9_3504;
bool l9_3544=l9_3505;
float3x3 l9_3545=l9_3506;
if (l9_3544)
{
l9_3543=float2((l9_3545*float3(l9_3543,1.0)).xy);
}
float2 l9_3546=l9_3543;
l9_3504=l9_3546;
float l9_3547=l9_3504.x;
int l9_3548=l9_3507.x;
bool l9_3549=l9_3513;
float l9_3550=l9_3514;
if ((l9_3548==0)||(l9_3548==3))
{
float l9_3551=l9_3547;
float l9_3552=0.0;
float l9_3553=1.0;
bool l9_3554=l9_3549;
float l9_3555=l9_3550;
float l9_3556=fast::clamp(l9_3551,l9_3552,l9_3553);
float l9_3557=step(abs(l9_3551-l9_3556),9.9999997e-06);
l9_3555*=(l9_3557+((1.0-float(l9_3554))*(1.0-l9_3557)));
l9_3551=l9_3556;
l9_3547=l9_3551;
l9_3550=l9_3555;
}
l9_3504.x=l9_3547;
l9_3514=l9_3550;
float l9_3558=l9_3504.y;
int l9_3559=l9_3507.y;
bool l9_3560=l9_3513;
float l9_3561=l9_3514;
if ((l9_3559==0)||(l9_3559==3))
{
float l9_3562=l9_3558;
float l9_3563=0.0;
float l9_3564=1.0;
bool l9_3565=l9_3560;
float l9_3566=l9_3561;
float l9_3567=fast::clamp(l9_3562,l9_3563,l9_3564);
float l9_3568=step(abs(l9_3562-l9_3567),9.9999997e-06);
l9_3566*=(l9_3568+((1.0-float(l9_3565))*(1.0-l9_3568)));
l9_3562=l9_3567;
l9_3558=l9_3562;
l9_3561=l9_3566;
}
l9_3504.y=l9_3558;
l9_3514=l9_3561;
float2 l9_3569=l9_3504;
int l9_3570=l9_3502;
int l9_3571=l9_3503;
float l9_3572=l9_3512;
float2 l9_3573=l9_3569;
int l9_3574=l9_3570;
int l9_3575=l9_3571;
float3 l9_3576=float3(0.0);
if (l9_3574==0)
{
l9_3576=float3(l9_3573,0.0);
}
else
{
if (l9_3574==1)
{
l9_3576=float3(l9_3573.x,(l9_3573.y*0.5)+(0.5-(float(l9_3575)*0.5)),0.0);
}
else
{
l9_3576=float3(l9_3573,float(l9_3575));
}
}
float3 l9_3577=l9_3576;
float3 l9_3578=l9_3577;
float4 l9_3579=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_3578.xy,bias(l9_3572));
float4 l9_3580=l9_3579;
if (l9_3510)
{
l9_3580=mix(l9_3511,l9_3580,float4(l9_3514));
}
float4 l9_3581=l9_3580;
l9_3495=l9_3581;
float l9_3582=0.0;
float3 l9_3583=l9_3495.xyz;
float l9_3584=l9_3583.x;
l9_3582=l9_3584;
l9_3371=float4(l9_3582);
l9_3375=l9_3371;
}
l9_3368=l9_3375;
float4 l9_3585=float4(0.0);
l9_3585=l9_3366*l9_3368;
l9_3360=l9_3585;
l9_3365=l9_3360;
}
else
{
float4 l9_3586=float4(0.0);
float4 l9_3587=(*sc_set0.UserUniforms).colorId02;
l9_3586=l9_3587;
float4 l9_3588=float4(0.0);
float l9_3589=0.0;
float4 l9_3590=float4(0.0);
float4 l9_3591=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_3592=l9_3362;
float l9_3593=0.0;
float l9_3594=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_3593=l9_3594;
l9_3589=l9_3593;
float4 l9_3595;
if ((l9_3589*1.0)!=0.0)
{
float2 l9_3596=float2(0.0);
l9_3596=l9_3592.Surface_UVCoord0;
float4 l9_3597=float4(0.0);
int l9_3598;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3599=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3599=0;
}
else
{
l9_3599=in.varStereoViewID;
}
int l9_3600=l9_3599;
l9_3598=1-l9_3600;
}
else
{
int l9_3601=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3601=0;
}
else
{
l9_3601=in.varStereoViewID;
}
int l9_3602=l9_3601;
l9_3598=l9_3602;
}
int l9_3603=l9_3598;
int l9_3604=greyMaskIdLayout_tmp;
int l9_3605=l9_3603;
float2 l9_3606=l9_3596;
bool l9_3607=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3608=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3609=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3610=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3611=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3612=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3613=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3614=0.0;
bool l9_3615=l9_3612&&(!l9_3610);
float l9_3616=1.0;
float l9_3617=l9_3606.x;
int l9_3618=l9_3609.x;
if (l9_3618==1)
{
l9_3617=fract(l9_3617);
}
else
{
if (l9_3618==2)
{
float l9_3619=fract(l9_3617);
float l9_3620=l9_3617-l9_3619;
float l9_3621=step(0.25,fract(l9_3620*0.5));
l9_3617=mix(l9_3619,1.0-l9_3619,fast::clamp(l9_3621,0.0,1.0));
}
}
l9_3606.x=l9_3617;
float l9_3622=l9_3606.y;
int l9_3623=l9_3609.y;
if (l9_3623==1)
{
l9_3622=fract(l9_3622);
}
else
{
if (l9_3623==2)
{
float l9_3624=fract(l9_3622);
float l9_3625=l9_3622-l9_3624;
float l9_3626=step(0.25,fract(l9_3625*0.5));
l9_3622=mix(l9_3624,1.0-l9_3624,fast::clamp(l9_3626,0.0,1.0));
}
}
l9_3606.y=l9_3622;
if (l9_3610)
{
bool l9_3627=l9_3612;
bool l9_3628;
if (l9_3627)
{
l9_3628=l9_3609.x==3;
}
else
{
l9_3628=l9_3627;
}
float l9_3629=l9_3606.x;
float l9_3630=l9_3611.x;
float l9_3631=l9_3611.z;
bool l9_3632=l9_3628;
float l9_3633=l9_3616;
float l9_3634=fast::clamp(l9_3629,l9_3630,l9_3631);
float l9_3635=step(abs(l9_3629-l9_3634),9.9999997e-06);
l9_3633*=(l9_3635+((1.0-float(l9_3632))*(1.0-l9_3635)));
l9_3629=l9_3634;
l9_3606.x=l9_3629;
l9_3616=l9_3633;
bool l9_3636=l9_3612;
bool l9_3637;
if (l9_3636)
{
l9_3637=l9_3609.y==3;
}
else
{
l9_3637=l9_3636;
}
float l9_3638=l9_3606.y;
float l9_3639=l9_3611.y;
float l9_3640=l9_3611.w;
bool l9_3641=l9_3637;
float l9_3642=l9_3616;
float l9_3643=fast::clamp(l9_3638,l9_3639,l9_3640);
float l9_3644=step(abs(l9_3638-l9_3643),9.9999997e-06);
l9_3642*=(l9_3644+((1.0-float(l9_3641))*(1.0-l9_3644)));
l9_3638=l9_3643;
l9_3606.y=l9_3638;
l9_3616=l9_3642;
}
float2 l9_3645=l9_3606;
bool l9_3646=l9_3607;
float3x3 l9_3647=l9_3608;
if (l9_3646)
{
l9_3645=float2((l9_3647*float3(l9_3645,1.0)).xy);
}
float2 l9_3648=l9_3645;
l9_3606=l9_3648;
float l9_3649=l9_3606.x;
int l9_3650=l9_3609.x;
bool l9_3651=l9_3615;
float l9_3652=l9_3616;
if ((l9_3650==0)||(l9_3650==3))
{
float l9_3653=l9_3649;
float l9_3654=0.0;
float l9_3655=1.0;
bool l9_3656=l9_3651;
float l9_3657=l9_3652;
float l9_3658=fast::clamp(l9_3653,l9_3654,l9_3655);
float l9_3659=step(abs(l9_3653-l9_3658),9.9999997e-06);
l9_3657*=(l9_3659+((1.0-float(l9_3656))*(1.0-l9_3659)));
l9_3653=l9_3658;
l9_3649=l9_3653;
l9_3652=l9_3657;
}
l9_3606.x=l9_3649;
l9_3616=l9_3652;
float l9_3660=l9_3606.y;
int l9_3661=l9_3609.y;
bool l9_3662=l9_3615;
float l9_3663=l9_3616;
if ((l9_3661==0)||(l9_3661==3))
{
float l9_3664=l9_3660;
float l9_3665=0.0;
float l9_3666=1.0;
bool l9_3667=l9_3662;
float l9_3668=l9_3663;
float l9_3669=fast::clamp(l9_3664,l9_3665,l9_3666);
float l9_3670=step(abs(l9_3664-l9_3669),9.9999997e-06);
l9_3668*=(l9_3670+((1.0-float(l9_3667))*(1.0-l9_3670)));
l9_3664=l9_3669;
l9_3660=l9_3664;
l9_3663=l9_3668;
}
l9_3606.y=l9_3660;
l9_3616=l9_3663;
float2 l9_3671=l9_3606;
int l9_3672=l9_3604;
int l9_3673=l9_3605;
float l9_3674=l9_3614;
float2 l9_3675=l9_3671;
int l9_3676=l9_3672;
int l9_3677=l9_3673;
float3 l9_3678=float3(0.0);
if (l9_3676==0)
{
l9_3678=float3(l9_3675,0.0);
}
else
{
if (l9_3676==1)
{
l9_3678=float3(l9_3675.x,(l9_3675.y*0.5)+(0.5-(float(l9_3677)*0.5)),0.0);
}
else
{
l9_3678=float3(l9_3675,float(l9_3677));
}
}
float3 l9_3679=l9_3678;
float3 l9_3680=l9_3679;
float4 l9_3681=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3680.xy,bias(l9_3674));
float4 l9_3682=l9_3681;
if (l9_3612)
{
l9_3682=mix(l9_3613,l9_3682,float4(l9_3616));
}
float4 l9_3683=l9_3682;
l9_3597=l9_3683;
float l9_3684=0.0;
l9_3684=l9_3597.x;
float l9_3685=0.0;
l9_3685=step(l9_3684,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_3686=0.0;
l9_3686=step(l9_3684,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_3687=0.0;
l9_3687=l9_3685-l9_3686;
l9_3590=float4(l9_3687);
l9_3595=l9_3590;
}
else
{
l9_3595=l9_3591;
}
l9_3588=l9_3595;
float4 l9_3688=float4(0.0);
l9_3688=l9_3586*l9_3588;
l9_3361=l9_3688;
l9_3365=l9_3361;
}
l9_3358=l9_3365;
float4 l9_3689=float4(0.0);
float l9_3690=0.0;
float4 l9_3691=float4(0.0);
float4 l9_3692=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_3693=l9_2900;
float l9_3694=0.0;
float l9_3695=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_3694=l9_3695;
l9_3690=l9_3694;
float4 l9_3696;
if ((l9_3690*1.0)!=0.0)
{
float2 l9_3697=float2(0.0);
l9_3697=l9_3693.Surface_UVCoord0;
float4 l9_3698=float4(0.0);
int l9_3699;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3700=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3700=0;
}
else
{
l9_3700=in.varStereoViewID;
}
int l9_3701=l9_3700;
l9_3699=1-l9_3701;
}
else
{
int l9_3702=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3702=0;
}
else
{
l9_3702=in.varStereoViewID;
}
int l9_3703=l9_3702;
l9_3699=l9_3703;
}
int l9_3704=l9_3699;
int l9_3705=greyMaskIdLayout_tmp;
int l9_3706=l9_3704;
float2 l9_3707=l9_3697;
bool l9_3708=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3709=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3710=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3711=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3712=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3713=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3714=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3715=0.0;
bool l9_3716=l9_3713&&(!l9_3711);
float l9_3717=1.0;
float l9_3718=l9_3707.x;
int l9_3719=l9_3710.x;
if (l9_3719==1)
{
l9_3718=fract(l9_3718);
}
else
{
if (l9_3719==2)
{
float l9_3720=fract(l9_3718);
float l9_3721=l9_3718-l9_3720;
float l9_3722=step(0.25,fract(l9_3721*0.5));
l9_3718=mix(l9_3720,1.0-l9_3720,fast::clamp(l9_3722,0.0,1.0));
}
}
l9_3707.x=l9_3718;
float l9_3723=l9_3707.y;
int l9_3724=l9_3710.y;
if (l9_3724==1)
{
l9_3723=fract(l9_3723);
}
else
{
if (l9_3724==2)
{
float l9_3725=fract(l9_3723);
float l9_3726=l9_3723-l9_3725;
float l9_3727=step(0.25,fract(l9_3726*0.5));
l9_3723=mix(l9_3725,1.0-l9_3725,fast::clamp(l9_3727,0.0,1.0));
}
}
l9_3707.y=l9_3723;
if (l9_3711)
{
bool l9_3728=l9_3713;
bool l9_3729;
if (l9_3728)
{
l9_3729=l9_3710.x==3;
}
else
{
l9_3729=l9_3728;
}
float l9_3730=l9_3707.x;
float l9_3731=l9_3712.x;
float l9_3732=l9_3712.z;
bool l9_3733=l9_3729;
float l9_3734=l9_3717;
float l9_3735=fast::clamp(l9_3730,l9_3731,l9_3732);
float l9_3736=step(abs(l9_3730-l9_3735),9.9999997e-06);
l9_3734*=(l9_3736+((1.0-float(l9_3733))*(1.0-l9_3736)));
l9_3730=l9_3735;
l9_3707.x=l9_3730;
l9_3717=l9_3734;
bool l9_3737=l9_3713;
bool l9_3738;
if (l9_3737)
{
l9_3738=l9_3710.y==3;
}
else
{
l9_3738=l9_3737;
}
float l9_3739=l9_3707.y;
float l9_3740=l9_3712.y;
float l9_3741=l9_3712.w;
bool l9_3742=l9_3738;
float l9_3743=l9_3717;
float l9_3744=fast::clamp(l9_3739,l9_3740,l9_3741);
float l9_3745=step(abs(l9_3739-l9_3744),9.9999997e-06);
l9_3743*=(l9_3745+((1.0-float(l9_3742))*(1.0-l9_3745)));
l9_3739=l9_3744;
l9_3707.y=l9_3739;
l9_3717=l9_3743;
}
float2 l9_3746=l9_3707;
bool l9_3747=l9_3708;
float3x3 l9_3748=l9_3709;
if (l9_3747)
{
l9_3746=float2((l9_3748*float3(l9_3746,1.0)).xy);
}
float2 l9_3749=l9_3746;
l9_3707=l9_3749;
float l9_3750=l9_3707.x;
int l9_3751=l9_3710.x;
bool l9_3752=l9_3716;
float l9_3753=l9_3717;
if ((l9_3751==0)||(l9_3751==3))
{
float l9_3754=l9_3750;
float l9_3755=0.0;
float l9_3756=1.0;
bool l9_3757=l9_3752;
float l9_3758=l9_3753;
float l9_3759=fast::clamp(l9_3754,l9_3755,l9_3756);
float l9_3760=step(abs(l9_3754-l9_3759),9.9999997e-06);
l9_3758*=(l9_3760+((1.0-float(l9_3757))*(1.0-l9_3760)));
l9_3754=l9_3759;
l9_3750=l9_3754;
l9_3753=l9_3758;
}
l9_3707.x=l9_3750;
l9_3717=l9_3753;
float l9_3761=l9_3707.y;
int l9_3762=l9_3710.y;
bool l9_3763=l9_3716;
float l9_3764=l9_3717;
if ((l9_3762==0)||(l9_3762==3))
{
float l9_3765=l9_3761;
float l9_3766=0.0;
float l9_3767=1.0;
bool l9_3768=l9_3763;
float l9_3769=l9_3764;
float l9_3770=fast::clamp(l9_3765,l9_3766,l9_3767);
float l9_3771=step(abs(l9_3765-l9_3770),9.9999997e-06);
l9_3769*=(l9_3771+((1.0-float(l9_3768))*(1.0-l9_3771)));
l9_3765=l9_3770;
l9_3761=l9_3765;
l9_3764=l9_3769;
}
l9_3707.y=l9_3761;
l9_3717=l9_3764;
float2 l9_3772=l9_3707;
int l9_3773=l9_3705;
int l9_3774=l9_3706;
float l9_3775=l9_3715;
float2 l9_3776=l9_3772;
int l9_3777=l9_3773;
int l9_3778=l9_3774;
float3 l9_3779=float3(0.0);
if (l9_3777==0)
{
l9_3779=float3(l9_3776,0.0);
}
else
{
if (l9_3777==1)
{
l9_3779=float3(l9_3776.x,(l9_3776.y*0.5)+(0.5-(float(l9_3778)*0.5)),0.0);
}
else
{
l9_3779=float3(l9_3776,float(l9_3778));
}
}
float3 l9_3780=l9_3779;
float3 l9_3781=l9_3780;
float4 l9_3782=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3781.xy,bias(l9_3775));
float4 l9_3783=l9_3782;
if (l9_3713)
{
l9_3783=mix(l9_3714,l9_3783,float4(l9_3717));
}
float4 l9_3784=l9_3783;
l9_3698=l9_3784;
float l9_3785=0.0;
l9_3785=l9_3698.x;
float l9_3786=0.0;
l9_3786=step(l9_3785,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_3787=0.0;
l9_3787=step(l9_3785,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_3788=0.0;
l9_3788=l9_3786-l9_3787;
l9_3691=float4(l9_3788);
l9_3696=l9_3691;
}
else
{
l9_3696=l9_3692;
}
l9_3689=l9_3696;
float4 l9_3789=float4(0.0);
l9_3789=l9_3358*l9_3689;
float4 l9_3790=float4(0.0);
float4 l9_3791=(*sc_set0.UserUniforms).colorId02;
l9_3790=l9_3791;
float4 l9_3792=float4(0.0);
l9_3792=l9_3790*l9_3689;
float4 l9_3793=float4(0.0);
float4 l9_3794=l9_3789;
float4 l9_3795=l9_3792;
float4 l9_3796=l9_3794;
float4 l9_3797=l9_3795;
float3 l9_3798=l9_3796.xyz*l9_3796.w;
l9_3796=float4(l9_3798.x,l9_3798.y,l9_3798.z,l9_3796.w);
float4 l9_3799=l9_3796+(l9_3797*(1.0-l9_3796.w));
l9_3793=l9_3799;
l9_2899=l9_3793;
l9_2903=l9_2899;
}
l9_2896=l9_2903;
l9_1959=l9_2896;
l9_1963=l9_1959;
}
l9_1956=l9_1963;
float4 l9_3800=float4(0.0);
float l9_3801=0.0;
float4 l9_3802=float4(0.0);
float4 l9_3803=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_3804=l9_1952;
float l9_3805=0.0;
float l9_3806=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_3805=l9_3806;
l9_3801=l9_3805;
float4 l9_3807;
if ((l9_3801*1.0)!=0.0)
{
float2 l9_3808=float2(0.0);
l9_3808=l9_3804.Surface_UVCoord0;
float4 l9_3809=float4(0.0);
int l9_3810;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3811=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3811=0;
}
else
{
l9_3811=in.varStereoViewID;
}
int l9_3812=l9_3811;
l9_3810=1-l9_3812;
}
else
{
int l9_3813=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3813=0;
}
else
{
l9_3813=in.varStereoViewID;
}
int l9_3814=l9_3813;
l9_3810=l9_3814;
}
int l9_3815=l9_3810;
int l9_3816=greyMaskIdLayout_tmp;
int l9_3817=l9_3815;
float2 l9_3818=l9_3808;
bool l9_3819=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3820=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3821=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3822=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3823=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3824=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3825=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3826=0.0;
bool l9_3827=l9_3824&&(!l9_3822);
float l9_3828=1.0;
float l9_3829=l9_3818.x;
int l9_3830=l9_3821.x;
if (l9_3830==1)
{
l9_3829=fract(l9_3829);
}
else
{
if (l9_3830==2)
{
float l9_3831=fract(l9_3829);
float l9_3832=l9_3829-l9_3831;
float l9_3833=step(0.25,fract(l9_3832*0.5));
l9_3829=mix(l9_3831,1.0-l9_3831,fast::clamp(l9_3833,0.0,1.0));
}
}
l9_3818.x=l9_3829;
float l9_3834=l9_3818.y;
int l9_3835=l9_3821.y;
if (l9_3835==1)
{
l9_3834=fract(l9_3834);
}
else
{
if (l9_3835==2)
{
float l9_3836=fract(l9_3834);
float l9_3837=l9_3834-l9_3836;
float l9_3838=step(0.25,fract(l9_3837*0.5));
l9_3834=mix(l9_3836,1.0-l9_3836,fast::clamp(l9_3838,0.0,1.0));
}
}
l9_3818.y=l9_3834;
if (l9_3822)
{
bool l9_3839=l9_3824;
bool l9_3840;
if (l9_3839)
{
l9_3840=l9_3821.x==3;
}
else
{
l9_3840=l9_3839;
}
float l9_3841=l9_3818.x;
float l9_3842=l9_3823.x;
float l9_3843=l9_3823.z;
bool l9_3844=l9_3840;
float l9_3845=l9_3828;
float l9_3846=fast::clamp(l9_3841,l9_3842,l9_3843);
float l9_3847=step(abs(l9_3841-l9_3846),9.9999997e-06);
l9_3845*=(l9_3847+((1.0-float(l9_3844))*(1.0-l9_3847)));
l9_3841=l9_3846;
l9_3818.x=l9_3841;
l9_3828=l9_3845;
bool l9_3848=l9_3824;
bool l9_3849;
if (l9_3848)
{
l9_3849=l9_3821.y==3;
}
else
{
l9_3849=l9_3848;
}
float l9_3850=l9_3818.y;
float l9_3851=l9_3823.y;
float l9_3852=l9_3823.w;
bool l9_3853=l9_3849;
float l9_3854=l9_3828;
float l9_3855=fast::clamp(l9_3850,l9_3851,l9_3852);
float l9_3856=step(abs(l9_3850-l9_3855),9.9999997e-06);
l9_3854*=(l9_3856+((1.0-float(l9_3853))*(1.0-l9_3856)));
l9_3850=l9_3855;
l9_3818.y=l9_3850;
l9_3828=l9_3854;
}
float2 l9_3857=l9_3818;
bool l9_3858=l9_3819;
float3x3 l9_3859=l9_3820;
if (l9_3858)
{
l9_3857=float2((l9_3859*float3(l9_3857,1.0)).xy);
}
float2 l9_3860=l9_3857;
l9_3818=l9_3860;
float l9_3861=l9_3818.x;
int l9_3862=l9_3821.x;
bool l9_3863=l9_3827;
float l9_3864=l9_3828;
if ((l9_3862==0)||(l9_3862==3))
{
float l9_3865=l9_3861;
float l9_3866=0.0;
float l9_3867=1.0;
bool l9_3868=l9_3863;
float l9_3869=l9_3864;
float l9_3870=fast::clamp(l9_3865,l9_3866,l9_3867);
float l9_3871=step(abs(l9_3865-l9_3870),9.9999997e-06);
l9_3869*=(l9_3871+((1.0-float(l9_3868))*(1.0-l9_3871)));
l9_3865=l9_3870;
l9_3861=l9_3865;
l9_3864=l9_3869;
}
l9_3818.x=l9_3861;
l9_3828=l9_3864;
float l9_3872=l9_3818.y;
int l9_3873=l9_3821.y;
bool l9_3874=l9_3827;
float l9_3875=l9_3828;
if ((l9_3873==0)||(l9_3873==3))
{
float l9_3876=l9_3872;
float l9_3877=0.0;
float l9_3878=1.0;
bool l9_3879=l9_3874;
float l9_3880=l9_3875;
float l9_3881=fast::clamp(l9_3876,l9_3877,l9_3878);
float l9_3882=step(abs(l9_3876-l9_3881),9.9999997e-06);
l9_3880*=(l9_3882+((1.0-float(l9_3879))*(1.0-l9_3882)));
l9_3876=l9_3881;
l9_3872=l9_3876;
l9_3875=l9_3880;
}
l9_3818.y=l9_3872;
l9_3828=l9_3875;
float2 l9_3883=l9_3818;
int l9_3884=l9_3816;
int l9_3885=l9_3817;
float l9_3886=l9_3826;
float2 l9_3887=l9_3883;
int l9_3888=l9_3884;
int l9_3889=l9_3885;
float3 l9_3890=float3(0.0);
if (l9_3888==0)
{
l9_3890=float3(l9_3887,0.0);
}
else
{
if (l9_3888==1)
{
l9_3890=float3(l9_3887.x,(l9_3887.y*0.5)+(0.5-(float(l9_3889)*0.5)),0.0);
}
else
{
l9_3890=float3(l9_3887,float(l9_3889));
}
}
float3 l9_3891=l9_3890;
float3 l9_3892=l9_3891;
float4 l9_3893=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3892.xy,bias(l9_3886));
float4 l9_3894=l9_3893;
if (l9_3824)
{
l9_3894=mix(l9_3825,l9_3894,float4(l9_3828));
}
float4 l9_3895=l9_3894;
l9_3809=l9_3895;
float l9_3896=0.0;
l9_3896=l9_3809.x;
float l9_3897=0.0;
l9_3897=step(l9_3896,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_3898=0.0;
l9_3898=step(l9_3896,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_3899=0.0;
l9_3899=l9_3897-l9_3898;
l9_3802=float4(l9_3899);
l9_3807=l9_3802;
}
else
{
l9_3807=l9_3803;
}
l9_3800=l9_3807;
float4 l9_3900=float4(0.0);
l9_3900=l9_1956*l9_3800;
float4 l9_3901=float4(0.0);
float l9_3902=0.0;
float4 l9_3903=float4(0.0);
float4 l9_3904=float4(0.0);
ssGlobals l9_3905=l9_1952;
float l9_3906=0.0;
float l9_3907=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_3906=l9_3907;
l9_3902=l9_3906;
float4 l9_3908;
if ((l9_3902*1.0)!=0.0)
{
float4 l9_3909=float4(0.0);
float l9_3910=0.0;
float4 l9_3911=float4(0.0);
float4 l9_3912=float4(0.0);
ssGlobals l9_3913=l9_3905;
float l9_3914=0.0;
float l9_3915=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_3914=l9_3915;
l9_3910=l9_3914;
float4 l9_3916;
if ((l9_3910*1.0)!=0.0)
{
float l9_3917=0.0;
float l9_3918=(*sc_set0.UserUniforms).rimExpId01;
l9_3917=l9_3918;
float l9_3919=0.0;
float l9_3920=(*sc_set0.UserUniforms).rimIntId01;
l9_3919=l9_3920;
float l9_3921=0.0;
float l9_3922=l9_3917;
float l9_3923=l9_3919;
ssGlobals l9_3924=l9_3913;
float l9_3925=abs(dot(-l9_3924.ViewDirWS,l9_3924.VertexNormal_WorldSpace));
float l9_3926=1.0-pow(1.0-l9_3925,l9_3922);
l9_3926=fast::max(l9_3926,0.0);
l9_3926*=l9_3923;
l9_3921=l9_3926;
float4 l9_3927=float4(0.0);
float l9_3928=0.0;
float4 l9_3929=float4(0.0);
float4 l9_3930=float4(0.0);
ssGlobals l9_3931=l9_3913;
float l9_3932=0.0;
float l9_3933=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_3932=l9_3933;
l9_3928=l9_3932;
float4 l9_3934;
if ((l9_3928*1.0)!=0.0)
{
float4 l9_3935=float4(0.0);
float4 l9_3936=(*sc_set0.UserUniforms).patternColorId01;
l9_3935=l9_3936;
float4 l9_3937=float4(0.0);
float l9_3938=0.0;
float4 l9_3939=float4(0.0);
float4 l9_3940=float4(0.0);
ssGlobals l9_3941=l9_3931;
float l9_3942=0.0;
float l9_3943=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_3942=l9_3943;
l9_3938=l9_3942;
float4 l9_3944;
if ((l9_3938*1.0)!=0.0)
{
float2 l9_3945=float2(0.0);
l9_3945=l9_3941.Surface_UVCoord0;
float2 l9_3946=float2(0.0);
float2 l9_3947=(*sc_set0.UserUniforms).patternScaleId01;
l9_3946=l9_3947;
float2 l9_3948=float2(0.0);
l9_3948=((l9_3945-(*sc_set0.UserUniforms).Port_Center_N122)*l9_3946)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_3949=float2(0.0);
float2 l9_3950=(*sc_set0.UserUniforms).patternOffsetId01;
l9_3949=l9_3950;
float2 l9_3951=float2(0.0);
l9_3951=l9_3948+l9_3949;
float l9_3952=0.0;
float l9_3953=(*sc_set0.UserUniforms).patternRotateId01;
l9_3952=l9_3953;
float2 l9_3954=float2(0.0);
float2 l9_3955=l9_3951;
float l9_3956=l9_3952;
float2 l9_3957=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3958=sin(radians(l9_3956));
float l9_3959=cos(radians(l9_3956));
float2 l9_3960=l9_3955-l9_3957;
l9_3960=float2(dot(float2(l9_3959,l9_3958),l9_3960),dot(float2(-l9_3958,l9_3959),l9_3960))+l9_3957;
l9_3954=l9_3960;
float4 l9_3961=float4(0.0);
int l9_3962;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3963=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3963=0;
}
else
{
l9_3963=in.varStereoViewID;
}
int l9_3964=l9_3963;
l9_3962=1-l9_3964;
}
else
{
int l9_3965=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3965=0;
}
else
{
l9_3965=in.varStereoViewID;
}
int l9_3966=l9_3965;
l9_3962=l9_3966;
}
int l9_3967=l9_3962;
int l9_3968=patternTextureId01Layout_tmp;
int l9_3969=l9_3967;
float2 l9_3970=l9_3954;
bool l9_3971=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3972=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3973=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3974=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3975=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3976=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3977=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3978=0.0;
bool l9_3979=l9_3976&&(!l9_3974);
float l9_3980=1.0;
float l9_3981=l9_3970.x;
int l9_3982=l9_3973.x;
if (l9_3982==1)
{
l9_3981=fract(l9_3981);
}
else
{
if (l9_3982==2)
{
float l9_3983=fract(l9_3981);
float l9_3984=l9_3981-l9_3983;
float l9_3985=step(0.25,fract(l9_3984*0.5));
l9_3981=mix(l9_3983,1.0-l9_3983,fast::clamp(l9_3985,0.0,1.0));
}
}
l9_3970.x=l9_3981;
float l9_3986=l9_3970.y;
int l9_3987=l9_3973.y;
if (l9_3987==1)
{
l9_3986=fract(l9_3986);
}
else
{
if (l9_3987==2)
{
float l9_3988=fract(l9_3986);
float l9_3989=l9_3986-l9_3988;
float l9_3990=step(0.25,fract(l9_3989*0.5));
l9_3986=mix(l9_3988,1.0-l9_3988,fast::clamp(l9_3990,0.0,1.0));
}
}
l9_3970.y=l9_3986;
if (l9_3974)
{
bool l9_3991=l9_3976;
bool l9_3992;
if (l9_3991)
{
l9_3992=l9_3973.x==3;
}
else
{
l9_3992=l9_3991;
}
float l9_3993=l9_3970.x;
float l9_3994=l9_3975.x;
float l9_3995=l9_3975.z;
bool l9_3996=l9_3992;
float l9_3997=l9_3980;
float l9_3998=fast::clamp(l9_3993,l9_3994,l9_3995);
float l9_3999=step(abs(l9_3993-l9_3998),9.9999997e-06);
l9_3997*=(l9_3999+((1.0-float(l9_3996))*(1.0-l9_3999)));
l9_3993=l9_3998;
l9_3970.x=l9_3993;
l9_3980=l9_3997;
bool l9_4000=l9_3976;
bool l9_4001;
if (l9_4000)
{
l9_4001=l9_3973.y==3;
}
else
{
l9_4001=l9_4000;
}
float l9_4002=l9_3970.y;
float l9_4003=l9_3975.y;
float l9_4004=l9_3975.w;
bool l9_4005=l9_4001;
float l9_4006=l9_3980;
float l9_4007=fast::clamp(l9_4002,l9_4003,l9_4004);
float l9_4008=step(abs(l9_4002-l9_4007),9.9999997e-06);
l9_4006*=(l9_4008+((1.0-float(l9_4005))*(1.0-l9_4008)));
l9_4002=l9_4007;
l9_3970.y=l9_4002;
l9_3980=l9_4006;
}
float2 l9_4009=l9_3970;
bool l9_4010=l9_3971;
float3x3 l9_4011=l9_3972;
if (l9_4010)
{
l9_4009=float2((l9_4011*float3(l9_4009,1.0)).xy);
}
float2 l9_4012=l9_4009;
l9_3970=l9_4012;
float l9_4013=l9_3970.x;
int l9_4014=l9_3973.x;
bool l9_4015=l9_3979;
float l9_4016=l9_3980;
if ((l9_4014==0)||(l9_4014==3))
{
float l9_4017=l9_4013;
float l9_4018=0.0;
float l9_4019=1.0;
bool l9_4020=l9_4015;
float l9_4021=l9_4016;
float l9_4022=fast::clamp(l9_4017,l9_4018,l9_4019);
float l9_4023=step(abs(l9_4017-l9_4022),9.9999997e-06);
l9_4021*=(l9_4023+((1.0-float(l9_4020))*(1.0-l9_4023)));
l9_4017=l9_4022;
l9_4013=l9_4017;
l9_4016=l9_4021;
}
l9_3970.x=l9_4013;
l9_3980=l9_4016;
float l9_4024=l9_3970.y;
int l9_4025=l9_3973.y;
bool l9_4026=l9_3979;
float l9_4027=l9_3980;
if ((l9_4025==0)||(l9_4025==3))
{
float l9_4028=l9_4024;
float l9_4029=0.0;
float l9_4030=1.0;
bool l9_4031=l9_4026;
float l9_4032=l9_4027;
float l9_4033=fast::clamp(l9_4028,l9_4029,l9_4030);
float l9_4034=step(abs(l9_4028-l9_4033),9.9999997e-06);
l9_4032*=(l9_4034+((1.0-float(l9_4031))*(1.0-l9_4034)));
l9_4028=l9_4033;
l9_4024=l9_4028;
l9_4027=l9_4032;
}
l9_3970.y=l9_4024;
l9_3980=l9_4027;
float2 l9_4035=l9_3970;
int l9_4036=l9_3968;
int l9_4037=l9_3969;
float l9_4038=l9_3978;
float2 l9_4039=l9_4035;
int l9_4040=l9_4036;
int l9_4041=l9_4037;
float3 l9_4042=float3(0.0);
if (l9_4040==0)
{
l9_4042=float3(l9_4039,0.0);
}
else
{
if (l9_4040==1)
{
l9_4042=float3(l9_4039.x,(l9_4039.y*0.5)+(0.5-(float(l9_4041)*0.5)),0.0);
}
else
{
l9_4042=float3(l9_4039,float(l9_4041));
}
}
float3 l9_4043=l9_4042;
float3 l9_4044=l9_4043;
float4 l9_4045=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4044.xy,bias(l9_4038));
float4 l9_4046=l9_4045;
if (l9_3976)
{
l9_4046=mix(l9_3977,l9_4046,float4(l9_3980));
}
float4 l9_4047=l9_4046;
l9_3961=l9_4047;
l9_3939=l9_3961;
l9_3944=l9_3939;
}
else
{
float2 l9_4048=float2(0.0);
l9_4048=l9_3941.Surface_UVCoord0;
float2 l9_4049=float2(0.0);
float2 l9_4050=(*sc_set0.UserUniforms).patternScaleId01;
l9_4049=l9_4050;
float2 l9_4051=float2(0.0);
l9_4051=((l9_4048-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4049)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4052=float2(0.0);
float2 l9_4053=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4052=l9_4053;
float2 l9_4054=float2(0.0);
l9_4054=l9_4051+l9_4052;
float l9_4055=0.0;
float l9_4056=(*sc_set0.UserUniforms).patternRotateId01;
l9_4055=l9_4056;
float2 l9_4057=float2(0.0);
float2 l9_4058=l9_4054;
float l9_4059=l9_4055;
float2 l9_4060=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4061=sin(radians(l9_4059));
float l9_4062=cos(radians(l9_4059));
float2 l9_4063=l9_4058-l9_4060;
l9_4063=float2(dot(float2(l9_4062,l9_4061),l9_4063),dot(float2(-l9_4061,l9_4062),l9_4063))+l9_4060;
l9_4057=l9_4063;
float4 l9_4064=float4(0.0);
int l9_4065;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4066=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4066=0;
}
else
{
l9_4066=in.varStereoViewID;
}
int l9_4067=l9_4066;
l9_4065=1-l9_4067;
}
else
{
int l9_4068=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4068=0;
}
else
{
l9_4068=in.varStereoViewID;
}
int l9_4069=l9_4068;
l9_4065=l9_4069;
}
int l9_4070=l9_4065;
int l9_4071=patternTextureId01Layout_tmp;
int l9_4072=l9_4070;
float2 l9_4073=l9_4057;
bool l9_4074=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4075=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4076=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4077=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4078=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4079=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4080=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4081=0.0;
bool l9_4082=l9_4079&&(!l9_4077);
float l9_4083=1.0;
float l9_4084=l9_4073.x;
int l9_4085=l9_4076.x;
if (l9_4085==1)
{
l9_4084=fract(l9_4084);
}
else
{
if (l9_4085==2)
{
float l9_4086=fract(l9_4084);
float l9_4087=l9_4084-l9_4086;
float l9_4088=step(0.25,fract(l9_4087*0.5));
l9_4084=mix(l9_4086,1.0-l9_4086,fast::clamp(l9_4088,0.0,1.0));
}
}
l9_4073.x=l9_4084;
float l9_4089=l9_4073.y;
int l9_4090=l9_4076.y;
if (l9_4090==1)
{
l9_4089=fract(l9_4089);
}
else
{
if (l9_4090==2)
{
float l9_4091=fract(l9_4089);
float l9_4092=l9_4089-l9_4091;
float l9_4093=step(0.25,fract(l9_4092*0.5));
l9_4089=mix(l9_4091,1.0-l9_4091,fast::clamp(l9_4093,0.0,1.0));
}
}
l9_4073.y=l9_4089;
if (l9_4077)
{
bool l9_4094=l9_4079;
bool l9_4095;
if (l9_4094)
{
l9_4095=l9_4076.x==3;
}
else
{
l9_4095=l9_4094;
}
float l9_4096=l9_4073.x;
float l9_4097=l9_4078.x;
float l9_4098=l9_4078.z;
bool l9_4099=l9_4095;
float l9_4100=l9_4083;
float l9_4101=fast::clamp(l9_4096,l9_4097,l9_4098);
float l9_4102=step(abs(l9_4096-l9_4101),9.9999997e-06);
l9_4100*=(l9_4102+((1.0-float(l9_4099))*(1.0-l9_4102)));
l9_4096=l9_4101;
l9_4073.x=l9_4096;
l9_4083=l9_4100;
bool l9_4103=l9_4079;
bool l9_4104;
if (l9_4103)
{
l9_4104=l9_4076.y==3;
}
else
{
l9_4104=l9_4103;
}
float l9_4105=l9_4073.y;
float l9_4106=l9_4078.y;
float l9_4107=l9_4078.w;
bool l9_4108=l9_4104;
float l9_4109=l9_4083;
float l9_4110=fast::clamp(l9_4105,l9_4106,l9_4107);
float l9_4111=step(abs(l9_4105-l9_4110),9.9999997e-06);
l9_4109*=(l9_4111+((1.0-float(l9_4108))*(1.0-l9_4111)));
l9_4105=l9_4110;
l9_4073.y=l9_4105;
l9_4083=l9_4109;
}
float2 l9_4112=l9_4073;
bool l9_4113=l9_4074;
float3x3 l9_4114=l9_4075;
if (l9_4113)
{
l9_4112=float2((l9_4114*float3(l9_4112,1.0)).xy);
}
float2 l9_4115=l9_4112;
l9_4073=l9_4115;
float l9_4116=l9_4073.x;
int l9_4117=l9_4076.x;
bool l9_4118=l9_4082;
float l9_4119=l9_4083;
if ((l9_4117==0)||(l9_4117==3))
{
float l9_4120=l9_4116;
float l9_4121=0.0;
float l9_4122=1.0;
bool l9_4123=l9_4118;
float l9_4124=l9_4119;
float l9_4125=fast::clamp(l9_4120,l9_4121,l9_4122);
float l9_4126=step(abs(l9_4120-l9_4125),9.9999997e-06);
l9_4124*=(l9_4126+((1.0-float(l9_4123))*(1.0-l9_4126)));
l9_4120=l9_4125;
l9_4116=l9_4120;
l9_4119=l9_4124;
}
l9_4073.x=l9_4116;
l9_4083=l9_4119;
float l9_4127=l9_4073.y;
int l9_4128=l9_4076.y;
bool l9_4129=l9_4082;
float l9_4130=l9_4083;
if ((l9_4128==0)||(l9_4128==3))
{
float l9_4131=l9_4127;
float l9_4132=0.0;
float l9_4133=1.0;
bool l9_4134=l9_4129;
float l9_4135=l9_4130;
float l9_4136=fast::clamp(l9_4131,l9_4132,l9_4133);
float l9_4137=step(abs(l9_4131-l9_4136),9.9999997e-06);
l9_4135*=(l9_4137+((1.0-float(l9_4134))*(1.0-l9_4137)));
l9_4131=l9_4136;
l9_4127=l9_4131;
l9_4130=l9_4135;
}
l9_4073.y=l9_4127;
l9_4083=l9_4130;
float2 l9_4138=l9_4073;
int l9_4139=l9_4071;
int l9_4140=l9_4072;
float l9_4141=l9_4081;
float2 l9_4142=l9_4138;
int l9_4143=l9_4139;
int l9_4144=l9_4140;
float3 l9_4145=float3(0.0);
if (l9_4143==0)
{
l9_4145=float3(l9_4142,0.0);
}
else
{
if (l9_4143==1)
{
l9_4145=float3(l9_4142.x,(l9_4142.y*0.5)+(0.5-(float(l9_4144)*0.5)),0.0);
}
else
{
l9_4145=float3(l9_4142,float(l9_4144));
}
}
float3 l9_4146=l9_4145;
float3 l9_4147=l9_4146;
float4 l9_4148=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4147.xy,bias(l9_4141));
float4 l9_4149=l9_4148;
if (l9_4079)
{
l9_4149=mix(l9_4080,l9_4149,float4(l9_4083));
}
float4 l9_4150=l9_4149;
l9_4064=l9_4150;
float l9_4151=0.0;
float3 l9_4152=l9_4064.xyz;
float l9_4153=l9_4152.x;
l9_4151=l9_4153;
l9_3940=float4(l9_4151);
l9_3944=l9_3940;
}
l9_3937=l9_3944;
float4 l9_4154=float4(0.0);
l9_4154=l9_3935*l9_3937;
l9_3929=l9_4154;
l9_3934=l9_3929;
}
else
{
float4 l9_4155=float4(0.0);
float4 l9_4156=(*sc_set0.UserUniforms).colorId01;
l9_4155=l9_4156;
float2 l9_4157=float2(0.0);
l9_4157=l9_3931.Surface_UVCoord0;
float4 l9_4158=float4(0.0);
int l9_4159;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4160=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4160=0;
}
else
{
l9_4160=in.varStereoViewID;
}
int l9_4161=l9_4160;
l9_4159=1-l9_4161;
}
else
{
int l9_4162=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4162=0;
}
else
{
l9_4162=in.varStereoViewID;
}
int l9_4163=l9_4162;
l9_4159=l9_4163;
}
int l9_4164=l9_4159;
int l9_4165=greyMaskIdLayout_tmp;
int l9_4166=l9_4164;
float2 l9_4167=l9_4157;
bool l9_4168=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4169=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4170=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4171=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4172=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4173=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4174=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4175=0.0;
bool l9_4176=l9_4173&&(!l9_4171);
float l9_4177=1.0;
float l9_4178=l9_4167.x;
int l9_4179=l9_4170.x;
if (l9_4179==1)
{
l9_4178=fract(l9_4178);
}
else
{
if (l9_4179==2)
{
float l9_4180=fract(l9_4178);
float l9_4181=l9_4178-l9_4180;
float l9_4182=step(0.25,fract(l9_4181*0.5));
l9_4178=mix(l9_4180,1.0-l9_4180,fast::clamp(l9_4182,0.0,1.0));
}
}
l9_4167.x=l9_4178;
float l9_4183=l9_4167.y;
int l9_4184=l9_4170.y;
if (l9_4184==1)
{
l9_4183=fract(l9_4183);
}
else
{
if (l9_4184==2)
{
float l9_4185=fract(l9_4183);
float l9_4186=l9_4183-l9_4185;
float l9_4187=step(0.25,fract(l9_4186*0.5));
l9_4183=mix(l9_4185,1.0-l9_4185,fast::clamp(l9_4187,0.0,1.0));
}
}
l9_4167.y=l9_4183;
if (l9_4171)
{
bool l9_4188=l9_4173;
bool l9_4189;
if (l9_4188)
{
l9_4189=l9_4170.x==3;
}
else
{
l9_4189=l9_4188;
}
float l9_4190=l9_4167.x;
float l9_4191=l9_4172.x;
float l9_4192=l9_4172.z;
bool l9_4193=l9_4189;
float l9_4194=l9_4177;
float l9_4195=fast::clamp(l9_4190,l9_4191,l9_4192);
float l9_4196=step(abs(l9_4190-l9_4195),9.9999997e-06);
l9_4194*=(l9_4196+((1.0-float(l9_4193))*(1.0-l9_4196)));
l9_4190=l9_4195;
l9_4167.x=l9_4190;
l9_4177=l9_4194;
bool l9_4197=l9_4173;
bool l9_4198;
if (l9_4197)
{
l9_4198=l9_4170.y==3;
}
else
{
l9_4198=l9_4197;
}
float l9_4199=l9_4167.y;
float l9_4200=l9_4172.y;
float l9_4201=l9_4172.w;
bool l9_4202=l9_4198;
float l9_4203=l9_4177;
float l9_4204=fast::clamp(l9_4199,l9_4200,l9_4201);
float l9_4205=step(abs(l9_4199-l9_4204),9.9999997e-06);
l9_4203*=(l9_4205+((1.0-float(l9_4202))*(1.0-l9_4205)));
l9_4199=l9_4204;
l9_4167.y=l9_4199;
l9_4177=l9_4203;
}
float2 l9_4206=l9_4167;
bool l9_4207=l9_4168;
float3x3 l9_4208=l9_4169;
if (l9_4207)
{
l9_4206=float2((l9_4208*float3(l9_4206,1.0)).xy);
}
float2 l9_4209=l9_4206;
l9_4167=l9_4209;
float l9_4210=l9_4167.x;
int l9_4211=l9_4170.x;
bool l9_4212=l9_4176;
float l9_4213=l9_4177;
if ((l9_4211==0)||(l9_4211==3))
{
float l9_4214=l9_4210;
float l9_4215=0.0;
float l9_4216=1.0;
bool l9_4217=l9_4212;
float l9_4218=l9_4213;
float l9_4219=fast::clamp(l9_4214,l9_4215,l9_4216);
float l9_4220=step(abs(l9_4214-l9_4219),9.9999997e-06);
l9_4218*=(l9_4220+((1.0-float(l9_4217))*(1.0-l9_4220)));
l9_4214=l9_4219;
l9_4210=l9_4214;
l9_4213=l9_4218;
}
l9_4167.x=l9_4210;
l9_4177=l9_4213;
float l9_4221=l9_4167.y;
int l9_4222=l9_4170.y;
bool l9_4223=l9_4176;
float l9_4224=l9_4177;
if ((l9_4222==0)||(l9_4222==3))
{
float l9_4225=l9_4221;
float l9_4226=0.0;
float l9_4227=1.0;
bool l9_4228=l9_4223;
float l9_4229=l9_4224;
float l9_4230=fast::clamp(l9_4225,l9_4226,l9_4227);
float l9_4231=step(abs(l9_4225-l9_4230),9.9999997e-06);
l9_4229*=(l9_4231+((1.0-float(l9_4228))*(1.0-l9_4231)));
l9_4225=l9_4230;
l9_4221=l9_4225;
l9_4224=l9_4229;
}
l9_4167.y=l9_4221;
l9_4177=l9_4224;
float2 l9_4232=l9_4167;
int l9_4233=l9_4165;
int l9_4234=l9_4166;
float l9_4235=l9_4175;
float2 l9_4236=l9_4232;
int l9_4237=l9_4233;
int l9_4238=l9_4234;
float3 l9_4239=float3(0.0);
if (l9_4237==0)
{
l9_4239=float3(l9_4236,0.0);
}
else
{
if (l9_4237==1)
{
l9_4239=float3(l9_4236.x,(l9_4236.y*0.5)+(0.5-(float(l9_4238)*0.5)),0.0);
}
else
{
l9_4239=float3(l9_4236,float(l9_4238));
}
}
float3 l9_4240=l9_4239;
float3 l9_4241=l9_4240;
float4 l9_4242=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4241.xy,bias(l9_4235));
float4 l9_4243=l9_4242;
if (l9_4173)
{
l9_4243=mix(l9_4174,l9_4243,float4(l9_4177));
}
float4 l9_4244=l9_4243;
l9_4158=l9_4244;
float l9_4245=0.0;
l9_4245=l9_4158.x;
float l9_4246=0.0;
l9_4246=step(l9_4245,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4247=float4(0.0);
l9_4247=l9_4155*float4(l9_4246);
l9_3930=l9_4247;
l9_3934=l9_3930;
}
l9_3927=l9_3934;
float2 l9_4248=float2(0.0);
l9_4248=l9_3913.Surface_UVCoord0;
float4 l9_4249=float4(0.0);
int l9_4250;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4251=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4251=0;
}
else
{
l9_4251=in.varStereoViewID;
}
int l9_4252=l9_4251;
l9_4250=1-l9_4252;
}
else
{
int l9_4253=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4253=0;
}
else
{
l9_4253=in.varStereoViewID;
}
int l9_4254=l9_4253;
l9_4250=l9_4254;
}
int l9_4255=l9_4250;
int l9_4256=greyMaskIdLayout_tmp;
int l9_4257=l9_4255;
float2 l9_4258=l9_4248;
bool l9_4259=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4260=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4261=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4262=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4263=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4264=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4265=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4266=0.0;
bool l9_4267=l9_4264&&(!l9_4262);
float l9_4268=1.0;
float l9_4269=l9_4258.x;
int l9_4270=l9_4261.x;
if (l9_4270==1)
{
l9_4269=fract(l9_4269);
}
else
{
if (l9_4270==2)
{
float l9_4271=fract(l9_4269);
float l9_4272=l9_4269-l9_4271;
float l9_4273=step(0.25,fract(l9_4272*0.5));
l9_4269=mix(l9_4271,1.0-l9_4271,fast::clamp(l9_4273,0.0,1.0));
}
}
l9_4258.x=l9_4269;
float l9_4274=l9_4258.y;
int l9_4275=l9_4261.y;
if (l9_4275==1)
{
l9_4274=fract(l9_4274);
}
else
{
if (l9_4275==2)
{
float l9_4276=fract(l9_4274);
float l9_4277=l9_4274-l9_4276;
float l9_4278=step(0.25,fract(l9_4277*0.5));
l9_4274=mix(l9_4276,1.0-l9_4276,fast::clamp(l9_4278,0.0,1.0));
}
}
l9_4258.y=l9_4274;
if (l9_4262)
{
bool l9_4279=l9_4264;
bool l9_4280;
if (l9_4279)
{
l9_4280=l9_4261.x==3;
}
else
{
l9_4280=l9_4279;
}
float l9_4281=l9_4258.x;
float l9_4282=l9_4263.x;
float l9_4283=l9_4263.z;
bool l9_4284=l9_4280;
float l9_4285=l9_4268;
float l9_4286=fast::clamp(l9_4281,l9_4282,l9_4283);
float l9_4287=step(abs(l9_4281-l9_4286),9.9999997e-06);
l9_4285*=(l9_4287+((1.0-float(l9_4284))*(1.0-l9_4287)));
l9_4281=l9_4286;
l9_4258.x=l9_4281;
l9_4268=l9_4285;
bool l9_4288=l9_4264;
bool l9_4289;
if (l9_4288)
{
l9_4289=l9_4261.y==3;
}
else
{
l9_4289=l9_4288;
}
float l9_4290=l9_4258.y;
float l9_4291=l9_4263.y;
float l9_4292=l9_4263.w;
bool l9_4293=l9_4289;
float l9_4294=l9_4268;
float l9_4295=fast::clamp(l9_4290,l9_4291,l9_4292);
float l9_4296=step(abs(l9_4290-l9_4295),9.9999997e-06);
l9_4294*=(l9_4296+((1.0-float(l9_4293))*(1.0-l9_4296)));
l9_4290=l9_4295;
l9_4258.y=l9_4290;
l9_4268=l9_4294;
}
float2 l9_4297=l9_4258;
bool l9_4298=l9_4259;
float3x3 l9_4299=l9_4260;
if (l9_4298)
{
l9_4297=float2((l9_4299*float3(l9_4297,1.0)).xy);
}
float2 l9_4300=l9_4297;
l9_4258=l9_4300;
float l9_4301=l9_4258.x;
int l9_4302=l9_4261.x;
bool l9_4303=l9_4267;
float l9_4304=l9_4268;
if ((l9_4302==0)||(l9_4302==3))
{
float l9_4305=l9_4301;
float l9_4306=0.0;
float l9_4307=1.0;
bool l9_4308=l9_4303;
float l9_4309=l9_4304;
float l9_4310=fast::clamp(l9_4305,l9_4306,l9_4307);
float l9_4311=step(abs(l9_4305-l9_4310),9.9999997e-06);
l9_4309*=(l9_4311+((1.0-float(l9_4308))*(1.0-l9_4311)));
l9_4305=l9_4310;
l9_4301=l9_4305;
l9_4304=l9_4309;
}
l9_4258.x=l9_4301;
l9_4268=l9_4304;
float l9_4312=l9_4258.y;
int l9_4313=l9_4261.y;
bool l9_4314=l9_4267;
float l9_4315=l9_4268;
if ((l9_4313==0)||(l9_4313==3))
{
float l9_4316=l9_4312;
float l9_4317=0.0;
float l9_4318=1.0;
bool l9_4319=l9_4314;
float l9_4320=l9_4315;
float l9_4321=fast::clamp(l9_4316,l9_4317,l9_4318);
float l9_4322=step(abs(l9_4316-l9_4321),9.9999997e-06);
l9_4320*=(l9_4322+((1.0-float(l9_4319))*(1.0-l9_4322)));
l9_4316=l9_4321;
l9_4312=l9_4316;
l9_4315=l9_4320;
}
l9_4258.y=l9_4312;
l9_4268=l9_4315;
float2 l9_4323=l9_4258;
int l9_4324=l9_4256;
int l9_4325=l9_4257;
float l9_4326=l9_4266;
float2 l9_4327=l9_4323;
int l9_4328=l9_4324;
int l9_4329=l9_4325;
float3 l9_4330=float3(0.0);
if (l9_4328==0)
{
l9_4330=float3(l9_4327,0.0);
}
else
{
if (l9_4328==1)
{
l9_4330=float3(l9_4327.x,(l9_4327.y*0.5)+(0.5-(float(l9_4329)*0.5)),0.0);
}
else
{
l9_4330=float3(l9_4327,float(l9_4329));
}
}
float3 l9_4331=l9_4330;
float3 l9_4332=l9_4331;
float4 l9_4333=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4332.xy,bias(l9_4326));
float4 l9_4334=l9_4333;
if (l9_4264)
{
l9_4334=mix(l9_4265,l9_4334,float4(l9_4268));
}
float4 l9_4335=l9_4334;
l9_4249=l9_4335;
float l9_4336=0.0;
l9_4336=l9_4249.x;
float l9_4337=0.0;
l9_4337=step(l9_4336,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4338=float4(0.0);
l9_4338=l9_3927*float4(l9_4337);
float4 l9_4339=float4(0.0);
float4 l9_4340=(*sc_set0.UserUniforms).colorId01;
l9_4339=l9_4340;
float4 l9_4341=float4(0.0);
l9_4341=l9_4339*float4(l9_4337);
float4 l9_4342=float4(0.0);
float4 l9_4343=l9_4338;
float4 l9_4344=l9_4341;
float4 l9_4345=l9_4343;
float4 l9_4346=l9_4344;
float3 l9_4347=l9_4345.xyz*l9_4345.w;
l9_4345=float4(l9_4347.x,l9_4347.y,l9_4347.z,l9_4345.w);
float4 l9_4348=l9_4345+(l9_4346*(1.0-l9_4345.w));
l9_4342=l9_4348;
float4 l9_4349=float4(0.0);
l9_4349=float4(l9_3921)*l9_4342;
float4 l9_4350=float4(0.0);
l9_4350=l9_4349+l9_4342;
l9_3911=l9_4350;
l9_3916=l9_3911;
}
else
{
float4 l9_4351=float4(0.0);
float l9_4352=0.0;
float4 l9_4353=float4(0.0);
float4 l9_4354=float4(0.0);
ssGlobals l9_4355=l9_3913;
float l9_4356=0.0;
float l9_4357=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_4356=l9_4357;
l9_4352=l9_4356;
float4 l9_4358;
if ((l9_4352*1.0)!=0.0)
{
float4 l9_4359=float4(0.0);
float4 l9_4360=(*sc_set0.UserUniforms).patternColorId01;
l9_4359=l9_4360;
float4 l9_4361=float4(0.0);
float l9_4362=0.0;
float4 l9_4363=float4(0.0);
float4 l9_4364=float4(0.0);
ssGlobals l9_4365=l9_4355;
float l9_4366=0.0;
float l9_4367=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_4366=l9_4367;
l9_4362=l9_4366;
float4 l9_4368;
if ((l9_4362*1.0)!=0.0)
{
float2 l9_4369=float2(0.0);
l9_4369=l9_4365.Surface_UVCoord0;
float2 l9_4370=float2(0.0);
float2 l9_4371=(*sc_set0.UserUniforms).patternScaleId01;
l9_4370=l9_4371;
float2 l9_4372=float2(0.0);
l9_4372=((l9_4369-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4370)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4373=float2(0.0);
float2 l9_4374=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4373=l9_4374;
float2 l9_4375=float2(0.0);
l9_4375=l9_4372+l9_4373;
float l9_4376=0.0;
float l9_4377=(*sc_set0.UserUniforms).patternRotateId01;
l9_4376=l9_4377;
float2 l9_4378=float2(0.0);
float2 l9_4379=l9_4375;
float l9_4380=l9_4376;
float2 l9_4381=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4382=sin(radians(l9_4380));
float l9_4383=cos(radians(l9_4380));
float2 l9_4384=l9_4379-l9_4381;
l9_4384=float2(dot(float2(l9_4383,l9_4382),l9_4384),dot(float2(-l9_4382,l9_4383),l9_4384))+l9_4381;
l9_4378=l9_4384;
float4 l9_4385=float4(0.0);
int l9_4386;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4387=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4387=0;
}
else
{
l9_4387=in.varStereoViewID;
}
int l9_4388=l9_4387;
l9_4386=1-l9_4388;
}
else
{
int l9_4389=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4389=0;
}
else
{
l9_4389=in.varStereoViewID;
}
int l9_4390=l9_4389;
l9_4386=l9_4390;
}
int l9_4391=l9_4386;
int l9_4392=patternTextureId01Layout_tmp;
int l9_4393=l9_4391;
float2 l9_4394=l9_4378;
bool l9_4395=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4396=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4397=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4398=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4399=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4400=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4401=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4402=0.0;
bool l9_4403=l9_4400&&(!l9_4398);
float l9_4404=1.0;
float l9_4405=l9_4394.x;
int l9_4406=l9_4397.x;
if (l9_4406==1)
{
l9_4405=fract(l9_4405);
}
else
{
if (l9_4406==2)
{
float l9_4407=fract(l9_4405);
float l9_4408=l9_4405-l9_4407;
float l9_4409=step(0.25,fract(l9_4408*0.5));
l9_4405=mix(l9_4407,1.0-l9_4407,fast::clamp(l9_4409,0.0,1.0));
}
}
l9_4394.x=l9_4405;
float l9_4410=l9_4394.y;
int l9_4411=l9_4397.y;
if (l9_4411==1)
{
l9_4410=fract(l9_4410);
}
else
{
if (l9_4411==2)
{
float l9_4412=fract(l9_4410);
float l9_4413=l9_4410-l9_4412;
float l9_4414=step(0.25,fract(l9_4413*0.5));
l9_4410=mix(l9_4412,1.0-l9_4412,fast::clamp(l9_4414,0.0,1.0));
}
}
l9_4394.y=l9_4410;
if (l9_4398)
{
bool l9_4415=l9_4400;
bool l9_4416;
if (l9_4415)
{
l9_4416=l9_4397.x==3;
}
else
{
l9_4416=l9_4415;
}
float l9_4417=l9_4394.x;
float l9_4418=l9_4399.x;
float l9_4419=l9_4399.z;
bool l9_4420=l9_4416;
float l9_4421=l9_4404;
float l9_4422=fast::clamp(l9_4417,l9_4418,l9_4419);
float l9_4423=step(abs(l9_4417-l9_4422),9.9999997e-06);
l9_4421*=(l9_4423+((1.0-float(l9_4420))*(1.0-l9_4423)));
l9_4417=l9_4422;
l9_4394.x=l9_4417;
l9_4404=l9_4421;
bool l9_4424=l9_4400;
bool l9_4425;
if (l9_4424)
{
l9_4425=l9_4397.y==3;
}
else
{
l9_4425=l9_4424;
}
float l9_4426=l9_4394.y;
float l9_4427=l9_4399.y;
float l9_4428=l9_4399.w;
bool l9_4429=l9_4425;
float l9_4430=l9_4404;
float l9_4431=fast::clamp(l9_4426,l9_4427,l9_4428);
float l9_4432=step(abs(l9_4426-l9_4431),9.9999997e-06);
l9_4430*=(l9_4432+((1.0-float(l9_4429))*(1.0-l9_4432)));
l9_4426=l9_4431;
l9_4394.y=l9_4426;
l9_4404=l9_4430;
}
float2 l9_4433=l9_4394;
bool l9_4434=l9_4395;
float3x3 l9_4435=l9_4396;
if (l9_4434)
{
l9_4433=float2((l9_4435*float3(l9_4433,1.0)).xy);
}
float2 l9_4436=l9_4433;
l9_4394=l9_4436;
float l9_4437=l9_4394.x;
int l9_4438=l9_4397.x;
bool l9_4439=l9_4403;
float l9_4440=l9_4404;
if ((l9_4438==0)||(l9_4438==3))
{
float l9_4441=l9_4437;
float l9_4442=0.0;
float l9_4443=1.0;
bool l9_4444=l9_4439;
float l9_4445=l9_4440;
float l9_4446=fast::clamp(l9_4441,l9_4442,l9_4443);
float l9_4447=step(abs(l9_4441-l9_4446),9.9999997e-06);
l9_4445*=(l9_4447+((1.0-float(l9_4444))*(1.0-l9_4447)));
l9_4441=l9_4446;
l9_4437=l9_4441;
l9_4440=l9_4445;
}
l9_4394.x=l9_4437;
l9_4404=l9_4440;
float l9_4448=l9_4394.y;
int l9_4449=l9_4397.y;
bool l9_4450=l9_4403;
float l9_4451=l9_4404;
if ((l9_4449==0)||(l9_4449==3))
{
float l9_4452=l9_4448;
float l9_4453=0.0;
float l9_4454=1.0;
bool l9_4455=l9_4450;
float l9_4456=l9_4451;
float l9_4457=fast::clamp(l9_4452,l9_4453,l9_4454);
float l9_4458=step(abs(l9_4452-l9_4457),9.9999997e-06);
l9_4456*=(l9_4458+((1.0-float(l9_4455))*(1.0-l9_4458)));
l9_4452=l9_4457;
l9_4448=l9_4452;
l9_4451=l9_4456;
}
l9_4394.y=l9_4448;
l9_4404=l9_4451;
float2 l9_4459=l9_4394;
int l9_4460=l9_4392;
int l9_4461=l9_4393;
float l9_4462=l9_4402;
float2 l9_4463=l9_4459;
int l9_4464=l9_4460;
int l9_4465=l9_4461;
float3 l9_4466=float3(0.0);
if (l9_4464==0)
{
l9_4466=float3(l9_4463,0.0);
}
else
{
if (l9_4464==1)
{
l9_4466=float3(l9_4463.x,(l9_4463.y*0.5)+(0.5-(float(l9_4465)*0.5)),0.0);
}
else
{
l9_4466=float3(l9_4463,float(l9_4465));
}
}
float3 l9_4467=l9_4466;
float3 l9_4468=l9_4467;
float4 l9_4469=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4468.xy,bias(l9_4462));
float4 l9_4470=l9_4469;
if (l9_4400)
{
l9_4470=mix(l9_4401,l9_4470,float4(l9_4404));
}
float4 l9_4471=l9_4470;
l9_4385=l9_4471;
l9_4363=l9_4385;
l9_4368=l9_4363;
}
else
{
float2 l9_4472=float2(0.0);
l9_4472=l9_4365.Surface_UVCoord0;
float2 l9_4473=float2(0.0);
float2 l9_4474=(*sc_set0.UserUniforms).patternScaleId01;
l9_4473=l9_4474;
float2 l9_4475=float2(0.0);
l9_4475=((l9_4472-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4473)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4476=float2(0.0);
float2 l9_4477=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4476=l9_4477;
float2 l9_4478=float2(0.0);
l9_4478=l9_4475+l9_4476;
float l9_4479=0.0;
float l9_4480=(*sc_set0.UserUniforms).patternRotateId01;
l9_4479=l9_4480;
float2 l9_4481=float2(0.0);
float2 l9_4482=l9_4478;
float l9_4483=l9_4479;
float2 l9_4484=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4485=sin(radians(l9_4483));
float l9_4486=cos(radians(l9_4483));
float2 l9_4487=l9_4482-l9_4484;
l9_4487=float2(dot(float2(l9_4486,l9_4485),l9_4487),dot(float2(-l9_4485,l9_4486),l9_4487))+l9_4484;
l9_4481=l9_4487;
float4 l9_4488=float4(0.0);
int l9_4489;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4490=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4490=0;
}
else
{
l9_4490=in.varStereoViewID;
}
int l9_4491=l9_4490;
l9_4489=1-l9_4491;
}
else
{
int l9_4492=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4492=0;
}
else
{
l9_4492=in.varStereoViewID;
}
int l9_4493=l9_4492;
l9_4489=l9_4493;
}
int l9_4494=l9_4489;
int l9_4495=patternTextureId01Layout_tmp;
int l9_4496=l9_4494;
float2 l9_4497=l9_4481;
bool l9_4498=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4499=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4500=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4501=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4502=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4503=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4504=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4505=0.0;
bool l9_4506=l9_4503&&(!l9_4501);
float l9_4507=1.0;
float l9_4508=l9_4497.x;
int l9_4509=l9_4500.x;
if (l9_4509==1)
{
l9_4508=fract(l9_4508);
}
else
{
if (l9_4509==2)
{
float l9_4510=fract(l9_4508);
float l9_4511=l9_4508-l9_4510;
float l9_4512=step(0.25,fract(l9_4511*0.5));
l9_4508=mix(l9_4510,1.0-l9_4510,fast::clamp(l9_4512,0.0,1.0));
}
}
l9_4497.x=l9_4508;
float l9_4513=l9_4497.y;
int l9_4514=l9_4500.y;
if (l9_4514==1)
{
l9_4513=fract(l9_4513);
}
else
{
if (l9_4514==2)
{
float l9_4515=fract(l9_4513);
float l9_4516=l9_4513-l9_4515;
float l9_4517=step(0.25,fract(l9_4516*0.5));
l9_4513=mix(l9_4515,1.0-l9_4515,fast::clamp(l9_4517,0.0,1.0));
}
}
l9_4497.y=l9_4513;
if (l9_4501)
{
bool l9_4518=l9_4503;
bool l9_4519;
if (l9_4518)
{
l9_4519=l9_4500.x==3;
}
else
{
l9_4519=l9_4518;
}
float l9_4520=l9_4497.x;
float l9_4521=l9_4502.x;
float l9_4522=l9_4502.z;
bool l9_4523=l9_4519;
float l9_4524=l9_4507;
float l9_4525=fast::clamp(l9_4520,l9_4521,l9_4522);
float l9_4526=step(abs(l9_4520-l9_4525),9.9999997e-06);
l9_4524*=(l9_4526+((1.0-float(l9_4523))*(1.0-l9_4526)));
l9_4520=l9_4525;
l9_4497.x=l9_4520;
l9_4507=l9_4524;
bool l9_4527=l9_4503;
bool l9_4528;
if (l9_4527)
{
l9_4528=l9_4500.y==3;
}
else
{
l9_4528=l9_4527;
}
float l9_4529=l9_4497.y;
float l9_4530=l9_4502.y;
float l9_4531=l9_4502.w;
bool l9_4532=l9_4528;
float l9_4533=l9_4507;
float l9_4534=fast::clamp(l9_4529,l9_4530,l9_4531);
float l9_4535=step(abs(l9_4529-l9_4534),9.9999997e-06);
l9_4533*=(l9_4535+((1.0-float(l9_4532))*(1.0-l9_4535)));
l9_4529=l9_4534;
l9_4497.y=l9_4529;
l9_4507=l9_4533;
}
float2 l9_4536=l9_4497;
bool l9_4537=l9_4498;
float3x3 l9_4538=l9_4499;
if (l9_4537)
{
l9_4536=float2((l9_4538*float3(l9_4536,1.0)).xy);
}
float2 l9_4539=l9_4536;
l9_4497=l9_4539;
float l9_4540=l9_4497.x;
int l9_4541=l9_4500.x;
bool l9_4542=l9_4506;
float l9_4543=l9_4507;
if ((l9_4541==0)||(l9_4541==3))
{
float l9_4544=l9_4540;
float l9_4545=0.0;
float l9_4546=1.0;
bool l9_4547=l9_4542;
float l9_4548=l9_4543;
float l9_4549=fast::clamp(l9_4544,l9_4545,l9_4546);
float l9_4550=step(abs(l9_4544-l9_4549),9.9999997e-06);
l9_4548*=(l9_4550+((1.0-float(l9_4547))*(1.0-l9_4550)));
l9_4544=l9_4549;
l9_4540=l9_4544;
l9_4543=l9_4548;
}
l9_4497.x=l9_4540;
l9_4507=l9_4543;
float l9_4551=l9_4497.y;
int l9_4552=l9_4500.y;
bool l9_4553=l9_4506;
float l9_4554=l9_4507;
if ((l9_4552==0)||(l9_4552==3))
{
float l9_4555=l9_4551;
float l9_4556=0.0;
float l9_4557=1.0;
bool l9_4558=l9_4553;
float l9_4559=l9_4554;
float l9_4560=fast::clamp(l9_4555,l9_4556,l9_4557);
float l9_4561=step(abs(l9_4555-l9_4560),9.9999997e-06);
l9_4559*=(l9_4561+((1.0-float(l9_4558))*(1.0-l9_4561)));
l9_4555=l9_4560;
l9_4551=l9_4555;
l9_4554=l9_4559;
}
l9_4497.y=l9_4551;
l9_4507=l9_4554;
float2 l9_4562=l9_4497;
int l9_4563=l9_4495;
int l9_4564=l9_4496;
float l9_4565=l9_4505;
float2 l9_4566=l9_4562;
int l9_4567=l9_4563;
int l9_4568=l9_4564;
float3 l9_4569=float3(0.0);
if (l9_4567==0)
{
l9_4569=float3(l9_4566,0.0);
}
else
{
if (l9_4567==1)
{
l9_4569=float3(l9_4566.x,(l9_4566.y*0.5)+(0.5-(float(l9_4568)*0.5)),0.0);
}
else
{
l9_4569=float3(l9_4566,float(l9_4568));
}
}
float3 l9_4570=l9_4569;
float3 l9_4571=l9_4570;
float4 l9_4572=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4571.xy,bias(l9_4565));
float4 l9_4573=l9_4572;
if (l9_4503)
{
l9_4573=mix(l9_4504,l9_4573,float4(l9_4507));
}
float4 l9_4574=l9_4573;
l9_4488=l9_4574;
float l9_4575=0.0;
float3 l9_4576=l9_4488.xyz;
float l9_4577=l9_4576.x;
l9_4575=l9_4577;
l9_4364=float4(l9_4575);
l9_4368=l9_4364;
}
l9_4361=l9_4368;
float4 l9_4578=float4(0.0);
l9_4578=l9_4359*l9_4361;
l9_4353=l9_4578;
l9_4358=l9_4353;
}
else
{
float4 l9_4579=float4(0.0);
float4 l9_4580=(*sc_set0.UserUniforms).colorId01;
l9_4579=l9_4580;
float2 l9_4581=float2(0.0);
l9_4581=l9_4355.Surface_UVCoord0;
float4 l9_4582=float4(0.0);
int l9_4583;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4584=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4584=0;
}
else
{
l9_4584=in.varStereoViewID;
}
int l9_4585=l9_4584;
l9_4583=1-l9_4585;
}
else
{
int l9_4586=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4586=0;
}
else
{
l9_4586=in.varStereoViewID;
}
int l9_4587=l9_4586;
l9_4583=l9_4587;
}
int l9_4588=l9_4583;
int l9_4589=greyMaskIdLayout_tmp;
int l9_4590=l9_4588;
float2 l9_4591=l9_4581;
bool l9_4592=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4593=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4594=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4595=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4596=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4597=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4598=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4599=0.0;
bool l9_4600=l9_4597&&(!l9_4595);
float l9_4601=1.0;
float l9_4602=l9_4591.x;
int l9_4603=l9_4594.x;
if (l9_4603==1)
{
l9_4602=fract(l9_4602);
}
else
{
if (l9_4603==2)
{
float l9_4604=fract(l9_4602);
float l9_4605=l9_4602-l9_4604;
float l9_4606=step(0.25,fract(l9_4605*0.5));
l9_4602=mix(l9_4604,1.0-l9_4604,fast::clamp(l9_4606,0.0,1.0));
}
}
l9_4591.x=l9_4602;
float l9_4607=l9_4591.y;
int l9_4608=l9_4594.y;
if (l9_4608==1)
{
l9_4607=fract(l9_4607);
}
else
{
if (l9_4608==2)
{
float l9_4609=fract(l9_4607);
float l9_4610=l9_4607-l9_4609;
float l9_4611=step(0.25,fract(l9_4610*0.5));
l9_4607=mix(l9_4609,1.0-l9_4609,fast::clamp(l9_4611,0.0,1.0));
}
}
l9_4591.y=l9_4607;
if (l9_4595)
{
bool l9_4612=l9_4597;
bool l9_4613;
if (l9_4612)
{
l9_4613=l9_4594.x==3;
}
else
{
l9_4613=l9_4612;
}
float l9_4614=l9_4591.x;
float l9_4615=l9_4596.x;
float l9_4616=l9_4596.z;
bool l9_4617=l9_4613;
float l9_4618=l9_4601;
float l9_4619=fast::clamp(l9_4614,l9_4615,l9_4616);
float l9_4620=step(abs(l9_4614-l9_4619),9.9999997e-06);
l9_4618*=(l9_4620+((1.0-float(l9_4617))*(1.0-l9_4620)));
l9_4614=l9_4619;
l9_4591.x=l9_4614;
l9_4601=l9_4618;
bool l9_4621=l9_4597;
bool l9_4622;
if (l9_4621)
{
l9_4622=l9_4594.y==3;
}
else
{
l9_4622=l9_4621;
}
float l9_4623=l9_4591.y;
float l9_4624=l9_4596.y;
float l9_4625=l9_4596.w;
bool l9_4626=l9_4622;
float l9_4627=l9_4601;
float l9_4628=fast::clamp(l9_4623,l9_4624,l9_4625);
float l9_4629=step(abs(l9_4623-l9_4628),9.9999997e-06);
l9_4627*=(l9_4629+((1.0-float(l9_4626))*(1.0-l9_4629)));
l9_4623=l9_4628;
l9_4591.y=l9_4623;
l9_4601=l9_4627;
}
float2 l9_4630=l9_4591;
bool l9_4631=l9_4592;
float3x3 l9_4632=l9_4593;
if (l9_4631)
{
l9_4630=float2((l9_4632*float3(l9_4630,1.0)).xy);
}
float2 l9_4633=l9_4630;
l9_4591=l9_4633;
float l9_4634=l9_4591.x;
int l9_4635=l9_4594.x;
bool l9_4636=l9_4600;
float l9_4637=l9_4601;
if ((l9_4635==0)||(l9_4635==3))
{
float l9_4638=l9_4634;
float l9_4639=0.0;
float l9_4640=1.0;
bool l9_4641=l9_4636;
float l9_4642=l9_4637;
float l9_4643=fast::clamp(l9_4638,l9_4639,l9_4640);
float l9_4644=step(abs(l9_4638-l9_4643),9.9999997e-06);
l9_4642*=(l9_4644+((1.0-float(l9_4641))*(1.0-l9_4644)));
l9_4638=l9_4643;
l9_4634=l9_4638;
l9_4637=l9_4642;
}
l9_4591.x=l9_4634;
l9_4601=l9_4637;
float l9_4645=l9_4591.y;
int l9_4646=l9_4594.y;
bool l9_4647=l9_4600;
float l9_4648=l9_4601;
if ((l9_4646==0)||(l9_4646==3))
{
float l9_4649=l9_4645;
float l9_4650=0.0;
float l9_4651=1.0;
bool l9_4652=l9_4647;
float l9_4653=l9_4648;
float l9_4654=fast::clamp(l9_4649,l9_4650,l9_4651);
float l9_4655=step(abs(l9_4649-l9_4654),9.9999997e-06);
l9_4653*=(l9_4655+((1.0-float(l9_4652))*(1.0-l9_4655)));
l9_4649=l9_4654;
l9_4645=l9_4649;
l9_4648=l9_4653;
}
l9_4591.y=l9_4645;
l9_4601=l9_4648;
float2 l9_4656=l9_4591;
int l9_4657=l9_4589;
int l9_4658=l9_4590;
float l9_4659=l9_4599;
float2 l9_4660=l9_4656;
int l9_4661=l9_4657;
int l9_4662=l9_4658;
float3 l9_4663=float3(0.0);
if (l9_4661==0)
{
l9_4663=float3(l9_4660,0.0);
}
else
{
if (l9_4661==1)
{
l9_4663=float3(l9_4660.x,(l9_4660.y*0.5)+(0.5-(float(l9_4662)*0.5)),0.0);
}
else
{
l9_4663=float3(l9_4660,float(l9_4662));
}
}
float3 l9_4664=l9_4663;
float3 l9_4665=l9_4664;
float4 l9_4666=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4665.xy,bias(l9_4659));
float4 l9_4667=l9_4666;
if (l9_4597)
{
l9_4667=mix(l9_4598,l9_4667,float4(l9_4601));
}
float4 l9_4668=l9_4667;
l9_4582=l9_4668;
float l9_4669=0.0;
l9_4669=l9_4582.x;
float l9_4670=0.0;
l9_4670=step(l9_4669,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4671=float4(0.0);
l9_4671=l9_4579*float4(l9_4670);
l9_4354=l9_4671;
l9_4358=l9_4354;
}
l9_4351=l9_4358;
float2 l9_4672=float2(0.0);
l9_4672=l9_3913.Surface_UVCoord0;
float4 l9_4673=float4(0.0);
int l9_4674;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4675=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4675=0;
}
else
{
l9_4675=in.varStereoViewID;
}
int l9_4676=l9_4675;
l9_4674=1-l9_4676;
}
else
{
int l9_4677=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4677=0;
}
else
{
l9_4677=in.varStereoViewID;
}
int l9_4678=l9_4677;
l9_4674=l9_4678;
}
int l9_4679=l9_4674;
int l9_4680=greyMaskIdLayout_tmp;
int l9_4681=l9_4679;
float2 l9_4682=l9_4672;
bool l9_4683=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4684=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4685=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4686=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4687=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4688=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4689=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4690=0.0;
bool l9_4691=l9_4688&&(!l9_4686);
float l9_4692=1.0;
float l9_4693=l9_4682.x;
int l9_4694=l9_4685.x;
if (l9_4694==1)
{
l9_4693=fract(l9_4693);
}
else
{
if (l9_4694==2)
{
float l9_4695=fract(l9_4693);
float l9_4696=l9_4693-l9_4695;
float l9_4697=step(0.25,fract(l9_4696*0.5));
l9_4693=mix(l9_4695,1.0-l9_4695,fast::clamp(l9_4697,0.0,1.0));
}
}
l9_4682.x=l9_4693;
float l9_4698=l9_4682.y;
int l9_4699=l9_4685.y;
if (l9_4699==1)
{
l9_4698=fract(l9_4698);
}
else
{
if (l9_4699==2)
{
float l9_4700=fract(l9_4698);
float l9_4701=l9_4698-l9_4700;
float l9_4702=step(0.25,fract(l9_4701*0.5));
l9_4698=mix(l9_4700,1.0-l9_4700,fast::clamp(l9_4702,0.0,1.0));
}
}
l9_4682.y=l9_4698;
if (l9_4686)
{
bool l9_4703=l9_4688;
bool l9_4704;
if (l9_4703)
{
l9_4704=l9_4685.x==3;
}
else
{
l9_4704=l9_4703;
}
float l9_4705=l9_4682.x;
float l9_4706=l9_4687.x;
float l9_4707=l9_4687.z;
bool l9_4708=l9_4704;
float l9_4709=l9_4692;
float l9_4710=fast::clamp(l9_4705,l9_4706,l9_4707);
float l9_4711=step(abs(l9_4705-l9_4710),9.9999997e-06);
l9_4709*=(l9_4711+((1.0-float(l9_4708))*(1.0-l9_4711)));
l9_4705=l9_4710;
l9_4682.x=l9_4705;
l9_4692=l9_4709;
bool l9_4712=l9_4688;
bool l9_4713;
if (l9_4712)
{
l9_4713=l9_4685.y==3;
}
else
{
l9_4713=l9_4712;
}
float l9_4714=l9_4682.y;
float l9_4715=l9_4687.y;
float l9_4716=l9_4687.w;
bool l9_4717=l9_4713;
float l9_4718=l9_4692;
float l9_4719=fast::clamp(l9_4714,l9_4715,l9_4716);
float l9_4720=step(abs(l9_4714-l9_4719),9.9999997e-06);
l9_4718*=(l9_4720+((1.0-float(l9_4717))*(1.0-l9_4720)));
l9_4714=l9_4719;
l9_4682.y=l9_4714;
l9_4692=l9_4718;
}
float2 l9_4721=l9_4682;
bool l9_4722=l9_4683;
float3x3 l9_4723=l9_4684;
if (l9_4722)
{
l9_4721=float2((l9_4723*float3(l9_4721,1.0)).xy);
}
float2 l9_4724=l9_4721;
l9_4682=l9_4724;
float l9_4725=l9_4682.x;
int l9_4726=l9_4685.x;
bool l9_4727=l9_4691;
float l9_4728=l9_4692;
if ((l9_4726==0)||(l9_4726==3))
{
float l9_4729=l9_4725;
float l9_4730=0.0;
float l9_4731=1.0;
bool l9_4732=l9_4727;
float l9_4733=l9_4728;
float l9_4734=fast::clamp(l9_4729,l9_4730,l9_4731);
float l9_4735=step(abs(l9_4729-l9_4734),9.9999997e-06);
l9_4733*=(l9_4735+((1.0-float(l9_4732))*(1.0-l9_4735)));
l9_4729=l9_4734;
l9_4725=l9_4729;
l9_4728=l9_4733;
}
l9_4682.x=l9_4725;
l9_4692=l9_4728;
float l9_4736=l9_4682.y;
int l9_4737=l9_4685.y;
bool l9_4738=l9_4691;
float l9_4739=l9_4692;
if ((l9_4737==0)||(l9_4737==3))
{
float l9_4740=l9_4736;
float l9_4741=0.0;
float l9_4742=1.0;
bool l9_4743=l9_4738;
float l9_4744=l9_4739;
float l9_4745=fast::clamp(l9_4740,l9_4741,l9_4742);
float l9_4746=step(abs(l9_4740-l9_4745),9.9999997e-06);
l9_4744*=(l9_4746+((1.0-float(l9_4743))*(1.0-l9_4746)));
l9_4740=l9_4745;
l9_4736=l9_4740;
l9_4739=l9_4744;
}
l9_4682.y=l9_4736;
l9_4692=l9_4739;
float2 l9_4747=l9_4682;
int l9_4748=l9_4680;
int l9_4749=l9_4681;
float l9_4750=l9_4690;
float2 l9_4751=l9_4747;
int l9_4752=l9_4748;
int l9_4753=l9_4749;
float3 l9_4754=float3(0.0);
if (l9_4752==0)
{
l9_4754=float3(l9_4751,0.0);
}
else
{
if (l9_4752==1)
{
l9_4754=float3(l9_4751.x,(l9_4751.y*0.5)+(0.5-(float(l9_4753)*0.5)),0.0);
}
else
{
l9_4754=float3(l9_4751,float(l9_4753));
}
}
float3 l9_4755=l9_4754;
float3 l9_4756=l9_4755;
float4 l9_4757=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4756.xy,bias(l9_4750));
float4 l9_4758=l9_4757;
if (l9_4688)
{
l9_4758=mix(l9_4689,l9_4758,float4(l9_4692));
}
float4 l9_4759=l9_4758;
l9_4673=l9_4759;
float l9_4760=0.0;
l9_4760=l9_4673.x;
float l9_4761=0.0;
l9_4761=step(l9_4760,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4762=float4(0.0);
l9_4762=l9_4351*float4(l9_4761);
float4 l9_4763=float4(0.0);
float4 l9_4764=(*sc_set0.UserUniforms).colorId01;
l9_4763=l9_4764;
float4 l9_4765=float4(0.0);
l9_4765=l9_4763*float4(l9_4761);
float4 l9_4766=float4(0.0);
float4 l9_4767=l9_4762;
float4 l9_4768=l9_4765;
float4 l9_4769=l9_4767;
float4 l9_4770=l9_4768;
float3 l9_4771=l9_4769.xyz*l9_4769.w;
l9_4769=float4(l9_4771.x,l9_4771.y,l9_4771.z,l9_4769.w);
float4 l9_4772=l9_4769+(l9_4770*(1.0-l9_4769.w));
l9_4766=l9_4772;
l9_3912=l9_4766;
l9_3916=l9_3912;
}
l9_3909=l9_3916;
float l9_4773=0.0;
float l9_4774=(*sc_set0.UserUniforms).metallicId01;
l9_4773=l9_4774;
float l9_4775=0.0;
float l9_4776=(*sc_set0.UserUniforms).rougnessId01;
l9_4775=l9_4776;
float4 l9_4777=float4(0.0);
float3 l9_4778=l9_3909.xyz;
float l9_4779=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_4780=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_4781=l9_4773;
float l9_4782=l9_4775;
float3 l9_4783=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_4784=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_4785=l9_3905;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_4785.BumpedNormal=l9_4785.VertexNormal_WorldSpace;
}
float l9_4786=l9_4779;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_4786<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_4787=gl_FragCoord;
float2 l9_4788=floor(mod(l9_4787.xy,float2(4.0)));
float l9_4789=(mod(dot(l9_4788,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_4786<l9_4789)
{
discard_fragment();
}
}
l9_4778=fast::max(l9_4778,float3(0.0));
float4 l9_4790;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_4790=float4(l9_4778,l9_4779);
}
else
{
l9_4781=fast::clamp(l9_4781,0.0,1.0);
l9_4782=fast::clamp(l9_4782,0.0,1.0);
float3 l9_4791=l9_4778;
float l9_4792=l9_4779;
float3 l9_4793=l9_4785.BumpedNormal;
float3 l9_4794=l9_4785.PositionWS;
float3 l9_4795=l9_4785.ViewDirWS;
float3 l9_4796=l9_4780;
float l9_4797=l9_4781;
float l9_4798=l9_4782;
float3 l9_4799=l9_4783;
float3 l9_4800=l9_4784;
l9_4790=ngsCalculateLighting(l9_4791,l9_4792,l9_4793,l9_4794,l9_4795,l9_4796,l9_4797,l9_4798,l9_4799,l9_4800,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_4790=fast::max(l9_4790,float4(0.0));
l9_4777=l9_4790;
l9_3903=l9_4777;
l9_3908=l9_3903;
}
else
{
float4 l9_4801=float4(0.0);
float l9_4802=0.0;
float4 l9_4803=float4(0.0);
float4 l9_4804=float4(0.0);
ssGlobals l9_4805=l9_3905;
float l9_4806=0.0;
float l9_4807=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_4806=l9_4807;
l9_4802=l9_4806;
float4 l9_4808;
if ((l9_4802*1.0)!=0.0)
{
float l9_4809=0.0;
float l9_4810=(*sc_set0.UserUniforms).rimExpId01;
l9_4809=l9_4810;
float l9_4811=0.0;
float l9_4812=(*sc_set0.UserUniforms).rimIntId01;
l9_4811=l9_4812;
float l9_4813=0.0;
float l9_4814=l9_4809;
float l9_4815=l9_4811;
ssGlobals l9_4816=l9_4805;
float l9_4817=abs(dot(-l9_4816.ViewDirWS,l9_4816.VertexNormal_WorldSpace));
float l9_4818=1.0-pow(1.0-l9_4817,l9_4814);
l9_4818=fast::max(l9_4818,0.0);
l9_4818*=l9_4815;
l9_4813=l9_4818;
float4 l9_4819=float4(0.0);
float l9_4820=0.0;
float4 l9_4821=float4(0.0);
float4 l9_4822=float4(0.0);
ssGlobals l9_4823=l9_4805;
float l9_4824=0.0;
float l9_4825=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_4824=l9_4825;
l9_4820=l9_4824;
float4 l9_4826;
if ((l9_4820*1.0)!=0.0)
{
float4 l9_4827=float4(0.0);
float4 l9_4828=(*sc_set0.UserUniforms).patternColorId01;
l9_4827=l9_4828;
float4 l9_4829=float4(0.0);
float l9_4830=0.0;
float4 l9_4831=float4(0.0);
float4 l9_4832=float4(0.0);
ssGlobals l9_4833=l9_4823;
float l9_4834=0.0;
float l9_4835=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_4834=l9_4835;
l9_4830=l9_4834;
float4 l9_4836;
if ((l9_4830*1.0)!=0.0)
{
float2 l9_4837=float2(0.0);
l9_4837=l9_4833.Surface_UVCoord0;
float2 l9_4838=float2(0.0);
float2 l9_4839=(*sc_set0.UserUniforms).patternScaleId01;
l9_4838=l9_4839;
float2 l9_4840=float2(0.0);
l9_4840=((l9_4837-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4838)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4841=float2(0.0);
float2 l9_4842=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4841=l9_4842;
float2 l9_4843=float2(0.0);
l9_4843=l9_4840+l9_4841;
float l9_4844=0.0;
float l9_4845=(*sc_set0.UserUniforms).patternRotateId01;
l9_4844=l9_4845;
float2 l9_4846=float2(0.0);
float2 l9_4847=l9_4843;
float l9_4848=l9_4844;
float2 l9_4849=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4850=sin(radians(l9_4848));
float l9_4851=cos(radians(l9_4848));
float2 l9_4852=l9_4847-l9_4849;
l9_4852=float2(dot(float2(l9_4851,l9_4850),l9_4852),dot(float2(-l9_4850,l9_4851),l9_4852))+l9_4849;
l9_4846=l9_4852;
float4 l9_4853=float4(0.0);
int l9_4854;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4855=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4855=0;
}
else
{
l9_4855=in.varStereoViewID;
}
int l9_4856=l9_4855;
l9_4854=1-l9_4856;
}
else
{
int l9_4857=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4857=0;
}
else
{
l9_4857=in.varStereoViewID;
}
int l9_4858=l9_4857;
l9_4854=l9_4858;
}
int l9_4859=l9_4854;
int l9_4860=patternTextureId01Layout_tmp;
int l9_4861=l9_4859;
float2 l9_4862=l9_4846;
bool l9_4863=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4864=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4865=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4866=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4867=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4868=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4869=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4870=0.0;
bool l9_4871=l9_4868&&(!l9_4866);
float l9_4872=1.0;
float l9_4873=l9_4862.x;
int l9_4874=l9_4865.x;
if (l9_4874==1)
{
l9_4873=fract(l9_4873);
}
else
{
if (l9_4874==2)
{
float l9_4875=fract(l9_4873);
float l9_4876=l9_4873-l9_4875;
float l9_4877=step(0.25,fract(l9_4876*0.5));
l9_4873=mix(l9_4875,1.0-l9_4875,fast::clamp(l9_4877,0.0,1.0));
}
}
l9_4862.x=l9_4873;
float l9_4878=l9_4862.y;
int l9_4879=l9_4865.y;
if (l9_4879==1)
{
l9_4878=fract(l9_4878);
}
else
{
if (l9_4879==2)
{
float l9_4880=fract(l9_4878);
float l9_4881=l9_4878-l9_4880;
float l9_4882=step(0.25,fract(l9_4881*0.5));
l9_4878=mix(l9_4880,1.0-l9_4880,fast::clamp(l9_4882,0.0,1.0));
}
}
l9_4862.y=l9_4878;
if (l9_4866)
{
bool l9_4883=l9_4868;
bool l9_4884;
if (l9_4883)
{
l9_4884=l9_4865.x==3;
}
else
{
l9_4884=l9_4883;
}
float l9_4885=l9_4862.x;
float l9_4886=l9_4867.x;
float l9_4887=l9_4867.z;
bool l9_4888=l9_4884;
float l9_4889=l9_4872;
float l9_4890=fast::clamp(l9_4885,l9_4886,l9_4887);
float l9_4891=step(abs(l9_4885-l9_4890),9.9999997e-06);
l9_4889*=(l9_4891+((1.0-float(l9_4888))*(1.0-l9_4891)));
l9_4885=l9_4890;
l9_4862.x=l9_4885;
l9_4872=l9_4889;
bool l9_4892=l9_4868;
bool l9_4893;
if (l9_4892)
{
l9_4893=l9_4865.y==3;
}
else
{
l9_4893=l9_4892;
}
float l9_4894=l9_4862.y;
float l9_4895=l9_4867.y;
float l9_4896=l9_4867.w;
bool l9_4897=l9_4893;
float l9_4898=l9_4872;
float l9_4899=fast::clamp(l9_4894,l9_4895,l9_4896);
float l9_4900=step(abs(l9_4894-l9_4899),9.9999997e-06);
l9_4898*=(l9_4900+((1.0-float(l9_4897))*(1.0-l9_4900)));
l9_4894=l9_4899;
l9_4862.y=l9_4894;
l9_4872=l9_4898;
}
float2 l9_4901=l9_4862;
bool l9_4902=l9_4863;
float3x3 l9_4903=l9_4864;
if (l9_4902)
{
l9_4901=float2((l9_4903*float3(l9_4901,1.0)).xy);
}
float2 l9_4904=l9_4901;
l9_4862=l9_4904;
float l9_4905=l9_4862.x;
int l9_4906=l9_4865.x;
bool l9_4907=l9_4871;
float l9_4908=l9_4872;
if ((l9_4906==0)||(l9_4906==3))
{
float l9_4909=l9_4905;
float l9_4910=0.0;
float l9_4911=1.0;
bool l9_4912=l9_4907;
float l9_4913=l9_4908;
float l9_4914=fast::clamp(l9_4909,l9_4910,l9_4911);
float l9_4915=step(abs(l9_4909-l9_4914),9.9999997e-06);
l9_4913*=(l9_4915+((1.0-float(l9_4912))*(1.0-l9_4915)));
l9_4909=l9_4914;
l9_4905=l9_4909;
l9_4908=l9_4913;
}
l9_4862.x=l9_4905;
l9_4872=l9_4908;
float l9_4916=l9_4862.y;
int l9_4917=l9_4865.y;
bool l9_4918=l9_4871;
float l9_4919=l9_4872;
if ((l9_4917==0)||(l9_4917==3))
{
float l9_4920=l9_4916;
float l9_4921=0.0;
float l9_4922=1.0;
bool l9_4923=l9_4918;
float l9_4924=l9_4919;
float l9_4925=fast::clamp(l9_4920,l9_4921,l9_4922);
float l9_4926=step(abs(l9_4920-l9_4925),9.9999997e-06);
l9_4924*=(l9_4926+((1.0-float(l9_4923))*(1.0-l9_4926)));
l9_4920=l9_4925;
l9_4916=l9_4920;
l9_4919=l9_4924;
}
l9_4862.y=l9_4916;
l9_4872=l9_4919;
float2 l9_4927=l9_4862;
int l9_4928=l9_4860;
int l9_4929=l9_4861;
float l9_4930=l9_4870;
float2 l9_4931=l9_4927;
int l9_4932=l9_4928;
int l9_4933=l9_4929;
float3 l9_4934=float3(0.0);
if (l9_4932==0)
{
l9_4934=float3(l9_4931,0.0);
}
else
{
if (l9_4932==1)
{
l9_4934=float3(l9_4931.x,(l9_4931.y*0.5)+(0.5-(float(l9_4933)*0.5)),0.0);
}
else
{
l9_4934=float3(l9_4931,float(l9_4933));
}
}
float3 l9_4935=l9_4934;
float3 l9_4936=l9_4935;
float4 l9_4937=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4936.xy,bias(l9_4930));
float4 l9_4938=l9_4937;
if (l9_4868)
{
l9_4938=mix(l9_4869,l9_4938,float4(l9_4872));
}
float4 l9_4939=l9_4938;
l9_4853=l9_4939;
l9_4831=l9_4853;
l9_4836=l9_4831;
}
else
{
float2 l9_4940=float2(0.0);
l9_4940=l9_4833.Surface_UVCoord0;
float2 l9_4941=float2(0.0);
float2 l9_4942=(*sc_set0.UserUniforms).patternScaleId01;
l9_4941=l9_4942;
float2 l9_4943=float2(0.0);
l9_4943=((l9_4940-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4941)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4944=float2(0.0);
float2 l9_4945=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4944=l9_4945;
float2 l9_4946=float2(0.0);
l9_4946=l9_4943+l9_4944;
float l9_4947=0.0;
float l9_4948=(*sc_set0.UserUniforms).patternRotateId01;
l9_4947=l9_4948;
float2 l9_4949=float2(0.0);
float2 l9_4950=l9_4946;
float l9_4951=l9_4947;
float2 l9_4952=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4953=sin(radians(l9_4951));
float l9_4954=cos(radians(l9_4951));
float2 l9_4955=l9_4950-l9_4952;
l9_4955=float2(dot(float2(l9_4954,l9_4953),l9_4955),dot(float2(-l9_4953,l9_4954),l9_4955))+l9_4952;
l9_4949=l9_4955;
float4 l9_4956=float4(0.0);
int l9_4957;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4958=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4958=0;
}
else
{
l9_4958=in.varStereoViewID;
}
int l9_4959=l9_4958;
l9_4957=1-l9_4959;
}
else
{
int l9_4960=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4960=0;
}
else
{
l9_4960=in.varStereoViewID;
}
int l9_4961=l9_4960;
l9_4957=l9_4961;
}
int l9_4962=l9_4957;
int l9_4963=patternTextureId01Layout_tmp;
int l9_4964=l9_4962;
float2 l9_4965=l9_4949;
bool l9_4966=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4967=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4968=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4969=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4970=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4971=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4972=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4973=0.0;
bool l9_4974=l9_4971&&(!l9_4969);
float l9_4975=1.0;
float l9_4976=l9_4965.x;
int l9_4977=l9_4968.x;
if (l9_4977==1)
{
l9_4976=fract(l9_4976);
}
else
{
if (l9_4977==2)
{
float l9_4978=fract(l9_4976);
float l9_4979=l9_4976-l9_4978;
float l9_4980=step(0.25,fract(l9_4979*0.5));
l9_4976=mix(l9_4978,1.0-l9_4978,fast::clamp(l9_4980,0.0,1.0));
}
}
l9_4965.x=l9_4976;
float l9_4981=l9_4965.y;
int l9_4982=l9_4968.y;
if (l9_4982==1)
{
l9_4981=fract(l9_4981);
}
else
{
if (l9_4982==2)
{
float l9_4983=fract(l9_4981);
float l9_4984=l9_4981-l9_4983;
float l9_4985=step(0.25,fract(l9_4984*0.5));
l9_4981=mix(l9_4983,1.0-l9_4983,fast::clamp(l9_4985,0.0,1.0));
}
}
l9_4965.y=l9_4981;
if (l9_4969)
{
bool l9_4986=l9_4971;
bool l9_4987;
if (l9_4986)
{
l9_4987=l9_4968.x==3;
}
else
{
l9_4987=l9_4986;
}
float l9_4988=l9_4965.x;
float l9_4989=l9_4970.x;
float l9_4990=l9_4970.z;
bool l9_4991=l9_4987;
float l9_4992=l9_4975;
float l9_4993=fast::clamp(l9_4988,l9_4989,l9_4990);
float l9_4994=step(abs(l9_4988-l9_4993),9.9999997e-06);
l9_4992*=(l9_4994+((1.0-float(l9_4991))*(1.0-l9_4994)));
l9_4988=l9_4993;
l9_4965.x=l9_4988;
l9_4975=l9_4992;
bool l9_4995=l9_4971;
bool l9_4996;
if (l9_4995)
{
l9_4996=l9_4968.y==3;
}
else
{
l9_4996=l9_4995;
}
float l9_4997=l9_4965.y;
float l9_4998=l9_4970.y;
float l9_4999=l9_4970.w;
bool l9_5000=l9_4996;
float l9_5001=l9_4975;
float l9_5002=fast::clamp(l9_4997,l9_4998,l9_4999);
float l9_5003=step(abs(l9_4997-l9_5002),9.9999997e-06);
l9_5001*=(l9_5003+((1.0-float(l9_5000))*(1.0-l9_5003)));
l9_4997=l9_5002;
l9_4965.y=l9_4997;
l9_4975=l9_5001;
}
float2 l9_5004=l9_4965;
bool l9_5005=l9_4966;
float3x3 l9_5006=l9_4967;
if (l9_5005)
{
l9_5004=float2((l9_5006*float3(l9_5004,1.0)).xy);
}
float2 l9_5007=l9_5004;
l9_4965=l9_5007;
float l9_5008=l9_4965.x;
int l9_5009=l9_4968.x;
bool l9_5010=l9_4974;
float l9_5011=l9_4975;
if ((l9_5009==0)||(l9_5009==3))
{
float l9_5012=l9_5008;
float l9_5013=0.0;
float l9_5014=1.0;
bool l9_5015=l9_5010;
float l9_5016=l9_5011;
float l9_5017=fast::clamp(l9_5012,l9_5013,l9_5014);
float l9_5018=step(abs(l9_5012-l9_5017),9.9999997e-06);
l9_5016*=(l9_5018+((1.0-float(l9_5015))*(1.0-l9_5018)));
l9_5012=l9_5017;
l9_5008=l9_5012;
l9_5011=l9_5016;
}
l9_4965.x=l9_5008;
l9_4975=l9_5011;
float l9_5019=l9_4965.y;
int l9_5020=l9_4968.y;
bool l9_5021=l9_4974;
float l9_5022=l9_4975;
if ((l9_5020==0)||(l9_5020==3))
{
float l9_5023=l9_5019;
float l9_5024=0.0;
float l9_5025=1.0;
bool l9_5026=l9_5021;
float l9_5027=l9_5022;
float l9_5028=fast::clamp(l9_5023,l9_5024,l9_5025);
float l9_5029=step(abs(l9_5023-l9_5028),9.9999997e-06);
l9_5027*=(l9_5029+((1.0-float(l9_5026))*(1.0-l9_5029)));
l9_5023=l9_5028;
l9_5019=l9_5023;
l9_5022=l9_5027;
}
l9_4965.y=l9_5019;
l9_4975=l9_5022;
float2 l9_5030=l9_4965;
int l9_5031=l9_4963;
int l9_5032=l9_4964;
float l9_5033=l9_4973;
float2 l9_5034=l9_5030;
int l9_5035=l9_5031;
int l9_5036=l9_5032;
float3 l9_5037=float3(0.0);
if (l9_5035==0)
{
l9_5037=float3(l9_5034,0.0);
}
else
{
if (l9_5035==1)
{
l9_5037=float3(l9_5034.x,(l9_5034.y*0.5)+(0.5-(float(l9_5036)*0.5)),0.0);
}
else
{
l9_5037=float3(l9_5034,float(l9_5036));
}
}
float3 l9_5038=l9_5037;
float3 l9_5039=l9_5038;
float4 l9_5040=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5039.xy,bias(l9_5033));
float4 l9_5041=l9_5040;
if (l9_4971)
{
l9_5041=mix(l9_4972,l9_5041,float4(l9_4975));
}
float4 l9_5042=l9_5041;
l9_4956=l9_5042;
float l9_5043=0.0;
float3 l9_5044=l9_4956.xyz;
float l9_5045=l9_5044.x;
l9_5043=l9_5045;
l9_4832=float4(l9_5043);
l9_4836=l9_4832;
}
l9_4829=l9_4836;
float4 l9_5046=float4(0.0);
l9_5046=l9_4827*l9_4829;
l9_4821=l9_5046;
l9_4826=l9_4821;
}
else
{
float4 l9_5047=float4(0.0);
float4 l9_5048=(*sc_set0.UserUniforms).colorId01;
l9_5047=l9_5048;
float2 l9_5049=float2(0.0);
l9_5049=l9_4823.Surface_UVCoord0;
float4 l9_5050=float4(0.0);
int l9_5051;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5052=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5052=0;
}
else
{
l9_5052=in.varStereoViewID;
}
int l9_5053=l9_5052;
l9_5051=1-l9_5053;
}
else
{
int l9_5054=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5054=0;
}
else
{
l9_5054=in.varStereoViewID;
}
int l9_5055=l9_5054;
l9_5051=l9_5055;
}
int l9_5056=l9_5051;
int l9_5057=greyMaskIdLayout_tmp;
int l9_5058=l9_5056;
float2 l9_5059=l9_5049;
bool l9_5060=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5061=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5062=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5063=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5064=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5065=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5066=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5067=0.0;
bool l9_5068=l9_5065&&(!l9_5063);
float l9_5069=1.0;
float l9_5070=l9_5059.x;
int l9_5071=l9_5062.x;
if (l9_5071==1)
{
l9_5070=fract(l9_5070);
}
else
{
if (l9_5071==2)
{
float l9_5072=fract(l9_5070);
float l9_5073=l9_5070-l9_5072;
float l9_5074=step(0.25,fract(l9_5073*0.5));
l9_5070=mix(l9_5072,1.0-l9_5072,fast::clamp(l9_5074,0.0,1.0));
}
}
l9_5059.x=l9_5070;
float l9_5075=l9_5059.y;
int l9_5076=l9_5062.y;
if (l9_5076==1)
{
l9_5075=fract(l9_5075);
}
else
{
if (l9_5076==2)
{
float l9_5077=fract(l9_5075);
float l9_5078=l9_5075-l9_5077;
float l9_5079=step(0.25,fract(l9_5078*0.5));
l9_5075=mix(l9_5077,1.0-l9_5077,fast::clamp(l9_5079,0.0,1.0));
}
}
l9_5059.y=l9_5075;
if (l9_5063)
{
bool l9_5080=l9_5065;
bool l9_5081;
if (l9_5080)
{
l9_5081=l9_5062.x==3;
}
else
{
l9_5081=l9_5080;
}
float l9_5082=l9_5059.x;
float l9_5083=l9_5064.x;
float l9_5084=l9_5064.z;
bool l9_5085=l9_5081;
float l9_5086=l9_5069;
float l9_5087=fast::clamp(l9_5082,l9_5083,l9_5084);
float l9_5088=step(abs(l9_5082-l9_5087),9.9999997e-06);
l9_5086*=(l9_5088+((1.0-float(l9_5085))*(1.0-l9_5088)));
l9_5082=l9_5087;
l9_5059.x=l9_5082;
l9_5069=l9_5086;
bool l9_5089=l9_5065;
bool l9_5090;
if (l9_5089)
{
l9_5090=l9_5062.y==3;
}
else
{
l9_5090=l9_5089;
}
float l9_5091=l9_5059.y;
float l9_5092=l9_5064.y;
float l9_5093=l9_5064.w;
bool l9_5094=l9_5090;
float l9_5095=l9_5069;
float l9_5096=fast::clamp(l9_5091,l9_5092,l9_5093);
float l9_5097=step(abs(l9_5091-l9_5096),9.9999997e-06);
l9_5095*=(l9_5097+((1.0-float(l9_5094))*(1.0-l9_5097)));
l9_5091=l9_5096;
l9_5059.y=l9_5091;
l9_5069=l9_5095;
}
float2 l9_5098=l9_5059;
bool l9_5099=l9_5060;
float3x3 l9_5100=l9_5061;
if (l9_5099)
{
l9_5098=float2((l9_5100*float3(l9_5098,1.0)).xy);
}
float2 l9_5101=l9_5098;
l9_5059=l9_5101;
float l9_5102=l9_5059.x;
int l9_5103=l9_5062.x;
bool l9_5104=l9_5068;
float l9_5105=l9_5069;
if ((l9_5103==0)||(l9_5103==3))
{
float l9_5106=l9_5102;
float l9_5107=0.0;
float l9_5108=1.0;
bool l9_5109=l9_5104;
float l9_5110=l9_5105;
float l9_5111=fast::clamp(l9_5106,l9_5107,l9_5108);
float l9_5112=step(abs(l9_5106-l9_5111),9.9999997e-06);
l9_5110*=(l9_5112+((1.0-float(l9_5109))*(1.0-l9_5112)));
l9_5106=l9_5111;
l9_5102=l9_5106;
l9_5105=l9_5110;
}
l9_5059.x=l9_5102;
l9_5069=l9_5105;
float l9_5113=l9_5059.y;
int l9_5114=l9_5062.y;
bool l9_5115=l9_5068;
float l9_5116=l9_5069;
if ((l9_5114==0)||(l9_5114==3))
{
float l9_5117=l9_5113;
float l9_5118=0.0;
float l9_5119=1.0;
bool l9_5120=l9_5115;
float l9_5121=l9_5116;
float l9_5122=fast::clamp(l9_5117,l9_5118,l9_5119);
float l9_5123=step(abs(l9_5117-l9_5122),9.9999997e-06);
l9_5121*=(l9_5123+((1.0-float(l9_5120))*(1.0-l9_5123)));
l9_5117=l9_5122;
l9_5113=l9_5117;
l9_5116=l9_5121;
}
l9_5059.y=l9_5113;
l9_5069=l9_5116;
float2 l9_5124=l9_5059;
int l9_5125=l9_5057;
int l9_5126=l9_5058;
float l9_5127=l9_5067;
float2 l9_5128=l9_5124;
int l9_5129=l9_5125;
int l9_5130=l9_5126;
float3 l9_5131=float3(0.0);
if (l9_5129==0)
{
l9_5131=float3(l9_5128,0.0);
}
else
{
if (l9_5129==1)
{
l9_5131=float3(l9_5128.x,(l9_5128.y*0.5)+(0.5-(float(l9_5130)*0.5)),0.0);
}
else
{
l9_5131=float3(l9_5128,float(l9_5130));
}
}
float3 l9_5132=l9_5131;
float3 l9_5133=l9_5132;
float4 l9_5134=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5133.xy,bias(l9_5127));
float4 l9_5135=l9_5134;
if (l9_5065)
{
l9_5135=mix(l9_5066,l9_5135,float4(l9_5069));
}
float4 l9_5136=l9_5135;
l9_5050=l9_5136;
float l9_5137=0.0;
l9_5137=l9_5050.x;
float l9_5138=0.0;
l9_5138=step(l9_5137,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5139=float4(0.0);
l9_5139=l9_5047*float4(l9_5138);
l9_4822=l9_5139;
l9_4826=l9_4822;
}
l9_4819=l9_4826;
float2 l9_5140=float2(0.0);
l9_5140=l9_4805.Surface_UVCoord0;
float4 l9_5141=float4(0.0);
int l9_5142;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5143=0;
}
else
{
l9_5143=in.varStereoViewID;
}
int l9_5144=l9_5143;
l9_5142=1-l9_5144;
}
else
{
int l9_5145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5145=0;
}
else
{
l9_5145=in.varStereoViewID;
}
int l9_5146=l9_5145;
l9_5142=l9_5146;
}
int l9_5147=l9_5142;
int l9_5148=greyMaskIdLayout_tmp;
int l9_5149=l9_5147;
float2 l9_5150=l9_5140;
bool l9_5151=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5152=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5153=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5154=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5155=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5156=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5157=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5158=0.0;
bool l9_5159=l9_5156&&(!l9_5154);
float l9_5160=1.0;
float l9_5161=l9_5150.x;
int l9_5162=l9_5153.x;
if (l9_5162==1)
{
l9_5161=fract(l9_5161);
}
else
{
if (l9_5162==2)
{
float l9_5163=fract(l9_5161);
float l9_5164=l9_5161-l9_5163;
float l9_5165=step(0.25,fract(l9_5164*0.5));
l9_5161=mix(l9_5163,1.0-l9_5163,fast::clamp(l9_5165,0.0,1.0));
}
}
l9_5150.x=l9_5161;
float l9_5166=l9_5150.y;
int l9_5167=l9_5153.y;
if (l9_5167==1)
{
l9_5166=fract(l9_5166);
}
else
{
if (l9_5167==2)
{
float l9_5168=fract(l9_5166);
float l9_5169=l9_5166-l9_5168;
float l9_5170=step(0.25,fract(l9_5169*0.5));
l9_5166=mix(l9_5168,1.0-l9_5168,fast::clamp(l9_5170,0.0,1.0));
}
}
l9_5150.y=l9_5166;
if (l9_5154)
{
bool l9_5171=l9_5156;
bool l9_5172;
if (l9_5171)
{
l9_5172=l9_5153.x==3;
}
else
{
l9_5172=l9_5171;
}
float l9_5173=l9_5150.x;
float l9_5174=l9_5155.x;
float l9_5175=l9_5155.z;
bool l9_5176=l9_5172;
float l9_5177=l9_5160;
float l9_5178=fast::clamp(l9_5173,l9_5174,l9_5175);
float l9_5179=step(abs(l9_5173-l9_5178),9.9999997e-06);
l9_5177*=(l9_5179+((1.0-float(l9_5176))*(1.0-l9_5179)));
l9_5173=l9_5178;
l9_5150.x=l9_5173;
l9_5160=l9_5177;
bool l9_5180=l9_5156;
bool l9_5181;
if (l9_5180)
{
l9_5181=l9_5153.y==3;
}
else
{
l9_5181=l9_5180;
}
float l9_5182=l9_5150.y;
float l9_5183=l9_5155.y;
float l9_5184=l9_5155.w;
bool l9_5185=l9_5181;
float l9_5186=l9_5160;
float l9_5187=fast::clamp(l9_5182,l9_5183,l9_5184);
float l9_5188=step(abs(l9_5182-l9_5187),9.9999997e-06);
l9_5186*=(l9_5188+((1.0-float(l9_5185))*(1.0-l9_5188)));
l9_5182=l9_5187;
l9_5150.y=l9_5182;
l9_5160=l9_5186;
}
float2 l9_5189=l9_5150;
bool l9_5190=l9_5151;
float3x3 l9_5191=l9_5152;
if (l9_5190)
{
l9_5189=float2((l9_5191*float3(l9_5189,1.0)).xy);
}
float2 l9_5192=l9_5189;
l9_5150=l9_5192;
float l9_5193=l9_5150.x;
int l9_5194=l9_5153.x;
bool l9_5195=l9_5159;
float l9_5196=l9_5160;
if ((l9_5194==0)||(l9_5194==3))
{
float l9_5197=l9_5193;
float l9_5198=0.0;
float l9_5199=1.0;
bool l9_5200=l9_5195;
float l9_5201=l9_5196;
float l9_5202=fast::clamp(l9_5197,l9_5198,l9_5199);
float l9_5203=step(abs(l9_5197-l9_5202),9.9999997e-06);
l9_5201*=(l9_5203+((1.0-float(l9_5200))*(1.0-l9_5203)));
l9_5197=l9_5202;
l9_5193=l9_5197;
l9_5196=l9_5201;
}
l9_5150.x=l9_5193;
l9_5160=l9_5196;
float l9_5204=l9_5150.y;
int l9_5205=l9_5153.y;
bool l9_5206=l9_5159;
float l9_5207=l9_5160;
if ((l9_5205==0)||(l9_5205==3))
{
float l9_5208=l9_5204;
float l9_5209=0.0;
float l9_5210=1.0;
bool l9_5211=l9_5206;
float l9_5212=l9_5207;
float l9_5213=fast::clamp(l9_5208,l9_5209,l9_5210);
float l9_5214=step(abs(l9_5208-l9_5213),9.9999997e-06);
l9_5212*=(l9_5214+((1.0-float(l9_5211))*(1.0-l9_5214)));
l9_5208=l9_5213;
l9_5204=l9_5208;
l9_5207=l9_5212;
}
l9_5150.y=l9_5204;
l9_5160=l9_5207;
float2 l9_5215=l9_5150;
int l9_5216=l9_5148;
int l9_5217=l9_5149;
float l9_5218=l9_5158;
float2 l9_5219=l9_5215;
int l9_5220=l9_5216;
int l9_5221=l9_5217;
float3 l9_5222=float3(0.0);
if (l9_5220==0)
{
l9_5222=float3(l9_5219,0.0);
}
else
{
if (l9_5220==1)
{
l9_5222=float3(l9_5219.x,(l9_5219.y*0.5)+(0.5-(float(l9_5221)*0.5)),0.0);
}
else
{
l9_5222=float3(l9_5219,float(l9_5221));
}
}
float3 l9_5223=l9_5222;
float3 l9_5224=l9_5223;
float4 l9_5225=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5224.xy,bias(l9_5218));
float4 l9_5226=l9_5225;
if (l9_5156)
{
l9_5226=mix(l9_5157,l9_5226,float4(l9_5160));
}
float4 l9_5227=l9_5226;
l9_5141=l9_5227;
float l9_5228=0.0;
l9_5228=l9_5141.x;
float l9_5229=0.0;
l9_5229=step(l9_5228,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5230=float4(0.0);
l9_5230=l9_4819*float4(l9_5229);
float4 l9_5231=float4(0.0);
float4 l9_5232=(*sc_set0.UserUniforms).colorId01;
l9_5231=l9_5232;
float4 l9_5233=float4(0.0);
l9_5233=l9_5231*float4(l9_5229);
float4 l9_5234=float4(0.0);
float4 l9_5235=l9_5230;
float4 l9_5236=l9_5233;
float4 l9_5237=l9_5235;
float4 l9_5238=l9_5236;
float3 l9_5239=l9_5237.xyz*l9_5237.w;
l9_5237=float4(l9_5239.x,l9_5239.y,l9_5239.z,l9_5237.w);
float4 l9_5240=l9_5237+(l9_5238*(1.0-l9_5237.w));
l9_5234=l9_5240;
float4 l9_5241=float4(0.0);
l9_5241=float4(l9_4813)*l9_5234;
float4 l9_5242=float4(0.0);
l9_5242=l9_5241+l9_5234;
l9_4803=l9_5242;
l9_4808=l9_4803;
}
else
{
float4 l9_5243=float4(0.0);
float l9_5244=0.0;
float4 l9_5245=float4(0.0);
float4 l9_5246=float4(0.0);
ssGlobals l9_5247=l9_4805;
float l9_5248=0.0;
float l9_5249=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_5248=l9_5249;
l9_5244=l9_5248;
float4 l9_5250;
if ((l9_5244*1.0)!=0.0)
{
float4 l9_5251=float4(0.0);
float4 l9_5252=(*sc_set0.UserUniforms).patternColorId01;
l9_5251=l9_5252;
float4 l9_5253=float4(0.0);
float l9_5254=0.0;
float4 l9_5255=float4(0.0);
float4 l9_5256=float4(0.0);
ssGlobals l9_5257=l9_5247;
float l9_5258=0.0;
float l9_5259=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_5258=l9_5259;
l9_5254=l9_5258;
float4 l9_5260;
if ((l9_5254*1.0)!=0.0)
{
float2 l9_5261=float2(0.0);
l9_5261=l9_5257.Surface_UVCoord0;
float2 l9_5262=float2(0.0);
float2 l9_5263=(*sc_set0.UserUniforms).patternScaleId01;
l9_5262=l9_5263;
float2 l9_5264=float2(0.0);
l9_5264=((l9_5261-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5262)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5265=float2(0.0);
float2 l9_5266=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5265=l9_5266;
float2 l9_5267=float2(0.0);
l9_5267=l9_5264+l9_5265;
float l9_5268=0.0;
float l9_5269=(*sc_set0.UserUniforms).patternRotateId01;
l9_5268=l9_5269;
float2 l9_5270=float2(0.0);
float2 l9_5271=l9_5267;
float l9_5272=l9_5268;
float2 l9_5273=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5274=sin(radians(l9_5272));
float l9_5275=cos(radians(l9_5272));
float2 l9_5276=l9_5271-l9_5273;
l9_5276=float2(dot(float2(l9_5275,l9_5274),l9_5276),dot(float2(-l9_5274,l9_5275),l9_5276))+l9_5273;
l9_5270=l9_5276;
float4 l9_5277=float4(0.0);
int l9_5278;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5279=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5279=0;
}
else
{
l9_5279=in.varStereoViewID;
}
int l9_5280=l9_5279;
l9_5278=1-l9_5280;
}
else
{
int l9_5281=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5281=0;
}
else
{
l9_5281=in.varStereoViewID;
}
int l9_5282=l9_5281;
l9_5278=l9_5282;
}
int l9_5283=l9_5278;
int l9_5284=patternTextureId01Layout_tmp;
int l9_5285=l9_5283;
float2 l9_5286=l9_5270;
bool l9_5287=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5288=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5289=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5290=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5291=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5292=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5293=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5294=0.0;
bool l9_5295=l9_5292&&(!l9_5290);
float l9_5296=1.0;
float l9_5297=l9_5286.x;
int l9_5298=l9_5289.x;
if (l9_5298==1)
{
l9_5297=fract(l9_5297);
}
else
{
if (l9_5298==2)
{
float l9_5299=fract(l9_5297);
float l9_5300=l9_5297-l9_5299;
float l9_5301=step(0.25,fract(l9_5300*0.5));
l9_5297=mix(l9_5299,1.0-l9_5299,fast::clamp(l9_5301,0.0,1.0));
}
}
l9_5286.x=l9_5297;
float l9_5302=l9_5286.y;
int l9_5303=l9_5289.y;
if (l9_5303==1)
{
l9_5302=fract(l9_5302);
}
else
{
if (l9_5303==2)
{
float l9_5304=fract(l9_5302);
float l9_5305=l9_5302-l9_5304;
float l9_5306=step(0.25,fract(l9_5305*0.5));
l9_5302=mix(l9_5304,1.0-l9_5304,fast::clamp(l9_5306,0.0,1.0));
}
}
l9_5286.y=l9_5302;
if (l9_5290)
{
bool l9_5307=l9_5292;
bool l9_5308;
if (l9_5307)
{
l9_5308=l9_5289.x==3;
}
else
{
l9_5308=l9_5307;
}
float l9_5309=l9_5286.x;
float l9_5310=l9_5291.x;
float l9_5311=l9_5291.z;
bool l9_5312=l9_5308;
float l9_5313=l9_5296;
float l9_5314=fast::clamp(l9_5309,l9_5310,l9_5311);
float l9_5315=step(abs(l9_5309-l9_5314),9.9999997e-06);
l9_5313*=(l9_5315+((1.0-float(l9_5312))*(1.0-l9_5315)));
l9_5309=l9_5314;
l9_5286.x=l9_5309;
l9_5296=l9_5313;
bool l9_5316=l9_5292;
bool l9_5317;
if (l9_5316)
{
l9_5317=l9_5289.y==3;
}
else
{
l9_5317=l9_5316;
}
float l9_5318=l9_5286.y;
float l9_5319=l9_5291.y;
float l9_5320=l9_5291.w;
bool l9_5321=l9_5317;
float l9_5322=l9_5296;
float l9_5323=fast::clamp(l9_5318,l9_5319,l9_5320);
float l9_5324=step(abs(l9_5318-l9_5323),9.9999997e-06);
l9_5322*=(l9_5324+((1.0-float(l9_5321))*(1.0-l9_5324)));
l9_5318=l9_5323;
l9_5286.y=l9_5318;
l9_5296=l9_5322;
}
float2 l9_5325=l9_5286;
bool l9_5326=l9_5287;
float3x3 l9_5327=l9_5288;
if (l9_5326)
{
l9_5325=float2((l9_5327*float3(l9_5325,1.0)).xy);
}
float2 l9_5328=l9_5325;
l9_5286=l9_5328;
float l9_5329=l9_5286.x;
int l9_5330=l9_5289.x;
bool l9_5331=l9_5295;
float l9_5332=l9_5296;
if ((l9_5330==0)||(l9_5330==3))
{
float l9_5333=l9_5329;
float l9_5334=0.0;
float l9_5335=1.0;
bool l9_5336=l9_5331;
float l9_5337=l9_5332;
float l9_5338=fast::clamp(l9_5333,l9_5334,l9_5335);
float l9_5339=step(abs(l9_5333-l9_5338),9.9999997e-06);
l9_5337*=(l9_5339+((1.0-float(l9_5336))*(1.0-l9_5339)));
l9_5333=l9_5338;
l9_5329=l9_5333;
l9_5332=l9_5337;
}
l9_5286.x=l9_5329;
l9_5296=l9_5332;
float l9_5340=l9_5286.y;
int l9_5341=l9_5289.y;
bool l9_5342=l9_5295;
float l9_5343=l9_5296;
if ((l9_5341==0)||(l9_5341==3))
{
float l9_5344=l9_5340;
float l9_5345=0.0;
float l9_5346=1.0;
bool l9_5347=l9_5342;
float l9_5348=l9_5343;
float l9_5349=fast::clamp(l9_5344,l9_5345,l9_5346);
float l9_5350=step(abs(l9_5344-l9_5349),9.9999997e-06);
l9_5348*=(l9_5350+((1.0-float(l9_5347))*(1.0-l9_5350)));
l9_5344=l9_5349;
l9_5340=l9_5344;
l9_5343=l9_5348;
}
l9_5286.y=l9_5340;
l9_5296=l9_5343;
float2 l9_5351=l9_5286;
int l9_5352=l9_5284;
int l9_5353=l9_5285;
float l9_5354=l9_5294;
float2 l9_5355=l9_5351;
int l9_5356=l9_5352;
int l9_5357=l9_5353;
float3 l9_5358=float3(0.0);
if (l9_5356==0)
{
l9_5358=float3(l9_5355,0.0);
}
else
{
if (l9_5356==1)
{
l9_5358=float3(l9_5355.x,(l9_5355.y*0.5)+(0.5-(float(l9_5357)*0.5)),0.0);
}
else
{
l9_5358=float3(l9_5355,float(l9_5357));
}
}
float3 l9_5359=l9_5358;
float3 l9_5360=l9_5359;
float4 l9_5361=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5360.xy,bias(l9_5354));
float4 l9_5362=l9_5361;
if (l9_5292)
{
l9_5362=mix(l9_5293,l9_5362,float4(l9_5296));
}
float4 l9_5363=l9_5362;
l9_5277=l9_5363;
l9_5255=l9_5277;
l9_5260=l9_5255;
}
else
{
float2 l9_5364=float2(0.0);
l9_5364=l9_5257.Surface_UVCoord0;
float2 l9_5365=float2(0.0);
float2 l9_5366=(*sc_set0.UserUniforms).patternScaleId01;
l9_5365=l9_5366;
float2 l9_5367=float2(0.0);
l9_5367=((l9_5364-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5365)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5368=float2(0.0);
float2 l9_5369=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5368=l9_5369;
float2 l9_5370=float2(0.0);
l9_5370=l9_5367+l9_5368;
float l9_5371=0.0;
float l9_5372=(*sc_set0.UserUniforms).patternRotateId01;
l9_5371=l9_5372;
float2 l9_5373=float2(0.0);
float2 l9_5374=l9_5370;
float l9_5375=l9_5371;
float2 l9_5376=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5377=sin(radians(l9_5375));
float l9_5378=cos(radians(l9_5375));
float2 l9_5379=l9_5374-l9_5376;
l9_5379=float2(dot(float2(l9_5378,l9_5377),l9_5379),dot(float2(-l9_5377,l9_5378),l9_5379))+l9_5376;
l9_5373=l9_5379;
float4 l9_5380=float4(0.0);
int l9_5381;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5382=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5382=0;
}
else
{
l9_5382=in.varStereoViewID;
}
int l9_5383=l9_5382;
l9_5381=1-l9_5383;
}
else
{
int l9_5384=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5384=0;
}
else
{
l9_5384=in.varStereoViewID;
}
int l9_5385=l9_5384;
l9_5381=l9_5385;
}
int l9_5386=l9_5381;
int l9_5387=patternTextureId01Layout_tmp;
int l9_5388=l9_5386;
float2 l9_5389=l9_5373;
bool l9_5390=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5391=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5392=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5393=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5394=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5395=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5396=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5397=0.0;
bool l9_5398=l9_5395&&(!l9_5393);
float l9_5399=1.0;
float l9_5400=l9_5389.x;
int l9_5401=l9_5392.x;
if (l9_5401==1)
{
l9_5400=fract(l9_5400);
}
else
{
if (l9_5401==2)
{
float l9_5402=fract(l9_5400);
float l9_5403=l9_5400-l9_5402;
float l9_5404=step(0.25,fract(l9_5403*0.5));
l9_5400=mix(l9_5402,1.0-l9_5402,fast::clamp(l9_5404,0.0,1.0));
}
}
l9_5389.x=l9_5400;
float l9_5405=l9_5389.y;
int l9_5406=l9_5392.y;
if (l9_5406==1)
{
l9_5405=fract(l9_5405);
}
else
{
if (l9_5406==2)
{
float l9_5407=fract(l9_5405);
float l9_5408=l9_5405-l9_5407;
float l9_5409=step(0.25,fract(l9_5408*0.5));
l9_5405=mix(l9_5407,1.0-l9_5407,fast::clamp(l9_5409,0.0,1.0));
}
}
l9_5389.y=l9_5405;
if (l9_5393)
{
bool l9_5410=l9_5395;
bool l9_5411;
if (l9_5410)
{
l9_5411=l9_5392.x==3;
}
else
{
l9_5411=l9_5410;
}
float l9_5412=l9_5389.x;
float l9_5413=l9_5394.x;
float l9_5414=l9_5394.z;
bool l9_5415=l9_5411;
float l9_5416=l9_5399;
float l9_5417=fast::clamp(l9_5412,l9_5413,l9_5414);
float l9_5418=step(abs(l9_5412-l9_5417),9.9999997e-06);
l9_5416*=(l9_5418+((1.0-float(l9_5415))*(1.0-l9_5418)));
l9_5412=l9_5417;
l9_5389.x=l9_5412;
l9_5399=l9_5416;
bool l9_5419=l9_5395;
bool l9_5420;
if (l9_5419)
{
l9_5420=l9_5392.y==3;
}
else
{
l9_5420=l9_5419;
}
float l9_5421=l9_5389.y;
float l9_5422=l9_5394.y;
float l9_5423=l9_5394.w;
bool l9_5424=l9_5420;
float l9_5425=l9_5399;
float l9_5426=fast::clamp(l9_5421,l9_5422,l9_5423);
float l9_5427=step(abs(l9_5421-l9_5426),9.9999997e-06);
l9_5425*=(l9_5427+((1.0-float(l9_5424))*(1.0-l9_5427)));
l9_5421=l9_5426;
l9_5389.y=l9_5421;
l9_5399=l9_5425;
}
float2 l9_5428=l9_5389;
bool l9_5429=l9_5390;
float3x3 l9_5430=l9_5391;
if (l9_5429)
{
l9_5428=float2((l9_5430*float3(l9_5428,1.0)).xy);
}
float2 l9_5431=l9_5428;
l9_5389=l9_5431;
float l9_5432=l9_5389.x;
int l9_5433=l9_5392.x;
bool l9_5434=l9_5398;
float l9_5435=l9_5399;
if ((l9_5433==0)||(l9_5433==3))
{
float l9_5436=l9_5432;
float l9_5437=0.0;
float l9_5438=1.0;
bool l9_5439=l9_5434;
float l9_5440=l9_5435;
float l9_5441=fast::clamp(l9_5436,l9_5437,l9_5438);
float l9_5442=step(abs(l9_5436-l9_5441),9.9999997e-06);
l9_5440*=(l9_5442+((1.0-float(l9_5439))*(1.0-l9_5442)));
l9_5436=l9_5441;
l9_5432=l9_5436;
l9_5435=l9_5440;
}
l9_5389.x=l9_5432;
l9_5399=l9_5435;
float l9_5443=l9_5389.y;
int l9_5444=l9_5392.y;
bool l9_5445=l9_5398;
float l9_5446=l9_5399;
if ((l9_5444==0)||(l9_5444==3))
{
float l9_5447=l9_5443;
float l9_5448=0.0;
float l9_5449=1.0;
bool l9_5450=l9_5445;
float l9_5451=l9_5446;
float l9_5452=fast::clamp(l9_5447,l9_5448,l9_5449);
float l9_5453=step(abs(l9_5447-l9_5452),9.9999997e-06);
l9_5451*=(l9_5453+((1.0-float(l9_5450))*(1.0-l9_5453)));
l9_5447=l9_5452;
l9_5443=l9_5447;
l9_5446=l9_5451;
}
l9_5389.y=l9_5443;
l9_5399=l9_5446;
float2 l9_5454=l9_5389;
int l9_5455=l9_5387;
int l9_5456=l9_5388;
float l9_5457=l9_5397;
float2 l9_5458=l9_5454;
int l9_5459=l9_5455;
int l9_5460=l9_5456;
float3 l9_5461=float3(0.0);
if (l9_5459==0)
{
l9_5461=float3(l9_5458,0.0);
}
else
{
if (l9_5459==1)
{
l9_5461=float3(l9_5458.x,(l9_5458.y*0.5)+(0.5-(float(l9_5460)*0.5)),0.0);
}
else
{
l9_5461=float3(l9_5458,float(l9_5460));
}
}
float3 l9_5462=l9_5461;
float3 l9_5463=l9_5462;
float4 l9_5464=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5463.xy,bias(l9_5457));
float4 l9_5465=l9_5464;
if (l9_5395)
{
l9_5465=mix(l9_5396,l9_5465,float4(l9_5399));
}
float4 l9_5466=l9_5465;
l9_5380=l9_5466;
float l9_5467=0.0;
float3 l9_5468=l9_5380.xyz;
float l9_5469=l9_5468.x;
l9_5467=l9_5469;
l9_5256=float4(l9_5467);
l9_5260=l9_5256;
}
l9_5253=l9_5260;
float4 l9_5470=float4(0.0);
l9_5470=l9_5251*l9_5253;
l9_5245=l9_5470;
l9_5250=l9_5245;
}
else
{
float4 l9_5471=float4(0.0);
float4 l9_5472=(*sc_set0.UserUniforms).colorId01;
l9_5471=l9_5472;
float2 l9_5473=float2(0.0);
l9_5473=l9_5247.Surface_UVCoord0;
float4 l9_5474=float4(0.0);
int l9_5475;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5476=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5476=0;
}
else
{
l9_5476=in.varStereoViewID;
}
int l9_5477=l9_5476;
l9_5475=1-l9_5477;
}
else
{
int l9_5478=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5478=0;
}
else
{
l9_5478=in.varStereoViewID;
}
int l9_5479=l9_5478;
l9_5475=l9_5479;
}
int l9_5480=l9_5475;
int l9_5481=greyMaskIdLayout_tmp;
int l9_5482=l9_5480;
float2 l9_5483=l9_5473;
bool l9_5484=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5485=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5486=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5487=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5488=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5489=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5490=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5491=0.0;
bool l9_5492=l9_5489&&(!l9_5487);
float l9_5493=1.0;
float l9_5494=l9_5483.x;
int l9_5495=l9_5486.x;
if (l9_5495==1)
{
l9_5494=fract(l9_5494);
}
else
{
if (l9_5495==2)
{
float l9_5496=fract(l9_5494);
float l9_5497=l9_5494-l9_5496;
float l9_5498=step(0.25,fract(l9_5497*0.5));
l9_5494=mix(l9_5496,1.0-l9_5496,fast::clamp(l9_5498,0.0,1.0));
}
}
l9_5483.x=l9_5494;
float l9_5499=l9_5483.y;
int l9_5500=l9_5486.y;
if (l9_5500==1)
{
l9_5499=fract(l9_5499);
}
else
{
if (l9_5500==2)
{
float l9_5501=fract(l9_5499);
float l9_5502=l9_5499-l9_5501;
float l9_5503=step(0.25,fract(l9_5502*0.5));
l9_5499=mix(l9_5501,1.0-l9_5501,fast::clamp(l9_5503,0.0,1.0));
}
}
l9_5483.y=l9_5499;
if (l9_5487)
{
bool l9_5504=l9_5489;
bool l9_5505;
if (l9_5504)
{
l9_5505=l9_5486.x==3;
}
else
{
l9_5505=l9_5504;
}
float l9_5506=l9_5483.x;
float l9_5507=l9_5488.x;
float l9_5508=l9_5488.z;
bool l9_5509=l9_5505;
float l9_5510=l9_5493;
float l9_5511=fast::clamp(l9_5506,l9_5507,l9_5508);
float l9_5512=step(abs(l9_5506-l9_5511),9.9999997e-06);
l9_5510*=(l9_5512+((1.0-float(l9_5509))*(1.0-l9_5512)));
l9_5506=l9_5511;
l9_5483.x=l9_5506;
l9_5493=l9_5510;
bool l9_5513=l9_5489;
bool l9_5514;
if (l9_5513)
{
l9_5514=l9_5486.y==3;
}
else
{
l9_5514=l9_5513;
}
float l9_5515=l9_5483.y;
float l9_5516=l9_5488.y;
float l9_5517=l9_5488.w;
bool l9_5518=l9_5514;
float l9_5519=l9_5493;
float l9_5520=fast::clamp(l9_5515,l9_5516,l9_5517);
float l9_5521=step(abs(l9_5515-l9_5520),9.9999997e-06);
l9_5519*=(l9_5521+((1.0-float(l9_5518))*(1.0-l9_5521)));
l9_5515=l9_5520;
l9_5483.y=l9_5515;
l9_5493=l9_5519;
}
float2 l9_5522=l9_5483;
bool l9_5523=l9_5484;
float3x3 l9_5524=l9_5485;
if (l9_5523)
{
l9_5522=float2((l9_5524*float3(l9_5522,1.0)).xy);
}
float2 l9_5525=l9_5522;
l9_5483=l9_5525;
float l9_5526=l9_5483.x;
int l9_5527=l9_5486.x;
bool l9_5528=l9_5492;
float l9_5529=l9_5493;
if ((l9_5527==0)||(l9_5527==3))
{
float l9_5530=l9_5526;
float l9_5531=0.0;
float l9_5532=1.0;
bool l9_5533=l9_5528;
float l9_5534=l9_5529;
float l9_5535=fast::clamp(l9_5530,l9_5531,l9_5532);
float l9_5536=step(abs(l9_5530-l9_5535),9.9999997e-06);
l9_5534*=(l9_5536+((1.0-float(l9_5533))*(1.0-l9_5536)));
l9_5530=l9_5535;
l9_5526=l9_5530;
l9_5529=l9_5534;
}
l9_5483.x=l9_5526;
l9_5493=l9_5529;
float l9_5537=l9_5483.y;
int l9_5538=l9_5486.y;
bool l9_5539=l9_5492;
float l9_5540=l9_5493;
if ((l9_5538==0)||(l9_5538==3))
{
float l9_5541=l9_5537;
float l9_5542=0.0;
float l9_5543=1.0;
bool l9_5544=l9_5539;
float l9_5545=l9_5540;
float l9_5546=fast::clamp(l9_5541,l9_5542,l9_5543);
float l9_5547=step(abs(l9_5541-l9_5546),9.9999997e-06);
l9_5545*=(l9_5547+((1.0-float(l9_5544))*(1.0-l9_5547)));
l9_5541=l9_5546;
l9_5537=l9_5541;
l9_5540=l9_5545;
}
l9_5483.y=l9_5537;
l9_5493=l9_5540;
float2 l9_5548=l9_5483;
int l9_5549=l9_5481;
int l9_5550=l9_5482;
float l9_5551=l9_5491;
float2 l9_5552=l9_5548;
int l9_5553=l9_5549;
int l9_5554=l9_5550;
float3 l9_5555=float3(0.0);
if (l9_5553==0)
{
l9_5555=float3(l9_5552,0.0);
}
else
{
if (l9_5553==1)
{
l9_5555=float3(l9_5552.x,(l9_5552.y*0.5)+(0.5-(float(l9_5554)*0.5)),0.0);
}
else
{
l9_5555=float3(l9_5552,float(l9_5554));
}
}
float3 l9_5556=l9_5555;
float3 l9_5557=l9_5556;
float4 l9_5558=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5557.xy,bias(l9_5551));
float4 l9_5559=l9_5558;
if (l9_5489)
{
l9_5559=mix(l9_5490,l9_5559,float4(l9_5493));
}
float4 l9_5560=l9_5559;
l9_5474=l9_5560;
float l9_5561=0.0;
l9_5561=l9_5474.x;
float l9_5562=0.0;
l9_5562=step(l9_5561,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5563=float4(0.0);
l9_5563=l9_5471*float4(l9_5562);
l9_5246=l9_5563;
l9_5250=l9_5246;
}
l9_5243=l9_5250;
float2 l9_5564=float2(0.0);
l9_5564=l9_4805.Surface_UVCoord0;
float4 l9_5565=float4(0.0);
int l9_5566;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5567=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5567=0;
}
else
{
l9_5567=in.varStereoViewID;
}
int l9_5568=l9_5567;
l9_5566=1-l9_5568;
}
else
{
int l9_5569=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5569=0;
}
else
{
l9_5569=in.varStereoViewID;
}
int l9_5570=l9_5569;
l9_5566=l9_5570;
}
int l9_5571=l9_5566;
int l9_5572=greyMaskIdLayout_tmp;
int l9_5573=l9_5571;
float2 l9_5574=l9_5564;
bool l9_5575=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5576=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5577=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5578=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5579=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5580=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5581=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5582=0.0;
bool l9_5583=l9_5580&&(!l9_5578);
float l9_5584=1.0;
float l9_5585=l9_5574.x;
int l9_5586=l9_5577.x;
if (l9_5586==1)
{
l9_5585=fract(l9_5585);
}
else
{
if (l9_5586==2)
{
float l9_5587=fract(l9_5585);
float l9_5588=l9_5585-l9_5587;
float l9_5589=step(0.25,fract(l9_5588*0.5));
l9_5585=mix(l9_5587,1.0-l9_5587,fast::clamp(l9_5589,0.0,1.0));
}
}
l9_5574.x=l9_5585;
float l9_5590=l9_5574.y;
int l9_5591=l9_5577.y;
if (l9_5591==1)
{
l9_5590=fract(l9_5590);
}
else
{
if (l9_5591==2)
{
float l9_5592=fract(l9_5590);
float l9_5593=l9_5590-l9_5592;
float l9_5594=step(0.25,fract(l9_5593*0.5));
l9_5590=mix(l9_5592,1.0-l9_5592,fast::clamp(l9_5594,0.0,1.0));
}
}
l9_5574.y=l9_5590;
if (l9_5578)
{
bool l9_5595=l9_5580;
bool l9_5596;
if (l9_5595)
{
l9_5596=l9_5577.x==3;
}
else
{
l9_5596=l9_5595;
}
float l9_5597=l9_5574.x;
float l9_5598=l9_5579.x;
float l9_5599=l9_5579.z;
bool l9_5600=l9_5596;
float l9_5601=l9_5584;
float l9_5602=fast::clamp(l9_5597,l9_5598,l9_5599);
float l9_5603=step(abs(l9_5597-l9_5602),9.9999997e-06);
l9_5601*=(l9_5603+((1.0-float(l9_5600))*(1.0-l9_5603)));
l9_5597=l9_5602;
l9_5574.x=l9_5597;
l9_5584=l9_5601;
bool l9_5604=l9_5580;
bool l9_5605;
if (l9_5604)
{
l9_5605=l9_5577.y==3;
}
else
{
l9_5605=l9_5604;
}
float l9_5606=l9_5574.y;
float l9_5607=l9_5579.y;
float l9_5608=l9_5579.w;
bool l9_5609=l9_5605;
float l9_5610=l9_5584;
float l9_5611=fast::clamp(l9_5606,l9_5607,l9_5608);
float l9_5612=step(abs(l9_5606-l9_5611),9.9999997e-06);
l9_5610*=(l9_5612+((1.0-float(l9_5609))*(1.0-l9_5612)));
l9_5606=l9_5611;
l9_5574.y=l9_5606;
l9_5584=l9_5610;
}
float2 l9_5613=l9_5574;
bool l9_5614=l9_5575;
float3x3 l9_5615=l9_5576;
if (l9_5614)
{
l9_5613=float2((l9_5615*float3(l9_5613,1.0)).xy);
}
float2 l9_5616=l9_5613;
l9_5574=l9_5616;
float l9_5617=l9_5574.x;
int l9_5618=l9_5577.x;
bool l9_5619=l9_5583;
float l9_5620=l9_5584;
if ((l9_5618==0)||(l9_5618==3))
{
float l9_5621=l9_5617;
float l9_5622=0.0;
float l9_5623=1.0;
bool l9_5624=l9_5619;
float l9_5625=l9_5620;
float l9_5626=fast::clamp(l9_5621,l9_5622,l9_5623);
float l9_5627=step(abs(l9_5621-l9_5626),9.9999997e-06);
l9_5625*=(l9_5627+((1.0-float(l9_5624))*(1.0-l9_5627)));
l9_5621=l9_5626;
l9_5617=l9_5621;
l9_5620=l9_5625;
}
l9_5574.x=l9_5617;
l9_5584=l9_5620;
float l9_5628=l9_5574.y;
int l9_5629=l9_5577.y;
bool l9_5630=l9_5583;
float l9_5631=l9_5584;
if ((l9_5629==0)||(l9_5629==3))
{
float l9_5632=l9_5628;
float l9_5633=0.0;
float l9_5634=1.0;
bool l9_5635=l9_5630;
float l9_5636=l9_5631;
float l9_5637=fast::clamp(l9_5632,l9_5633,l9_5634);
float l9_5638=step(abs(l9_5632-l9_5637),9.9999997e-06);
l9_5636*=(l9_5638+((1.0-float(l9_5635))*(1.0-l9_5638)));
l9_5632=l9_5637;
l9_5628=l9_5632;
l9_5631=l9_5636;
}
l9_5574.y=l9_5628;
l9_5584=l9_5631;
float2 l9_5639=l9_5574;
int l9_5640=l9_5572;
int l9_5641=l9_5573;
float l9_5642=l9_5582;
float2 l9_5643=l9_5639;
int l9_5644=l9_5640;
int l9_5645=l9_5641;
float3 l9_5646=float3(0.0);
if (l9_5644==0)
{
l9_5646=float3(l9_5643,0.0);
}
else
{
if (l9_5644==1)
{
l9_5646=float3(l9_5643.x,(l9_5643.y*0.5)+(0.5-(float(l9_5645)*0.5)),0.0);
}
else
{
l9_5646=float3(l9_5643,float(l9_5645));
}
}
float3 l9_5647=l9_5646;
float3 l9_5648=l9_5647;
float4 l9_5649=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5648.xy,bias(l9_5642));
float4 l9_5650=l9_5649;
if (l9_5580)
{
l9_5650=mix(l9_5581,l9_5650,float4(l9_5584));
}
float4 l9_5651=l9_5650;
l9_5565=l9_5651;
float l9_5652=0.0;
l9_5652=l9_5565.x;
float l9_5653=0.0;
l9_5653=step(l9_5652,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5654=float4(0.0);
l9_5654=l9_5243*float4(l9_5653);
float4 l9_5655=float4(0.0);
float4 l9_5656=(*sc_set0.UserUniforms).colorId01;
l9_5655=l9_5656;
float4 l9_5657=float4(0.0);
l9_5657=l9_5655*float4(l9_5653);
float4 l9_5658=float4(0.0);
float4 l9_5659=l9_5654;
float4 l9_5660=l9_5657;
float4 l9_5661=l9_5659;
float4 l9_5662=l9_5660;
float3 l9_5663=l9_5661.xyz*l9_5661.w;
l9_5661=float4(l9_5663.x,l9_5663.y,l9_5663.z,l9_5661.w);
float4 l9_5664=l9_5661+(l9_5662*(1.0-l9_5661.w));
l9_5658=l9_5664;
l9_4804=l9_5658;
l9_4808=l9_4804;
}
l9_4801=l9_4808;
l9_3904=l9_4801;
l9_3908=l9_3904;
}
l9_3901=l9_3908;
float2 l9_5665=float2(0.0);
l9_5665=l9_1952.Surface_UVCoord0;
float4 l9_5666=float4(0.0);
int l9_5667;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5668=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5668=0;
}
else
{
l9_5668=in.varStereoViewID;
}
int l9_5669=l9_5668;
l9_5667=1-l9_5669;
}
else
{
int l9_5670=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5670=0;
}
else
{
l9_5670=in.varStereoViewID;
}
int l9_5671=l9_5670;
l9_5667=l9_5671;
}
int l9_5672=l9_5667;
int l9_5673=greyMaskIdLayout_tmp;
int l9_5674=l9_5672;
float2 l9_5675=l9_5665;
bool l9_5676=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5677=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5678=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5679=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5680=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5681=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5682=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5683=0.0;
bool l9_5684=l9_5681&&(!l9_5679);
float l9_5685=1.0;
float l9_5686=l9_5675.x;
int l9_5687=l9_5678.x;
if (l9_5687==1)
{
l9_5686=fract(l9_5686);
}
else
{
if (l9_5687==2)
{
float l9_5688=fract(l9_5686);
float l9_5689=l9_5686-l9_5688;
float l9_5690=step(0.25,fract(l9_5689*0.5));
l9_5686=mix(l9_5688,1.0-l9_5688,fast::clamp(l9_5690,0.0,1.0));
}
}
l9_5675.x=l9_5686;
float l9_5691=l9_5675.y;
int l9_5692=l9_5678.y;
if (l9_5692==1)
{
l9_5691=fract(l9_5691);
}
else
{
if (l9_5692==2)
{
float l9_5693=fract(l9_5691);
float l9_5694=l9_5691-l9_5693;
float l9_5695=step(0.25,fract(l9_5694*0.5));
l9_5691=mix(l9_5693,1.0-l9_5693,fast::clamp(l9_5695,0.0,1.0));
}
}
l9_5675.y=l9_5691;
if (l9_5679)
{
bool l9_5696=l9_5681;
bool l9_5697;
if (l9_5696)
{
l9_5697=l9_5678.x==3;
}
else
{
l9_5697=l9_5696;
}
float l9_5698=l9_5675.x;
float l9_5699=l9_5680.x;
float l9_5700=l9_5680.z;
bool l9_5701=l9_5697;
float l9_5702=l9_5685;
float l9_5703=fast::clamp(l9_5698,l9_5699,l9_5700);
float l9_5704=step(abs(l9_5698-l9_5703),9.9999997e-06);
l9_5702*=(l9_5704+((1.0-float(l9_5701))*(1.0-l9_5704)));
l9_5698=l9_5703;
l9_5675.x=l9_5698;
l9_5685=l9_5702;
bool l9_5705=l9_5681;
bool l9_5706;
if (l9_5705)
{
l9_5706=l9_5678.y==3;
}
else
{
l9_5706=l9_5705;
}
float l9_5707=l9_5675.y;
float l9_5708=l9_5680.y;
float l9_5709=l9_5680.w;
bool l9_5710=l9_5706;
float l9_5711=l9_5685;
float l9_5712=fast::clamp(l9_5707,l9_5708,l9_5709);
float l9_5713=step(abs(l9_5707-l9_5712),9.9999997e-06);
l9_5711*=(l9_5713+((1.0-float(l9_5710))*(1.0-l9_5713)));
l9_5707=l9_5712;
l9_5675.y=l9_5707;
l9_5685=l9_5711;
}
float2 l9_5714=l9_5675;
bool l9_5715=l9_5676;
float3x3 l9_5716=l9_5677;
if (l9_5715)
{
l9_5714=float2((l9_5716*float3(l9_5714,1.0)).xy);
}
float2 l9_5717=l9_5714;
l9_5675=l9_5717;
float l9_5718=l9_5675.x;
int l9_5719=l9_5678.x;
bool l9_5720=l9_5684;
float l9_5721=l9_5685;
if ((l9_5719==0)||(l9_5719==3))
{
float l9_5722=l9_5718;
float l9_5723=0.0;
float l9_5724=1.0;
bool l9_5725=l9_5720;
float l9_5726=l9_5721;
float l9_5727=fast::clamp(l9_5722,l9_5723,l9_5724);
float l9_5728=step(abs(l9_5722-l9_5727),9.9999997e-06);
l9_5726*=(l9_5728+((1.0-float(l9_5725))*(1.0-l9_5728)));
l9_5722=l9_5727;
l9_5718=l9_5722;
l9_5721=l9_5726;
}
l9_5675.x=l9_5718;
l9_5685=l9_5721;
float l9_5729=l9_5675.y;
int l9_5730=l9_5678.y;
bool l9_5731=l9_5684;
float l9_5732=l9_5685;
if ((l9_5730==0)||(l9_5730==3))
{
float l9_5733=l9_5729;
float l9_5734=0.0;
float l9_5735=1.0;
bool l9_5736=l9_5731;
float l9_5737=l9_5732;
float l9_5738=fast::clamp(l9_5733,l9_5734,l9_5735);
float l9_5739=step(abs(l9_5733-l9_5738),9.9999997e-06);
l9_5737*=(l9_5739+((1.0-float(l9_5736))*(1.0-l9_5739)));
l9_5733=l9_5738;
l9_5729=l9_5733;
l9_5732=l9_5737;
}
l9_5675.y=l9_5729;
l9_5685=l9_5732;
float2 l9_5740=l9_5675;
int l9_5741=l9_5673;
int l9_5742=l9_5674;
float l9_5743=l9_5683;
float2 l9_5744=l9_5740;
int l9_5745=l9_5741;
int l9_5746=l9_5742;
float3 l9_5747=float3(0.0);
if (l9_5745==0)
{
l9_5747=float3(l9_5744,0.0);
}
else
{
if (l9_5745==1)
{
l9_5747=float3(l9_5744.x,(l9_5744.y*0.5)+(0.5-(float(l9_5746)*0.5)),0.0);
}
else
{
l9_5747=float3(l9_5744,float(l9_5746));
}
}
float3 l9_5748=l9_5747;
float3 l9_5749=l9_5748;
float4 l9_5750=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5749.xy,bias(l9_5743));
float4 l9_5751=l9_5750;
if (l9_5681)
{
l9_5751=mix(l9_5682,l9_5751,float4(l9_5685));
}
float4 l9_5752=l9_5751;
l9_5666=l9_5752;
float l9_5753=0.0;
l9_5753=l9_5666.x;
float l9_5754=0.0;
l9_5754=step(l9_5753,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5755=float4(0.0);
l9_5755=l9_3901*float4(l9_5754);
float4 l9_5756=float4(0.0);
float4 l9_5757=l9_3900;
float4 l9_5758=l9_5755;
float4 l9_5759=l9_5757;
float4 l9_5760=l9_5758;
float3 l9_5761=l9_5759.xyz*l9_5759.w;
l9_5759=float4(l9_5761.x,l9_5761.y,l9_5761.z,l9_5759.w);
float4 l9_5762=l9_5759+(l9_5760*(1.0-l9_5759.w));
l9_5756=l9_5762;
l9_1950=l9_5756;
l9_1955=l9_1950;
}
else
{
float4 l9_5763=float4(0.0);
float l9_5764=0.0;
float4 l9_5765=float4(0.0);
float4 l9_5766=float4(0.0);
ssGlobals l9_5767=l9_1952;
float l9_5768=0.0;
float l9_5769=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_5768=l9_5769;
l9_5764=l9_5768;
float4 l9_5770;
if ((l9_5764*1.0)!=0.0)
{
float4 l9_5771=float4(0.0);
float l9_5772=0.0;
float4 l9_5773=float4(0.0);
float4 l9_5774=float4(0.0);
ssGlobals l9_5775=l9_5767;
float l9_5776=0.0;
float l9_5777=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_5776=l9_5777;
l9_5772=l9_5776;
float4 l9_5778;
if ((l9_5772*1.0)!=0.0)
{
float l9_5779=0.0;
float l9_5780=(*sc_set0.UserUniforms).rimExpId01;
l9_5779=l9_5780;
float l9_5781=0.0;
float l9_5782=(*sc_set0.UserUniforms).rimIntId01;
l9_5781=l9_5782;
float l9_5783=0.0;
float l9_5784=l9_5779;
float l9_5785=l9_5781;
ssGlobals l9_5786=l9_5775;
float l9_5787=abs(dot(-l9_5786.ViewDirWS,l9_5786.VertexNormal_WorldSpace));
float l9_5788=1.0-pow(1.0-l9_5787,l9_5784);
l9_5788=fast::max(l9_5788,0.0);
l9_5788*=l9_5785;
l9_5783=l9_5788;
float4 l9_5789=float4(0.0);
float l9_5790=0.0;
float4 l9_5791=float4(0.0);
float4 l9_5792=float4(0.0);
ssGlobals l9_5793=l9_5775;
float l9_5794=0.0;
float l9_5795=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_5794=l9_5795;
l9_5790=l9_5794;
float4 l9_5796;
if ((l9_5790*1.0)!=0.0)
{
float4 l9_5797=float4(0.0);
float4 l9_5798=(*sc_set0.UserUniforms).patternColorId01;
l9_5797=l9_5798;
float4 l9_5799=float4(0.0);
float l9_5800=0.0;
float4 l9_5801=float4(0.0);
float4 l9_5802=float4(0.0);
ssGlobals l9_5803=l9_5793;
float l9_5804=0.0;
float l9_5805=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_5804=l9_5805;
l9_5800=l9_5804;
float4 l9_5806;
if ((l9_5800*1.0)!=0.0)
{
float2 l9_5807=float2(0.0);
l9_5807=l9_5803.Surface_UVCoord0;
float2 l9_5808=float2(0.0);
float2 l9_5809=(*sc_set0.UserUniforms).patternScaleId01;
l9_5808=l9_5809;
float2 l9_5810=float2(0.0);
l9_5810=((l9_5807-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5808)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5811=float2(0.0);
float2 l9_5812=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5811=l9_5812;
float2 l9_5813=float2(0.0);
l9_5813=l9_5810+l9_5811;
float l9_5814=0.0;
float l9_5815=(*sc_set0.UserUniforms).patternRotateId01;
l9_5814=l9_5815;
float2 l9_5816=float2(0.0);
float2 l9_5817=l9_5813;
float l9_5818=l9_5814;
float2 l9_5819=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5820=sin(radians(l9_5818));
float l9_5821=cos(radians(l9_5818));
float2 l9_5822=l9_5817-l9_5819;
l9_5822=float2(dot(float2(l9_5821,l9_5820),l9_5822),dot(float2(-l9_5820,l9_5821),l9_5822))+l9_5819;
l9_5816=l9_5822;
float4 l9_5823=float4(0.0);
int l9_5824;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5825=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5825=0;
}
else
{
l9_5825=in.varStereoViewID;
}
int l9_5826=l9_5825;
l9_5824=1-l9_5826;
}
else
{
int l9_5827=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5827=0;
}
else
{
l9_5827=in.varStereoViewID;
}
int l9_5828=l9_5827;
l9_5824=l9_5828;
}
int l9_5829=l9_5824;
int l9_5830=patternTextureId01Layout_tmp;
int l9_5831=l9_5829;
float2 l9_5832=l9_5816;
bool l9_5833=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5834=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5835=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5836=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5837=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5838=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5839=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5840=0.0;
bool l9_5841=l9_5838&&(!l9_5836);
float l9_5842=1.0;
float l9_5843=l9_5832.x;
int l9_5844=l9_5835.x;
if (l9_5844==1)
{
l9_5843=fract(l9_5843);
}
else
{
if (l9_5844==2)
{
float l9_5845=fract(l9_5843);
float l9_5846=l9_5843-l9_5845;
float l9_5847=step(0.25,fract(l9_5846*0.5));
l9_5843=mix(l9_5845,1.0-l9_5845,fast::clamp(l9_5847,0.0,1.0));
}
}
l9_5832.x=l9_5843;
float l9_5848=l9_5832.y;
int l9_5849=l9_5835.y;
if (l9_5849==1)
{
l9_5848=fract(l9_5848);
}
else
{
if (l9_5849==2)
{
float l9_5850=fract(l9_5848);
float l9_5851=l9_5848-l9_5850;
float l9_5852=step(0.25,fract(l9_5851*0.5));
l9_5848=mix(l9_5850,1.0-l9_5850,fast::clamp(l9_5852,0.0,1.0));
}
}
l9_5832.y=l9_5848;
if (l9_5836)
{
bool l9_5853=l9_5838;
bool l9_5854;
if (l9_5853)
{
l9_5854=l9_5835.x==3;
}
else
{
l9_5854=l9_5853;
}
float l9_5855=l9_5832.x;
float l9_5856=l9_5837.x;
float l9_5857=l9_5837.z;
bool l9_5858=l9_5854;
float l9_5859=l9_5842;
float l9_5860=fast::clamp(l9_5855,l9_5856,l9_5857);
float l9_5861=step(abs(l9_5855-l9_5860),9.9999997e-06);
l9_5859*=(l9_5861+((1.0-float(l9_5858))*(1.0-l9_5861)));
l9_5855=l9_5860;
l9_5832.x=l9_5855;
l9_5842=l9_5859;
bool l9_5862=l9_5838;
bool l9_5863;
if (l9_5862)
{
l9_5863=l9_5835.y==3;
}
else
{
l9_5863=l9_5862;
}
float l9_5864=l9_5832.y;
float l9_5865=l9_5837.y;
float l9_5866=l9_5837.w;
bool l9_5867=l9_5863;
float l9_5868=l9_5842;
float l9_5869=fast::clamp(l9_5864,l9_5865,l9_5866);
float l9_5870=step(abs(l9_5864-l9_5869),9.9999997e-06);
l9_5868*=(l9_5870+((1.0-float(l9_5867))*(1.0-l9_5870)));
l9_5864=l9_5869;
l9_5832.y=l9_5864;
l9_5842=l9_5868;
}
float2 l9_5871=l9_5832;
bool l9_5872=l9_5833;
float3x3 l9_5873=l9_5834;
if (l9_5872)
{
l9_5871=float2((l9_5873*float3(l9_5871,1.0)).xy);
}
float2 l9_5874=l9_5871;
l9_5832=l9_5874;
float l9_5875=l9_5832.x;
int l9_5876=l9_5835.x;
bool l9_5877=l9_5841;
float l9_5878=l9_5842;
if ((l9_5876==0)||(l9_5876==3))
{
float l9_5879=l9_5875;
float l9_5880=0.0;
float l9_5881=1.0;
bool l9_5882=l9_5877;
float l9_5883=l9_5878;
float l9_5884=fast::clamp(l9_5879,l9_5880,l9_5881);
float l9_5885=step(abs(l9_5879-l9_5884),9.9999997e-06);
l9_5883*=(l9_5885+((1.0-float(l9_5882))*(1.0-l9_5885)));
l9_5879=l9_5884;
l9_5875=l9_5879;
l9_5878=l9_5883;
}
l9_5832.x=l9_5875;
l9_5842=l9_5878;
float l9_5886=l9_5832.y;
int l9_5887=l9_5835.y;
bool l9_5888=l9_5841;
float l9_5889=l9_5842;
if ((l9_5887==0)||(l9_5887==3))
{
float l9_5890=l9_5886;
float l9_5891=0.0;
float l9_5892=1.0;
bool l9_5893=l9_5888;
float l9_5894=l9_5889;
float l9_5895=fast::clamp(l9_5890,l9_5891,l9_5892);
float l9_5896=step(abs(l9_5890-l9_5895),9.9999997e-06);
l9_5894*=(l9_5896+((1.0-float(l9_5893))*(1.0-l9_5896)));
l9_5890=l9_5895;
l9_5886=l9_5890;
l9_5889=l9_5894;
}
l9_5832.y=l9_5886;
l9_5842=l9_5889;
float2 l9_5897=l9_5832;
int l9_5898=l9_5830;
int l9_5899=l9_5831;
float l9_5900=l9_5840;
float2 l9_5901=l9_5897;
int l9_5902=l9_5898;
int l9_5903=l9_5899;
float3 l9_5904=float3(0.0);
if (l9_5902==0)
{
l9_5904=float3(l9_5901,0.0);
}
else
{
if (l9_5902==1)
{
l9_5904=float3(l9_5901.x,(l9_5901.y*0.5)+(0.5-(float(l9_5903)*0.5)),0.0);
}
else
{
l9_5904=float3(l9_5901,float(l9_5903));
}
}
float3 l9_5905=l9_5904;
float3 l9_5906=l9_5905;
float4 l9_5907=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5906.xy,bias(l9_5900));
float4 l9_5908=l9_5907;
if (l9_5838)
{
l9_5908=mix(l9_5839,l9_5908,float4(l9_5842));
}
float4 l9_5909=l9_5908;
l9_5823=l9_5909;
l9_5801=l9_5823;
l9_5806=l9_5801;
}
else
{
float2 l9_5910=float2(0.0);
l9_5910=l9_5803.Surface_UVCoord0;
float2 l9_5911=float2(0.0);
float2 l9_5912=(*sc_set0.UserUniforms).patternScaleId01;
l9_5911=l9_5912;
float2 l9_5913=float2(0.0);
l9_5913=((l9_5910-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5911)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5914=float2(0.0);
float2 l9_5915=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5914=l9_5915;
float2 l9_5916=float2(0.0);
l9_5916=l9_5913+l9_5914;
float l9_5917=0.0;
float l9_5918=(*sc_set0.UserUniforms).patternRotateId01;
l9_5917=l9_5918;
float2 l9_5919=float2(0.0);
float2 l9_5920=l9_5916;
float l9_5921=l9_5917;
float2 l9_5922=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5923=sin(radians(l9_5921));
float l9_5924=cos(radians(l9_5921));
float2 l9_5925=l9_5920-l9_5922;
l9_5925=float2(dot(float2(l9_5924,l9_5923),l9_5925),dot(float2(-l9_5923,l9_5924),l9_5925))+l9_5922;
l9_5919=l9_5925;
float4 l9_5926=float4(0.0);
int l9_5927;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5928=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5928=0;
}
else
{
l9_5928=in.varStereoViewID;
}
int l9_5929=l9_5928;
l9_5927=1-l9_5929;
}
else
{
int l9_5930=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5930=0;
}
else
{
l9_5930=in.varStereoViewID;
}
int l9_5931=l9_5930;
l9_5927=l9_5931;
}
int l9_5932=l9_5927;
int l9_5933=patternTextureId01Layout_tmp;
int l9_5934=l9_5932;
float2 l9_5935=l9_5919;
bool l9_5936=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5937=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5938=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5939=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5940=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5941=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5942=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5943=0.0;
bool l9_5944=l9_5941&&(!l9_5939);
float l9_5945=1.0;
float l9_5946=l9_5935.x;
int l9_5947=l9_5938.x;
if (l9_5947==1)
{
l9_5946=fract(l9_5946);
}
else
{
if (l9_5947==2)
{
float l9_5948=fract(l9_5946);
float l9_5949=l9_5946-l9_5948;
float l9_5950=step(0.25,fract(l9_5949*0.5));
l9_5946=mix(l9_5948,1.0-l9_5948,fast::clamp(l9_5950,0.0,1.0));
}
}
l9_5935.x=l9_5946;
float l9_5951=l9_5935.y;
int l9_5952=l9_5938.y;
if (l9_5952==1)
{
l9_5951=fract(l9_5951);
}
else
{
if (l9_5952==2)
{
float l9_5953=fract(l9_5951);
float l9_5954=l9_5951-l9_5953;
float l9_5955=step(0.25,fract(l9_5954*0.5));
l9_5951=mix(l9_5953,1.0-l9_5953,fast::clamp(l9_5955,0.0,1.0));
}
}
l9_5935.y=l9_5951;
if (l9_5939)
{
bool l9_5956=l9_5941;
bool l9_5957;
if (l9_5956)
{
l9_5957=l9_5938.x==3;
}
else
{
l9_5957=l9_5956;
}
float l9_5958=l9_5935.x;
float l9_5959=l9_5940.x;
float l9_5960=l9_5940.z;
bool l9_5961=l9_5957;
float l9_5962=l9_5945;
float l9_5963=fast::clamp(l9_5958,l9_5959,l9_5960);
float l9_5964=step(abs(l9_5958-l9_5963),9.9999997e-06);
l9_5962*=(l9_5964+((1.0-float(l9_5961))*(1.0-l9_5964)));
l9_5958=l9_5963;
l9_5935.x=l9_5958;
l9_5945=l9_5962;
bool l9_5965=l9_5941;
bool l9_5966;
if (l9_5965)
{
l9_5966=l9_5938.y==3;
}
else
{
l9_5966=l9_5965;
}
float l9_5967=l9_5935.y;
float l9_5968=l9_5940.y;
float l9_5969=l9_5940.w;
bool l9_5970=l9_5966;
float l9_5971=l9_5945;
float l9_5972=fast::clamp(l9_5967,l9_5968,l9_5969);
float l9_5973=step(abs(l9_5967-l9_5972),9.9999997e-06);
l9_5971*=(l9_5973+((1.0-float(l9_5970))*(1.0-l9_5973)));
l9_5967=l9_5972;
l9_5935.y=l9_5967;
l9_5945=l9_5971;
}
float2 l9_5974=l9_5935;
bool l9_5975=l9_5936;
float3x3 l9_5976=l9_5937;
if (l9_5975)
{
l9_5974=float2((l9_5976*float3(l9_5974,1.0)).xy);
}
float2 l9_5977=l9_5974;
l9_5935=l9_5977;
float l9_5978=l9_5935.x;
int l9_5979=l9_5938.x;
bool l9_5980=l9_5944;
float l9_5981=l9_5945;
if ((l9_5979==0)||(l9_5979==3))
{
float l9_5982=l9_5978;
float l9_5983=0.0;
float l9_5984=1.0;
bool l9_5985=l9_5980;
float l9_5986=l9_5981;
float l9_5987=fast::clamp(l9_5982,l9_5983,l9_5984);
float l9_5988=step(abs(l9_5982-l9_5987),9.9999997e-06);
l9_5986*=(l9_5988+((1.0-float(l9_5985))*(1.0-l9_5988)));
l9_5982=l9_5987;
l9_5978=l9_5982;
l9_5981=l9_5986;
}
l9_5935.x=l9_5978;
l9_5945=l9_5981;
float l9_5989=l9_5935.y;
int l9_5990=l9_5938.y;
bool l9_5991=l9_5944;
float l9_5992=l9_5945;
if ((l9_5990==0)||(l9_5990==3))
{
float l9_5993=l9_5989;
float l9_5994=0.0;
float l9_5995=1.0;
bool l9_5996=l9_5991;
float l9_5997=l9_5992;
float l9_5998=fast::clamp(l9_5993,l9_5994,l9_5995);
float l9_5999=step(abs(l9_5993-l9_5998),9.9999997e-06);
l9_5997*=(l9_5999+((1.0-float(l9_5996))*(1.0-l9_5999)));
l9_5993=l9_5998;
l9_5989=l9_5993;
l9_5992=l9_5997;
}
l9_5935.y=l9_5989;
l9_5945=l9_5992;
float2 l9_6000=l9_5935;
int l9_6001=l9_5933;
int l9_6002=l9_5934;
float l9_6003=l9_5943;
float2 l9_6004=l9_6000;
int l9_6005=l9_6001;
int l9_6006=l9_6002;
float3 l9_6007=float3(0.0);
if (l9_6005==0)
{
l9_6007=float3(l9_6004,0.0);
}
else
{
if (l9_6005==1)
{
l9_6007=float3(l9_6004.x,(l9_6004.y*0.5)+(0.5-(float(l9_6006)*0.5)),0.0);
}
else
{
l9_6007=float3(l9_6004,float(l9_6006));
}
}
float3 l9_6008=l9_6007;
float3 l9_6009=l9_6008;
float4 l9_6010=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_6009.xy,bias(l9_6003));
float4 l9_6011=l9_6010;
if (l9_5941)
{
l9_6011=mix(l9_5942,l9_6011,float4(l9_5945));
}
float4 l9_6012=l9_6011;
l9_5926=l9_6012;
float l9_6013=0.0;
float3 l9_6014=l9_5926.xyz;
float l9_6015=l9_6014.x;
l9_6013=l9_6015;
l9_5802=float4(l9_6013);
l9_5806=l9_5802;
}
l9_5799=l9_5806;
float4 l9_6016=float4(0.0);
l9_6016=l9_5797*l9_5799;
l9_5791=l9_6016;
l9_5796=l9_5791;
}
else
{
float4 l9_6017=float4(0.0);
float4 l9_6018=(*sc_set0.UserUniforms).colorId01;
l9_6017=l9_6018;
float2 l9_6019=float2(0.0);
l9_6019=l9_5793.Surface_UVCoord0;
float4 l9_6020=float4(0.0);
int l9_6021;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_6022=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6022=0;
}
else
{
l9_6022=in.varStereoViewID;
}
int l9_6023=l9_6022;
l9_6021=1-l9_6023;
}
else
{
int l9_6024=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6024=0;
}
else
{
l9_6024=in.varStereoViewID;
}
int l9_6025=l9_6024;
l9_6021=l9_6025;
}
int l9_6026=l9_6021;
int l9_6027=greyMaskIdLayout_tmp;
int l9_6028=l9_6026;
float2 l9_6029=l9_6019;
bool l9_6030=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_6031=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_6032=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_6033=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_6034=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_6035=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_6036=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_6037=0.0;
bool l9_6038=l9_6035&&(!l9_6033);
float l9_6039=1.0;
float l9_6040=l9_6029.x;
int l9_6041=l9_6032.x;
if (l9_6041==1)
{
l9_6040=fract(l9_6040);
}
else
{
if (l9_6041==2)
{
float l9_6042=fract(l9_6040);
float l9_6043=l9_6040-l9_6042;
float l9_6044=step(0.25,fract(l9_6043*0.5));
l9_6040=mix(l9_6042,1.0-l9_6042,fast::clamp(l9_6044,0.0,1.0));
}
}
l9_6029.x=l9_6040;
float l9_6045=l9_6029.y;
int l9_6046=l9_6032.y;
if (l9_6046==1)
{
l9_6045=fract(l9_6045);
}
else
{
if (l9_6046==2)
{
float l9_6047=fract(l9_6045);
float l9_6048=l9_6045-l9_6047;
float l9_6049=step(0.25,fract(l9_6048*0.5));
l9_6045=mix(l9_6047,1.0-l9_6047,fast::clamp(l9_6049,0.0,1.0));
}
}
l9_6029.y=l9_6045;
if (l9_6033)
{
bool l9_6050=l9_6035;
bool l9_6051;
if (l9_6050)
{
l9_6051=l9_6032.x==3;
}
else
{
l9_6051=l9_6050;
}
float l9_6052=l9_6029.x;
float l9_6053=l9_6034.x;
float l9_6054=l9_6034.z;
bool l9_6055=l9_6051;
float l9_6056=l9_6039;
float l9_6057=fast::clamp(l9_6052,l9_6053,l9_6054);
float l9_6058=step(abs(l9_6052-l9_6057),9.9999997e-06);
l9_6056*=(l9_6058+((1.0-float(l9_6055))*(1.0-l9_6058)));
l9_6052=l9_6057;
l9_6029.x=l9_6052;
l9_6039=l9_6056;
bool l9_6059=l9_6035;
bool l9_6060;
if (l9_6059)
{
l9_6060=l9_6032.y==3;
}
else
{
l9_6060=l9_6059;
}
float l9_6061=l9_6029.y;
float l9_6062=l9_6034.y;
float l9_6063=l9_6034.w;
bool l9_6064=l9_6060;
float l9_6065=l9_6039;
float l9_6066=fast::clamp(l9_6061,l9_6062,l9_6063);
float l9_6067=step(abs(l9_6061-l9_6066),9.9999997e-06);
l9_6065*=(l9_6067+((1.0-float(l9_6064))*(1.0-l9_6067)));
l9_6061=l9_6066;
l9_6029.y=l9_6061;
l9_6039=l9_6065;
}
float2 l9_6068=l9_6029;
bool l9_6069=l9_6030;
float3x3 l9_6070=l9_6031;
if (l9_6069)
{
l9_6068=float2((l9_6070*float3(l9_6068,1.0)).xy);
}
float2 l9_6071=l9_6068;
l9_6029=l9_6071;
float l9_6072=l9_6029.x;
int l9_6073=l9_6032.x;
bool l9_6074=l9_6038;
float l9_6075=l9_6039;
if ((l9_6073==0)||(l9_6073==3))
{
float l9_6076=l9_6072;
float l9_6077=0.0;
float l9_6078=1.0;
bool l9_6079=l9_6074;
float l9_6080=l9_6075;
float l9_6081=fast::clamp(l9_6076,l9_6077,l9_6078);
float l9_6082=step(abs(l9_6076-l9_6081),9.9999997e-06);
l9_6080*=(l9_6082+((1.0-float(l9_6079))*(1.0-l9_6082)));
l9_6076=l9_6081;
l9_6072=l9_6076;
l9_6075=l9_6080;
}
l9_6029.x=l9_6072;
l9_6039=l9_6075;
float l9_6083=l9_6029.y;
int l9_6084=l9_6032.y;
bool l9_6085=l9_6038;
float l9_6086=l9_6039;
if ((l9_6084==0)||(l9_6084==3))
{
float l9_6087=l9_6083;
float l9_6088=0.0;
float l9_6089=1.0;
bool l9_6090=l9_6085;
float l9_6091=l9_6086;
float l9_6092=fast::clamp(l9_6087,l9_6088,l9_6089);
float l9_6093=step(abs(l9_6087-l9_6092),9.9999997e-06);
l9_6091*=(l9_6093+((1.0-float(l9_6090))*(1.0-l9_6093)));
l9_6087=l9_6092;
l9_6083=l9_6087;
l9_6086=l9_6091;
}
l9_6029.y=l9_6083;
l9_6039=l9_6086;
float2 l9_6094=l9_6029;
int l9_6095=l9_6027;
int l9_6096=l9_6028;
float l9_6097=l9_6037;
float2 l9_6098=l9_6094;
int l9_6099=l9_6095;
int l9_6100=l9_6096;
float3 l9_6101=float3(0.0);
if (l9_6099==0)
{
l9_6101=float3(l9_6098,0.0);
}
else
{
if (l9_6099==1)
{
l9_6101=float3(l9_6098.x,(l9_6098.y*0.5)+(0.5-(float(l9_6100)*0.5)),0.0);
}
else
{
l9_6101=float3(l9_6098,float(l9_6100));
}
}
float3 l9_6102=l9_6101;
float3 l9_6103=l9_6102;
float4 l9_6104=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_6103.xy,bias(l9_6097));
float4 l9_6105=l9_6104;
if (l9_6035)
{
l9_6105=mix(l9_6036,l9_6105,float4(l9_6039));
}
float4 l9_6106=l9_6105;
l9_6020=l9_6106;
float l9_6107=0.0;
l9_6107=l9_6020.x;
float l9_6108=0.0;
l9_6108=step(l9_6107,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_6109=float4(0.0);
l9_6109=l9_6017*float4(l9_6108);
l9_5792=l9_6109;
l9_5796=l9_5792;
}
l9_5789=l9_5796;
float2 l9_6110=float2(0.0);
l9_6110=l9_5775.Surface_UVCoord0;
float4 l9_6111=float4(0.0);
int l9_6112;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_6113=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6113=0;
}
else
{
l9_6113=in.varStereoViewID;
}
int l9_6114=l9_6113;
l9_6112=1-l9_6114;
}
else
{
int l9_6115=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6115=0;
}
else
{
l9_6115=in.varStereoViewID;
}
int l9_6116=l9_6115;
l9_6112=l9_6116;
}
int l9_6117=l9_6112;
int l9_6118=greyMaskIdLayout_tmp;
int l9_6119=l9_6117;
float2 l9_6120=l9_6110;
bool l9_6121=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_6122=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_6123=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_6124=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_6125=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_6126=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_6127=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_6128=0.0;
bool l9_6129=l9_6126&&(!l9_6124);
float l9_6130=1.0;
float l9_6131=l9_6120.x;
int l9_6132=l9_6123.x;
if (l9_6132==1)
{
l9_6131=fract(l9_6131);
}
else
{
if (l9_6132==2)
{
float l9_6133=fract(l9_6131);
float l9_6134=l9_6131-l9_6133;
float l9_6135=step(0.25,fract(l9_6134*0.5));
l9_6131=mix(l9_6133,1.0-l9_6133,fast::clamp(l9_6135,0.0,1.0));
}
}
l9_6120.x=l9_6131;
float l9_6136=l9_6120.y;
int l9_6137=l9_6123.y;
if (l9_6137==1)
{
l9_6136=fract(l9_6136);
}
else
{
if (l9_6137==2)
{
float l9_6138=fract(l9_6136);
float l9_6139=l9_6136-l9_6138;
float l9_6140=step(0.25,fract(l9_6139*0.5));
l9_6136=mix(l9_6138,1.0-l9_6138,fast::clamp(l9_6140,0.0,1.0));
}
}
l9_6120.y=l9_6136;
if (l9_6124)
{
bool l9_6141=l9_6126;
bool l9_6142;
if (l9_6141)
{
l9_6142=l9_6123.x==3;
}
else
{
l9_6142=l9_6141;
}
float l9_6143=l9_6120.x;
float l9_6144=l9_6125.x;
float l9_6145=l9_6125.z;
bool l9_6146=l9_6142;
float l9_6147=l9_6130;
float l9_6148=fast::clamp(l9_6143,l9_6144,l9_6145);
float l9_6149=step(abs(l9_6143-l9_6148),9.9999997e-06);
l9_6147*=(l9_6149+((1.0-float(l9_6146))*(1.0-l9_6149)));
l9_6143=l9_6148;
l9_6120.x=l9_6143;
l9_6130=l9_6147;
bool l9_6150=l9_6126;
bool l9_6151;
if (l9_6150)
{
l9_6151=l9_6123.y==3;
}
else
{
l9_6151=l9_6150;
}
float l9_6152=l9_6120.y;
float l9_6153=l9_6125.y;
float l9_6154=l9_6125.w;
bool l9_6155=l9_6151;
float l9_6156=l9_6130;
float l9_6157=fast::clamp(l9_6152,l9_6153,l9_6154);
float l9_6158=step(abs(l9_6152-l9_6157),9.9999997e-06);
l9_6156*=(l9_6158+((1.0-float(l9_6155))*(1.0-l9_6158)));
l9_6152=l9_6157;
l9_6120.y=l9_6152;
l9_6130=l9_6156;
}
float2 l9_6159=l9_6120;
bool l9_6160=l9_6121;
float3x3 l9_6161=l9_6122;
if (l9_6160)
{
l9_6159=float2((l9_6161*float3(l9_6159,1.0)).xy);
}
float2 l9_6162=l9_6159;
l9_6120=l9_6162;
float l9_6163=l9_6120.x;
int l9_6164=l9_6123.x;
bool l9_6165=l9_6129;
float l9_6166=l9_6130;
if ((l9_6164==0)||(l9_6164==3))
{
float l9_6167=l9_6163;
float l9_6168=0.0;
float l9_6169=1.0;
bool l9_6170=l9_6165;
float l9_6171=l9_6166;
float l9_6172=fast::clamp(l9_6167,l9_6168,l9_6169);
float l9_6173=step(abs(l9_6167-l9_6172),9.9999997e-06);
l9_6171*=(l9_6173+((1.0-float(l9_6170))*(1.0-l9_6173)));
l9_6167=l9_6172;
l9_6163=l9_6167;
l9_6166=l9_6171;
}
l9_6120.x=l9_6163;
l9_6130=l9_6166;
float l9_6174=l9_6120.y;
int l9_6175=l9_6123.y;
bool l9_6176=l9_6129;
float l9_6177=l9_6130;
if ((l9_6175==0)||(l9_6175==3))
{
float l9_6178=l9_6174;
float l9_6179=0.0;
float l9_6180=1.0;
bool l9_6181=l9_6176;
float l9_6182=l9_6177;
float l9_6183=fast::clamp(l9_6178,l9_6179,l9_6180);
float l9_6184=step(abs(l9_6178-l9_6183),9.9999997e-06);
l9_6182*=(l9_6184+((1.0-float(l9_6181))*(1.0-l9_6184)));
l9_6178=l9_6183;
l9_6174=l9_6178;
l9_6177=l9_6182;
}
l9_6120.y=l9_6174;
l9_6130=l9_6177;
float2 l9_6185=l9_6120;
int l9_6186=l9_6118;
int l9_6187=l9_6119;
float l9_6188=l9_6128;
float2 l9_6189=l9_6185;
int l9_6190=l9_6186;
int l9_6191=l9_6187;
float3 l9_6192=float3(0.0);
if (l9_6190==0)
{
l9_6192=float3(l9_6189,0.0);
}
else
{
if (l9_6190==1)
{
l9_6192=float3(l9_6189.x,(l9_6189.y*0.5)+(0.5-(float(l9_6191)*0.5)),0.0);
}
else
{
l9_6192=float3(l9_6189,float(l9_6191));
}
}
float3 l9_6193=l9_6192;
float3 l9_6194=l9_6193;
float4 l9_6195=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_6194.xy,bias(l9_6188));
float4 l9_6196=l9_6195;
if (l9_6126)
{
l9_6196=mix(l9_6127,l9_6196,float4(l9_6130));
}
float4 l9_6197=l9_6196;
l9_6111=l9_6197;
float l9_6198=0.0;
l9_6198=l9_6111.x;
float l9_6199=0.0;
l9_6199=step(l9_6198,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_6200=float4(0.0);
l9_6200=l9_5789*float4(l9_6199);
float4 l9_6201=float4(0.0);
float4 l9_6202=(*sc_set0.UserUniforms).colorId01;
l9_6201=l9_6202;
float4 l9_6203=float4(0.0);
l9_6203=l9_6201*float4(l9_6199);
float4 l9_6204=float4(0.0);
float4 l9_6205=l9_6200;
float4 l9_6206=l9_6203;
float4 l9_6207=l9_6205;
float4 l9_6208=l9_6206;
float3 l9_6209=l9_6207.xyz*l9_6207.w;
l9_6207=float4(l9_6209.x,l9_6209.y,l9_6209.z,l9_6207.w);
float4 l9_6210=l9_6207+(l9_6208*(1.0-l9_6207.w));
l9_6204=l9_6210;
float4 l9_6211=float4(0.0);
l9_6211=float4(l9_5783)*l9_6204;
float4 l9_6212=float4(0.0);
l9_6212=l9_6211+l9_6204;
l9_5773=l9_6212;
l9_5778=l9_5773;
}
else
{
float4 l9_6213=float4(0.0);
float l9_6214=0.0;
float4 l9_6215=float4(0.0);
float4 l9_6216=float4(0.0);
ssGlobals l9_6217=l9_5775;
float l9_6218=0.0;
float l9_6219=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_6218=l9_6219;
l9_6214=l9_6218;
float4 l9_6220;
if ((l9_6214*1.0)!=0.0)
{
float4 l9_6221=float4(0.0);
float4 l9_6222=(*sc_set0.UserUniforms).patternColorId01;
l9_6221=l9_6222;
float4 l9_6223=float4(0.0);
float l9_6224=0.0;
float4 l9_6225=float4(0.0);
float4 l9_6226=float4(0.0);
ssGlobals l9_6227=l9_6217;
float l9_6228=0.0;
float l9_6229=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_6228=l9_6229;
l9_6224=l9_6228;
float4 l9_6230;
if ((l9_6224*1.0)!=0.0)
{
float2 l9_6231=float2(0.0);
l9_6231=l9_6227.Surface_UVCoord0;
float2 l9_6232=float2(0.0);
float2 l9_6233=(*sc_set0.UserUniforms).patternScaleId01;
l9_6232=l9_6233;
float2 l9_6234=float2(0.0);
l9_6234=((l9_6231-(*sc_set0.UserUniforms).Port_Center_N122)*l9_6232)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_6235=float2(0.0);
float2 l9_6236=(*sc_set0.UserUniforms).patternOffsetId01;
l9_6235=l9_6236;
float2 l9_6237=float2(0.0);
l9_6237=l9_6234+l9_6235;
float l9_6238=0.0;
float l9_6239=(*sc_set0.UserUniforms).patternRotateId01;
l9_6238=l9_6239;
float2 l9_6240=float2(0.0);
float2 l9_6241=l9_6237;
float l9_6242=l9_6238;
float2 l9_6243=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_6244=sin(radians(l9_6242));
float l9_6245=cos(radians(l9_6242));
float2 l9_6246=l9_6241-l9_6243;
l9_6246=float2(dot(float2(l9_6245,l9_6244),l9_6246),dot(float2(-l9_6244,l9_6245),l9_6246))+l9_6243;
l9_6240=l9_6246;
float4 l9_6247=float4(0.0);
int l9_6248;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_6249=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6249=0;
}
else
{
l9_6249=in.varStereoViewID;
}
int l9_6250=l9_6249;
l9_6248=1-l9_6250;
}
else
{
int l9_6251=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6251=0;
}
else
{
l9_6251=in.varStereoViewID;
}
int l9_6252=l9_6251;
l9_6248=l9_6252;
}
int l9_6253=l9_6248;
int l9_6254=patternTextureId01Layout_tmp;
int l9_6255=l9_6253;
float2 l9_6256=l9_6240;
bool l9_6257=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_6258=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_6259=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_6260=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_6261=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_6262=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_6263=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_6264=0.0;
bool l9_6265=l9_6262&&(!l9_6260);
float l9_6266=1.0;
float l9_6267=l9_6256.x;
int l9_6268=l9_6259.x;
if (l9_6268==1)
{
l9_6267=fract(l9_6267);
}
else
{
if (l9_6268==2)
{
float l9_6269=fract(l9_6267);
float l9_6270=l9_6267-l9_6269;
float l9_6271=step(0.25,fract(l9_6270*0.5));
l9_6267=mix(l9_6269,1.0-l9_6269,fast::clamp(l9_6271,0.0,1.0));
}
}
l9_6256.x=l9_6267;
float l9_6272=l9_6256.y;
int l9_6273=l9_6259.y;
if (l9_6273==1)
{
l9_6272=fract(l9_6272);
}
else
{
if (l9_6273==2)
{
float l9_6274=fract(l9_6272);
float l9_6275=l9_6272-l9_6274;
float l9_6276=step(0.25,fract(l9_6275*0.5));
l9_6272=mix(l9_6274,1.0-l9_6274,fast::clamp(l9_6276,0.0,1.0));
}
}
l9_6256.y=l9_6272;
if (l9_6260)
{
bool l9_6277=l9_6262;
bool l9_6278;
if (l9_6277)
{
l9_6278=l9_6259.x==3;
}
else
{
l9_6278=l9_6277;
}
float l9_6279=l9_6256.x;
float l9_6280=l9_6261.x;
float l9_6281=l9_6261.z;
bool l9_6282=l9_6278;
float l9_6283=l9_6266;
float l9_6284=fast::clamp(l9_6279,l9_6280,l9_6281);
float l9_6285=step(abs(l9_6279-l9_6284),9.9999997e-06);
l9_6283*=(l9_6285+((1.0-float(l9_6282))*(1.0-l9_6285)));
l9_6279=l9_6284;
l9_6256.x=l9_6279;
l9_6266=l9_6283;
bool l9_6286=l9_6262;
bool l9_6287;
if (l9_6286)
{
l9_6287=l9_6259.y==3;
}
else
{
l9_6287=l9_6286;
}
float l9_6288=l9_6256.y;
float l9_6289=l9_6261.y;
float l9_6290=l9_6261.w;
bool l9_6291=l9_6287;
float l9_6292=l9_6266;
float l9_6293=fast::clamp(l9_6288,l9_6289,l9_6290);
float l9_6294=step(abs(l9_6288-l9_6293),9.9999997e-06);
l9_6292*=(l9_6294+((1.0-float(l9_6291))*(1.0-l9_6294)));
l9_6288=l9_6293;
l9_6256.y=l9_6288;
l9_6266=l9_6292;
}
float2 l9_6295=l9_6256;
bool l9_6296=l9_6257;
float3x3 l9_6297=l9_6258;
if (l9_6296)
{
l9_6295=float2((l9_6297*float3(l9_6295,1.0)).xy);
}
float2 l9_6298=l9_6295;
l9_6256=l9_6298;
float l9_6299=l9_6256.x;
int l9_6300=l9_6259.x;
bool l9_6301=l9_6265;
float l9_6302=l9_6266;
if ((l9_6300==0)||(l9_6300==3))
{
float l9_6303=l9_6299;
float l9_6304=0.0;
float l9_6305=1.0;
bool l9_6306=l9_6301;
float l9_6307=l9_6302;
float l9_6308=fast::clamp(l9_6303,l9_6304,l9_6305);
float l9_6309=step(abs(l9_6303-l9_6308),9.9999997e-06);
l9_6307*=(l9_6309+((1.0-float(l9_6306))*(1.0-l9_6309)));
l9_6303=l9_6308;
l9_6299=l9_6303;
l9_6302=l9_6307;
}
l9_6256.x=l9_6299;
l9_6266=l9_6302;
float l9_6310=l9_6256.y;
int l9_6311=l9_6259.y;
bool l9_6312=l9_6265;
float l9_6313=l9_6266;
if ((l9_6311==0)||(l9_6311==3))
{
float l9_6314=l9_6310;
float l9_6315=0.0;
float l9_6316=1.0;
bool l9_6317=l9_6312;
float l9_6318=l9_6313;
float l9_6319=fast::clamp(l9_6314,l9_6315,l9_6316);
float l9_6320=step(abs(l9_6314-l9_6319),9.9999997e-06);
l9_6318*=(l9_6320+((1.0-float(l9_6317))*(1.0-l9_6320)));
l9_6314=l9_6319;
l9_6310=l9_6314;
l9_6313=l9_6318;
}
l9_6256.y=l9_6310;
l9_6266=l9_6313;
float2 l9_6321=l9_6256;
int l9_6322=l9_6254;
int l9_6323=l9_6255;
float l9_6324=l9_6264;
float2 l9_6325=l9_6321;
int l9_6326=l9_6322;
int l9_6327=l9_6323;
float3 l9_6328=float3(0.0);
if (l9_6326==0)
{
l9_6328=float3(l9_6325,0.0);
}
else
{
if (l9_6326==1)
{
l9_6328=float3(l9_6325.x,(l9_6325.y*0.5)+(0.5-(float(l9_6327)*0.5)),0.0);
}
else
{
l9_6328=float3(l9_6325,float(l9_6327));
}
}
float3 l9_6329=l9_6328;
float3 l9_6330=l9_6329;
float4 l9_6331=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_6330.xy,bias(l9_6324));
float4 l9_6332=l9_6331;
if (l9_6262)
{
l9_6332=mix(l9_6263,l9_6332,float4(l9_6266));
}
float4 l9_6333=l9_6332;
l9_6247=l9_6333;
l9_6225=l9_6247;
l9_6230=l9_6225;
}
else
{
float2 l9_6334=float2(0.0);
l9_6334=l9_6227.Surface_UVCoord0;
float2 l9_6335=float2(0.0);
float2 l9_6336=(*sc_set0.UserUniforms).patternScaleId01;
l9_6335=l9_6336;
float2 l9_6337=float2(0.0);
l9_6337=((l9_6334-(*sc_set0.UserUniforms).Port_Center_N122)*l9_6335)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_6338=float2(0.0);
float2 l9_6339=(*sc_set0.UserUniforms).patternOffsetId01;
l9_6338=l9_6339;
float2 l9_6340=float2(0.0);
l9_6340=l9_6337+l9_6338;
float l9_6341=0.0;
float l9_6342=(*sc_set0.UserUniforms).patternRotateId01;
l9_6341=l9_6342;
float2 l9_6343=float2(0.0);
float2 l9_6344=l9_6340;
float l9_6345=l9_6341;
float2 l9_6346=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_6347=sin(radians(l9_6345));
float l9_6348=cos(radians(l9_6345));
float2 l9_6349=l9_6344-l9_6346;
l9_6349=float2(dot(float2(l9_6348,l9_6347),l9_6349),dot(float2(-l9_6347,l9_6348),l9_6349))+l9_6346;
l9_6343=l9_6349;
float4 l9_6350=float4(0.0);
int l9_6351;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_6352=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6352=0;
}
else
{
l9_6352=in.varStereoViewID;
}
int l9_6353=l9_6352;
l9_6351=1-l9_6353;
}
else
{
int l9_6354=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6354=0;
}
else
{
l9_6354=in.varStereoViewID;
}
int l9_6355=l9_6354;
l9_6351=l9_6355;
}
int l9_6356=l9_6351;
int l9_6357=patternTextureId01Layout_tmp;
int l9_6358=l9_6356;
float2 l9_6359=l9_6343;
bool l9_6360=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_6361=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_6362=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_6363=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_6364=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_6365=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_6366=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_6367=0.0;
bool l9_6368=l9_6365&&(!l9_6363);
float l9_6369=1.0;
float l9_6370=l9_6359.x;
int l9_6371=l9_6362.x;
if (l9_6371==1)
{
l9_6370=fract(l9_6370);
}
else
{
if (l9_6371==2)
{
float l9_6372=fract(l9_6370);
float l9_6373=l9_6370-l9_6372;
float l9_6374=step(0.25,fract(l9_6373*0.5));
l9_6370=mix(l9_6372,1.0-l9_6372,fast::clamp(l9_6374,0.0,1.0));
}
}
l9_6359.x=l9_6370;
float l9_6375=l9_6359.y;
int l9_6376=l9_6362.y;
if (l9_6376==1)
{
l9_6375=fract(l9_6375);
}
else
{
if (l9_6376==2)
{
float l9_6377=fract(l9_6375);
float l9_6378=l9_6375-l9_6377;
float l9_6379=step(0.25,fract(l9_6378*0.5));
l9_6375=mix(l9_6377,1.0-l9_6377,fast::clamp(l9_6379,0.0,1.0));
}
}
l9_6359.y=l9_6375;
if (l9_6363)
{
bool l9_6380=l9_6365;
bool l9_6381;
if (l9_6380)
{
l9_6381=l9_6362.x==3;
}
else
{
l9_6381=l9_6380;
}
float l9_6382=l9_6359.x;
float l9_6383=l9_6364.x;
float l9_6384=l9_6364.z;
bool l9_6385=l9_6381;
float l9_6386=l9_6369;
float l9_6387=fast::clamp(l9_6382,l9_6383,l9_6384);
float l9_6388=step(abs(l9_6382-l9_6387),9.9999997e-06);
l9_6386*=(l9_6388+((1.0-float(l9_6385))*(1.0-l9_6388)));
l9_6382=l9_6387;
l9_6359.x=l9_6382;
l9_6369=l9_6386;
bool l9_6389=l9_6365;
bool l9_6390;
if (l9_6389)
{
l9_6390=l9_6362.y==3;
}
else
{
l9_6390=l9_6389;
}
float l9_6391=l9_6359.y;
float l9_6392=l9_6364.y;
float l9_6393=l9_6364.w;
bool l9_6394=l9_6390;
float l9_6395=l9_6369;
float l9_6396=fast::clamp(l9_6391,l9_6392,l9_6393);
float l9_6397=step(abs(l9_6391-l9_6396),9.9999997e-06);
l9_6395*=(l9_6397+((1.0-float(l9_6394))*(1.0-l9_6397)));
l9_6391=l9_6396;
l9_6359.y=l9_6391;
l9_6369=l9_6395;
}
float2 l9_6398=l9_6359;
bool l9_6399=l9_6360;
float3x3 l9_6400=l9_6361;
if (l9_6399)
{
l9_6398=float2((l9_6400*float3(l9_6398,1.0)).xy);
}
float2 l9_6401=l9_6398;
l9_6359=l9_6401;
float l9_6402=l9_6359.x;
int l9_6403=l9_6362.x;
bool l9_6404=l9_6368;
float l9_6405=l9_6369;
if ((l9_6403==0)||(l9_6403==3))
{
float l9_6406=l9_6402;
float l9_6407=0.0;
float l9_6408=1.0;
bool l9_6409=l9_6404;
float l9_6410=l9_6405;
float l9_6411=fast::clamp(l9_6406,l9_6407,l9_6408);
float l9_6412=step(abs(l9_6406-l9_6411),9.9999997e-06);
l9_6410*=(l9_6412+((1.0-float(l9_6409))*(1.0-l9_6412)));
l9_6406=l9_6411;
l9_6402=l9_6406;
l9_6405=l9_6410;
}
l9_6359.x=l9_6402;
l9_6369=l9_6405;
float l9_6413=l9_6359.y;
int l9_6414=l9_6362.y;
bool l9_6415=l9_6368;
float l9_6416=l9_6369;
if ((l9_6414==0)||(l9_6414==3))
{
float l9_6417=l9_6413;
float l9_6418=0.0;
float l9_6419=1.0;
bool l9_6420=l9_6415;
float l9_6421=l9_6416;
float l9_6422=fast::clamp(l9_6417,l9_6418,l9_6419);
float l9_6423=step(abs(l9_6417-l9_6422),9.9999997e-06);
l9_6421*=(l9_6423+((1.0-float(l9_6420))*(1.0-l9_6423)));
l9_6417=l9_6422;
l9_6413=l9_6417;
l9_6416=l9_6421;
}
l9_6359.y=l9_6413;
l9_6369=l9_6416;
float2 l9_6424=l9_6359;
int l9_6425=l9_6357;
int l9_6426=l9_6358;
float l9_6427=l9_6367;
float2 l9_6428=l9_6424;
int l9_6429=l9_6425;
int l9_6430=l9_6426;
float3 l9_6431=float3(0.0);
if (l9_6429==0)
{
l9_6431=float3(l9_6428,0.0);
}
else
{
if (l9_6429==1)
{
l9_6431=float3(l9_6428.x,(l9_6428.y*0.5)+(0.5-(float(l9_6430)*0.5)),0.0);
}
else
{
l9_6431=float3(l9_6428,float(l9_6430));
}
}
float3 l9_6432=l9_6431;
float3 l9_6433=l9_6432;
float4 l9_6434=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_6433.xy,bias(l9_6427));
float4 l9_6435=l9_6434;
if (l9_6365)
{
l9_6435=mix(l9_6366,l9_6435,float4(l9_6369));
}
float4 l9_6436=l9_6435;
l9_6350=l9_6436;
float l9_6437=0.0;
float3 l9_6438=l9_6350.xyz;
float l9_6439=l9_6438.x;
l9_6437=l9_6439;
l9_6226=float4(l9_6437);
l9_6230=l9_6226;
}
l9_6223=l9_6230;
float4 l9_6440=float4(0.0);
l9_6440=l9_6221*l9_6223;
l9_6215=l9_6440;
l9_6220=l9_6215;
}
else
{
float4 l9_6441=float4(0.0);
float4 l9_6442=(*sc_set0.UserUniforms).colorId01;
l9_6441=l9_6442;
float2 l9_6443=float2(0.0);
l9_6443=l9_6217.Surface_UVCoord0;
float4 l9_6444=float4(0.0);
int l9_6445;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_6446=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6446=0;
}
else
{
l9_6446=in.varStereoViewID;
}
int l9_6447=l9_6446;
l9_6445=1-l9_6447;
}
else
{
int l9_6448=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6448=0;
}
else
{
l9_6448=in.varStereoViewID;
}
int l9_6449=l9_6448;
l9_6445=l9_6449;
}
int l9_6450=l9_6445;
int l9_6451=greyMaskIdLayout_tmp;
int l9_6452=l9_6450;
float2 l9_6453=l9_6443;
bool l9_6454=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_6455=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_6456=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_6457=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_6458=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_6459=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_6460=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_6461=0.0;
bool l9_6462=l9_6459&&(!l9_6457);
float l9_6463=1.0;
float l9_6464=l9_6453.x;
int l9_6465=l9_6456.x;
if (l9_6465==1)
{
l9_6464=fract(l9_6464);
}
else
{
if (l9_6465==2)
{
float l9_6466=fract(l9_6464);
float l9_6467=l9_6464-l9_6466;
float l9_6468=step(0.25,fract(l9_6467*0.5));
l9_6464=mix(l9_6466,1.0-l9_6466,fast::clamp(l9_6468,0.0,1.0));
}
}
l9_6453.x=l9_6464;
float l9_6469=l9_6453.y;
int l9_6470=l9_6456.y;
if (l9_6470==1)
{
l9_6469=fract(l9_6469);
}
else
{
if (l9_6470==2)
{
float l9_6471=fract(l9_6469);
float l9_6472=l9_6469-l9_6471;
float l9_6473=step(0.25,fract(l9_6472*0.5));
l9_6469=mix(l9_6471,1.0-l9_6471,fast::clamp(l9_6473,0.0,1.0));
}
}
l9_6453.y=l9_6469;
if (l9_6457)
{
bool l9_6474=l9_6459;
bool l9_6475;
if (l9_6474)
{
l9_6475=l9_6456.x==3;
}
else
{
l9_6475=l9_6474;
}
float l9_6476=l9_6453.x;
float l9_6477=l9_6458.x;
float l9_6478=l9_6458.z;
bool l9_6479=l9_6475;
float l9_6480=l9_6463;
float l9_6481=fast::clamp(l9_6476,l9_6477,l9_6478);
float l9_6482=step(abs(l9_6476-l9_6481),9.9999997e-06);
l9_6480*=(l9_6482+((1.0-float(l9_6479))*(1.0-l9_6482)));
l9_6476=l9_6481;
l9_6453.x=l9_6476;
l9_6463=l9_6480;
bool l9_6483=l9_6459;
bool l9_6484;
if (l9_6483)
{
l9_6484=l9_6456.y==3;
}
else
{
l9_6484=l9_6483;
}
float l9_6485=l9_6453.y;
float l9_6486=l9_6458.y;
float l9_6487=l9_6458.w;
bool l9_6488=l9_6484;
float l9_6489=l9_6463;
float l9_6490=fast::clamp(l9_6485,l9_6486,l9_6487);
float l9_6491=step(abs(l9_6485-l9_6490),9.9999997e-06);
l9_6489*=(l9_6491+((1.0-float(l9_6488))*(1.0-l9_6491)));
l9_6485=l9_6490;
l9_6453.y=l9_6485;
l9_6463=l9_6489;
}
float2 l9_6492=l9_6453;
bool l9_6493=l9_6454;
float3x3 l9_6494=l9_6455;
if (l9_6493)
{
l9_6492=float2((l9_6494*float3(l9_6492,1.0)).xy);
}
float2 l9_6495=l9_6492;
l9_6453=l9_6495;
float l9_6496=l9_6453.x;
int l9_6497=l9_6456.x;
bool l9_6498=l9_6462;
float l9_6499=l9_6463;
if ((l9_6497==0)||(l9_6497==3))
{
float l9_6500=l9_6496;
float l9_6501=0.0;
float l9_6502=1.0;
bool l9_6503=l9_6498;
float l9_6504=l9_6499;
float l9_6505=fast::clamp(l9_6500,l9_6501,l9_6502);
float l9_6506=step(abs(l9_6500-l9_6505),9.9999997e-06);
l9_6504*=(l9_6506+((1.0-float(l9_6503))*(1.0-l9_6506)));
l9_6500=l9_6505;
l9_6496=l9_6500;
l9_6499=l9_6504;
}
l9_6453.x=l9_6496;
l9_6463=l9_6499;
float l9_6507=l9_6453.y;
int l9_6508=l9_6456.y;
bool l9_6509=l9_6462;
float l9_6510=l9_6463;
if ((l9_6508==0)||(l9_6508==3))
{
float l9_6511=l9_6507;
float l9_6512=0.0;
float l9_6513=1.0;
bool l9_6514=l9_6509;
float l9_6515=l9_6510;
float l9_6516=fast::clamp(l9_6511,l9_6512,l9_6513);
float l9_6517=step(abs(l9_6511-l9_6516),9.9999997e-06);
l9_6515*=(l9_6517+((1.0-float(l9_6514))*(1.0-l9_6517)));
l9_6511=l9_6516;
l9_6507=l9_6511;
l9_6510=l9_6515;
}
l9_6453.y=l9_6507;
l9_6463=l9_6510;
float2 l9_6518=l9_6453;
int l9_6519=l9_6451;
int l9_6520=l9_6452;
float l9_6521=l9_6461;
float2 l9_6522=l9_6518;
int l9_6523=l9_6519;
int l9_6524=l9_6520;
float3 l9_6525=float3(0.0);
if (l9_6523==0)
{
l9_6525=float3(l9_6522,0.0);
}
else
{
if (l9_6523==1)
{
l9_6525=float3(l9_6522.x,(l9_6522.y*0.5)+(0.5-(float(l9_6524)*0.5)),0.0);
}
else
{
l9_6525=float3(l9_6522,float(l9_6524));
}
}
float3 l9_6526=l9_6525;
float3 l9_6527=l9_6526;
float4 l9_6528=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_6527.xy,bias(l9_6521));
float4 l9_6529=l9_6528;
if (l9_6459)
{
l9_6529=mix(l9_6460,l9_6529,float4(l9_6463));
}
float4 l9_6530=l9_6529;
l9_6444=l9_6530;
float l9_6531=0.0;
l9_6531=l9_6444.x;
float l9_6532=0.0;
l9_6532=step(l9_6531,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_6533=float4(0.0);
l9_6533=l9_6441*float4(l9_6532);
l9_6216=l9_6533;
l9_6220=l9_6216;
}
l9_6213=l9_6220;
float2 l9_6534=float2(0.0);
l9_6534=l9_5775.Surface_UVCoord0;
float4 l9_6535=float4(0.0);
int l9_6536;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_6537=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6537=0;
}
else
{
l9_6537=in.varStereoViewID;
}
int l9_6538=l9_6537;
l9_6536=1-l9_6538;
}
else
{
int l9_6539=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6539=0;
}
else
{
l9_6539=in.varStereoViewID;
}
int l9_6540=l9_6539;
l9_6536=l9_6540;
}
int l9_6541=l9_6536;
int l9_6542=greyMaskIdLayout_tmp;
int l9_6543=l9_6541;
float2 l9_6544=l9_6534;
bool l9_6545=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_6546=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_6547=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_6548=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_6549=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_6550=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_6551=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_6552=0.0;
bool l9_6553=l9_6550&&(!l9_6548);
float l9_6554=1.0;
float l9_6555=l9_6544.x;
int l9_6556=l9_6547.x;
if (l9_6556==1)
{
l9_6555=fract(l9_6555);
}
else
{
if (l9_6556==2)
{
float l9_6557=fract(l9_6555);
float l9_6558=l9_6555-l9_6557;
float l9_6559=step(0.25,fract(l9_6558*0.5));
l9_6555=mix(l9_6557,1.0-l9_6557,fast::clamp(l9_6559,0.0,1.0));
}
}
l9_6544.x=l9_6555;
float l9_6560=l9_6544.y;
int l9_6561=l9_6547.y;
if (l9_6561==1)
{
l9_6560=fract(l9_6560);
}
else
{
if (l9_6561==2)
{
float l9_6562=fract(l9_6560);
float l9_6563=l9_6560-l9_6562;
float l9_6564=step(0.25,fract(l9_6563*0.5));
l9_6560=mix(l9_6562,1.0-l9_6562,fast::clamp(l9_6564,0.0,1.0));
}
}
l9_6544.y=l9_6560;
if (l9_6548)
{
bool l9_6565=l9_6550;
bool l9_6566;
if (l9_6565)
{
l9_6566=l9_6547.x==3;
}
else
{
l9_6566=l9_6565;
}
float l9_6567=l9_6544.x;
float l9_6568=l9_6549.x;
float l9_6569=l9_6549.z;
bool l9_6570=l9_6566;
float l9_6571=l9_6554;
float l9_6572=fast::clamp(l9_6567,l9_6568,l9_6569);
float l9_6573=step(abs(l9_6567-l9_6572),9.9999997e-06);
l9_6571*=(l9_6573+((1.0-float(l9_6570))*(1.0-l9_6573)));
l9_6567=l9_6572;
l9_6544.x=l9_6567;
l9_6554=l9_6571;
bool l9_6574=l9_6550;
bool l9_6575;
if (l9_6574)
{
l9_6575=l9_6547.y==3;
}
else
{
l9_6575=l9_6574;
}
float l9_6576=l9_6544.y;
float l9_6577=l9_6549.y;
float l9_6578=l9_6549.w;
bool l9_6579=l9_6575;
float l9_6580=l9_6554;
float l9_6581=fast::clamp(l9_6576,l9_6577,l9_6578);
float l9_6582=step(abs(l9_6576-l9_6581),9.9999997e-06);
l9_6580*=(l9_6582+((1.0-float(l9_6579))*(1.0-l9_6582)));
l9_6576=l9_6581;
l9_6544.y=l9_6576;
l9_6554=l9_6580;
}
float2 l9_6583=l9_6544;
bool l9_6584=l9_6545;
float3x3 l9_6585=l9_6546;
if (l9_6584)
{
l9_6583=float2((l9_6585*float3(l9_6583,1.0)).xy);
}
float2 l9_6586=l9_6583;
l9_6544=l9_6586;
float l9_6587=l9_6544.x;
int l9_6588=l9_6547.x;
bool l9_6589=l9_6553;
float l9_6590=l9_6554;
if ((l9_6588==0)||(l9_6588==3))
{
float l9_6591=l9_6587;
float l9_6592=0.0;
float l9_6593=1.0;
bool l9_6594=l9_6589;
float l9_6595=l9_6590;
float l9_6596=fast::clamp(l9_6591,l9_6592,l9_6593);
float l9_6597=step(abs(l9_6591-l9_6596),9.9999997e-06);
l9_6595*=(l9_6597+((1.0-float(l9_6594))*(1.0-l9_6597)));
l9_6591=l9_6596;
l9_6587=l9_6591;
l9_6590=l9_6595;
}
l9_6544.x=l9_6587;
l9_6554=l9_6590;
float l9_6598=l9_6544.y;
int l9_6599=l9_6547.y;
bool l9_6600=l9_6553;
float l9_6601=l9_6554;
if ((l9_6599==0)||(l9_6599==3))
{
float l9_6602=l9_6598;
float l9_6603=0.0;
float l9_6604=1.0;
bool l9_6605=l9_6600;
float l9_6606=l9_6601;
float l9_6607=fast::clamp(l9_6602,l9_6603,l9_6604);
float l9_6608=step(abs(l9_6602-l9_6607),9.9999997e-06);
l9_6606*=(l9_6608+((1.0-float(l9_6605))*(1.0-l9_6608)));
l9_6602=l9_6607;
l9_6598=l9_6602;
l9_6601=l9_6606;
}
l9_6544.y=l9_6598;
l9_6554=l9_6601;
float2 l9_6609=l9_6544;
int l9_6610=l9_6542;
int l9_6611=l9_6543;
float l9_6612=l9_6552;
float2 l9_6613=l9_6609;
int l9_6614=l9_6610;
int l9_6615=l9_6611;
float3 l9_6616=float3(0.0);
if (l9_6614==0)
{
l9_6616=float3(l9_6613,0.0);
}
else
{
if (l9_6614==1)
{
l9_6616=float3(l9_6613.x,(l9_6613.y*0.5)+(0.5-(float(l9_6615)*0.5)),0.0);
}
else
{
l9_6616=float3(l9_6613,float(l9_6615));
}
}
float3 l9_6617=l9_6616;
float3 l9_6618=l9_6617;
float4 l9_6619=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_6618.xy,bias(l9_6612));
float4 l9_6620=l9_6619;
if (l9_6550)
{
l9_6620=mix(l9_6551,l9_6620,float4(l9_6554));
}
float4 l9_6621=l9_6620;
l9_6535=l9_6621;
float l9_6622=0.0;
l9_6622=l9_6535.x;
float l9_6623=0.0;
l9_6623=step(l9_6622,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_6624=float4(0.0);
l9_6624=l9_6213*float4(l9_6623);
float4 l9_6625=float4(0.0);
float4 l9_6626=(*sc_set0.UserUniforms).colorId01;
l9_6625=l9_6626;
float4 l9_6627=float4(0.0);
l9_6627=l9_6625*float4(l9_6623);
float4 l9_6628=float4(0.0);
float4 l9_6629=l9_6624;
float4 l9_6630=l9_6627;
float4 l9_6631=l9_6629;
float4 l9_6632=l9_6630;
float3 l9_6633=l9_6631.xyz*l9_6631.w;
l9_6631=float4(l9_6633.x,l9_6633.y,l9_6633.z,l9_6631.w);
float4 l9_6634=l9_6631+(l9_6632*(1.0-l9_6631.w));
l9_6628=l9_6634;
l9_5774=l9_6628;
l9_5778=l9_5774;
}
l9_5771=l9_5778;
float l9_6635=0.0;
float l9_6636=(*sc_set0.UserUniforms).metallicId01;
l9_6635=l9_6636;
float l9_6637=0.0;
float l9_6638=(*sc_set0.UserUniforms).rougnessId01;
l9_6637=l9_6638;
float4 l9_6639=float4(0.0);
float3 l9_6640=l9_5771.xyz;
float l9_6641=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_6642=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_6643=l9_6635;
float l9_6644=l9_6637;
float3 l9_6645=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_6646=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_6647=l9_5767;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_6647.BumpedNormal=l9_6647.VertexNormal_WorldSpace;
}
float l9_6648=l9_6641;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_6648<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_6649=gl_FragCoord;
float2 l9_6650=floor(mod(l9_6649.xy,float2(4.0)));
float l9_6651=(mod(dot(l9_6650,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_6648<l9_6651)
{
discard_fragment();
}
}
l9_6640=fast::max(l9_6640,float3(0.0));
float4 l9_6652;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_6652=float4(l9_6640,l9_6641);
}
else
{
l9_6643=fast::clamp(l9_6643,0.0,1.0);
l9_6644=fast::clamp(l9_6644,0.0,1.0);
float3 l9_6653=l9_6640;
float l9_6654=l9_6641;
float3 l9_6655=l9_6647.BumpedNormal;
float3 l9_6656=l9_6647.PositionWS;
float3 l9_6657=l9_6647.ViewDirWS;
float3 l9_6658=l9_6642;
float l9_6659=l9_6643;
float l9_6660=l9_6644;
float3 l9_6661=l9_6645;
float3 l9_6662=l9_6646;
l9_6652=ngsCalculateLighting(l9_6653,l9_6654,l9_6655,l9_6656,l9_6657,l9_6658,l9_6659,l9_6660,l9_6661,l9_6662,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_6652=fast::max(l9_6652,float4(0.0));
l9_6639=l9_6652;
l9_5765=l9_6639;
l9_5770=l9_5765;
}
else
{
float4 l9_6663=float4(0.0);
float l9_6664=0.0;
float4 l9_6665=float4(0.0);
float4 l9_6666=float4(0.0);
ssGlobals l9_6667=l9_5767;
float l9_6668=0.0;
float l9_6669=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_6668=l9_6669;
l9_6664=l9_6668;
float4 l9_6670;
if ((l9_6664*1.0)!=0.0)
{
float l9_6671=0.0;
float l9_6672=(*sc_set0.UserUniforms).rimExpId01;
l9_6671=l9_6672;
float l9_6673=0.0;
float l9_6674=(*sc_set0.UserUniforms).rimIntId01;
l9_6673=l9_6674;
float l9_6675=0.0;
float l9_6676=l9_6671;
float l9_6677=l9_6673;
ssGlobals l9_6678=l9_6667;
float l9_6679=abs(dot(-l9_6678.ViewDirWS,l9_6678.VertexNormal_WorldSpace));
float l9_6680=1.0-pow(1.0-l9_6679,l9_6676);
l9_6680=fast::max(l9_6680,0.0);
l9_6680*=l9_6677;
l9_6675=l9_6680;
float4 l9_6681=float4(0.0);
float l9_6682=0.0;
float4 l9_6683=float4(0.0);
float4 l9_6684=float4(0.0);
ssGlobals l9_6685=l9_6667;
float l9_6686=0.0;
float l9_6687=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_6686=l9_6687;
l9_6682=l9_6686;
float4 l9_6688;
if ((l9_6682*1.0)!=0.0)
{
float4 l9_6689=float4(0.0);
float4 l9_6690=(*sc_set0.UserUniforms).patternColorId01;
l9_6689=l9_6690;
float4 l9_6691=float4(0.0);
float l9_6692=0.0;
float4 l9_6693=float4(0.0);
float4 l9_6694=float4(0.0);
ssGlobals l9_6695=l9_6685;
float l9_6696=0.0;
float l9_6697=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_6696=l9_6697;
l9_6692=l9_6696;
float4 l9_6698;
if ((l9_6692*1.0)!=0.0)
{
float2 l9_6699=float2(0.0);
l9_6699=l9_6695.Surface_UVCoord0;
float2 l9_6700=float2(0.0);
float2 l9_6701=(*sc_set0.UserUniforms).patternScaleId01;
l9_6700=l9_6701;
float2 l9_6702=float2(0.0);
l9_6702=((l9_6699-(*sc_set0.UserUniforms).Port_Center_N122)*l9_6700)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_6703=float2(0.0);
float2 l9_6704=(*sc_set0.UserUniforms).patternOffsetId01;
l9_6703=l9_6704;
float2 l9_6705=float2(0.0);
l9_6705=l9_6702+l9_6703;
float l9_6706=0.0;
float l9_6707=(*sc_set0.UserUniforms).patternRotateId01;
l9_6706=l9_6707;
float2 l9_6708=float2(0.0);
float2 l9_6709=l9_6705;
float l9_6710=l9_6706;
float2 l9_6711=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_6712=sin(radians(l9_6710));
float l9_6713=cos(radians(l9_6710));
float2 l9_6714=l9_6709-l9_6711;
l9_6714=float2(dot(float2(l9_6713,l9_6712),l9_6714),dot(float2(-l9_6712,l9_6713),l9_6714))+l9_6711;
l9_6708=l9_6714;
float4 l9_6715=float4(0.0);
int l9_6716;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_6717=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6717=0;
}
else
{
l9_6717=in.varStereoViewID;
}
int l9_6718=l9_6717;
l9_6716=1-l9_6718;
}
else
{
int l9_6719=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6719=0;
}
else
{
l9_6719=in.varStereoViewID;
}
int l9_6720=l9_6719;
l9_6716=l9_6720;
}
int l9_6721=l9_6716;
int l9_6722=patternTextureId01Layout_tmp;
int l9_6723=l9_6721;
float2 l9_6724=l9_6708;
bool l9_6725=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_6726=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_6727=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_6728=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_6729=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_6730=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_6731=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_6732=0.0;
bool l9_6733=l9_6730&&(!l9_6728);
float l9_6734=1.0;
float l9_6735=l9_6724.x;
int l9_6736=l9_6727.x;
if (l9_6736==1)
{
l9_6735=fract(l9_6735);
}
else
{
if (l9_6736==2)
{
float l9_6737=fract(l9_6735);
float l9_6738=l9_6735-l9_6737;
float l9_6739=step(0.25,fract(l9_6738*0.5));
l9_6735=mix(l9_6737,1.0-l9_6737,fast::clamp(l9_6739,0.0,1.0));
}
}
l9_6724.x=l9_6735;
float l9_6740=l9_6724.y;
int l9_6741=l9_6727.y;
if (l9_6741==1)
{
l9_6740=fract(l9_6740);
}
else
{
if (l9_6741==2)
{
float l9_6742=fract(l9_6740);
float l9_6743=l9_6740-l9_6742;
float l9_6744=step(0.25,fract(l9_6743*0.5));
l9_6740=mix(l9_6742,1.0-l9_6742,fast::clamp(l9_6744,0.0,1.0));
}
}
l9_6724.y=l9_6740;
if (l9_6728)
{
bool l9_6745=l9_6730;
bool l9_6746;
if (l9_6745)
{
l9_6746=l9_6727.x==3;
}
else
{
l9_6746=l9_6745;
}
float l9_6747=l9_6724.x;
float l9_6748=l9_6729.x;
float l9_6749=l9_6729.z;
bool l9_6750=l9_6746;
float l9_6751=l9_6734;
float l9_6752=fast::clamp(l9_6747,l9_6748,l9_6749);
float l9_6753=step(abs(l9_6747-l9_6752),9.9999997e-06);
l9_6751*=(l9_6753+((1.0-float(l9_6750))*(1.0-l9_6753)));
l9_6747=l9_6752;
l9_6724.x=l9_6747;
l9_6734=l9_6751;
bool l9_6754=l9_6730;
bool l9_6755;
if (l9_6754)
{
l9_6755=l9_6727.y==3;
}
else
{
l9_6755=l9_6754;
}
float l9_6756=l9_6724.y;
float l9_6757=l9_6729.y;
float l9_6758=l9_6729.w;
bool l9_6759=l9_6755;
float l9_6760=l9_6734;
float l9_6761=fast::clamp(l9_6756,l9_6757,l9_6758);
float l9_6762=step(abs(l9_6756-l9_6761),9.9999997e-06);
l9_6760*=(l9_6762+((1.0-float(l9_6759))*(1.0-l9_6762)));
l9_6756=l9_6761;
l9_6724.y=l9_6756;
l9_6734=l9_6760;
}
float2 l9_6763=l9_6724;
bool l9_6764=l9_6725;
float3x3 l9_6765=l9_6726;
if (l9_6764)
{
l9_6763=float2((l9_6765*float3(l9_6763,1.0)).xy);
}
float2 l9_6766=l9_6763;
l9_6724=l9_6766;
float l9_6767=l9_6724.x;
int l9_6768=l9_6727.x;
bool l9_6769=l9_6733;
float l9_6770=l9_6734;
if ((l9_6768==0)||(l9_6768==3))
{
float l9_6771=l9_6767;
float l9_6772=0.0;
float l9_6773=1.0;
bool l9_6774=l9_6769;
float l9_6775=l9_6770;
float l9_6776=fast::clamp(l9_6771,l9_6772,l9_6773);
float l9_6777=step(abs(l9_6771-l9_6776),9.9999997e-06);
l9_6775*=(l9_6777+((1.0-float(l9_6774))*(1.0-l9_6777)));
l9_6771=l9_6776;
l9_6767=l9_6771;
l9_6770=l9_6775;
}
l9_6724.x=l9_6767;
l9_6734=l9_6770;
float l9_6778=l9_6724.y;
int l9_6779=l9_6727.y;
bool l9_6780=l9_6733;
float l9_6781=l9_6734;
if ((l9_6779==0)||(l9_6779==3))
{
float l9_6782=l9_6778;
float l9_6783=0.0;
float l9_6784=1.0;
bool l9_6785=l9_6780;
float l9_6786=l9_6781;
float l9_6787=fast::clamp(l9_6782,l9_6783,l9_6784);
float l9_6788=step(abs(l9_6782-l9_6787),9.9999997e-06);
l9_6786*=(l9_6788+((1.0-float(l9_6785))*(1.0-l9_6788)));
l9_6782=l9_6787;
l9_6778=l9_6782;
l9_6781=l9_6786;
}
l9_6724.y=l9_6778;
l9_6734=l9_6781;
float2 l9_6789=l9_6724;
int l9_6790=l9_6722;
int l9_6791=l9_6723;
float l9_6792=l9_6732;
float2 l9_6793=l9_6789;
int l9_6794=l9_6790;
int l9_6795=l9_6791;
float3 l9_6796=float3(0.0);
if (l9_6794==0)
{
l9_6796=float3(l9_6793,0.0);
}
else
{
if (l9_6794==1)
{
l9_6796=float3(l9_6793.x,(l9_6793.y*0.5)+(0.5-(float(l9_6795)*0.5)),0.0);
}
else
{
l9_6796=float3(l9_6793,float(l9_6795));
}
}
float3 l9_6797=l9_6796;
float3 l9_6798=l9_6797;
float4 l9_6799=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_6798.xy,bias(l9_6792));
float4 l9_6800=l9_6799;
if (l9_6730)
{
l9_6800=mix(l9_6731,l9_6800,float4(l9_6734));
}
float4 l9_6801=l9_6800;
l9_6715=l9_6801;
l9_6693=l9_6715;
l9_6698=l9_6693;
}
else
{
float2 l9_6802=float2(0.0);
l9_6802=l9_6695.Surface_UVCoord0;
float2 l9_6803=float2(0.0);
float2 l9_6804=(*sc_set0.UserUniforms).patternScaleId01;
l9_6803=l9_6804;
float2 l9_6805=float2(0.0);
l9_6805=((l9_6802-(*sc_set0.UserUniforms).Port_Center_N122)*l9_6803)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_6806=float2(0.0);
float2 l9_6807=(*sc_set0.UserUniforms).patternOffsetId01;
l9_6806=l9_6807;
float2 l9_6808=float2(0.0);
l9_6808=l9_6805+l9_6806;
float l9_6809=0.0;
float l9_6810=(*sc_set0.UserUniforms).patternRotateId01;
l9_6809=l9_6810;
float2 l9_6811=float2(0.0);
float2 l9_6812=l9_6808;
float l9_6813=l9_6809;
float2 l9_6814=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_6815=sin(radians(l9_6813));
float l9_6816=cos(radians(l9_6813));
float2 l9_6817=l9_6812-l9_6814;
l9_6817=float2(dot(float2(l9_6816,l9_6815),l9_6817),dot(float2(-l9_6815,l9_6816),l9_6817))+l9_6814;
l9_6811=l9_6817;
float4 l9_6818=float4(0.0);
int l9_6819;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_6820=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6820=0;
}
else
{
l9_6820=in.varStereoViewID;
}
int l9_6821=l9_6820;
l9_6819=1-l9_6821;
}
else
{
int l9_6822=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6822=0;
}
else
{
l9_6822=in.varStereoViewID;
}
int l9_6823=l9_6822;
l9_6819=l9_6823;
}
int l9_6824=l9_6819;
int l9_6825=patternTextureId01Layout_tmp;
int l9_6826=l9_6824;
float2 l9_6827=l9_6811;
bool l9_6828=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_6829=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_6830=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_6831=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_6832=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_6833=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_6834=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_6835=0.0;
bool l9_6836=l9_6833&&(!l9_6831);
float l9_6837=1.0;
float l9_6838=l9_6827.x;
int l9_6839=l9_6830.x;
if (l9_6839==1)
{
l9_6838=fract(l9_6838);
}
else
{
if (l9_6839==2)
{
float l9_6840=fract(l9_6838);
float l9_6841=l9_6838-l9_6840;
float l9_6842=step(0.25,fract(l9_6841*0.5));
l9_6838=mix(l9_6840,1.0-l9_6840,fast::clamp(l9_6842,0.0,1.0));
}
}
l9_6827.x=l9_6838;
float l9_6843=l9_6827.y;
int l9_6844=l9_6830.y;
if (l9_6844==1)
{
l9_6843=fract(l9_6843);
}
else
{
if (l9_6844==2)
{
float l9_6845=fract(l9_6843);
float l9_6846=l9_6843-l9_6845;
float l9_6847=step(0.25,fract(l9_6846*0.5));
l9_6843=mix(l9_6845,1.0-l9_6845,fast::clamp(l9_6847,0.0,1.0));
}
}
l9_6827.y=l9_6843;
if (l9_6831)
{
bool l9_6848=l9_6833;
bool l9_6849;
if (l9_6848)
{
l9_6849=l9_6830.x==3;
}
else
{
l9_6849=l9_6848;
}
float l9_6850=l9_6827.x;
float l9_6851=l9_6832.x;
float l9_6852=l9_6832.z;
bool l9_6853=l9_6849;
float l9_6854=l9_6837;
float l9_6855=fast::clamp(l9_6850,l9_6851,l9_6852);
float l9_6856=step(abs(l9_6850-l9_6855),9.9999997e-06);
l9_6854*=(l9_6856+((1.0-float(l9_6853))*(1.0-l9_6856)));
l9_6850=l9_6855;
l9_6827.x=l9_6850;
l9_6837=l9_6854;
bool l9_6857=l9_6833;
bool l9_6858;
if (l9_6857)
{
l9_6858=l9_6830.y==3;
}
else
{
l9_6858=l9_6857;
}
float l9_6859=l9_6827.y;
float l9_6860=l9_6832.y;
float l9_6861=l9_6832.w;
bool l9_6862=l9_6858;
float l9_6863=l9_6837;
float l9_6864=fast::clamp(l9_6859,l9_6860,l9_6861);
float l9_6865=step(abs(l9_6859-l9_6864),9.9999997e-06);
l9_6863*=(l9_6865+((1.0-float(l9_6862))*(1.0-l9_6865)));
l9_6859=l9_6864;
l9_6827.y=l9_6859;
l9_6837=l9_6863;
}
float2 l9_6866=l9_6827;
bool l9_6867=l9_6828;
float3x3 l9_6868=l9_6829;
if (l9_6867)
{
l9_6866=float2((l9_6868*float3(l9_6866,1.0)).xy);
}
float2 l9_6869=l9_6866;
l9_6827=l9_6869;
float l9_6870=l9_6827.x;
int l9_6871=l9_6830.x;
bool l9_6872=l9_6836;
float l9_6873=l9_6837;
if ((l9_6871==0)||(l9_6871==3))
{
float l9_6874=l9_6870;
float l9_6875=0.0;
float l9_6876=1.0;
bool l9_6877=l9_6872;
float l9_6878=l9_6873;
float l9_6879=fast::clamp(l9_6874,l9_6875,l9_6876);
float l9_6880=step(abs(l9_6874-l9_6879),9.9999997e-06);
l9_6878*=(l9_6880+((1.0-float(l9_6877))*(1.0-l9_6880)));
l9_6874=l9_6879;
l9_6870=l9_6874;
l9_6873=l9_6878;
}
l9_6827.x=l9_6870;
l9_6837=l9_6873;
float l9_6881=l9_6827.y;
int l9_6882=l9_6830.y;
bool l9_6883=l9_6836;
float l9_6884=l9_6837;
if ((l9_6882==0)||(l9_6882==3))
{
float l9_6885=l9_6881;
float l9_6886=0.0;
float l9_6887=1.0;
bool l9_6888=l9_6883;
float l9_6889=l9_6884;
float l9_6890=fast::clamp(l9_6885,l9_6886,l9_6887);
float l9_6891=step(abs(l9_6885-l9_6890),9.9999997e-06);
l9_6889*=(l9_6891+((1.0-float(l9_6888))*(1.0-l9_6891)));
l9_6885=l9_6890;
l9_6881=l9_6885;
l9_6884=l9_6889;
}
l9_6827.y=l9_6881;
l9_6837=l9_6884;
float2 l9_6892=l9_6827;
int l9_6893=l9_6825;
int l9_6894=l9_6826;
float l9_6895=l9_6835;
float2 l9_6896=l9_6892;
int l9_6897=l9_6893;
int l9_6898=l9_6894;
float3 l9_6899=float3(0.0);
if (l9_6897==0)
{
l9_6899=float3(l9_6896,0.0);
}
else
{
if (l9_6897==1)
{
l9_6899=float3(l9_6896.x,(l9_6896.y*0.5)+(0.5-(float(l9_6898)*0.5)),0.0);
}
else
{
l9_6899=float3(l9_6896,float(l9_6898));
}
}
float3 l9_6900=l9_6899;
float3 l9_6901=l9_6900;
float4 l9_6902=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_6901.xy,bias(l9_6895));
float4 l9_6903=l9_6902;
if (l9_6833)
{
l9_6903=mix(l9_6834,l9_6903,float4(l9_6837));
}
float4 l9_6904=l9_6903;
l9_6818=l9_6904;
float l9_6905=0.0;
float3 l9_6906=l9_6818.xyz;
float l9_6907=l9_6906.x;
l9_6905=l9_6907;
l9_6694=float4(l9_6905);
l9_6698=l9_6694;
}
l9_6691=l9_6698;
float4 l9_6908=float4(0.0);
l9_6908=l9_6689*l9_6691;
l9_6683=l9_6908;
l9_6688=l9_6683;
}
else
{
float4 l9_6909=float4(0.0);
float4 l9_6910=(*sc_set0.UserUniforms).colorId01;
l9_6909=l9_6910;
float2 l9_6911=float2(0.0);
l9_6911=l9_6685.Surface_UVCoord0;
float4 l9_6912=float4(0.0);
int l9_6913;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_6914=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6914=0;
}
else
{
l9_6914=in.varStereoViewID;
}
int l9_6915=l9_6914;
l9_6913=1-l9_6915;
}
else
{
int l9_6916=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6916=0;
}
else
{
l9_6916=in.varStereoViewID;
}
int l9_6917=l9_6916;
l9_6913=l9_6917;
}
int l9_6918=l9_6913;
int l9_6919=greyMaskIdLayout_tmp;
int l9_6920=l9_6918;
float2 l9_6921=l9_6911;
bool l9_6922=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_6923=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_6924=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_6925=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_6926=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_6927=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_6928=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_6929=0.0;
bool l9_6930=l9_6927&&(!l9_6925);
float l9_6931=1.0;
float l9_6932=l9_6921.x;
int l9_6933=l9_6924.x;
if (l9_6933==1)
{
l9_6932=fract(l9_6932);
}
else
{
if (l9_6933==2)
{
float l9_6934=fract(l9_6932);
float l9_6935=l9_6932-l9_6934;
float l9_6936=step(0.25,fract(l9_6935*0.5));
l9_6932=mix(l9_6934,1.0-l9_6934,fast::clamp(l9_6936,0.0,1.0));
}
}
l9_6921.x=l9_6932;
float l9_6937=l9_6921.y;
int l9_6938=l9_6924.y;
if (l9_6938==1)
{
l9_6937=fract(l9_6937);
}
else
{
if (l9_6938==2)
{
float l9_6939=fract(l9_6937);
float l9_6940=l9_6937-l9_6939;
float l9_6941=step(0.25,fract(l9_6940*0.5));
l9_6937=mix(l9_6939,1.0-l9_6939,fast::clamp(l9_6941,0.0,1.0));
}
}
l9_6921.y=l9_6937;
if (l9_6925)
{
bool l9_6942=l9_6927;
bool l9_6943;
if (l9_6942)
{
l9_6943=l9_6924.x==3;
}
else
{
l9_6943=l9_6942;
}
float l9_6944=l9_6921.x;
float l9_6945=l9_6926.x;
float l9_6946=l9_6926.z;
bool l9_6947=l9_6943;
float l9_6948=l9_6931;
float l9_6949=fast::clamp(l9_6944,l9_6945,l9_6946);
float l9_6950=step(abs(l9_6944-l9_6949),9.9999997e-06);
l9_6948*=(l9_6950+((1.0-float(l9_6947))*(1.0-l9_6950)));
l9_6944=l9_6949;
l9_6921.x=l9_6944;
l9_6931=l9_6948;
bool l9_6951=l9_6927;
bool l9_6952;
if (l9_6951)
{
l9_6952=l9_6924.y==3;
}
else
{
l9_6952=l9_6951;
}
float l9_6953=l9_6921.y;
float l9_6954=l9_6926.y;
float l9_6955=l9_6926.w;
bool l9_6956=l9_6952;
float l9_6957=l9_6931;
float l9_6958=fast::clamp(l9_6953,l9_6954,l9_6955);
float l9_6959=step(abs(l9_6953-l9_6958),9.9999997e-06);
l9_6957*=(l9_6959+((1.0-float(l9_6956))*(1.0-l9_6959)));
l9_6953=l9_6958;
l9_6921.y=l9_6953;
l9_6931=l9_6957;
}
float2 l9_6960=l9_6921;
bool l9_6961=l9_6922;
float3x3 l9_6962=l9_6923;
if (l9_6961)
{
l9_6960=float2((l9_6962*float3(l9_6960,1.0)).xy);
}
float2 l9_6963=l9_6960;
l9_6921=l9_6963;
float l9_6964=l9_6921.x;
int l9_6965=l9_6924.x;
bool l9_6966=l9_6930;
float l9_6967=l9_6931;
if ((l9_6965==0)||(l9_6965==3))
{
float l9_6968=l9_6964;
float l9_6969=0.0;
float l9_6970=1.0;
bool l9_6971=l9_6966;
float l9_6972=l9_6967;
float l9_6973=fast::clamp(l9_6968,l9_6969,l9_6970);
float l9_6974=step(abs(l9_6968-l9_6973),9.9999997e-06);
l9_6972*=(l9_6974+((1.0-float(l9_6971))*(1.0-l9_6974)));
l9_6968=l9_6973;
l9_6964=l9_6968;
l9_6967=l9_6972;
}
l9_6921.x=l9_6964;
l9_6931=l9_6967;
float l9_6975=l9_6921.y;
int l9_6976=l9_6924.y;
bool l9_6977=l9_6930;
float l9_6978=l9_6931;
if ((l9_6976==0)||(l9_6976==3))
{
float l9_6979=l9_6975;
float l9_6980=0.0;
float l9_6981=1.0;
bool l9_6982=l9_6977;
float l9_6983=l9_6978;
float l9_6984=fast::clamp(l9_6979,l9_6980,l9_6981);
float l9_6985=step(abs(l9_6979-l9_6984),9.9999997e-06);
l9_6983*=(l9_6985+((1.0-float(l9_6982))*(1.0-l9_6985)));
l9_6979=l9_6984;
l9_6975=l9_6979;
l9_6978=l9_6983;
}
l9_6921.y=l9_6975;
l9_6931=l9_6978;
float2 l9_6986=l9_6921;
int l9_6987=l9_6919;
int l9_6988=l9_6920;
float l9_6989=l9_6929;
float2 l9_6990=l9_6986;
int l9_6991=l9_6987;
int l9_6992=l9_6988;
float3 l9_6993=float3(0.0);
if (l9_6991==0)
{
l9_6993=float3(l9_6990,0.0);
}
else
{
if (l9_6991==1)
{
l9_6993=float3(l9_6990.x,(l9_6990.y*0.5)+(0.5-(float(l9_6992)*0.5)),0.0);
}
else
{
l9_6993=float3(l9_6990,float(l9_6992));
}
}
float3 l9_6994=l9_6993;
float3 l9_6995=l9_6994;
float4 l9_6996=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_6995.xy,bias(l9_6989));
float4 l9_6997=l9_6996;
if (l9_6927)
{
l9_6997=mix(l9_6928,l9_6997,float4(l9_6931));
}
float4 l9_6998=l9_6997;
l9_6912=l9_6998;
float l9_6999=0.0;
l9_6999=l9_6912.x;
float l9_7000=0.0;
l9_7000=step(l9_6999,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_7001=float4(0.0);
l9_7001=l9_6909*float4(l9_7000);
l9_6684=l9_7001;
l9_6688=l9_6684;
}
l9_6681=l9_6688;
float2 l9_7002=float2(0.0);
l9_7002=l9_6667.Surface_UVCoord0;
float4 l9_7003=float4(0.0);
int l9_7004;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_7005=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7005=0;
}
else
{
l9_7005=in.varStereoViewID;
}
int l9_7006=l9_7005;
l9_7004=1-l9_7006;
}
else
{
int l9_7007=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7007=0;
}
else
{
l9_7007=in.varStereoViewID;
}
int l9_7008=l9_7007;
l9_7004=l9_7008;
}
int l9_7009=l9_7004;
int l9_7010=greyMaskIdLayout_tmp;
int l9_7011=l9_7009;
float2 l9_7012=l9_7002;
bool l9_7013=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_7014=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_7015=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_7016=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_7017=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_7018=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_7019=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_7020=0.0;
bool l9_7021=l9_7018&&(!l9_7016);
float l9_7022=1.0;
float l9_7023=l9_7012.x;
int l9_7024=l9_7015.x;
if (l9_7024==1)
{
l9_7023=fract(l9_7023);
}
else
{
if (l9_7024==2)
{
float l9_7025=fract(l9_7023);
float l9_7026=l9_7023-l9_7025;
float l9_7027=step(0.25,fract(l9_7026*0.5));
l9_7023=mix(l9_7025,1.0-l9_7025,fast::clamp(l9_7027,0.0,1.0));
}
}
l9_7012.x=l9_7023;
float l9_7028=l9_7012.y;
int l9_7029=l9_7015.y;
if (l9_7029==1)
{
l9_7028=fract(l9_7028);
}
else
{
if (l9_7029==2)
{
float l9_7030=fract(l9_7028);
float l9_7031=l9_7028-l9_7030;
float l9_7032=step(0.25,fract(l9_7031*0.5));
l9_7028=mix(l9_7030,1.0-l9_7030,fast::clamp(l9_7032,0.0,1.0));
}
}
l9_7012.y=l9_7028;
if (l9_7016)
{
bool l9_7033=l9_7018;
bool l9_7034;
if (l9_7033)
{
l9_7034=l9_7015.x==3;
}
else
{
l9_7034=l9_7033;
}
float l9_7035=l9_7012.x;
float l9_7036=l9_7017.x;
float l9_7037=l9_7017.z;
bool l9_7038=l9_7034;
float l9_7039=l9_7022;
float l9_7040=fast::clamp(l9_7035,l9_7036,l9_7037);
float l9_7041=step(abs(l9_7035-l9_7040),9.9999997e-06);
l9_7039*=(l9_7041+((1.0-float(l9_7038))*(1.0-l9_7041)));
l9_7035=l9_7040;
l9_7012.x=l9_7035;
l9_7022=l9_7039;
bool l9_7042=l9_7018;
bool l9_7043;
if (l9_7042)
{
l9_7043=l9_7015.y==3;
}
else
{
l9_7043=l9_7042;
}
float l9_7044=l9_7012.y;
float l9_7045=l9_7017.y;
float l9_7046=l9_7017.w;
bool l9_7047=l9_7043;
float l9_7048=l9_7022;
float l9_7049=fast::clamp(l9_7044,l9_7045,l9_7046);
float l9_7050=step(abs(l9_7044-l9_7049),9.9999997e-06);
l9_7048*=(l9_7050+((1.0-float(l9_7047))*(1.0-l9_7050)));
l9_7044=l9_7049;
l9_7012.y=l9_7044;
l9_7022=l9_7048;
}
float2 l9_7051=l9_7012;
bool l9_7052=l9_7013;
float3x3 l9_7053=l9_7014;
if (l9_7052)
{
l9_7051=float2((l9_7053*float3(l9_7051,1.0)).xy);
}
float2 l9_7054=l9_7051;
l9_7012=l9_7054;
float l9_7055=l9_7012.x;
int l9_7056=l9_7015.x;
bool l9_7057=l9_7021;
float l9_7058=l9_7022;
if ((l9_7056==0)||(l9_7056==3))
{
float l9_7059=l9_7055;
float l9_7060=0.0;
float l9_7061=1.0;
bool l9_7062=l9_7057;
float l9_7063=l9_7058;
float l9_7064=fast::clamp(l9_7059,l9_7060,l9_7061);
float l9_7065=step(abs(l9_7059-l9_7064),9.9999997e-06);
l9_7063*=(l9_7065+((1.0-float(l9_7062))*(1.0-l9_7065)));
l9_7059=l9_7064;
l9_7055=l9_7059;
l9_7058=l9_7063;
}
l9_7012.x=l9_7055;
l9_7022=l9_7058;
float l9_7066=l9_7012.y;
int l9_7067=l9_7015.y;
bool l9_7068=l9_7021;
float l9_7069=l9_7022;
if ((l9_7067==0)||(l9_7067==3))
{
float l9_7070=l9_7066;
float l9_7071=0.0;
float l9_7072=1.0;
bool l9_7073=l9_7068;
float l9_7074=l9_7069;
float l9_7075=fast::clamp(l9_7070,l9_7071,l9_7072);
float l9_7076=step(abs(l9_7070-l9_7075),9.9999997e-06);
l9_7074*=(l9_7076+((1.0-float(l9_7073))*(1.0-l9_7076)));
l9_7070=l9_7075;
l9_7066=l9_7070;
l9_7069=l9_7074;
}
l9_7012.y=l9_7066;
l9_7022=l9_7069;
float2 l9_7077=l9_7012;
int l9_7078=l9_7010;
int l9_7079=l9_7011;
float l9_7080=l9_7020;
float2 l9_7081=l9_7077;
int l9_7082=l9_7078;
int l9_7083=l9_7079;
float3 l9_7084=float3(0.0);
if (l9_7082==0)
{
l9_7084=float3(l9_7081,0.0);
}
else
{
if (l9_7082==1)
{
l9_7084=float3(l9_7081.x,(l9_7081.y*0.5)+(0.5-(float(l9_7083)*0.5)),0.0);
}
else
{
l9_7084=float3(l9_7081,float(l9_7083));
}
}
float3 l9_7085=l9_7084;
float3 l9_7086=l9_7085;
float4 l9_7087=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_7086.xy,bias(l9_7080));
float4 l9_7088=l9_7087;
if (l9_7018)
{
l9_7088=mix(l9_7019,l9_7088,float4(l9_7022));
}
float4 l9_7089=l9_7088;
l9_7003=l9_7089;
float l9_7090=0.0;
l9_7090=l9_7003.x;
float l9_7091=0.0;
l9_7091=step(l9_7090,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_7092=float4(0.0);
l9_7092=l9_6681*float4(l9_7091);
float4 l9_7093=float4(0.0);
float4 l9_7094=(*sc_set0.UserUniforms).colorId01;
l9_7093=l9_7094;
float4 l9_7095=float4(0.0);
l9_7095=l9_7093*float4(l9_7091);
float4 l9_7096=float4(0.0);
float4 l9_7097=l9_7092;
float4 l9_7098=l9_7095;
float4 l9_7099=l9_7097;
float4 l9_7100=l9_7098;
float3 l9_7101=l9_7099.xyz*l9_7099.w;
l9_7099=float4(l9_7101.x,l9_7101.y,l9_7101.z,l9_7099.w);
float4 l9_7102=l9_7099+(l9_7100*(1.0-l9_7099.w));
l9_7096=l9_7102;
float4 l9_7103=float4(0.0);
l9_7103=float4(l9_6675)*l9_7096;
float4 l9_7104=float4(0.0);
l9_7104=l9_7103+l9_7096;
l9_6665=l9_7104;
l9_6670=l9_6665;
}
else
{
float4 l9_7105=float4(0.0);
float l9_7106=0.0;
float4 l9_7107=float4(0.0);
float4 l9_7108=float4(0.0);
ssGlobals l9_7109=l9_6667;
float l9_7110=0.0;
float l9_7111=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_7110=l9_7111;
l9_7106=l9_7110;
float4 l9_7112;
if ((l9_7106*1.0)!=0.0)
{
float4 l9_7113=float4(0.0);
float4 l9_7114=(*sc_set0.UserUniforms).patternColorId01;
l9_7113=l9_7114;
float4 l9_7115=float4(0.0);
float l9_7116=0.0;
float4 l9_7117=float4(0.0);
float4 l9_7118=float4(0.0);
ssGlobals l9_7119=l9_7109;
float l9_7120=0.0;
float l9_7121=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_7120=l9_7121;
l9_7116=l9_7120;
float4 l9_7122;
if ((l9_7116*1.0)!=0.0)
{
float2 l9_7123=float2(0.0);
l9_7123=l9_7119.Surface_UVCoord0;
float2 l9_7124=float2(0.0);
float2 l9_7125=(*sc_set0.UserUniforms).patternScaleId01;
l9_7124=l9_7125;
float2 l9_7126=float2(0.0);
l9_7126=((l9_7123-(*sc_set0.UserUniforms).Port_Center_N122)*l9_7124)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_7127=float2(0.0);
float2 l9_7128=(*sc_set0.UserUniforms).patternOffsetId01;
l9_7127=l9_7128;
float2 l9_7129=float2(0.0);
l9_7129=l9_7126+l9_7127;
float l9_7130=0.0;
float l9_7131=(*sc_set0.UserUniforms).patternRotateId01;
l9_7130=l9_7131;
float2 l9_7132=float2(0.0);
float2 l9_7133=l9_7129;
float l9_7134=l9_7130;
float2 l9_7135=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_7136=sin(radians(l9_7134));
float l9_7137=cos(radians(l9_7134));
float2 l9_7138=l9_7133-l9_7135;
l9_7138=float2(dot(float2(l9_7137,l9_7136),l9_7138),dot(float2(-l9_7136,l9_7137),l9_7138))+l9_7135;
l9_7132=l9_7138;
float4 l9_7139=float4(0.0);
int l9_7140;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_7141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7141=0;
}
else
{
l9_7141=in.varStereoViewID;
}
int l9_7142=l9_7141;
l9_7140=1-l9_7142;
}
else
{
int l9_7143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7143=0;
}
else
{
l9_7143=in.varStereoViewID;
}
int l9_7144=l9_7143;
l9_7140=l9_7144;
}
int l9_7145=l9_7140;
int l9_7146=patternTextureId01Layout_tmp;
int l9_7147=l9_7145;
float2 l9_7148=l9_7132;
bool l9_7149=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_7150=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_7151=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_7152=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_7153=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_7154=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_7155=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_7156=0.0;
bool l9_7157=l9_7154&&(!l9_7152);
float l9_7158=1.0;
float l9_7159=l9_7148.x;
int l9_7160=l9_7151.x;
if (l9_7160==1)
{
l9_7159=fract(l9_7159);
}
else
{
if (l9_7160==2)
{
float l9_7161=fract(l9_7159);
float l9_7162=l9_7159-l9_7161;
float l9_7163=step(0.25,fract(l9_7162*0.5));
l9_7159=mix(l9_7161,1.0-l9_7161,fast::clamp(l9_7163,0.0,1.0));
}
}
l9_7148.x=l9_7159;
float l9_7164=l9_7148.y;
int l9_7165=l9_7151.y;
if (l9_7165==1)
{
l9_7164=fract(l9_7164);
}
else
{
if (l9_7165==2)
{
float l9_7166=fract(l9_7164);
float l9_7167=l9_7164-l9_7166;
float l9_7168=step(0.25,fract(l9_7167*0.5));
l9_7164=mix(l9_7166,1.0-l9_7166,fast::clamp(l9_7168,0.0,1.0));
}
}
l9_7148.y=l9_7164;
if (l9_7152)
{
bool l9_7169=l9_7154;
bool l9_7170;
if (l9_7169)
{
l9_7170=l9_7151.x==3;
}
else
{
l9_7170=l9_7169;
}
float l9_7171=l9_7148.x;
float l9_7172=l9_7153.x;
float l9_7173=l9_7153.z;
bool l9_7174=l9_7170;
float l9_7175=l9_7158;
float l9_7176=fast::clamp(l9_7171,l9_7172,l9_7173);
float l9_7177=step(abs(l9_7171-l9_7176),9.9999997e-06);
l9_7175*=(l9_7177+((1.0-float(l9_7174))*(1.0-l9_7177)));
l9_7171=l9_7176;
l9_7148.x=l9_7171;
l9_7158=l9_7175;
bool l9_7178=l9_7154;
bool l9_7179;
if (l9_7178)
{
l9_7179=l9_7151.y==3;
}
else
{
l9_7179=l9_7178;
}
float l9_7180=l9_7148.y;
float l9_7181=l9_7153.y;
float l9_7182=l9_7153.w;
bool l9_7183=l9_7179;
float l9_7184=l9_7158;
float l9_7185=fast::clamp(l9_7180,l9_7181,l9_7182);
float l9_7186=step(abs(l9_7180-l9_7185),9.9999997e-06);
l9_7184*=(l9_7186+((1.0-float(l9_7183))*(1.0-l9_7186)));
l9_7180=l9_7185;
l9_7148.y=l9_7180;
l9_7158=l9_7184;
}
float2 l9_7187=l9_7148;
bool l9_7188=l9_7149;
float3x3 l9_7189=l9_7150;
if (l9_7188)
{
l9_7187=float2((l9_7189*float3(l9_7187,1.0)).xy);
}
float2 l9_7190=l9_7187;
l9_7148=l9_7190;
float l9_7191=l9_7148.x;
int l9_7192=l9_7151.x;
bool l9_7193=l9_7157;
float l9_7194=l9_7158;
if ((l9_7192==0)||(l9_7192==3))
{
float l9_7195=l9_7191;
float l9_7196=0.0;
float l9_7197=1.0;
bool l9_7198=l9_7193;
float l9_7199=l9_7194;
float l9_7200=fast::clamp(l9_7195,l9_7196,l9_7197);
float l9_7201=step(abs(l9_7195-l9_7200),9.9999997e-06);
l9_7199*=(l9_7201+((1.0-float(l9_7198))*(1.0-l9_7201)));
l9_7195=l9_7200;
l9_7191=l9_7195;
l9_7194=l9_7199;
}
l9_7148.x=l9_7191;
l9_7158=l9_7194;
float l9_7202=l9_7148.y;
int l9_7203=l9_7151.y;
bool l9_7204=l9_7157;
float l9_7205=l9_7158;
if ((l9_7203==0)||(l9_7203==3))
{
float l9_7206=l9_7202;
float l9_7207=0.0;
float l9_7208=1.0;
bool l9_7209=l9_7204;
float l9_7210=l9_7205;
float l9_7211=fast::clamp(l9_7206,l9_7207,l9_7208);
float l9_7212=step(abs(l9_7206-l9_7211),9.9999997e-06);
l9_7210*=(l9_7212+((1.0-float(l9_7209))*(1.0-l9_7212)));
l9_7206=l9_7211;
l9_7202=l9_7206;
l9_7205=l9_7210;
}
l9_7148.y=l9_7202;
l9_7158=l9_7205;
float2 l9_7213=l9_7148;
int l9_7214=l9_7146;
int l9_7215=l9_7147;
float l9_7216=l9_7156;
float2 l9_7217=l9_7213;
int l9_7218=l9_7214;
int l9_7219=l9_7215;
float3 l9_7220=float3(0.0);
if (l9_7218==0)
{
l9_7220=float3(l9_7217,0.0);
}
else
{
if (l9_7218==1)
{
l9_7220=float3(l9_7217.x,(l9_7217.y*0.5)+(0.5-(float(l9_7219)*0.5)),0.0);
}
else
{
l9_7220=float3(l9_7217,float(l9_7219));
}
}
float3 l9_7221=l9_7220;
float3 l9_7222=l9_7221;
float4 l9_7223=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_7222.xy,bias(l9_7216));
float4 l9_7224=l9_7223;
if (l9_7154)
{
l9_7224=mix(l9_7155,l9_7224,float4(l9_7158));
}
float4 l9_7225=l9_7224;
l9_7139=l9_7225;
l9_7117=l9_7139;
l9_7122=l9_7117;
}
else
{
float2 l9_7226=float2(0.0);
l9_7226=l9_7119.Surface_UVCoord0;
float2 l9_7227=float2(0.0);
float2 l9_7228=(*sc_set0.UserUniforms).patternScaleId01;
l9_7227=l9_7228;
float2 l9_7229=float2(0.0);
l9_7229=((l9_7226-(*sc_set0.UserUniforms).Port_Center_N122)*l9_7227)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_7230=float2(0.0);
float2 l9_7231=(*sc_set0.UserUniforms).patternOffsetId01;
l9_7230=l9_7231;
float2 l9_7232=float2(0.0);
l9_7232=l9_7229+l9_7230;
float l9_7233=0.0;
float l9_7234=(*sc_set0.UserUniforms).patternRotateId01;
l9_7233=l9_7234;
float2 l9_7235=float2(0.0);
float2 l9_7236=l9_7232;
float l9_7237=l9_7233;
float2 l9_7238=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_7239=sin(radians(l9_7237));
float l9_7240=cos(radians(l9_7237));
float2 l9_7241=l9_7236-l9_7238;
l9_7241=float2(dot(float2(l9_7240,l9_7239),l9_7241),dot(float2(-l9_7239,l9_7240),l9_7241))+l9_7238;
l9_7235=l9_7241;
float4 l9_7242=float4(0.0);
int l9_7243;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_7244=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7244=0;
}
else
{
l9_7244=in.varStereoViewID;
}
int l9_7245=l9_7244;
l9_7243=1-l9_7245;
}
else
{
int l9_7246=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7246=0;
}
else
{
l9_7246=in.varStereoViewID;
}
int l9_7247=l9_7246;
l9_7243=l9_7247;
}
int l9_7248=l9_7243;
int l9_7249=patternTextureId01Layout_tmp;
int l9_7250=l9_7248;
float2 l9_7251=l9_7235;
bool l9_7252=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_7253=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_7254=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_7255=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_7256=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_7257=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_7258=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_7259=0.0;
bool l9_7260=l9_7257&&(!l9_7255);
float l9_7261=1.0;
float l9_7262=l9_7251.x;
int l9_7263=l9_7254.x;
if (l9_7263==1)
{
l9_7262=fract(l9_7262);
}
else
{
if (l9_7263==2)
{
float l9_7264=fract(l9_7262);
float l9_7265=l9_7262-l9_7264;
float l9_7266=step(0.25,fract(l9_7265*0.5));
l9_7262=mix(l9_7264,1.0-l9_7264,fast::clamp(l9_7266,0.0,1.0));
}
}
l9_7251.x=l9_7262;
float l9_7267=l9_7251.y;
int l9_7268=l9_7254.y;
if (l9_7268==1)
{
l9_7267=fract(l9_7267);
}
else
{
if (l9_7268==2)
{
float l9_7269=fract(l9_7267);
float l9_7270=l9_7267-l9_7269;
float l9_7271=step(0.25,fract(l9_7270*0.5));
l9_7267=mix(l9_7269,1.0-l9_7269,fast::clamp(l9_7271,0.0,1.0));
}
}
l9_7251.y=l9_7267;
if (l9_7255)
{
bool l9_7272=l9_7257;
bool l9_7273;
if (l9_7272)
{
l9_7273=l9_7254.x==3;
}
else
{
l9_7273=l9_7272;
}
float l9_7274=l9_7251.x;
float l9_7275=l9_7256.x;
float l9_7276=l9_7256.z;
bool l9_7277=l9_7273;
float l9_7278=l9_7261;
float l9_7279=fast::clamp(l9_7274,l9_7275,l9_7276);
float l9_7280=step(abs(l9_7274-l9_7279),9.9999997e-06);
l9_7278*=(l9_7280+((1.0-float(l9_7277))*(1.0-l9_7280)));
l9_7274=l9_7279;
l9_7251.x=l9_7274;
l9_7261=l9_7278;
bool l9_7281=l9_7257;
bool l9_7282;
if (l9_7281)
{
l9_7282=l9_7254.y==3;
}
else
{
l9_7282=l9_7281;
}
float l9_7283=l9_7251.y;
float l9_7284=l9_7256.y;
float l9_7285=l9_7256.w;
bool l9_7286=l9_7282;
float l9_7287=l9_7261;
float l9_7288=fast::clamp(l9_7283,l9_7284,l9_7285);
float l9_7289=step(abs(l9_7283-l9_7288),9.9999997e-06);
l9_7287*=(l9_7289+((1.0-float(l9_7286))*(1.0-l9_7289)));
l9_7283=l9_7288;
l9_7251.y=l9_7283;
l9_7261=l9_7287;
}
float2 l9_7290=l9_7251;
bool l9_7291=l9_7252;
float3x3 l9_7292=l9_7253;
if (l9_7291)
{
l9_7290=float2((l9_7292*float3(l9_7290,1.0)).xy);
}
float2 l9_7293=l9_7290;
l9_7251=l9_7293;
float l9_7294=l9_7251.x;
int l9_7295=l9_7254.x;
bool l9_7296=l9_7260;
float l9_7297=l9_7261;
if ((l9_7295==0)||(l9_7295==3))
{
float l9_7298=l9_7294;
float l9_7299=0.0;
float l9_7300=1.0;
bool l9_7301=l9_7296;
float l9_7302=l9_7297;
float l9_7303=fast::clamp(l9_7298,l9_7299,l9_7300);
float l9_7304=step(abs(l9_7298-l9_7303),9.9999997e-06);
l9_7302*=(l9_7304+((1.0-float(l9_7301))*(1.0-l9_7304)));
l9_7298=l9_7303;
l9_7294=l9_7298;
l9_7297=l9_7302;
}
l9_7251.x=l9_7294;
l9_7261=l9_7297;
float l9_7305=l9_7251.y;
int l9_7306=l9_7254.y;
bool l9_7307=l9_7260;
float l9_7308=l9_7261;
if ((l9_7306==0)||(l9_7306==3))
{
float l9_7309=l9_7305;
float l9_7310=0.0;
float l9_7311=1.0;
bool l9_7312=l9_7307;
float l9_7313=l9_7308;
float l9_7314=fast::clamp(l9_7309,l9_7310,l9_7311);
float l9_7315=step(abs(l9_7309-l9_7314),9.9999997e-06);
l9_7313*=(l9_7315+((1.0-float(l9_7312))*(1.0-l9_7315)));
l9_7309=l9_7314;
l9_7305=l9_7309;
l9_7308=l9_7313;
}
l9_7251.y=l9_7305;
l9_7261=l9_7308;
float2 l9_7316=l9_7251;
int l9_7317=l9_7249;
int l9_7318=l9_7250;
float l9_7319=l9_7259;
float2 l9_7320=l9_7316;
int l9_7321=l9_7317;
int l9_7322=l9_7318;
float3 l9_7323=float3(0.0);
if (l9_7321==0)
{
l9_7323=float3(l9_7320,0.0);
}
else
{
if (l9_7321==1)
{
l9_7323=float3(l9_7320.x,(l9_7320.y*0.5)+(0.5-(float(l9_7322)*0.5)),0.0);
}
else
{
l9_7323=float3(l9_7320,float(l9_7322));
}
}
float3 l9_7324=l9_7323;
float3 l9_7325=l9_7324;
float4 l9_7326=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_7325.xy,bias(l9_7319));
float4 l9_7327=l9_7326;
if (l9_7257)
{
l9_7327=mix(l9_7258,l9_7327,float4(l9_7261));
}
float4 l9_7328=l9_7327;
l9_7242=l9_7328;
float l9_7329=0.0;
float3 l9_7330=l9_7242.xyz;
float l9_7331=l9_7330.x;
l9_7329=l9_7331;
l9_7118=float4(l9_7329);
l9_7122=l9_7118;
}
l9_7115=l9_7122;
float4 l9_7332=float4(0.0);
l9_7332=l9_7113*l9_7115;
l9_7107=l9_7332;
l9_7112=l9_7107;
}
else
{
float4 l9_7333=float4(0.0);
float4 l9_7334=(*sc_set0.UserUniforms).colorId01;
l9_7333=l9_7334;
float2 l9_7335=float2(0.0);
l9_7335=l9_7109.Surface_UVCoord0;
float4 l9_7336=float4(0.0);
int l9_7337;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_7338=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7338=0;
}
else
{
l9_7338=in.varStereoViewID;
}
int l9_7339=l9_7338;
l9_7337=1-l9_7339;
}
else
{
int l9_7340=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7340=0;
}
else
{
l9_7340=in.varStereoViewID;
}
int l9_7341=l9_7340;
l9_7337=l9_7341;
}
int l9_7342=l9_7337;
int l9_7343=greyMaskIdLayout_tmp;
int l9_7344=l9_7342;
float2 l9_7345=l9_7335;
bool l9_7346=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_7347=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_7348=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_7349=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_7350=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_7351=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_7352=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_7353=0.0;
bool l9_7354=l9_7351&&(!l9_7349);
float l9_7355=1.0;
float l9_7356=l9_7345.x;
int l9_7357=l9_7348.x;
if (l9_7357==1)
{
l9_7356=fract(l9_7356);
}
else
{
if (l9_7357==2)
{
float l9_7358=fract(l9_7356);
float l9_7359=l9_7356-l9_7358;
float l9_7360=step(0.25,fract(l9_7359*0.5));
l9_7356=mix(l9_7358,1.0-l9_7358,fast::clamp(l9_7360,0.0,1.0));
}
}
l9_7345.x=l9_7356;
float l9_7361=l9_7345.y;
int l9_7362=l9_7348.y;
if (l9_7362==1)
{
l9_7361=fract(l9_7361);
}
else
{
if (l9_7362==2)
{
float l9_7363=fract(l9_7361);
float l9_7364=l9_7361-l9_7363;
float l9_7365=step(0.25,fract(l9_7364*0.5));
l9_7361=mix(l9_7363,1.0-l9_7363,fast::clamp(l9_7365,0.0,1.0));
}
}
l9_7345.y=l9_7361;
if (l9_7349)
{
bool l9_7366=l9_7351;
bool l9_7367;
if (l9_7366)
{
l9_7367=l9_7348.x==3;
}
else
{
l9_7367=l9_7366;
}
float l9_7368=l9_7345.x;
float l9_7369=l9_7350.x;
float l9_7370=l9_7350.z;
bool l9_7371=l9_7367;
float l9_7372=l9_7355;
float l9_7373=fast::clamp(l9_7368,l9_7369,l9_7370);
float l9_7374=step(abs(l9_7368-l9_7373),9.9999997e-06);
l9_7372*=(l9_7374+((1.0-float(l9_7371))*(1.0-l9_7374)));
l9_7368=l9_7373;
l9_7345.x=l9_7368;
l9_7355=l9_7372;
bool l9_7375=l9_7351;
bool l9_7376;
if (l9_7375)
{
l9_7376=l9_7348.y==3;
}
else
{
l9_7376=l9_7375;
}
float l9_7377=l9_7345.y;
float l9_7378=l9_7350.y;
float l9_7379=l9_7350.w;
bool l9_7380=l9_7376;
float l9_7381=l9_7355;
float l9_7382=fast::clamp(l9_7377,l9_7378,l9_7379);
float l9_7383=step(abs(l9_7377-l9_7382),9.9999997e-06);
l9_7381*=(l9_7383+((1.0-float(l9_7380))*(1.0-l9_7383)));
l9_7377=l9_7382;
l9_7345.y=l9_7377;
l9_7355=l9_7381;
}
float2 l9_7384=l9_7345;
bool l9_7385=l9_7346;
float3x3 l9_7386=l9_7347;
if (l9_7385)
{
l9_7384=float2((l9_7386*float3(l9_7384,1.0)).xy);
}
float2 l9_7387=l9_7384;
l9_7345=l9_7387;
float l9_7388=l9_7345.x;
int l9_7389=l9_7348.x;
bool l9_7390=l9_7354;
float l9_7391=l9_7355;
if ((l9_7389==0)||(l9_7389==3))
{
float l9_7392=l9_7388;
float l9_7393=0.0;
float l9_7394=1.0;
bool l9_7395=l9_7390;
float l9_7396=l9_7391;
float l9_7397=fast::clamp(l9_7392,l9_7393,l9_7394);
float l9_7398=step(abs(l9_7392-l9_7397),9.9999997e-06);
l9_7396*=(l9_7398+((1.0-float(l9_7395))*(1.0-l9_7398)));
l9_7392=l9_7397;
l9_7388=l9_7392;
l9_7391=l9_7396;
}
l9_7345.x=l9_7388;
l9_7355=l9_7391;
float l9_7399=l9_7345.y;
int l9_7400=l9_7348.y;
bool l9_7401=l9_7354;
float l9_7402=l9_7355;
if ((l9_7400==0)||(l9_7400==3))
{
float l9_7403=l9_7399;
float l9_7404=0.0;
float l9_7405=1.0;
bool l9_7406=l9_7401;
float l9_7407=l9_7402;
float l9_7408=fast::clamp(l9_7403,l9_7404,l9_7405);
float l9_7409=step(abs(l9_7403-l9_7408),9.9999997e-06);
l9_7407*=(l9_7409+((1.0-float(l9_7406))*(1.0-l9_7409)));
l9_7403=l9_7408;
l9_7399=l9_7403;
l9_7402=l9_7407;
}
l9_7345.y=l9_7399;
l9_7355=l9_7402;
float2 l9_7410=l9_7345;
int l9_7411=l9_7343;
int l9_7412=l9_7344;
float l9_7413=l9_7353;
float2 l9_7414=l9_7410;
int l9_7415=l9_7411;
int l9_7416=l9_7412;
float3 l9_7417=float3(0.0);
if (l9_7415==0)
{
l9_7417=float3(l9_7414,0.0);
}
else
{
if (l9_7415==1)
{
l9_7417=float3(l9_7414.x,(l9_7414.y*0.5)+(0.5-(float(l9_7416)*0.5)),0.0);
}
else
{
l9_7417=float3(l9_7414,float(l9_7416));
}
}
float3 l9_7418=l9_7417;
float3 l9_7419=l9_7418;
float4 l9_7420=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_7419.xy,bias(l9_7413));
float4 l9_7421=l9_7420;
if (l9_7351)
{
l9_7421=mix(l9_7352,l9_7421,float4(l9_7355));
}
float4 l9_7422=l9_7421;
l9_7336=l9_7422;
float l9_7423=0.0;
l9_7423=l9_7336.x;
float l9_7424=0.0;
l9_7424=step(l9_7423,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_7425=float4(0.0);
l9_7425=l9_7333*float4(l9_7424);
l9_7108=l9_7425;
l9_7112=l9_7108;
}
l9_7105=l9_7112;
float2 l9_7426=float2(0.0);
l9_7426=l9_6667.Surface_UVCoord0;
float4 l9_7427=float4(0.0);
int l9_7428;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_7429=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7429=0;
}
else
{
l9_7429=in.varStereoViewID;
}
int l9_7430=l9_7429;
l9_7428=1-l9_7430;
}
else
{
int l9_7431=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7431=0;
}
else
{
l9_7431=in.varStereoViewID;
}
int l9_7432=l9_7431;
l9_7428=l9_7432;
}
int l9_7433=l9_7428;
int l9_7434=greyMaskIdLayout_tmp;
int l9_7435=l9_7433;
float2 l9_7436=l9_7426;
bool l9_7437=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_7438=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_7439=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_7440=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_7441=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_7442=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_7443=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_7444=0.0;
bool l9_7445=l9_7442&&(!l9_7440);
float l9_7446=1.0;
float l9_7447=l9_7436.x;
int l9_7448=l9_7439.x;
if (l9_7448==1)
{
l9_7447=fract(l9_7447);
}
else
{
if (l9_7448==2)
{
float l9_7449=fract(l9_7447);
float l9_7450=l9_7447-l9_7449;
float l9_7451=step(0.25,fract(l9_7450*0.5));
l9_7447=mix(l9_7449,1.0-l9_7449,fast::clamp(l9_7451,0.0,1.0));
}
}
l9_7436.x=l9_7447;
float l9_7452=l9_7436.y;
int l9_7453=l9_7439.y;
if (l9_7453==1)
{
l9_7452=fract(l9_7452);
}
else
{
if (l9_7453==2)
{
float l9_7454=fract(l9_7452);
float l9_7455=l9_7452-l9_7454;
float l9_7456=step(0.25,fract(l9_7455*0.5));
l9_7452=mix(l9_7454,1.0-l9_7454,fast::clamp(l9_7456,0.0,1.0));
}
}
l9_7436.y=l9_7452;
if (l9_7440)
{
bool l9_7457=l9_7442;
bool l9_7458;
if (l9_7457)
{
l9_7458=l9_7439.x==3;
}
else
{
l9_7458=l9_7457;
}
float l9_7459=l9_7436.x;
float l9_7460=l9_7441.x;
float l9_7461=l9_7441.z;
bool l9_7462=l9_7458;
float l9_7463=l9_7446;
float l9_7464=fast::clamp(l9_7459,l9_7460,l9_7461);
float l9_7465=step(abs(l9_7459-l9_7464),9.9999997e-06);
l9_7463*=(l9_7465+((1.0-float(l9_7462))*(1.0-l9_7465)));
l9_7459=l9_7464;
l9_7436.x=l9_7459;
l9_7446=l9_7463;
bool l9_7466=l9_7442;
bool l9_7467;
if (l9_7466)
{
l9_7467=l9_7439.y==3;
}
else
{
l9_7467=l9_7466;
}
float l9_7468=l9_7436.y;
float l9_7469=l9_7441.y;
float l9_7470=l9_7441.w;
bool l9_7471=l9_7467;
float l9_7472=l9_7446;
float l9_7473=fast::clamp(l9_7468,l9_7469,l9_7470);
float l9_7474=step(abs(l9_7468-l9_7473),9.9999997e-06);
l9_7472*=(l9_7474+((1.0-float(l9_7471))*(1.0-l9_7474)));
l9_7468=l9_7473;
l9_7436.y=l9_7468;
l9_7446=l9_7472;
}
float2 l9_7475=l9_7436;
bool l9_7476=l9_7437;
float3x3 l9_7477=l9_7438;
if (l9_7476)
{
l9_7475=float2((l9_7477*float3(l9_7475,1.0)).xy);
}
float2 l9_7478=l9_7475;
l9_7436=l9_7478;
float l9_7479=l9_7436.x;
int l9_7480=l9_7439.x;
bool l9_7481=l9_7445;
float l9_7482=l9_7446;
if ((l9_7480==0)||(l9_7480==3))
{
float l9_7483=l9_7479;
float l9_7484=0.0;
float l9_7485=1.0;
bool l9_7486=l9_7481;
float l9_7487=l9_7482;
float l9_7488=fast::clamp(l9_7483,l9_7484,l9_7485);
float l9_7489=step(abs(l9_7483-l9_7488),9.9999997e-06);
l9_7487*=(l9_7489+((1.0-float(l9_7486))*(1.0-l9_7489)));
l9_7483=l9_7488;
l9_7479=l9_7483;
l9_7482=l9_7487;
}
l9_7436.x=l9_7479;
l9_7446=l9_7482;
float l9_7490=l9_7436.y;
int l9_7491=l9_7439.y;
bool l9_7492=l9_7445;
float l9_7493=l9_7446;
if ((l9_7491==0)||(l9_7491==3))
{
float l9_7494=l9_7490;
float l9_7495=0.0;
float l9_7496=1.0;
bool l9_7497=l9_7492;
float l9_7498=l9_7493;
float l9_7499=fast::clamp(l9_7494,l9_7495,l9_7496);
float l9_7500=step(abs(l9_7494-l9_7499),9.9999997e-06);
l9_7498*=(l9_7500+((1.0-float(l9_7497))*(1.0-l9_7500)));
l9_7494=l9_7499;
l9_7490=l9_7494;
l9_7493=l9_7498;
}
l9_7436.y=l9_7490;
l9_7446=l9_7493;
float2 l9_7501=l9_7436;
int l9_7502=l9_7434;
int l9_7503=l9_7435;
float l9_7504=l9_7444;
float2 l9_7505=l9_7501;
int l9_7506=l9_7502;
int l9_7507=l9_7503;
float3 l9_7508=float3(0.0);
if (l9_7506==0)
{
l9_7508=float3(l9_7505,0.0);
}
else
{
if (l9_7506==1)
{
l9_7508=float3(l9_7505.x,(l9_7505.y*0.5)+(0.5-(float(l9_7507)*0.5)),0.0);
}
else
{
l9_7508=float3(l9_7505,float(l9_7507));
}
}
float3 l9_7509=l9_7508;
float3 l9_7510=l9_7509;
float4 l9_7511=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_7510.xy,bias(l9_7504));
float4 l9_7512=l9_7511;
if (l9_7442)
{
l9_7512=mix(l9_7443,l9_7512,float4(l9_7446));
}
float4 l9_7513=l9_7512;
l9_7427=l9_7513;
float l9_7514=0.0;
l9_7514=l9_7427.x;
float l9_7515=0.0;
l9_7515=step(l9_7514,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_7516=float4(0.0);
l9_7516=l9_7105*float4(l9_7515);
float4 l9_7517=float4(0.0);
float4 l9_7518=(*sc_set0.UserUniforms).colorId01;
l9_7517=l9_7518;
float4 l9_7519=float4(0.0);
l9_7519=l9_7517*float4(l9_7515);
float4 l9_7520=float4(0.0);
float4 l9_7521=l9_7516;
float4 l9_7522=l9_7519;
float4 l9_7523=l9_7521;
float4 l9_7524=l9_7522;
float3 l9_7525=l9_7523.xyz*l9_7523.w;
l9_7523=float4(l9_7525.x,l9_7525.y,l9_7525.z,l9_7523.w);
float4 l9_7526=l9_7523+(l9_7524*(1.0-l9_7523.w));
l9_7520=l9_7526;
l9_6666=l9_7520;
l9_6670=l9_6666;
}
l9_6663=l9_6670;
l9_5766=l9_6663;
l9_5770=l9_5766;
}
l9_5763=l9_5770;
float2 l9_7527=float2(0.0);
l9_7527=l9_1952.Surface_UVCoord0;
float4 l9_7528=float4(0.0);
int l9_7529;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_7530=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7530=0;
}
else
{
l9_7530=in.varStereoViewID;
}
int l9_7531=l9_7530;
l9_7529=1-l9_7531;
}
else
{
int l9_7532=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7532=0;
}
else
{
l9_7532=in.varStereoViewID;
}
int l9_7533=l9_7532;
l9_7529=l9_7533;
}
int l9_7534=l9_7529;
int l9_7535=greyMaskIdLayout_tmp;
int l9_7536=l9_7534;
float2 l9_7537=l9_7527;
bool l9_7538=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_7539=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_7540=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_7541=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_7542=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_7543=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_7544=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_7545=0.0;
bool l9_7546=l9_7543&&(!l9_7541);
float l9_7547=1.0;
float l9_7548=l9_7537.x;
int l9_7549=l9_7540.x;
if (l9_7549==1)
{
l9_7548=fract(l9_7548);
}
else
{
if (l9_7549==2)
{
float l9_7550=fract(l9_7548);
float l9_7551=l9_7548-l9_7550;
float l9_7552=step(0.25,fract(l9_7551*0.5));
l9_7548=mix(l9_7550,1.0-l9_7550,fast::clamp(l9_7552,0.0,1.0));
}
}
l9_7537.x=l9_7548;
float l9_7553=l9_7537.y;
int l9_7554=l9_7540.y;
if (l9_7554==1)
{
l9_7553=fract(l9_7553);
}
else
{
if (l9_7554==2)
{
float l9_7555=fract(l9_7553);
float l9_7556=l9_7553-l9_7555;
float l9_7557=step(0.25,fract(l9_7556*0.5));
l9_7553=mix(l9_7555,1.0-l9_7555,fast::clamp(l9_7557,0.0,1.0));
}
}
l9_7537.y=l9_7553;
if (l9_7541)
{
bool l9_7558=l9_7543;
bool l9_7559;
if (l9_7558)
{
l9_7559=l9_7540.x==3;
}
else
{
l9_7559=l9_7558;
}
float l9_7560=l9_7537.x;
float l9_7561=l9_7542.x;
float l9_7562=l9_7542.z;
bool l9_7563=l9_7559;
float l9_7564=l9_7547;
float l9_7565=fast::clamp(l9_7560,l9_7561,l9_7562);
float l9_7566=step(abs(l9_7560-l9_7565),9.9999997e-06);
l9_7564*=(l9_7566+((1.0-float(l9_7563))*(1.0-l9_7566)));
l9_7560=l9_7565;
l9_7537.x=l9_7560;
l9_7547=l9_7564;
bool l9_7567=l9_7543;
bool l9_7568;
if (l9_7567)
{
l9_7568=l9_7540.y==3;
}
else
{
l9_7568=l9_7567;
}
float l9_7569=l9_7537.y;
float l9_7570=l9_7542.y;
float l9_7571=l9_7542.w;
bool l9_7572=l9_7568;
float l9_7573=l9_7547;
float l9_7574=fast::clamp(l9_7569,l9_7570,l9_7571);
float l9_7575=step(abs(l9_7569-l9_7574),9.9999997e-06);
l9_7573*=(l9_7575+((1.0-float(l9_7572))*(1.0-l9_7575)));
l9_7569=l9_7574;
l9_7537.y=l9_7569;
l9_7547=l9_7573;
}
float2 l9_7576=l9_7537;
bool l9_7577=l9_7538;
float3x3 l9_7578=l9_7539;
if (l9_7577)
{
l9_7576=float2((l9_7578*float3(l9_7576,1.0)).xy);
}
float2 l9_7579=l9_7576;
l9_7537=l9_7579;
float l9_7580=l9_7537.x;
int l9_7581=l9_7540.x;
bool l9_7582=l9_7546;
float l9_7583=l9_7547;
if ((l9_7581==0)||(l9_7581==3))
{
float l9_7584=l9_7580;
float l9_7585=0.0;
float l9_7586=1.0;
bool l9_7587=l9_7582;
float l9_7588=l9_7583;
float l9_7589=fast::clamp(l9_7584,l9_7585,l9_7586);
float l9_7590=step(abs(l9_7584-l9_7589),9.9999997e-06);
l9_7588*=(l9_7590+((1.0-float(l9_7587))*(1.0-l9_7590)));
l9_7584=l9_7589;
l9_7580=l9_7584;
l9_7583=l9_7588;
}
l9_7537.x=l9_7580;
l9_7547=l9_7583;
float l9_7591=l9_7537.y;
int l9_7592=l9_7540.y;
bool l9_7593=l9_7546;
float l9_7594=l9_7547;
if ((l9_7592==0)||(l9_7592==3))
{
float l9_7595=l9_7591;
float l9_7596=0.0;
float l9_7597=1.0;
bool l9_7598=l9_7593;
float l9_7599=l9_7594;
float l9_7600=fast::clamp(l9_7595,l9_7596,l9_7597);
float l9_7601=step(abs(l9_7595-l9_7600),9.9999997e-06);
l9_7599*=(l9_7601+((1.0-float(l9_7598))*(1.0-l9_7601)));
l9_7595=l9_7600;
l9_7591=l9_7595;
l9_7594=l9_7599;
}
l9_7537.y=l9_7591;
l9_7547=l9_7594;
float2 l9_7602=l9_7537;
int l9_7603=l9_7535;
int l9_7604=l9_7536;
float l9_7605=l9_7545;
float2 l9_7606=l9_7602;
int l9_7607=l9_7603;
int l9_7608=l9_7604;
float3 l9_7609=float3(0.0);
if (l9_7607==0)
{
l9_7609=float3(l9_7606,0.0);
}
else
{
if (l9_7607==1)
{
l9_7609=float3(l9_7606.x,(l9_7606.y*0.5)+(0.5-(float(l9_7608)*0.5)),0.0);
}
else
{
l9_7609=float3(l9_7606,float(l9_7608));
}
}
float3 l9_7610=l9_7609;
float3 l9_7611=l9_7610;
float4 l9_7612=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_7611.xy,bias(l9_7605));
float4 l9_7613=l9_7612;
if (l9_7543)
{
l9_7613=mix(l9_7544,l9_7613,float4(l9_7547));
}
float4 l9_7614=l9_7613;
l9_7528=l9_7614;
float l9_7615=0.0;
l9_7615=l9_7528.x;
float l9_7616=0.0;
l9_7616=step(l9_7615,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_7617=float4(0.0);
l9_7617=l9_5763*float4(l9_7616);
l9_1951=l9_7617;
l9_1955=l9_1951;
}
l9_1948=l9_1955;
float4 l9_7618=float4(0.0);
float4 l9_7619=l9_1947;
float4 l9_7620=l9_1948;
float4 l9_7621=l9_7619;
float4 l9_7622=l9_7620;
float3 l9_7623=l9_7621.xyz*l9_7621.w;
l9_7621=float4(l9_7623.x,l9_7623.y,l9_7623.z,l9_7621.w);
float4 l9_7624=l9_7621+(l9_7622*(1.0-l9_7621.w));
l9_7618=l9_7624;
param_2=l9_7618;
param_4=param_2;
}
else
{
float4 l9_7625=float4(0.0);
float l9_7626=0.0;
float4 l9_7627=float4(0.0);
float4 l9_7628=float4(0.0);
ssGlobals l9_7629=param_5;
float l9_7630=0.0;
float l9_7631=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_7630=l9_7631;
l9_7626=l9_7630;
float4 l9_7632;
if ((l9_7626*1.0)!=0.0)
{
float4 l9_7633=float4(0.0);
float l9_7634=0.0;
float4 l9_7635=float4(0.0);
float4 l9_7636=float4(0.0);
ssGlobals l9_7637=l9_7629;
float l9_7638=0.0;
float l9_7639=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
l9_7638=l9_7639;
l9_7634=l9_7638;
float4 l9_7640;
if ((l9_7634*1.0)!=0.0)
{
float4 l9_7641=float4(0.0);
float l9_7642=0.0;
float4 l9_7643=float4(0.0);
float4 l9_7644=float4(0.0);
ssGlobals l9_7645=l9_7637;
float l9_7646=0.0;
float l9_7647=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_7646=l9_7647;
l9_7642=l9_7646;
float4 l9_7648;
if ((l9_7642*1.0)!=0.0)
{
float l9_7649=0.0;
float l9_7650=(*sc_set0.UserUniforms).rimExpId02;
l9_7649=l9_7650;
float l9_7651=0.0;
float l9_7652=(*sc_set0.UserUniforms).rimIntId02;
l9_7651=l9_7652;
float l9_7653=0.0;
float l9_7654=l9_7649;
float l9_7655=l9_7651;
ssGlobals l9_7656=l9_7645;
float l9_7657=abs(dot(-l9_7656.ViewDirWS,l9_7656.VertexNormal_WorldSpace));
float l9_7658=1.0-pow(1.0-l9_7657,l9_7654);
l9_7658=fast::max(l9_7658,0.0);
l9_7658*=l9_7655;
l9_7653=l9_7658;
float4 l9_7659=float4(0.0);
float l9_7660=0.0;
float4 l9_7661=float4(0.0);
float4 l9_7662=float4(0.0);
ssGlobals l9_7663=l9_7645;
float l9_7664=0.0;
float l9_7665=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_7664=l9_7665;
l9_7660=l9_7664;
float4 l9_7666;
if ((l9_7660*1.0)!=0.0)
{
float4 l9_7667=float4(0.0);
float4 l9_7668=(*sc_set0.UserUniforms).patternColorId02;
l9_7667=l9_7668;
float4 l9_7669=float4(0.0);
float l9_7670=0.0;
float4 l9_7671=float4(0.0);
float4 l9_7672=float4(0.0);
ssGlobals l9_7673=l9_7663;
float l9_7674=0.0;
float l9_7675=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_7674=l9_7675;
l9_7670=l9_7674;
float4 l9_7676;
if ((l9_7670*1.0)!=0.0)
{
float2 l9_7677=float2(0.0);
l9_7677=l9_7673.Surface_UVCoord0;
float2 l9_7678=float2(0.0);
float2 l9_7679=(*sc_set0.UserUniforms).patternScaleId02;
l9_7678=l9_7679;
float2 l9_7680=float2(0.0);
l9_7680=((l9_7677-(*sc_set0.UserUniforms).Port_Center_N282)*l9_7678)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_7681=float2(0.0);
float2 l9_7682=(*sc_set0.UserUniforms).patternOffsetId02;
l9_7681=l9_7682;
float2 l9_7683=float2(0.0);
l9_7683=l9_7680+l9_7681;
float l9_7684=0.0;
float l9_7685=(*sc_set0.UserUniforms).patternRotateId02;
l9_7684=l9_7685;
float2 l9_7686=float2(0.0);
float2 l9_7687=l9_7683;
float l9_7688=l9_7684;
float2 l9_7689=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_7690=sin(radians(l9_7688));
float l9_7691=cos(radians(l9_7688));
float2 l9_7692=l9_7687-l9_7689;
l9_7692=float2(dot(float2(l9_7691,l9_7690),l9_7692),dot(float2(-l9_7690,l9_7691),l9_7692))+l9_7689;
l9_7686=l9_7692;
float4 l9_7693=float4(0.0);
int l9_7694;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_7695=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7695=0;
}
else
{
l9_7695=in.varStereoViewID;
}
int l9_7696=l9_7695;
l9_7694=1-l9_7696;
}
else
{
int l9_7697=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7697=0;
}
else
{
l9_7697=in.varStereoViewID;
}
int l9_7698=l9_7697;
l9_7694=l9_7698;
}
int l9_7699=l9_7694;
int l9_7700=patternTextureId02Layout_tmp;
int l9_7701=l9_7699;
float2 l9_7702=l9_7686;
bool l9_7703=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_7704=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_7705=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_7706=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_7707=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_7708=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_7709=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_7710=0.0;
bool l9_7711=l9_7708&&(!l9_7706);
float l9_7712=1.0;
float l9_7713=l9_7702.x;
int l9_7714=l9_7705.x;
if (l9_7714==1)
{
l9_7713=fract(l9_7713);
}
else
{
if (l9_7714==2)
{
float l9_7715=fract(l9_7713);
float l9_7716=l9_7713-l9_7715;
float l9_7717=step(0.25,fract(l9_7716*0.5));
l9_7713=mix(l9_7715,1.0-l9_7715,fast::clamp(l9_7717,0.0,1.0));
}
}
l9_7702.x=l9_7713;
float l9_7718=l9_7702.y;
int l9_7719=l9_7705.y;
if (l9_7719==1)
{
l9_7718=fract(l9_7718);
}
else
{
if (l9_7719==2)
{
float l9_7720=fract(l9_7718);
float l9_7721=l9_7718-l9_7720;
float l9_7722=step(0.25,fract(l9_7721*0.5));
l9_7718=mix(l9_7720,1.0-l9_7720,fast::clamp(l9_7722,0.0,1.0));
}
}
l9_7702.y=l9_7718;
if (l9_7706)
{
bool l9_7723=l9_7708;
bool l9_7724;
if (l9_7723)
{
l9_7724=l9_7705.x==3;
}
else
{
l9_7724=l9_7723;
}
float l9_7725=l9_7702.x;
float l9_7726=l9_7707.x;
float l9_7727=l9_7707.z;
bool l9_7728=l9_7724;
float l9_7729=l9_7712;
float l9_7730=fast::clamp(l9_7725,l9_7726,l9_7727);
float l9_7731=step(abs(l9_7725-l9_7730),9.9999997e-06);
l9_7729*=(l9_7731+((1.0-float(l9_7728))*(1.0-l9_7731)));
l9_7725=l9_7730;
l9_7702.x=l9_7725;
l9_7712=l9_7729;
bool l9_7732=l9_7708;
bool l9_7733;
if (l9_7732)
{
l9_7733=l9_7705.y==3;
}
else
{
l9_7733=l9_7732;
}
float l9_7734=l9_7702.y;
float l9_7735=l9_7707.y;
float l9_7736=l9_7707.w;
bool l9_7737=l9_7733;
float l9_7738=l9_7712;
float l9_7739=fast::clamp(l9_7734,l9_7735,l9_7736);
float l9_7740=step(abs(l9_7734-l9_7739),9.9999997e-06);
l9_7738*=(l9_7740+((1.0-float(l9_7737))*(1.0-l9_7740)));
l9_7734=l9_7739;
l9_7702.y=l9_7734;
l9_7712=l9_7738;
}
float2 l9_7741=l9_7702;
bool l9_7742=l9_7703;
float3x3 l9_7743=l9_7704;
if (l9_7742)
{
l9_7741=float2((l9_7743*float3(l9_7741,1.0)).xy);
}
float2 l9_7744=l9_7741;
l9_7702=l9_7744;
float l9_7745=l9_7702.x;
int l9_7746=l9_7705.x;
bool l9_7747=l9_7711;
float l9_7748=l9_7712;
if ((l9_7746==0)||(l9_7746==3))
{
float l9_7749=l9_7745;
float l9_7750=0.0;
float l9_7751=1.0;
bool l9_7752=l9_7747;
float l9_7753=l9_7748;
float l9_7754=fast::clamp(l9_7749,l9_7750,l9_7751);
float l9_7755=step(abs(l9_7749-l9_7754),9.9999997e-06);
l9_7753*=(l9_7755+((1.0-float(l9_7752))*(1.0-l9_7755)));
l9_7749=l9_7754;
l9_7745=l9_7749;
l9_7748=l9_7753;
}
l9_7702.x=l9_7745;
l9_7712=l9_7748;
float l9_7756=l9_7702.y;
int l9_7757=l9_7705.y;
bool l9_7758=l9_7711;
float l9_7759=l9_7712;
if ((l9_7757==0)||(l9_7757==3))
{
float l9_7760=l9_7756;
float l9_7761=0.0;
float l9_7762=1.0;
bool l9_7763=l9_7758;
float l9_7764=l9_7759;
float l9_7765=fast::clamp(l9_7760,l9_7761,l9_7762);
float l9_7766=step(abs(l9_7760-l9_7765),9.9999997e-06);
l9_7764*=(l9_7766+((1.0-float(l9_7763))*(1.0-l9_7766)));
l9_7760=l9_7765;
l9_7756=l9_7760;
l9_7759=l9_7764;
}
l9_7702.y=l9_7756;
l9_7712=l9_7759;
float2 l9_7767=l9_7702;
int l9_7768=l9_7700;
int l9_7769=l9_7701;
float l9_7770=l9_7710;
float2 l9_7771=l9_7767;
int l9_7772=l9_7768;
int l9_7773=l9_7769;
float3 l9_7774=float3(0.0);
if (l9_7772==0)
{
l9_7774=float3(l9_7771,0.0);
}
else
{
if (l9_7772==1)
{
l9_7774=float3(l9_7771.x,(l9_7771.y*0.5)+(0.5-(float(l9_7773)*0.5)),0.0);
}
else
{
l9_7774=float3(l9_7771,float(l9_7773));
}
}
float3 l9_7775=l9_7774;
float3 l9_7776=l9_7775;
float4 l9_7777=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_7776.xy,bias(l9_7770));
float4 l9_7778=l9_7777;
if (l9_7708)
{
l9_7778=mix(l9_7709,l9_7778,float4(l9_7712));
}
float4 l9_7779=l9_7778;
l9_7693=l9_7779;
l9_7671=l9_7693;
l9_7676=l9_7671;
}
else
{
float2 l9_7780=float2(0.0);
l9_7780=l9_7673.Surface_UVCoord0;
float2 l9_7781=float2(0.0);
float2 l9_7782=(*sc_set0.UserUniforms).patternScaleId02;
l9_7781=l9_7782;
float2 l9_7783=float2(0.0);
l9_7783=((l9_7780-(*sc_set0.UserUniforms).Port_Center_N282)*l9_7781)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_7784=float2(0.0);
float2 l9_7785=(*sc_set0.UserUniforms).patternOffsetId02;
l9_7784=l9_7785;
float2 l9_7786=float2(0.0);
l9_7786=l9_7783+l9_7784;
float l9_7787=0.0;
float l9_7788=(*sc_set0.UserUniforms).patternRotateId02;
l9_7787=l9_7788;
float2 l9_7789=float2(0.0);
float2 l9_7790=l9_7786;
float l9_7791=l9_7787;
float2 l9_7792=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_7793=sin(radians(l9_7791));
float l9_7794=cos(radians(l9_7791));
float2 l9_7795=l9_7790-l9_7792;
l9_7795=float2(dot(float2(l9_7794,l9_7793),l9_7795),dot(float2(-l9_7793,l9_7794),l9_7795))+l9_7792;
l9_7789=l9_7795;
float4 l9_7796=float4(0.0);
int l9_7797;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_7798=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7798=0;
}
else
{
l9_7798=in.varStereoViewID;
}
int l9_7799=l9_7798;
l9_7797=1-l9_7799;
}
else
{
int l9_7800=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7800=0;
}
else
{
l9_7800=in.varStereoViewID;
}
int l9_7801=l9_7800;
l9_7797=l9_7801;
}
int l9_7802=l9_7797;
int l9_7803=patternTextureId02Layout_tmp;
int l9_7804=l9_7802;
float2 l9_7805=l9_7789;
bool l9_7806=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_7807=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_7808=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_7809=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_7810=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_7811=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_7812=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_7813=0.0;
bool l9_7814=l9_7811&&(!l9_7809);
float l9_7815=1.0;
float l9_7816=l9_7805.x;
int l9_7817=l9_7808.x;
if (l9_7817==1)
{
l9_7816=fract(l9_7816);
}
else
{
if (l9_7817==2)
{
float l9_7818=fract(l9_7816);
float l9_7819=l9_7816-l9_7818;
float l9_7820=step(0.25,fract(l9_7819*0.5));
l9_7816=mix(l9_7818,1.0-l9_7818,fast::clamp(l9_7820,0.0,1.0));
}
}
l9_7805.x=l9_7816;
float l9_7821=l9_7805.y;
int l9_7822=l9_7808.y;
if (l9_7822==1)
{
l9_7821=fract(l9_7821);
}
else
{
if (l9_7822==2)
{
float l9_7823=fract(l9_7821);
float l9_7824=l9_7821-l9_7823;
float l9_7825=step(0.25,fract(l9_7824*0.5));
l9_7821=mix(l9_7823,1.0-l9_7823,fast::clamp(l9_7825,0.0,1.0));
}
}
l9_7805.y=l9_7821;
if (l9_7809)
{
bool l9_7826=l9_7811;
bool l9_7827;
if (l9_7826)
{
l9_7827=l9_7808.x==3;
}
else
{
l9_7827=l9_7826;
}
float l9_7828=l9_7805.x;
float l9_7829=l9_7810.x;
float l9_7830=l9_7810.z;
bool l9_7831=l9_7827;
float l9_7832=l9_7815;
float l9_7833=fast::clamp(l9_7828,l9_7829,l9_7830);
float l9_7834=step(abs(l9_7828-l9_7833),9.9999997e-06);
l9_7832*=(l9_7834+((1.0-float(l9_7831))*(1.0-l9_7834)));
l9_7828=l9_7833;
l9_7805.x=l9_7828;
l9_7815=l9_7832;
bool l9_7835=l9_7811;
bool l9_7836;
if (l9_7835)
{
l9_7836=l9_7808.y==3;
}
else
{
l9_7836=l9_7835;
}
float l9_7837=l9_7805.y;
float l9_7838=l9_7810.y;
float l9_7839=l9_7810.w;
bool l9_7840=l9_7836;
float l9_7841=l9_7815;
float l9_7842=fast::clamp(l9_7837,l9_7838,l9_7839);
float l9_7843=step(abs(l9_7837-l9_7842),9.9999997e-06);
l9_7841*=(l9_7843+((1.0-float(l9_7840))*(1.0-l9_7843)));
l9_7837=l9_7842;
l9_7805.y=l9_7837;
l9_7815=l9_7841;
}
float2 l9_7844=l9_7805;
bool l9_7845=l9_7806;
float3x3 l9_7846=l9_7807;
if (l9_7845)
{
l9_7844=float2((l9_7846*float3(l9_7844,1.0)).xy);
}
float2 l9_7847=l9_7844;
l9_7805=l9_7847;
float l9_7848=l9_7805.x;
int l9_7849=l9_7808.x;
bool l9_7850=l9_7814;
float l9_7851=l9_7815;
if ((l9_7849==0)||(l9_7849==3))
{
float l9_7852=l9_7848;
float l9_7853=0.0;
float l9_7854=1.0;
bool l9_7855=l9_7850;
float l9_7856=l9_7851;
float l9_7857=fast::clamp(l9_7852,l9_7853,l9_7854);
float l9_7858=step(abs(l9_7852-l9_7857),9.9999997e-06);
l9_7856*=(l9_7858+((1.0-float(l9_7855))*(1.0-l9_7858)));
l9_7852=l9_7857;
l9_7848=l9_7852;
l9_7851=l9_7856;
}
l9_7805.x=l9_7848;
l9_7815=l9_7851;
float l9_7859=l9_7805.y;
int l9_7860=l9_7808.y;
bool l9_7861=l9_7814;
float l9_7862=l9_7815;
if ((l9_7860==0)||(l9_7860==3))
{
float l9_7863=l9_7859;
float l9_7864=0.0;
float l9_7865=1.0;
bool l9_7866=l9_7861;
float l9_7867=l9_7862;
float l9_7868=fast::clamp(l9_7863,l9_7864,l9_7865);
float l9_7869=step(abs(l9_7863-l9_7868),9.9999997e-06);
l9_7867*=(l9_7869+((1.0-float(l9_7866))*(1.0-l9_7869)));
l9_7863=l9_7868;
l9_7859=l9_7863;
l9_7862=l9_7867;
}
l9_7805.y=l9_7859;
l9_7815=l9_7862;
float2 l9_7870=l9_7805;
int l9_7871=l9_7803;
int l9_7872=l9_7804;
float l9_7873=l9_7813;
float2 l9_7874=l9_7870;
int l9_7875=l9_7871;
int l9_7876=l9_7872;
float3 l9_7877=float3(0.0);
if (l9_7875==0)
{
l9_7877=float3(l9_7874,0.0);
}
else
{
if (l9_7875==1)
{
l9_7877=float3(l9_7874.x,(l9_7874.y*0.5)+(0.5-(float(l9_7876)*0.5)),0.0);
}
else
{
l9_7877=float3(l9_7874,float(l9_7876));
}
}
float3 l9_7878=l9_7877;
float3 l9_7879=l9_7878;
float4 l9_7880=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_7879.xy,bias(l9_7873));
float4 l9_7881=l9_7880;
if (l9_7811)
{
l9_7881=mix(l9_7812,l9_7881,float4(l9_7815));
}
float4 l9_7882=l9_7881;
l9_7796=l9_7882;
float l9_7883=0.0;
float3 l9_7884=l9_7796.xyz;
float l9_7885=l9_7884.x;
l9_7883=l9_7885;
l9_7672=float4(l9_7883);
l9_7676=l9_7672;
}
l9_7669=l9_7676;
float4 l9_7886=float4(0.0);
l9_7886=l9_7667*l9_7669;
l9_7661=l9_7886;
l9_7666=l9_7661;
}
else
{
float4 l9_7887=float4(0.0);
float4 l9_7888=(*sc_set0.UserUniforms).colorId02;
l9_7887=l9_7888;
float4 l9_7889=float4(0.0);
float l9_7890=0.0;
float4 l9_7891=float4(0.0);
float4 l9_7892=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_7893=l9_7663;
float l9_7894=0.0;
float l9_7895=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_7894=l9_7895;
l9_7890=l9_7894;
float4 l9_7896;
if ((l9_7890*1.0)!=0.0)
{
float2 l9_7897=float2(0.0);
l9_7897=l9_7893.Surface_UVCoord0;
float4 l9_7898=float4(0.0);
int l9_7899;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_7900=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7900=0;
}
else
{
l9_7900=in.varStereoViewID;
}
int l9_7901=l9_7900;
l9_7899=1-l9_7901;
}
else
{
int l9_7902=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7902=0;
}
else
{
l9_7902=in.varStereoViewID;
}
int l9_7903=l9_7902;
l9_7899=l9_7903;
}
int l9_7904=l9_7899;
int l9_7905=greyMaskIdLayout_tmp;
int l9_7906=l9_7904;
float2 l9_7907=l9_7897;
bool l9_7908=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_7909=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_7910=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_7911=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_7912=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_7913=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_7914=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_7915=0.0;
bool l9_7916=l9_7913&&(!l9_7911);
float l9_7917=1.0;
float l9_7918=l9_7907.x;
int l9_7919=l9_7910.x;
if (l9_7919==1)
{
l9_7918=fract(l9_7918);
}
else
{
if (l9_7919==2)
{
float l9_7920=fract(l9_7918);
float l9_7921=l9_7918-l9_7920;
float l9_7922=step(0.25,fract(l9_7921*0.5));
l9_7918=mix(l9_7920,1.0-l9_7920,fast::clamp(l9_7922,0.0,1.0));
}
}
l9_7907.x=l9_7918;
float l9_7923=l9_7907.y;
int l9_7924=l9_7910.y;
if (l9_7924==1)
{
l9_7923=fract(l9_7923);
}
else
{
if (l9_7924==2)
{
float l9_7925=fract(l9_7923);
float l9_7926=l9_7923-l9_7925;
float l9_7927=step(0.25,fract(l9_7926*0.5));
l9_7923=mix(l9_7925,1.0-l9_7925,fast::clamp(l9_7927,0.0,1.0));
}
}
l9_7907.y=l9_7923;
if (l9_7911)
{
bool l9_7928=l9_7913;
bool l9_7929;
if (l9_7928)
{
l9_7929=l9_7910.x==3;
}
else
{
l9_7929=l9_7928;
}
float l9_7930=l9_7907.x;
float l9_7931=l9_7912.x;
float l9_7932=l9_7912.z;
bool l9_7933=l9_7929;
float l9_7934=l9_7917;
float l9_7935=fast::clamp(l9_7930,l9_7931,l9_7932);
float l9_7936=step(abs(l9_7930-l9_7935),9.9999997e-06);
l9_7934*=(l9_7936+((1.0-float(l9_7933))*(1.0-l9_7936)));
l9_7930=l9_7935;
l9_7907.x=l9_7930;
l9_7917=l9_7934;
bool l9_7937=l9_7913;
bool l9_7938;
if (l9_7937)
{
l9_7938=l9_7910.y==3;
}
else
{
l9_7938=l9_7937;
}
float l9_7939=l9_7907.y;
float l9_7940=l9_7912.y;
float l9_7941=l9_7912.w;
bool l9_7942=l9_7938;
float l9_7943=l9_7917;
float l9_7944=fast::clamp(l9_7939,l9_7940,l9_7941);
float l9_7945=step(abs(l9_7939-l9_7944),9.9999997e-06);
l9_7943*=(l9_7945+((1.0-float(l9_7942))*(1.0-l9_7945)));
l9_7939=l9_7944;
l9_7907.y=l9_7939;
l9_7917=l9_7943;
}
float2 l9_7946=l9_7907;
bool l9_7947=l9_7908;
float3x3 l9_7948=l9_7909;
if (l9_7947)
{
l9_7946=float2((l9_7948*float3(l9_7946,1.0)).xy);
}
float2 l9_7949=l9_7946;
l9_7907=l9_7949;
float l9_7950=l9_7907.x;
int l9_7951=l9_7910.x;
bool l9_7952=l9_7916;
float l9_7953=l9_7917;
if ((l9_7951==0)||(l9_7951==3))
{
float l9_7954=l9_7950;
float l9_7955=0.0;
float l9_7956=1.0;
bool l9_7957=l9_7952;
float l9_7958=l9_7953;
float l9_7959=fast::clamp(l9_7954,l9_7955,l9_7956);
float l9_7960=step(abs(l9_7954-l9_7959),9.9999997e-06);
l9_7958*=(l9_7960+((1.0-float(l9_7957))*(1.0-l9_7960)));
l9_7954=l9_7959;
l9_7950=l9_7954;
l9_7953=l9_7958;
}
l9_7907.x=l9_7950;
l9_7917=l9_7953;
float l9_7961=l9_7907.y;
int l9_7962=l9_7910.y;
bool l9_7963=l9_7916;
float l9_7964=l9_7917;
if ((l9_7962==0)||(l9_7962==3))
{
float l9_7965=l9_7961;
float l9_7966=0.0;
float l9_7967=1.0;
bool l9_7968=l9_7963;
float l9_7969=l9_7964;
float l9_7970=fast::clamp(l9_7965,l9_7966,l9_7967);
float l9_7971=step(abs(l9_7965-l9_7970),9.9999997e-06);
l9_7969*=(l9_7971+((1.0-float(l9_7968))*(1.0-l9_7971)));
l9_7965=l9_7970;
l9_7961=l9_7965;
l9_7964=l9_7969;
}
l9_7907.y=l9_7961;
l9_7917=l9_7964;
float2 l9_7972=l9_7907;
int l9_7973=l9_7905;
int l9_7974=l9_7906;
float l9_7975=l9_7915;
float2 l9_7976=l9_7972;
int l9_7977=l9_7973;
int l9_7978=l9_7974;
float3 l9_7979=float3(0.0);
if (l9_7977==0)
{
l9_7979=float3(l9_7976,0.0);
}
else
{
if (l9_7977==1)
{
l9_7979=float3(l9_7976.x,(l9_7976.y*0.5)+(0.5-(float(l9_7978)*0.5)),0.0);
}
else
{
l9_7979=float3(l9_7976,float(l9_7978));
}
}
float3 l9_7980=l9_7979;
float3 l9_7981=l9_7980;
float4 l9_7982=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_7981.xy,bias(l9_7975));
float4 l9_7983=l9_7982;
if (l9_7913)
{
l9_7983=mix(l9_7914,l9_7983,float4(l9_7917));
}
float4 l9_7984=l9_7983;
l9_7898=l9_7984;
float l9_7985=0.0;
l9_7985=l9_7898.x;
float l9_7986=0.0;
l9_7986=step(l9_7985,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_7987=0.0;
l9_7987=step(l9_7985,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_7988=0.0;
l9_7988=l9_7986-l9_7987;
l9_7891=float4(l9_7988);
l9_7896=l9_7891;
}
else
{
l9_7896=l9_7892;
}
l9_7889=l9_7896;
float4 l9_7989=float4(0.0);
l9_7989=l9_7887*l9_7889;
l9_7662=l9_7989;
l9_7666=l9_7662;
}
l9_7659=l9_7666;
float4 l9_7990=float4(0.0);
float l9_7991=0.0;
float4 l9_7992=float4(0.0);
float4 l9_7993=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_7994=l9_7645;
float l9_7995=0.0;
float l9_7996=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_7995=l9_7996;
l9_7991=l9_7995;
float4 l9_7997;
if ((l9_7991*1.0)!=0.0)
{
float2 l9_7998=float2(0.0);
l9_7998=l9_7994.Surface_UVCoord0;
float4 l9_7999=float4(0.0);
int l9_8000;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_8001=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8001=0;
}
else
{
l9_8001=in.varStereoViewID;
}
int l9_8002=l9_8001;
l9_8000=1-l9_8002;
}
else
{
int l9_8003=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8003=0;
}
else
{
l9_8003=in.varStereoViewID;
}
int l9_8004=l9_8003;
l9_8000=l9_8004;
}
int l9_8005=l9_8000;
int l9_8006=greyMaskIdLayout_tmp;
int l9_8007=l9_8005;
float2 l9_8008=l9_7998;
bool l9_8009=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_8010=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_8011=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_8012=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_8013=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_8014=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_8015=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_8016=0.0;
bool l9_8017=l9_8014&&(!l9_8012);
float l9_8018=1.0;
float l9_8019=l9_8008.x;
int l9_8020=l9_8011.x;
if (l9_8020==1)
{
l9_8019=fract(l9_8019);
}
else
{
if (l9_8020==2)
{
float l9_8021=fract(l9_8019);
float l9_8022=l9_8019-l9_8021;
float l9_8023=step(0.25,fract(l9_8022*0.5));
l9_8019=mix(l9_8021,1.0-l9_8021,fast::clamp(l9_8023,0.0,1.0));
}
}
l9_8008.x=l9_8019;
float l9_8024=l9_8008.y;
int l9_8025=l9_8011.y;
if (l9_8025==1)
{
l9_8024=fract(l9_8024);
}
else
{
if (l9_8025==2)
{
float l9_8026=fract(l9_8024);
float l9_8027=l9_8024-l9_8026;
float l9_8028=step(0.25,fract(l9_8027*0.5));
l9_8024=mix(l9_8026,1.0-l9_8026,fast::clamp(l9_8028,0.0,1.0));
}
}
l9_8008.y=l9_8024;
if (l9_8012)
{
bool l9_8029=l9_8014;
bool l9_8030;
if (l9_8029)
{
l9_8030=l9_8011.x==3;
}
else
{
l9_8030=l9_8029;
}
float l9_8031=l9_8008.x;
float l9_8032=l9_8013.x;
float l9_8033=l9_8013.z;
bool l9_8034=l9_8030;
float l9_8035=l9_8018;
float l9_8036=fast::clamp(l9_8031,l9_8032,l9_8033);
float l9_8037=step(abs(l9_8031-l9_8036),9.9999997e-06);
l9_8035*=(l9_8037+((1.0-float(l9_8034))*(1.0-l9_8037)));
l9_8031=l9_8036;
l9_8008.x=l9_8031;
l9_8018=l9_8035;
bool l9_8038=l9_8014;
bool l9_8039;
if (l9_8038)
{
l9_8039=l9_8011.y==3;
}
else
{
l9_8039=l9_8038;
}
float l9_8040=l9_8008.y;
float l9_8041=l9_8013.y;
float l9_8042=l9_8013.w;
bool l9_8043=l9_8039;
float l9_8044=l9_8018;
float l9_8045=fast::clamp(l9_8040,l9_8041,l9_8042);
float l9_8046=step(abs(l9_8040-l9_8045),9.9999997e-06);
l9_8044*=(l9_8046+((1.0-float(l9_8043))*(1.0-l9_8046)));
l9_8040=l9_8045;
l9_8008.y=l9_8040;
l9_8018=l9_8044;
}
float2 l9_8047=l9_8008;
bool l9_8048=l9_8009;
float3x3 l9_8049=l9_8010;
if (l9_8048)
{
l9_8047=float2((l9_8049*float3(l9_8047,1.0)).xy);
}
float2 l9_8050=l9_8047;
l9_8008=l9_8050;
float l9_8051=l9_8008.x;
int l9_8052=l9_8011.x;
bool l9_8053=l9_8017;
float l9_8054=l9_8018;
if ((l9_8052==0)||(l9_8052==3))
{
float l9_8055=l9_8051;
float l9_8056=0.0;
float l9_8057=1.0;
bool l9_8058=l9_8053;
float l9_8059=l9_8054;
float l9_8060=fast::clamp(l9_8055,l9_8056,l9_8057);
float l9_8061=step(abs(l9_8055-l9_8060),9.9999997e-06);
l9_8059*=(l9_8061+((1.0-float(l9_8058))*(1.0-l9_8061)));
l9_8055=l9_8060;
l9_8051=l9_8055;
l9_8054=l9_8059;
}
l9_8008.x=l9_8051;
l9_8018=l9_8054;
float l9_8062=l9_8008.y;
int l9_8063=l9_8011.y;
bool l9_8064=l9_8017;
float l9_8065=l9_8018;
if ((l9_8063==0)||(l9_8063==3))
{
float l9_8066=l9_8062;
float l9_8067=0.0;
float l9_8068=1.0;
bool l9_8069=l9_8064;
float l9_8070=l9_8065;
float l9_8071=fast::clamp(l9_8066,l9_8067,l9_8068);
float l9_8072=step(abs(l9_8066-l9_8071),9.9999997e-06);
l9_8070*=(l9_8072+((1.0-float(l9_8069))*(1.0-l9_8072)));
l9_8066=l9_8071;
l9_8062=l9_8066;
l9_8065=l9_8070;
}
l9_8008.y=l9_8062;
l9_8018=l9_8065;
float2 l9_8073=l9_8008;
int l9_8074=l9_8006;
int l9_8075=l9_8007;
float l9_8076=l9_8016;
float2 l9_8077=l9_8073;
int l9_8078=l9_8074;
int l9_8079=l9_8075;
float3 l9_8080=float3(0.0);
if (l9_8078==0)
{
l9_8080=float3(l9_8077,0.0);
}
else
{
if (l9_8078==1)
{
l9_8080=float3(l9_8077.x,(l9_8077.y*0.5)+(0.5-(float(l9_8079)*0.5)),0.0);
}
else
{
l9_8080=float3(l9_8077,float(l9_8079));
}
}
float3 l9_8081=l9_8080;
float3 l9_8082=l9_8081;
float4 l9_8083=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_8082.xy,bias(l9_8076));
float4 l9_8084=l9_8083;
if (l9_8014)
{
l9_8084=mix(l9_8015,l9_8084,float4(l9_8018));
}
float4 l9_8085=l9_8084;
l9_7999=l9_8085;
float l9_8086=0.0;
l9_8086=l9_7999.x;
float l9_8087=0.0;
l9_8087=step(l9_8086,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_8088=0.0;
l9_8088=step(l9_8086,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_8089=0.0;
l9_8089=l9_8087-l9_8088;
l9_7992=float4(l9_8089);
l9_7997=l9_7992;
}
else
{
l9_7997=l9_7993;
}
l9_7990=l9_7997;
float4 l9_8090=float4(0.0);
l9_8090=l9_7659*l9_7990;
float4 l9_8091=float4(0.0);
float4 l9_8092=(*sc_set0.UserUniforms).colorId02;
l9_8091=l9_8092;
float4 l9_8093=float4(0.0);
l9_8093=l9_8091*l9_7990;
float4 l9_8094=float4(0.0);
float4 l9_8095=l9_8090;
float4 l9_8096=l9_8093;
float4 l9_8097=l9_8095;
float4 l9_8098=l9_8096;
float3 l9_8099=l9_8097.xyz*l9_8097.w;
l9_8097=float4(l9_8099.x,l9_8099.y,l9_8099.z,l9_8097.w);
float4 l9_8100=l9_8097+(l9_8098*(1.0-l9_8097.w));
l9_8094=l9_8100;
float4 l9_8101=float4(0.0);
l9_8101=float4(l9_7653)*l9_8094;
float4 l9_8102=float4(0.0);
l9_8102=l9_8101+l9_8094;
l9_7643=l9_8102;
l9_7648=l9_7643;
}
else
{
float4 l9_8103=float4(0.0);
float l9_8104=0.0;
float4 l9_8105=float4(0.0);
float4 l9_8106=float4(0.0);
ssGlobals l9_8107=l9_7645;
float l9_8108=0.0;
float l9_8109=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_8108=l9_8109;
l9_8104=l9_8108;
float4 l9_8110;
if ((l9_8104*1.0)!=0.0)
{
float4 l9_8111=float4(0.0);
float4 l9_8112=(*sc_set0.UserUniforms).patternColorId02;
l9_8111=l9_8112;
float4 l9_8113=float4(0.0);
float l9_8114=0.0;
float4 l9_8115=float4(0.0);
float4 l9_8116=float4(0.0);
ssGlobals l9_8117=l9_8107;
float l9_8118=0.0;
float l9_8119=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_8118=l9_8119;
l9_8114=l9_8118;
float4 l9_8120;
if ((l9_8114*1.0)!=0.0)
{
float2 l9_8121=float2(0.0);
l9_8121=l9_8117.Surface_UVCoord0;
float2 l9_8122=float2(0.0);
float2 l9_8123=(*sc_set0.UserUniforms).patternScaleId02;
l9_8122=l9_8123;
float2 l9_8124=float2(0.0);
l9_8124=((l9_8121-(*sc_set0.UserUniforms).Port_Center_N282)*l9_8122)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_8125=float2(0.0);
float2 l9_8126=(*sc_set0.UserUniforms).patternOffsetId02;
l9_8125=l9_8126;
float2 l9_8127=float2(0.0);
l9_8127=l9_8124+l9_8125;
float l9_8128=0.0;
float l9_8129=(*sc_set0.UserUniforms).patternRotateId02;
l9_8128=l9_8129;
float2 l9_8130=float2(0.0);
float2 l9_8131=l9_8127;
float l9_8132=l9_8128;
float2 l9_8133=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_8134=sin(radians(l9_8132));
float l9_8135=cos(radians(l9_8132));
float2 l9_8136=l9_8131-l9_8133;
l9_8136=float2(dot(float2(l9_8135,l9_8134),l9_8136),dot(float2(-l9_8134,l9_8135),l9_8136))+l9_8133;
l9_8130=l9_8136;
float4 l9_8137=float4(0.0);
int l9_8138;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_8139=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8139=0;
}
else
{
l9_8139=in.varStereoViewID;
}
int l9_8140=l9_8139;
l9_8138=1-l9_8140;
}
else
{
int l9_8141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8141=0;
}
else
{
l9_8141=in.varStereoViewID;
}
int l9_8142=l9_8141;
l9_8138=l9_8142;
}
int l9_8143=l9_8138;
int l9_8144=patternTextureId02Layout_tmp;
int l9_8145=l9_8143;
float2 l9_8146=l9_8130;
bool l9_8147=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_8148=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_8149=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_8150=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_8151=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_8152=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_8153=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_8154=0.0;
bool l9_8155=l9_8152&&(!l9_8150);
float l9_8156=1.0;
float l9_8157=l9_8146.x;
int l9_8158=l9_8149.x;
if (l9_8158==1)
{
l9_8157=fract(l9_8157);
}
else
{
if (l9_8158==2)
{
float l9_8159=fract(l9_8157);
float l9_8160=l9_8157-l9_8159;
float l9_8161=step(0.25,fract(l9_8160*0.5));
l9_8157=mix(l9_8159,1.0-l9_8159,fast::clamp(l9_8161,0.0,1.0));
}
}
l9_8146.x=l9_8157;
float l9_8162=l9_8146.y;
int l9_8163=l9_8149.y;
if (l9_8163==1)
{
l9_8162=fract(l9_8162);
}
else
{
if (l9_8163==2)
{
float l9_8164=fract(l9_8162);
float l9_8165=l9_8162-l9_8164;
float l9_8166=step(0.25,fract(l9_8165*0.5));
l9_8162=mix(l9_8164,1.0-l9_8164,fast::clamp(l9_8166,0.0,1.0));
}
}
l9_8146.y=l9_8162;
if (l9_8150)
{
bool l9_8167=l9_8152;
bool l9_8168;
if (l9_8167)
{
l9_8168=l9_8149.x==3;
}
else
{
l9_8168=l9_8167;
}
float l9_8169=l9_8146.x;
float l9_8170=l9_8151.x;
float l9_8171=l9_8151.z;
bool l9_8172=l9_8168;
float l9_8173=l9_8156;
float l9_8174=fast::clamp(l9_8169,l9_8170,l9_8171);
float l9_8175=step(abs(l9_8169-l9_8174),9.9999997e-06);
l9_8173*=(l9_8175+((1.0-float(l9_8172))*(1.0-l9_8175)));
l9_8169=l9_8174;
l9_8146.x=l9_8169;
l9_8156=l9_8173;
bool l9_8176=l9_8152;
bool l9_8177;
if (l9_8176)
{
l9_8177=l9_8149.y==3;
}
else
{
l9_8177=l9_8176;
}
float l9_8178=l9_8146.y;
float l9_8179=l9_8151.y;
float l9_8180=l9_8151.w;
bool l9_8181=l9_8177;
float l9_8182=l9_8156;
float l9_8183=fast::clamp(l9_8178,l9_8179,l9_8180);
float l9_8184=step(abs(l9_8178-l9_8183),9.9999997e-06);
l9_8182*=(l9_8184+((1.0-float(l9_8181))*(1.0-l9_8184)));
l9_8178=l9_8183;
l9_8146.y=l9_8178;
l9_8156=l9_8182;
}
float2 l9_8185=l9_8146;
bool l9_8186=l9_8147;
float3x3 l9_8187=l9_8148;
if (l9_8186)
{
l9_8185=float2((l9_8187*float3(l9_8185,1.0)).xy);
}
float2 l9_8188=l9_8185;
l9_8146=l9_8188;
float l9_8189=l9_8146.x;
int l9_8190=l9_8149.x;
bool l9_8191=l9_8155;
float l9_8192=l9_8156;
if ((l9_8190==0)||(l9_8190==3))
{
float l9_8193=l9_8189;
float l9_8194=0.0;
float l9_8195=1.0;
bool l9_8196=l9_8191;
float l9_8197=l9_8192;
float l9_8198=fast::clamp(l9_8193,l9_8194,l9_8195);
float l9_8199=step(abs(l9_8193-l9_8198),9.9999997e-06);
l9_8197*=(l9_8199+((1.0-float(l9_8196))*(1.0-l9_8199)));
l9_8193=l9_8198;
l9_8189=l9_8193;
l9_8192=l9_8197;
}
l9_8146.x=l9_8189;
l9_8156=l9_8192;
float l9_8200=l9_8146.y;
int l9_8201=l9_8149.y;
bool l9_8202=l9_8155;
float l9_8203=l9_8156;
if ((l9_8201==0)||(l9_8201==3))
{
float l9_8204=l9_8200;
float l9_8205=0.0;
float l9_8206=1.0;
bool l9_8207=l9_8202;
float l9_8208=l9_8203;
float l9_8209=fast::clamp(l9_8204,l9_8205,l9_8206);
float l9_8210=step(abs(l9_8204-l9_8209),9.9999997e-06);
l9_8208*=(l9_8210+((1.0-float(l9_8207))*(1.0-l9_8210)));
l9_8204=l9_8209;
l9_8200=l9_8204;
l9_8203=l9_8208;
}
l9_8146.y=l9_8200;
l9_8156=l9_8203;
float2 l9_8211=l9_8146;
int l9_8212=l9_8144;
int l9_8213=l9_8145;
float l9_8214=l9_8154;
float2 l9_8215=l9_8211;
int l9_8216=l9_8212;
int l9_8217=l9_8213;
float3 l9_8218=float3(0.0);
if (l9_8216==0)
{
l9_8218=float3(l9_8215,0.0);
}
else
{
if (l9_8216==1)
{
l9_8218=float3(l9_8215.x,(l9_8215.y*0.5)+(0.5-(float(l9_8217)*0.5)),0.0);
}
else
{
l9_8218=float3(l9_8215,float(l9_8217));
}
}
float3 l9_8219=l9_8218;
float3 l9_8220=l9_8219;
float4 l9_8221=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_8220.xy,bias(l9_8214));
float4 l9_8222=l9_8221;
if (l9_8152)
{
l9_8222=mix(l9_8153,l9_8222,float4(l9_8156));
}
float4 l9_8223=l9_8222;
l9_8137=l9_8223;
l9_8115=l9_8137;
l9_8120=l9_8115;
}
else
{
float2 l9_8224=float2(0.0);
l9_8224=l9_8117.Surface_UVCoord0;
float2 l9_8225=float2(0.0);
float2 l9_8226=(*sc_set0.UserUniforms).patternScaleId02;
l9_8225=l9_8226;
float2 l9_8227=float2(0.0);
l9_8227=((l9_8224-(*sc_set0.UserUniforms).Port_Center_N282)*l9_8225)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_8228=float2(0.0);
float2 l9_8229=(*sc_set0.UserUniforms).patternOffsetId02;
l9_8228=l9_8229;
float2 l9_8230=float2(0.0);
l9_8230=l9_8227+l9_8228;
float l9_8231=0.0;
float l9_8232=(*sc_set0.UserUniforms).patternRotateId02;
l9_8231=l9_8232;
float2 l9_8233=float2(0.0);
float2 l9_8234=l9_8230;
float l9_8235=l9_8231;
float2 l9_8236=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_8237=sin(radians(l9_8235));
float l9_8238=cos(radians(l9_8235));
float2 l9_8239=l9_8234-l9_8236;
l9_8239=float2(dot(float2(l9_8238,l9_8237),l9_8239),dot(float2(-l9_8237,l9_8238),l9_8239))+l9_8236;
l9_8233=l9_8239;
float4 l9_8240=float4(0.0);
int l9_8241;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_8242=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8242=0;
}
else
{
l9_8242=in.varStereoViewID;
}
int l9_8243=l9_8242;
l9_8241=1-l9_8243;
}
else
{
int l9_8244=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8244=0;
}
else
{
l9_8244=in.varStereoViewID;
}
int l9_8245=l9_8244;
l9_8241=l9_8245;
}
int l9_8246=l9_8241;
int l9_8247=patternTextureId02Layout_tmp;
int l9_8248=l9_8246;
float2 l9_8249=l9_8233;
bool l9_8250=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_8251=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_8252=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_8253=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_8254=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_8255=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_8256=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_8257=0.0;
bool l9_8258=l9_8255&&(!l9_8253);
float l9_8259=1.0;
float l9_8260=l9_8249.x;
int l9_8261=l9_8252.x;
if (l9_8261==1)
{
l9_8260=fract(l9_8260);
}
else
{
if (l9_8261==2)
{
float l9_8262=fract(l9_8260);
float l9_8263=l9_8260-l9_8262;
float l9_8264=step(0.25,fract(l9_8263*0.5));
l9_8260=mix(l9_8262,1.0-l9_8262,fast::clamp(l9_8264,0.0,1.0));
}
}
l9_8249.x=l9_8260;
float l9_8265=l9_8249.y;
int l9_8266=l9_8252.y;
if (l9_8266==1)
{
l9_8265=fract(l9_8265);
}
else
{
if (l9_8266==2)
{
float l9_8267=fract(l9_8265);
float l9_8268=l9_8265-l9_8267;
float l9_8269=step(0.25,fract(l9_8268*0.5));
l9_8265=mix(l9_8267,1.0-l9_8267,fast::clamp(l9_8269,0.0,1.0));
}
}
l9_8249.y=l9_8265;
if (l9_8253)
{
bool l9_8270=l9_8255;
bool l9_8271;
if (l9_8270)
{
l9_8271=l9_8252.x==3;
}
else
{
l9_8271=l9_8270;
}
float l9_8272=l9_8249.x;
float l9_8273=l9_8254.x;
float l9_8274=l9_8254.z;
bool l9_8275=l9_8271;
float l9_8276=l9_8259;
float l9_8277=fast::clamp(l9_8272,l9_8273,l9_8274);
float l9_8278=step(abs(l9_8272-l9_8277),9.9999997e-06);
l9_8276*=(l9_8278+((1.0-float(l9_8275))*(1.0-l9_8278)));
l9_8272=l9_8277;
l9_8249.x=l9_8272;
l9_8259=l9_8276;
bool l9_8279=l9_8255;
bool l9_8280;
if (l9_8279)
{
l9_8280=l9_8252.y==3;
}
else
{
l9_8280=l9_8279;
}
float l9_8281=l9_8249.y;
float l9_8282=l9_8254.y;
float l9_8283=l9_8254.w;
bool l9_8284=l9_8280;
float l9_8285=l9_8259;
float l9_8286=fast::clamp(l9_8281,l9_8282,l9_8283);
float l9_8287=step(abs(l9_8281-l9_8286),9.9999997e-06);
l9_8285*=(l9_8287+((1.0-float(l9_8284))*(1.0-l9_8287)));
l9_8281=l9_8286;
l9_8249.y=l9_8281;
l9_8259=l9_8285;
}
float2 l9_8288=l9_8249;
bool l9_8289=l9_8250;
float3x3 l9_8290=l9_8251;
if (l9_8289)
{
l9_8288=float2((l9_8290*float3(l9_8288,1.0)).xy);
}
float2 l9_8291=l9_8288;
l9_8249=l9_8291;
float l9_8292=l9_8249.x;
int l9_8293=l9_8252.x;
bool l9_8294=l9_8258;
float l9_8295=l9_8259;
if ((l9_8293==0)||(l9_8293==3))
{
float l9_8296=l9_8292;
float l9_8297=0.0;
float l9_8298=1.0;
bool l9_8299=l9_8294;
float l9_8300=l9_8295;
float l9_8301=fast::clamp(l9_8296,l9_8297,l9_8298);
float l9_8302=step(abs(l9_8296-l9_8301),9.9999997e-06);
l9_8300*=(l9_8302+((1.0-float(l9_8299))*(1.0-l9_8302)));
l9_8296=l9_8301;
l9_8292=l9_8296;
l9_8295=l9_8300;
}
l9_8249.x=l9_8292;
l9_8259=l9_8295;
float l9_8303=l9_8249.y;
int l9_8304=l9_8252.y;
bool l9_8305=l9_8258;
float l9_8306=l9_8259;
if ((l9_8304==0)||(l9_8304==3))
{
float l9_8307=l9_8303;
float l9_8308=0.0;
float l9_8309=1.0;
bool l9_8310=l9_8305;
float l9_8311=l9_8306;
float l9_8312=fast::clamp(l9_8307,l9_8308,l9_8309);
float l9_8313=step(abs(l9_8307-l9_8312),9.9999997e-06);
l9_8311*=(l9_8313+((1.0-float(l9_8310))*(1.0-l9_8313)));
l9_8307=l9_8312;
l9_8303=l9_8307;
l9_8306=l9_8311;
}
l9_8249.y=l9_8303;
l9_8259=l9_8306;
float2 l9_8314=l9_8249;
int l9_8315=l9_8247;
int l9_8316=l9_8248;
float l9_8317=l9_8257;
float2 l9_8318=l9_8314;
int l9_8319=l9_8315;
int l9_8320=l9_8316;
float3 l9_8321=float3(0.0);
if (l9_8319==0)
{
l9_8321=float3(l9_8318,0.0);
}
else
{
if (l9_8319==1)
{
l9_8321=float3(l9_8318.x,(l9_8318.y*0.5)+(0.5-(float(l9_8320)*0.5)),0.0);
}
else
{
l9_8321=float3(l9_8318,float(l9_8320));
}
}
float3 l9_8322=l9_8321;
float3 l9_8323=l9_8322;
float4 l9_8324=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_8323.xy,bias(l9_8317));
float4 l9_8325=l9_8324;
if (l9_8255)
{
l9_8325=mix(l9_8256,l9_8325,float4(l9_8259));
}
float4 l9_8326=l9_8325;
l9_8240=l9_8326;
float l9_8327=0.0;
float3 l9_8328=l9_8240.xyz;
float l9_8329=l9_8328.x;
l9_8327=l9_8329;
l9_8116=float4(l9_8327);
l9_8120=l9_8116;
}
l9_8113=l9_8120;
float4 l9_8330=float4(0.0);
l9_8330=l9_8111*l9_8113;
l9_8105=l9_8330;
l9_8110=l9_8105;
}
else
{
float4 l9_8331=float4(0.0);
float4 l9_8332=(*sc_set0.UserUniforms).colorId02;
l9_8331=l9_8332;
float4 l9_8333=float4(0.0);
float l9_8334=0.0;
float4 l9_8335=float4(0.0);
float4 l9_8336=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_8337=l9_8107;
float l9_8338=0.0;
float l9_8339=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_8338=l9_8339;
l9_8334=l9_8338;
float4 l9_8340;
if ((l9_8334*1.0)!=0.0)
{
float2 l9_8341=float2(0.0);
l9_8341=l9_8337.Surface_UVCoord0;
float4 l9_8342=float4(0.0);
int l9_8343;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_8344=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8344=0;
}
else
{
l9_8344=in.varStereoViewID;
}
int l9_8345=l9_8344;
l9_8343=1-l9_8345;
}
else
{
int l9_8346=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8346=0;
}
else
{
l9_8346=in.varStereoViewID;
}
int l9_8347=l9_8346;
l9_8343=l9_8347;
}
int l9_8348=l9_8343;
int l9_8349=greyMaskIdLayout_tmp;
int l9_8350=l9_8348;
float2 l9_8351=l9_8341;
bool l9_8352=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_8353=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_8354=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_8355=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_8356=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_8357=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_8358=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_8359=0.0;
bool l9_8360=l9_8357&&(!l9_8355);
float l9_8361=1.0;
float l9_8362=l9_8351.x;
int l9_8363=l9_8354.x;
if (l9_8363==1)
{
l9_8362=fract(l9_8362);
}
else
{
if (l9_8363==2)
{
float l9_8364=fract(l9_8362);
float l9_8365=l9_8362-l9_8364;
float l9_8366=step(0.25,fract(l9_8365*0.5));
l9_8362=mix(l9_8364,1.0-l9_8364,fast::clamp(l9_8366,0.0,1.0));
}
}
l9_8351.x=l9_8362;
float l9_8367=l9_8351.y;
int l9_8368=l9_8354.y;
if (l9_8368==1)
{
l9_8367=fract(l9_8367);
}
else
{
if (l9_8368==2)
{
float l9_8369=fract(l9_8367);
float l9_8370=l9_8367-l9_8369;
float l9_8371=step(0.25,fract(l9_8370*0.5));
l9_8367=mix(l9_8369,1.0-l9_8369,fast::clamp(l9_8371,0.0,1.0));
}
}
l9_8351.y=l9_8367;
if (l9_8355)
{
bool l9_8372=l9_8357;
bool l9_8373;
if (l9_8372)
{
l9_8373=l9_8354.x==3;
}
else
{
l9_8373=l9_8372;
}
float l9_8374=l9_8351.x;
float l9_8375=l9_8356.x;
float l9_8376=l9_8356.z;
bool l9_8377=l9_8373;
float l9_8378=l9_8361;
float l9_8379=fast::clamp(l9_8374,l9_8375,l9_8376);
float l9_8380=step(abs(l9_8374-l9_8379),9.9999997e-06);
l9_8378*=(l9_8380+((1.0-float(l9_8377))*(1.0-l9_8380)));
l9_8374=l9_8379;
l9_8351.x=l9_8374;
l9_8361=l9_8378;
bool l9_8381=l9_8357;
bool l9_8382;
if (l9_8381)
{
l9_8382=l9_8354.y==3;
}
else
{
l9_8382=l9_8381;
}
float l9_8383=l9_8351.y;
float l9_8384=l9_8356.y;
float l9_8385=l9_8356.w;
bool l9_8386=l9_8382;
float l9_8387=l9_8361;
float l9_8388=fast::clamp(l9_8383,l9_8384,l9_8385);
float l9_8389=step(abs(l9_8383-l9_8388),9.9999997e-06);
l9_8387*=(l9_8389+((1.0-float(l9_8386))*(1.0-l9_8389)));
l9_8383=l9_8388;
l9_8351.y=l9_8383;
l9_8361=l9_8387;
}
float2 l9_8390=l9_8351;
bool l9_8391=l9_8352;
float3x3 l9_8392=l9_8353;
if (l9_8391)
{
l9_8390=float2((l9_8392*float3(l9_8390,1.0)).xy);
}
float2 l9_8393=l9_8390;
l9_8351=l9_8393;
float l9_8394=l9_8351.x;
int l9_8395=l9_8354.x;
bool l9_8396=l9_8360;
float l9_8397=l9_8361;
if ((l9_8395==0)||(l9_8395==3))
{
float l9_8398=l9_8394;
float l9_8399=0.0;
float l9_8400=1.0;
bool l9_8401=l9_8396;
float l9_8402=l9_8397;
float l9_8403=fast::clamp(l9_8398,l9_8399,l9_8400);
float l9_8404=step(abs(l9_8398-l9_8403),9.9999997e-06);
l9_8402*=(l9_8404+((1.0-float(l9_8401))*(1.0-l9_8404)));
l9_8398=l9_8403;
l9_8394=l9_8398;
l9_8397=l9_8402;
}
l9_8351.x=l9_8394;
l9_8361=l9_8397;
float l9_8405=l9_8351.y;
int l9_8406=l9_8354.y;
bool l9_8407=l9_8360;
float l9_8408=l9_8361;
if ((l9_8406==0)||(l9_8406==3))
{
float l9_8409=l9_8405;
float l9_8410=0.0;
float l9_8411=1.0;
bool l9_8412=l9_8407;
float l9_8413=l9_8408;
float l9_8414=fast::clamp(l9_8409,l9_8410,l9_8411);
float l9_8415=step(abs(l9_8409-l9_8414),9.9999997e-06);
l9_8413*=(l9_8415+((1.0-float(l9_8412))*(1.0-l9_8415)));
l9_8409=l9_8414;
l9_8405=l9_8409;
l9_8408=l9_8413;
}
l9_8351.y=l9_8405;
l9_8361=l9_8408;
float2 l9_8416=l9_8351;
int l9_8417=l9_8349;
int l9_8418=l9_8350;
float l9_8419=l9_8359;
float2 l9_8420=l9_8416;
int l9_8421=l9_8417;
int l9_8422=l9_8418;
float3 l9_8423=float3(0.0);
if (l9_8421==0)
{
l9_8423=float3(l9_8420,0.0);
}
else
{
if (l9_8421==1)
{
l9_8423=float3(l9_8420.x,(l9_8420.y*0.5)+(0.5-(float(l9_8422)*0.5)),0.0);
}
else
{
l9_8423=float3(l9_8420,float(l9_8422));
}
}
float3 l9_8424=l9_8423;
float3 l9_8425=l9_8424;
float4 l9_8426=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_8425.xy,bias(l9_8419));
float4 l9_8427=l9_8426;
if (l9_8357)
{
l9_8427=mix(l9_8358,l9_8427,float4(l9_8361));
}
float4 l9_8428=l9_8427;
l9_8342=l9_8428;
float l9_8429=0.0;
l9_8429=l9_8342.x;
float l9_8430=0.0;
l9_8430=step(l9_8429,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_8431=0.0;
l9_8431=step(l9_8429,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_8432=0.0;
l9_8432=l9_8430-l9_8431;
l9_8335=float4(l9_8432);
l9_8340=l9_8335;
}
else
{
l9_8340=l9_8336;
}
l9_8333=l9_8340;
float4 l9_8433=float4(0.0);
l9_8433=l9_8331*l9_8333;
l9_8106=l9_8433;
l9_8110=l9_8106;
}
l9_8103=l9_8110;
float4 l9_8434=float4(0.0);
float l9_8435=0.0;
float4 l9_8436=float4(0.0);
float4 l9_8437=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_8438=l9_7645;
float l9_8439=0.0;
float l9_8440=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_8439=l9_8440;
l9_8435=l9_8439;
float4 l9_8441;
if ((l9_8435*1.0)!=0.0)
{
float2 l9_8442=float2(0.0);
l9_8442=l9_8438.Surface_UVCoord0;
float4 l9_8443=float4(0.0);
int l9_8444;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_8445=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8445=0;
}
else
{
l9_8445=in.varStereoViewID;
}
int l9_8446=l9_8445;
l9_8444=1-l9_8446;
}
else
{
int l9_8447=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8447=0;
}
else
{
l9_8447=in.varStereoViewID;
}
int l9_8448=l9_8447;
l9_8444=l9_8448;
}
int l9_8449=l9_8444;
int l9_8450=greyMaskIdLayout_tmp;
int l9_8451=l9_8449;
float2 l9_8452=l9_8442;
bool l9_8453=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_8454=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_8455=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_8456=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_8457=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_8458=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_8459=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_8460=0.0;
bool l9_8461=l9_8458&&(!l9_8456);
float l9_8462=1.0;
float l9_8463=l9_8452.x;
int l9_8464=l9_8455.x;
if (l9_8464==1)
{
l9_8463=fract(l9_8463);
}
else
{
if (l9_8464==2)
{
float l9_8465=fract(l9_8463);
float l9_8466=l9_8463-l9_8465;
float l9_8467=step(0.25,fract(l9_8466*0.5));
l9_8463=mix(l9_8465,1.0-l9_8465,fast::clamp(l9_8467,0.0,1.0));
}
}
l9_8452.x=l9_8463;
float l9_8468=l9_8452.y;
int l9_8469=l9_8455.y;
if (l9_8469==1)
{
l9_8468=fract(l9_8468);
}
else
{
if (l9_8469==2)
{
float l9_8470=fract(l9_8468);
float l9_8471=l9_8468-l9_8470;
float l9_8472=step(0.25,fract(l9_8471*0.5));
l9_8468=mix(l9_8470,1.0-l9_8470,fast::clamp(l9_8472,0.0,1.0));
}
}
l9_8452.y=l9_8468;
if (l9_8456)
{
bool l9_8473=l9_8458;
bool l9_8474;
if (l9_8473)
{
l9_8474=l9_8455.x==3;
}
else
{
l9_8474=l9_8473;
}
float l9_8475=l9_8452.x;
float l9_8476=l9_8457.x;
float l9_8477=l9_8457.z;
bool l9_8478=l9_8474;
float l9_8479=l9_8462;
float l9_8480=fast::clamp(l9_8475,l9_8476,l9_8477);
float l9_8481=step(abs(l9_8475-l9_8480),9.9999997e-06);
l9_8479*=(l9_8481+((1.0-float(l9_8478))*(1.0-l9_8481)));
l9_8475=l9_8480;
l9_8452.x=l9_8475;
l9_8462=l9_8479;
bool l9_8482=l9_8458;
bool l9_8483;
if (l9_8482)
{
l9_8483=l9_8455.y==3;
}
else
{
l9_8483=l9_8482;
}
float l9_8484=l9_8452.y;
float l9_8485=l9_8457.y;
float l9_8486=l9_8457.w;
bool l9_8487=l9_8483;
float l9_8488=l9_8462;
float l9_8489=fast::clamp(l9_8484,l9_8485,l9_8486);
float l9_8490=step(abs(l9_8484-l9_8489),9.9999997e-06);
l9_8488*=(l9_8490+((1.0-float(l9_8487))*(1.0-l9_8490)));
l9_8484=l9_8489;
l9_8452.y=l9_8484;
l9_8462=l9_8488;
}
float2 l9_8491=l9_8452;
bool l9_8492=l9_8453;
float3x3 l9_8493=l9_8454;
if (l9_8492)
{
l9_8491=float2((l9_8493*float3(l9_8491,1.0)).xy);
}
float2 l9_8494=l9_8491;
l9_8452=l9_8494;
float l9_8495=l9_8452.x;
int l9_8496=l9_8455.x;
bool l9_8497=l9_8461;
float l9_8498=l9_8462;
if ((l9_8496==0)||(l9_8496==3))
{
float l9_8499=l9_8495;
float l9_8500=0.0;
float l9_8501=1.0;
bool l9_8502=l9_8497;
float l9_8503=l9_8498;
float l9_8504=fast::clamp(l9_8499,l9_8500,l9_8501);
float l9_8505=step(abs(l9_8499-l9_8504),9.9999997e-06);
l9_8503*=(l9_8505+((1.0-float(l9_8502))*(1.0-l9_8505)));
l9_8499=l9_8504;
l9_8495=l9_8499;
l9_8498=l9_8503;
}
l9_8452.x=l9_8495;
l9_8462=l9_8498;
float l9_8506=l9_8452.y;
int l9_8507=l9_8455.y;
bool l9_8508=l9_8461;
float l9_8509=l9_8462;
if ((l9_8507==0)||(l9_8507==3))
{
float l9_8510=l9_8506;
float l9_8511=0.0;
float l9_8512=1.0;
bool l9_8513=l9_8508;
float l9_8514=l9_8509;
float l9_8515=fast::clamp(l9_8510,l9_8511,l9_8512);
float l9_8516=step(abs(l9_8510-l9_8515),9.9999997e-06);
l9_8514*=(l9_8516+((1.0-float(l9_8513))*(1.0-l9_8516)));
l9_8510=l9_8515;
l9_8506=l9_8510;
l9_8509=l9_8514;
}
l9_8452.y=l9_8506;
l9_8462=l9_8509;
float2 l9_8517=l9_8452;
int l9_8518=l9_8450;
int l9_8519=l9_8451;
float l9_8520=l9_8460;
float2 l9_8521=l9_8517;
int l9_8522=l9_8518;
int l9_8523=l9_8519;
float3 l9_8524=float3(0.0);
if (l9_8522==0)
{
l9_8524=float3(l9_8521,0.0);
}
else
{
if (l9_8522==1)
{
l9_8524=float3(l9_8521.x,(l9_8521.y*0.5)+(0.5-(float(l9_8523)*0.5)),0.0);
}
else
{
l9_8524=float3(l9_8521,float(l9_8523));
}
}
float3 l9_8525=l9_8524;
float3 l9_8526=l9_8525;
float4 l9_8527=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_8526.xy,bias(l9_8520));
float4 l9_8528=l9_8527;
if (l9_8458)
{
l9_8528=mix(l9_8459,l9_8528,float4(l9_8462));
}
float4 l9_8529=l9_8528;
l9_8443=l9_8529;
float l9_8530=0.0;
l9_8530=l9_8443.x;
float l9_8531=0.0;
l9_8531=step(l9_8530,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_8532=0.0;
l9_8532=step(l9_8530,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_8533=0.0;
l9_8533=l9_8531-l9_8532;
l9_8436=float4(l9_8533);
l9_8441=l9_8436;
}
else
{
l9_8441=l9_8437;
}
l9_8434=l9_8441;
float4 l9_8534=float4(0.0);
l9_8534=l9_8103*l9_8434;
float4 l9_8535=float4(0.0);
float4 l9_8536=(*sc_set0.UserUniforms).colorId02;
l9_8535=l9_8536;
float4 l9_8537=float4(0.0);
l9_8537=l9_8535*l9_8434;
float4 l9_8538=float4(0.0);
float4 l9_8539=l9_8534;
float4 l9_8540=l9_8537;
float4 l9_8541=l9_8539;
float4 l9_8542=l9_8540;
float3 l9_8543=l9_8541.xyz*l9_8541.w;
l9_8541=float4(l9_8543.x,l9_8543.y,l9_8543.z,l9_8541.w);
float4 l9_8544=l9_8541+(l9_8542*(1.0-l9_8541.w));
l9_8538=l9_8544;
l9_7644=l9_8538;
l9_7648=l9_7644;
}
l9_7641=l9_7648;
float l9_8545=0.0;
float l9_8546=(*sc_set0.UserUniforms).metallicId02;
l9_8545=l9_8546;
float l9_8547=0.0;
float l9_8548=(*sc_set0.UserUniforms).rougnessId02;
l9_8547=l9_8548;
float4 l9_8549=float4(0.0);
float3 l9_8550=l9_7641.xyz;
float l9_8551=(*sc_set0.UserUniforms).Port_Opacity_N313;
float3 l9_8552=(*sc_set0.UserUniforms).Port_Emissive_N313;
float l9_8553=l9_8545;
float l9_8554=l9_8547;
float3 l9_8555=(*sc_set0.UserUniforms).Port_AO_N313;
float3 l9_8556=(*sc_set0.UserUniforms).Port_SpecularAO_N313;
ssGlobals l9_8557=l9_7637;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_8557.BumpedNormal=l9_8557.VertexNormal_WorldSpace;
}
float l9_8558=l9_8551;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_8558<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_8559=gl_FragCoord;
float2 l9_8560=floor(mod(l9_8559.xy,float2(4.0)));
float l9_8561=(mod(dot(l9_8560,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_8558<l9_8561)
{
discard_fragment();
}
}
l9_8550=fast::max(l9_8550,float3(0.0));
float4 l9_8562;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_8562=float4(l9_8550,l9_8551);
}
else
{
l9_8553=fast::clamp(l9_8553,0.0,1.0);
l9_8554=fast::clamp(l9_8554,0.0,1.0);
float3 l9_8563=l9_8550;
float l9_8564=l9_8551;
float3 l9_8565=l9_8557.BumpedNormal;
float3 l9_8566=l9_8557.PositionWS;
float3 l9_8567=l9_8557.ViewDirWS;
float3 l9_8568=l9_8552;
float l9_8569=l9_8553;
float l9_8570=l9_8554;
float3 l9_8571=l9_8555;
float3 l9_8572=l9_8556;
l9_8562=ngsCalculateLighting(l9_8563,l9_8564,l9_8565,l9_8566,l9_8567,l9_8568,l9_8569,l9_8570,l9_8571,l9_8572,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_8562=fast::max(l9_8562,float4(0.0));
l9_8549=l9_8562;
l9_7635=l9_8549;
l9_7640=l9_7635;
}
else
{
float4 l9_8573=float4(0.0);
float l9_8574=0.0;
float4 l9_8575=float4(0.0);
float4 l9_8576=float4(0.0);
ssGlobals l9_8577=l9_7637;
float l9_8578=0.0;
float l9_8579=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_8578=l9_8579;
l9_8574=l9_8578;
float4 l9_8580;
if ((l9_8574*1.0)!=0.0)
{
float l9_8581=0.0;
float l9_8582=(*sc_set0.UserUniforms).rimExpId02;
l9_8581=l9_8582;
float l9_8583=0.0;
float l9_8584=(*sc_set0.UserUniforms).rimIntId02;
l9_8583=l9_8584;
float l9_8585=0.0;
float l9_8586=l9_8581;
float l9_8587=l9_8583;
ssGlobals l9_8588=l9_8577;
float l9_8589=abs(dot(-l9_8588.ViewDirWS,l9_8588.VertexNormal_WorldSpace));
float l9_8590=1.0-pow(1.0-l9_8589,l9_8586);
l9_8590=fast::max(l9_8590,0.0);
l9_8590*=l9_8587;
l9_8585=l9_8590;
float4 l9_8591=float4(0.0);
float l9_8592=0.0;
float4 l9_8593=float4(0.0);
float4 l9_8594=float4(0.0);
ssGlobals l9_8595=l9_8577;
float l9_8596=0.0;
float l9_8597=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_8596=l9_8597;
l9_8592=l9_8596;
float4 l9_8598;
if ((l9_8592*1.0)!=0.0)
{
float4 l9_8599=float4(0.0);
float4 l9_8600=(*sc_set0.UserUniforms).patternColorId02;
l9_8599=l9_8600;
float4 l9_8601=float4(0.0);
float l9_8602=0.0;
float4 l9_8603=float4(0.0);
float4 l9_8604=float4(0.0);
ssGlobals l9_8605=l9_8595;
float l9_8606=0.0;
float l9_8607=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_8606=l9_8607;
l9_8602=l9_8606;
float4 l9_8608;
if ((l9_8602*1.0)!=0.0)
{
float2 l9_8609=float2(0.0);
l9_8609=l9_8605.Surface_UVCoord0;
float2 l9_8610=float2(0.0);
float2 l9_8611=(*sc_set0.UserUniforms).patternScaleId02;
l9_8610=l9_8611;
float2 l9_8612=float2(0.0);
l9_8612=((l9_8609-(*sc_set0.UserUniforms).Port_Center_N282)*l9_8610)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_8613=float2(0.0);
float2 l9_8614=(*sc_set0.UserUniforms).patternOffsetId02;
l9_8613=l9_8614;
float2 l9_8615=float2(0.0);
l9_8615=l9_8612+l9_8613;
float l9_8616=0.0;
float l9_8617=(*sc_set0.UserUniforms).patternRotateId02;
l9_8616=l9_8617;
float2 l9_8618=float2(0.0);
float2 l9_8619=l9_8615;
float l9_8620=l9_8616;
float2 l9_8621=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_8622=sin(radians(l9_8620));
float l9_8623=cos(radians(l9_8620));
float2 l9_8624=l9_8619-l9_8621;
l9_8624=float2(dot(float2(l9_8623,l9_8622),l9_8624),dot(float2(-l9_8622,l9_8623),l9_8624))+l9_8621;
l9_8618=l9_8624;
float4 l9_8625=float4(0.0);
int l9_8626;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_8627=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8627=0;
}
else
{
l9_8627=in.varStereoViewID;
}
int l9_8628=l9_8627;
l9_8626=1-l9_8628;
}
else
{
int l9_8629=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8629=0;
}
else
{
l9_8629=in.varStereoViewID;
}
int l9_8630=l9_8629;
l9_8626=l9_8630;
}
int l9_8631=l9_8626;
int l9_8632=patternTextureId02Layout_tmp;
int l9_8633=l9_8631;
float2 l9_8634=l9_8618;
bool l9_8635=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_8636=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_8637=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_8638=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_8639=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_8640=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_8641=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_8642=0.0;
bool l9_8643=l9_8640&&(!l9_8638);
float l9_8644=1.0;
float l9_8645=l9_8634.x;
int l9_8646=l9_8637.x;
if (l9_8646==1)
{
l9_8645=fract(l9_8645);
}
else
{
if (l9_8646==2)
{
float l9_8647=fract(l9_8645);
float l9_8648=l9_8645-l9_8647;
float l9_8649=step(0.25,fract(l9_8648*0.5));
l9_8645=mix(l9_8647,1.0-l9_8647,fast::clamp(l9_8649,0.0,1.0));
}
}
l9_8634.x=l9_8645;
float l9_8650=l9_8634.y;
int l9_8651=l9_8637.y;
if (l9_8651==1)
{
l9_8650=fract(l9_8650);
}
else
{
if (l9_8651==2)
{
float l9_8652=fract(l9_8650);
float l9_8653=l9_8650-l9_8652;
float l9_8654=step(0.25,fract(l9_8653*0.5));
l9_8650=mix(l9_8652,1.0-l9_8652,fast::clamp(l9_8654,0.0,1.0));
}
}
l9_8634.y=l9_8650;
if (l9_8638)
{
bool l9_8655=l9_8640;
bool l9_8656;
if (l9_8655)
{
l9_8656=l9_8637.x==3;
}
else
{
l9_8656=l9_8655;
}
float l9_8657=l9_8634.x;
float l9_8658=l9_8639.x;
float l9_8659=l9_8639.z;
bool l9_8660=l9_8656;
float l9_8661=l9_8644;
float l9_8662=fast::clamp(l9_8657,l9_8658,l9_8659);
float l9_8663=step(abs(l9_8657-l9_8662),9.9999997e-06);
l9_8661*=(l9_8663+((1.0-float(l9_8660))*(1.0-l9_8663)));
l9_8657=l9_8662;
l9_8634.x=l9_8657;
l9_8644=l9_8661;
bool l9_8664=l9_8640;
bool l9_8665;
if (l9_8664)
{
l9_8665=l9_8637.y==3;
}
else
{
l9_8665=l9_8664;
}
float l9_8666=l9_8634.y;
float l9_8667=l9_8639.y;
float l9_8668=l9_8639.w;
bool l9_8669=l9_8665;
float l9_8670=l9_8644;
float l9_8671=fast::clamp(l9_8666,l9_8667,l9_8668);
float l9_8672=step(abs(l9_8666-l9_8671),9.9999997e-06);
l9_8670*=(l9_8672+((1.0-float(l9_8669))*(1.0-l9_8672)));
l9_8666=l9_8671;
l9_8634.y=l9_8666;
l9_8644=l9_8670;
}
float2 l9_8673=l9_8634;
bool l9_8674=l9_8635;
float3x3 l9_8675=l9_8636;
if (l9_8674)
{
l9_8673=float2((l9_8675*float3(l9_8673,1.0)).xy);
}
float2 l9_8676=l9_8673;
l9_8634=l9_8676;
float l9_8677=l9_8634.x;
int l9_8678=l9_8637.x;
bool l9_8679=l9_8643;
float l9_8680=l9_8644;
if ((l9_8678==0)||(l9_8678==3))
{
float l9_8681=l9_8677;
float l9_8682=0.0;
float l9_8683=1.0;
bool l9_8684=l9_8679;
float l9_8685=l9_8680;
float l9_8686=fast::clamp(l9_8681,l9_8682,l9_8683);
float l9_8687=step(abs(l9_8681-l9_8686),9.9999997e-06);
l9_8685*=(l9_8687+((1.0-float(l9_8684))*(1.0-l9_8687)));
l9_8681=l9_8686;
l9_8677=l9_8681;
l9_8680=l9_8685;
}
l9_8634.x=l9_8677;
l9_8644=l9_8680;
float l9_8688=l9_8634.y;
int l9_8689=l9_8637.y;
bool l9_8690=l9_8643;
float l9_8691=l9_8644;
if ((l9_8689==0)||(l9_8689==3))
{
float l9_8692=l9_8688;
float l9_8693=0.0;
float l9_8694=1.0;
bool l9_8695=l9_8690;
float l9_8696=l9_8691;
float l9_8697=fast::clamp(l9_8692,l9_8693,l9_8694);
float l9_8698=step(abs(l9_8692-l9_8697),9.9999997e-06);
l9_8696*=(l9_8698+((1.0-float(l9_8695))*(1.0-l9_8698)));
l9_8692=l9_8697;
l9_8688=l9_8692;
l9_8691=l9_8696;
}
l9_8634.y=l9_8688;
l9_8644=l9_8691;
float2 l9_8699=l9_8634;
int l9_8700=l9_8632;
int l9_8701=l9_8633;
float l9_8702=l9_8642;
float2 l9_8703=l9_8699;
int l9_8704=l9_8700;
int l9_8705=l9_8701;
float3 l9_8706=float3(0.0);
if (l9_8704==0)
{
l9_8706=float3(l9_8703,0.0);
}
else
{
if (l9_8704==1)
{
l9_8706=float3(l9_8703.x,(l9_8703.y*0.5)+(0.5-(float(l9_8705)*0.5)),0.0);
}
else
{
l9_8706=float3(l9_8703,float(l9_8705));
}
}
float3 l9_8707=l9_8706;
float3 l9_8708=l9_8707;
float4 l9_8709=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_8708.xy,bias(l9_8702));
float4 l9_8710=l9_8709;
if (l9_8640)
{
l9_8710=mix(l9_8641,l9_8710,float4(l9_8644));
}
float4 l9_8711=l9_8710;
l9_8625=l9_8711;
l9_8603=l9_8625;
l9_8608=l9_8603;
}
else
{
float2 l9_8712=float2(0.0);
l9_8712=l9_8605.Surface_UVCoord0;
float2 l9_8713=float2(0.0);
float2 l9_8714=(*sc_set0.UserUniforms).patternScaleId02;
l9_8713=l9_8714;
float2 l9_8715=float2(0.0);
l9_8715=((l9_8712-(*sc_set0.UserUniforms).Port_Center_N282)*l9_8713)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_8716=float2(0.0);
float2 l9_8717=(*sc_set0.UserUniforms).patternOffsetId02;
l9_8716=l9_8717;
float2 l9_8718=float2(0.0);
l9_8718=l9_8715+l9_8716;
float l9_8719=0.0;
float l9_8720=(*sc_set0.UserUniforms).patternRotateId02;
l9_8719=l9_8720;
float2 l9_8721=float2(0.0);
float2 l9_8722=l9_8718;
float l9_8723=l9_8719;
float2 l9_8724=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_8725=sin(radians(l9_8723));
float l9_8726=cos(radians(l9_8723));
float2 l9_8727=l9_8722-l9_8724;
l9_8727=float2(dot(float2(l9_8726,l9_8725),l9_8727),dot(float2(-l9_8725,l9_8726),l9_8727))+l9_8724;
l9_8721=l9_8727;
float4 l9_8728=float4(0.0);
int l9_8729;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_8730=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8730=0;
}
else
{
l9_8730=in.varStereoViewID;
}
int l9_8731=l9_8730;
l9_8729=1-l9_8731;
}
else
{
int l9_8732=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8732=0;
}
else
{
l9_8732=in.varStereoViewID;
}
int l9_8733=l9_8732;
l9_8729=l9_8733;
}
int l9_8734=l9_8729;
int l9_8735=patternTextureId02Layout_tmp;
int l9_8736=l9_8734;
float2 l9_8737=l9_8721;
bool l9_8738=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_8739=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_8740=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_8741=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_8742=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_8743=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_8744=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_8745=0.0;
bool l9_8746=l9_8743&&(!l9_8741);
float l9_8747=1.0;
float l9_8748=l9_8737.x;
int l9_8749=l9_8740.x;
if (l9_8749==1)
{
l9_8748=fract(l9_8748);
}
else
{
if (l9_8749==2)
{
float l9_8750=fract(l9_8748);
float l9_8751=l9_8748-l9_8750;
float l9_8752=step(0.25,fract(l9_8751*0.5));
l9_8748=mix(l9_8750,1.0-l9_8750,fast::clamp(l9_8752,0.0,1.0));
}
}
l9_8737.x=l9_8748;
float l9_8753=l9_8737.y;
int l9_8754=l9_8740.y;
if (l9_8754==1)
{
l9_8753=fract(l9_8753);
}
else
{
if (l9_8754==2)
{
float l9_8755=fract(l9_8753);
float l9_8756=l9_8753-l9_8755;
float l9_8757=step(0.25,fract(l9_8756*0.5));
l9_8753=mix(l9_8755,1.0-l9_8755,fast::clamp(l9_8757,0.0,1.0));
}
}
l9_8737.y=l9_8753;
if (l9_8741)
{
bool l9_8758=l9_8743;
bool l9_8759;
if (l9_8758)
{
l9_8759=l9_8740.x==3;
}
else
{
l9_8759=l9_8758;
}
float l9_8760=l9_8737.x;
float l9_8761=l9_8742.x;
float l9_8762=l9_8742.z;
bool l9_8763=l9_8759;
float l9_8764=l9_8747;
float l9_8765=fast::clamp(l9_8760,l9_8761,l9_8762);
float l9_8766=step(abs(l9_8760-l9_8765),9.9999997e-06);
l9_8764*=(l9_8766+((1.0-float(l9_8763))*(1.0-l9_8766)));
l9_8760=l9_8765;
l9_8737.x=l9_8760;
l9_8747=l9_8764;
bool l9_8767=l9_8743;
bool l9_8768;
if (l9_8767)
{
l9_8768=l9_8740.y==3;
}
else
{
l9_8768=l9_8767;
}
float l9_8769=l9_8737.y;
float l9_8770=l9_8742.y;
float l9_8771=l9_8742.w;
bool l9_8772=l9_8768;
float l9_8773=l9_8747;
float l9_8774=fast::clamp(l9_8769,l9_8770,l9_8771);
float l9_8775=step(abs(l9_8769-l9_8774),9.9999997e-06);
l9_8773*=(l9_8775+((1.0-float(l9_8772))*(1.0-l9_8775)));
l9_8769=l9_8774;
l9_8737.y=l9_8769;
l9_8747=l9_8773;
}
float2 l9_8776=l9_8737;
bool l9_8777=l9_8738;
float3x3 l9_8778=l9_8739;
if (l9_8777)
{
l9_8776=float2((l9_8778*float3(l9_8776,1.0)).xy);
}
float2 l9_8779=l9_8776;
l9_8737=l9_8779;
float l9_8780=l9_8737.x;
int l9_8781=l9_8740.x;
bool l9_8782=l9_8746;
float l9_8783=l9_8747;
if ((l9_8781==0)||(l9_8781==3))
{
float l9_8784=l9_8780;
float l9_8785=0.0;
float l9_8786=1.0;
bool l9_8787=l9_8782;
float l9_8788=l9_8783;
float l9_8789=fast::clamp(l9_8784,l9_8785,l9_8786);
float l9_8790=step(abs(l9_8784-l9_8789),9.9999997e-06);
l9_8788*=(l9_8790+((1.0-float(l9_8787))*(1.0-l9_8790)));
l9_8784=l9_8789;
l9_8780=l9_8784;
l9_8783=l9_8788;
}
l9_8737.x=l9_8780;
l9_8747=l9_8783;
float l9_8791=l9_8737.y;
int l9_8792=l9_8740.y;
bool l9_8793=l9_8746;
float l9_8794=l9_8747;
if ((l9_8792==0)||(l9_8792==3))
{
float l9_8795=l9_8791;
float l9_8796=0.0;
float l9_8797=1.0;
bool l9_8798=l9_8793;
float l9_8799=l9_8794;
float l9_8800=fast::clamp(l9_8795,l9_8796,l9_8797);
float l9_8801=step(abs(l9_8795-l9_8800),9.9999997e-06);
l9_8799*=(l9_8801+((1.0-float(l9_8798))*(1.0-l9_8801)));
l9_8795=l9_8800;
l9_8791=l9_8795;
l9_8794=l9_8799;
}
l9_8737.y=l9_8791;
l9_8747=l9_8794;
float2 l9_8802=l9_8737;
int l9_8803=l9_8735;
int l9_8804=l9_8736;
float l9_8805=l9_8745;
float2 l9_8806=l9_8802;
int l9_8807=l9_8803;
int l9_8808=l9_8804;
float3 l9_8809=float3(0.0);
if (l9_8807==0)
{
l9_8809=float3(l9_8806,0.0);
}
else
{
if (l9_8807==1)
{
l9_8809=float3(l9_8806.x,(l9_8806.y*0.5)+(0.5-(float(l9_8808)*0.5)),0.0);
}
else
{
l9_8809=float3(l9_8806,float(l9_8808));
}
}
float3 l9_8810=l9_8809;
float3 l9_8811=l9_8810;
float4 l9_8812=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_8811.xy,bias(l9_8805));
float4 l9_8813=l9_8812;
if (l9_8743)
{
l9_8813=mix(l9_8744,l9_8813,float4(l9_8747));
}
float4 l9_8814=l9_8813;
l9_8728=l9_8814;
float l9_8815=0.0;
float3 l9_8816=l9_8728.xyz;
float l9_8817=l9_8816.x;
l9_8815=l9_8817;
l9_8604=float4(l9_8815);
l9_8608=l9_8604;
}
l9_8601=l9_8608;
float4 l9_8818=float4(0.0);
l9_8818=l9_8599*l9_8601;
l9_8593=l9_8818;
l9_8598=l9_8593;
}
else
{
float4 l9_8819=float4(0.0);
float4 l9_8820=(*sc_set0.UserUniforms).colorId02;
l9_8819=l9_8820;
float4 l9_8821=float4(0.0);
float l9_8822=0.0;
float4 l9_8823=float4(0.0);
float4 l9_8824=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_8825=l9_8595;
float l9_8826=0.0;
float l9_8827=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_8826=l9_8827;
l9_8822=l9_8826;
float4 l9_8828;
if ((l9_8822*1.0)!=0.0)
{
float2 l9_8829=float2(0.0);
l9_8829=l9_8825.Surface_UVCoord0;
float4 l9_8830=float4(0.0);
int l9_8831;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_8832=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8832=0;
}
else
{
l9_8832=in.varStereoViewID;
}
int l9_8833=l9_8832;
l9_8831=1-l9_8833;
}
else
{
int l9_8834=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8834=0;
}
else
{
l9_8834=in.varStereoViewID;
}
int l9_8835=l9_8834;
l9_8831=l9_8835;
}
int l9_8836=l9_8831;
int l9_8837=greyMaskIdLayout_tmp;
int l9_8838=l9_8836;
float2 l9_8839=l9_8829;
bool l9_8840=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_8841=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_8842=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_8843=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_8844=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_8845=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_8846=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_8847=0.0;
bool l9_8848=l9_8845&&(!l9_8843);
float l9_8849=1.0;
float l9_8850=l9_8839.x;
int l9_8851=l9_8842.x;
if (l9_8851==1)
{
l9_8850=fract(l9_8850);
}
else
{
if (l9_8851==2)
{
float l9_8852=fract(l9_8850);
float l9_8853=l9_8850-l9_8852;
float l9_8854=step(0.25,fract(l9_8853*0.5));
l9_8850=mix(l9_8852,1.0-l9_8852,fast::clamp(l9_8854,0.0,1.0));
}
}
l9_8839.x=l9_8850;
float l9_8855=l9_8839.y;
int l9_8856=l9_8842.y;
if (l9_8856==1)
{
l9_8855=fract(l9_8855);
}
else
{
if (l9_8856==2)
{
float l9_8857=fract(l9_8855);
float l9_8858=l9_8855-l9_8857;
float l9_8859=step(0.25,fract(l9_8858*0.5));
l9_8855=mix(l9_8857,1.0-l9_8857,fast::clamp(l9_8859,0.0,1.0));
}
}
l9_8839.y=l9_8855;
if (l9_8843)
{
bool l9_8860=l9_8845;
bool l9_8861;
if (l9_8860)
{
l9_8861=l9_8842.x==3;
}
else
{
l9_8861=l9_8860;
}
float l9_8862=l9_8839.x;
float l9_8863=l9_8844.x;
float l9_8864=l9_8844.z;
bool l9_8865=l9_8861;
float l9_8866=l9_8849;
float l9_8867=fast::clamp(l9_8862,l9_8863,l9_8864);
float l9_8868=step(abs(l9_8862-l9_8867),9.9999997e-06);
l9_8866*=(l9_8868+((1.0-float(l9_8865))*(1.0-l9_8868)));
l9_8862=l9_8867;
l9_8839.x=l9_8862;
l9_8849=l9_8866;
bool l9_8869=l9_8845;
bool l9_8870;
if (l9_8869)
{
l9_8870=l9_8842.y==3;
}
else
{
l9_8870=l9_8869;
}
float l9_8871=l9_8839.y;
float l9_8872=l9_8844.y;
float l9_8873=l9_8844.w;
bool l9_8874=l9_8870;
float l9_8875=l9_8849;
float l9_8876=fast::clamp(l9_8871,l9_8872,l9_8873);
float l9_8877=step(abs(l9_8871-l9_8876),9.9999997e-06);
l9_8875*=(l9_8877+((1.0-float(l9_8874))*(1.0-l9_8877)));
l9_8871=l9_8876;
l9_8839.y=l9_8871;
l9_8849=l9_8875;
}
float2 l9_8878=l9_8839;
bool l9_8879=l9_8840;
float3x3 l9_8880=l9_8841;
if (l9_8879)
{
l9_8878=float2((l9_8880*float3(l9_8878,1.0)).xy);
}
float2 l9_8881=l9_8878;
l9_8839=l9_8881;
float l9_8882=l9_8839.x;
int l9_8883=l9_8842.x;
bool l9_8884=l9_8848;
float l9_8885=l9_8849;
if ((l9_8883==0)||(l9_8883==3))
{
float l9_8886=l9_8882;
float l9_8887=0.0;
float l9_8888=1.0;
bool l9_8889=l9_8884;
float l9_8890=l9_8885;
float l9_8891=fast::clamp(l9_8886,l9_8887,l9_8888);
float l9_8892=step(abs(l9_8886-l9_8891),9.9999997e-06);
l9_8890*=(l9_8892+((1.0-float(l9_8889))*(1.0-l9_8892)));
l9_8886=l9_8891;
l9_8882=l9_8886;
l9_8885=l9_8890;
}
l9_8839.x=l9_8882;
l9_8849=l9_8885;
float l9_8893=l9_8839.y;
int l9_8894=l9_8842.y;
bool l9_8895=l9_8848;
float l9_8896=l9_8849;
if ((l9_8894==0)||(l9_8894==3))
{
float l9_8897=l9_8893;
float l9_8898=0.0;
float l9_8899=1.0;
bool l9_8900=l9_8895;
float l9_8901=l9_8896;
float l9_8902=fast::clamp(l9_8897,l9_8898,l9_8899);
float l9_8903=step(abs(l9_8897-l9_8902),9.9999997e-06);
l9_8901*=(l9_8903+((1.0-float(l9_8900))*(1.0-l9_8903)));
l9_8897=l9_8902;
l9_8893=l9_8897;
l9_8896=l9_8901;
}
l9_8839.y=l9_8893;
l9_8849=l9_8896;
float2 l9_8904=l9_8839;
int l9_8905=l9_8837;
int l9_8906=l9_8838;
float l9_8907=l9_8847;
float2 l9_8908=l9_8904;
int l9_8909=l9_8905;
int l9_8910=l9_8906;
float3 l9_8911=float3(0.0);
if (l9_8909==0)
{
l9_8911=float3(l9_8908,0.0);
}
else
{
if (l9_8909==1)
{
l9_8911=float3(l9_8908.x,(l9_8908.y*0.5)+(0.5-(float(l9_8910)*0.5)),0.0);
}
else
{
l9_8911=float3(l9_8908,float(l9_8910));
}
}
float3 l9_8912=l9_8911;
float3 l9_8913=l9_8912;
float4 l9_8914=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_8913.xy,bias(l9_8907));
float4 l9_8915=l9_8914;
if (l9_8845)
{
l9_8915=mix(l9_8846,l9_8915,float4(l9_8849));
}
float4 l9_8916=l9_8915;
l9_8830=l9_8916;
float l9_8917=0.0;
l9_8917=l9_8830.x;
float l9_8918=0.0;
l9_8918=step(l9_8917,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_8919=0.0;
l9_8919=step(l9_8917,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_8920=0.0;
l9_8920=l9_8918-l9_8919;
l9_8823=float4(l9_8920);
l9_8828=l9_8823;
}
else
{
l9_8828=l9_8824;
}
l9_8821=l9_8828;
float4 l9_8921=float4(0.0);
l9_8921=l9_8819*l9_8821;
l9_8594=l9_8921;
l9_8598=l9_8594;
}
l9_8591=l9_8598;
float4 l9_8922=float4(0.0);
float l9_8923=0.0;
float4 l9_8924=float4(0.0);
float4 l9_8925=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_8926=l9_8577;
float l9_8927=0.0;
float l9_8928=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_8927=l9_8928;
l9_8923=l9_8927;
float4 l9_8929;
if ((l9_8923*1.0)!=0.0)
{
float2 l9_8930=float2(0.0);
l9_8930=l9_8926.Surface_UVCoord0;
float4 l9_8931=float4(0.0);
int l9_8932;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_8933=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8933=0;
}
else
{
l9_8933=in.varStereoViewID;
}
int l9_8934=l9_8933;
l9_8932=1-l9_8934;
}
else
{
int l9_8935=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8935=0;
}
else
{
l9_8935=in.varStereoViewID;
}
int l9_8936=l9_8935;
l9_8932=l9_8936;
}
int l9_8937=l9_8932;
int l9_8938=greyMaskIdLayout_tmp;
int l9_8939=l9_8937;
float2 l9_8940=l9_8930;
bool l9_8941=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_8942=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_8943=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_8944=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_8945=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_8946=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_8947=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_8948=0.0;
bool l9_8949=l9_8946&&(!l9_8944);
float l9_8950=1.0;
float l9_8951=l9_8940.x;
int l9_8952=l9_8943.x;
if (l9_8952==1)
{
l9_8951=fract(l9_8951);
}
else
{
if (l9_8952==2)
{
float l9_8953=fract(l9_8951);
float l9_8954=l9_8951-l9_8953;
float l9_8955=step(0.25,fract(l9_8954*0.5));
l9_8951=mix(l9_8953,1.0-l9_8953,fast::clamp(l9_8955,0.0,1.0));
}
}
l9_8940.x=l9_8951;
float l9_8956=l9_8940.y;
int l9_8957=l9_8943.y;
if (l9_8957==1)
{
l9_8956=fract(l9_8956);
}
else
{
if (l9_8957==2)
{
float l9_8958=fract(l9_8956);
float l9_8959=l9_8956-l9_8958;
float l9_8960=step(0.25,fract(l9_8959*0.5));
l9_8956=mix(l9_8958,1.0-l9_8958,fast::clamp(l9_8960,0.0,1.0));
}
}
l9_8940.y=l9_8956;
if (l9_8944)
{
bool l9_8961=l9_8946;
bool l9_8962;
if (l9_8961)
{
l9_8962=l9_8943.x==3;
}
else
{
l9_8962=l9_8961;
}
float l9_8963=l9_8940.x;
float l9_8964=l9_8945.x;
float l9_8965=l9_8945.z;
bool l9_8966=l9_8962;
float l9_8967=l9_8950;
float l9_8968=fast::clamp(l9_8963,l9_8964,l9_8965);
float l9_8969=step(abs(l9_8963-l9_8968),9.9999997e-06);
l9_8967*=(l9_8969+((1.0-float(l9_8966))*(1.0-l9_8969)));
l9_8963=l9_8968;
l9_8940.x=l9_8963;
l9_8950=l9_8967;
bool l9_8970=l9_8946;
bool l9_8971;
if (l9_8970)
{
l9_8971=l9_8943.y==3;
}
else
{
l9_8971=l9_8970;
}
float l9_8972=l9_8940.y;
float l9_8973=l9_8945.y;
float l9_8974=l9_8945.w;
bool l9_8975=l9_8971;
float l9_8976=l9_8950;
float l9_8977=fast::clamp(l9_8972,l9_8973,l9_8974);
float l9_8978=step(abs(l9_8972-l9_8977),9.9999997e-06);
l9_8976*=(l9_8978+((1.0-float(l9_8975))*(1.0-l9_8978)));
l9_8972=l9_8977;
l9_8940.y=l9_8972;
l9_8950=l9_8976;
}
float2 l9_8979=l9_8940;
bool l9_8980=l9_8941;
float3x3 l9_8981=l9_8942;
if (l9_8980)
{
l9_8979=float2((l9_8981*float3(l9_8979,1.0)).xy);
}
float2 l9_8982=l9_8979;
l9_8940=l9_8982;
float l9_8983=l9_8940.x;
int l9_8984=l9_8943.x;
bool l9_8985=l9_8949;
float l9_8986=l9_8950;
if ((l9_8984==0)||(l9_8984==3))
{
float l9_8987=l9_8983;
float l9_8988=0.0;
float l9_8989=1.0;
bool l9_8990=l9_8985;
float l9_8991=l9_8986;
float l9_8992=fast::clamp(l9_8987,l9_8988,l9_8989);
float l9_8993=step(abs(l9_8987-l9_8992),9.9999997e-06);
l9_8991*=(l9_8993+((1.0-float(l9_8990))*(1.0-l9_8993)));
l9_8987=l9_8992;
l9_8983=l9_8987;
l9_8986=l9_8991;
}
l9_8940.x=l9_8983;
l9_8950=l9_8986;
float l9_8994=l9_8940.y;
int l9_8995=l9_8943.y;
bool l9_8996=l9_8949;
float l9_8997=l9_8950;
if ((l9_8995==0)||(l9_8995==3))
{
float l9_8998=l9_8994;
float l9_8999=0.0;
float l9_9000=1.0;
bool l9_9001=l9_8996;
float l9_9002=l9_8997;
float l9_9003=fast::clamp(l9_8998,l9_8999,l9_9000);
float l9_9004=step(abs(l9_8998-l9_9003),9.9999997e-06);
l9_9002*=(l9_9004+((1.0-float(l9_9001))*(1.0-l9_9004)));
l9_8998=l9_9003;
l9_8994=l9_8998;
l9_8997=l9_9002;
}
l9_8940.y=l9_8994;
l9_8950=l9_8997;
float2 l9_9005=l9_8940;
int l9_9006=l9_8938;
int l9_9007=l9_8939;
float l9_9008=l9_8948;
float2 l9_9009=l9_9005;
int l9_9010=l9_9006;
int l9_9011=l9_9007;
float3 l9_9012=float3(0.0);
if (l9_9010==0)
{
l9_9012=float3(l9_9009,0.0);
}
else
{
if (l9_9010==1)
{
l9_9012=float3(l9_9009.x,(l9_9009.y*0.5)+(0.5-(float(l9_9011)*0.5)),0.0);
}
else
{
l9_9012=float3(l9_9009,float(l9_9011));
}
}
float3 l9_9013=l9_9012;
float3 l9_9014=l9_9013;
float4 l9_9015=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_9014.xy,bias(l9_9008));
float4 l9_9016=l9_9015;
if (l9_8946)
{
l9_9016=mix(l9_8947,l9_9016,float4(l9_8950));
}
float4 l9_9017=l9_9016;
l9_8931=l9_9017;
float l9_9018=0.0;
l9_9018=l9_8931.x;
float l9_9019=0.0;
l9_9019=step(l9_9018,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_9020=0.0;
l9_9020=step(l9_9018,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_9021=0.0;
l9_9021=l9_9019-l9_9020;
l9_8924=float4(l9_9021);
l9_8929=l9_8924;
}
else
{
l9_8929=l9_8925;
}
l9_8922=l9_8929;
float4 l9_9022=float4(0.0);
l9_9022=l9_8591*l9_8922;
float4 l9_9023=float4(0.0);
float4 l9_9024=(*sc_set0.UserUniforms).colorId02;
l9_9023=l9_9024;
float4 l9_9025=float4(0.0);
l9_9025=l9_9023*l9_8922;
float4 l9_9026=float4(0.0);
float4 l9_9027=l9_9022;
float4 l9_9028=l9_9025;
float4 l9_9029=l9_9027;
float4 l9_9030=l9_9028;
float3 l9_9031=l9_9029.xyz*l9_9029.w;
l9_9029=float4(l9_9031.x,l9_9031.y,l9_9031.z,l9_9029.w);
float4 l9_9032=l9_9029+(l9_9030*(1.0-l9_9029.w));
l9_9026=l9_9032;
float4 l9_9033=float4(0.0);
l9_9033=float4(l9_8585)*l9_9026;
float4 l9_9034=float4(0.0);
l9_9034=l9_9033+l9_9026;
l9_8575=l9_9034;
l9_8580=l9_8575;
}
else
{
float4 l9_9035=float4(0.0);
float l9_9036=0.0;
float4 l9_9037=float4(0.0);
float4 l9_9038=float4(0.0);
ssGlobals l9_9039=l9_8577;
float l9_9040=0.0;
float l9_9041=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_9040=l9_9041;
l9_9036=l9_9040;
float4 l9_9042;
if ((l9_9036*1.0)!=0.0)
{
float4 l9_9043=float4(0.0);
float4 l9_9044=(*sc_set0.UserUniforms).patternColorId02;
l9_9043=l9_9044;
float4 l9_9045=float4(0.0);
float l9_9046=0.0;
float4 l9_9047=float4(0.0);
float4 l9_9048=float4(0.0);
ssGlobals l9_9049=l9_9039;
float l9_9050=0.0;
float l9_9051=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_9050=l9_9051;
l9_9046=l9_9050;
float4 l9_9052;
if ((l9_9046*1.0)!=0.0)
{
float2 l9_9053=float2(0.0);
l9_9053=l9_9049.Surface_UVCoord0;
float2 l9_9054=float2(0.0);
float2 l9_9055=(*sc_set0.UserUniforms).patternScaleId02;
l9_9054=l9_9055;
float2 l9_9056=float2(0.0);
l9_9056=((l9_9053-(*sc_set0.UserUniforms).Port_Center_N282)*l9_9054)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_9057=float2(0.0);
float2 l9_9058=(*sc_set0.UserUniforms).patternOffsetId02;
l9_9057=l9_9058;
float2 l9_9059=float2(0.0);
l9_9059=l9_9056+l9_9057;
float l9_9060=0.0;
float l9_9061=(*sc_set0.UserUniforms).patternRotateId02;
l9_9060=l9_9061;
float2 l9_9062=float2(0.0);
float2 l9_9063=l9_9059;
float l9_9064=l9_9060;
float2 l9_9065=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_9066=sin(radians(l9_9064));
float l9_9067=cos(radians(l9_9064));
float2 l9_9068=l9_9063-l9_9065;
l9_9068=float2(dot(float2(l9_9067,l9_9066),l9_9068),dot(float2(-l9_9066,l9_9067),l9_9068))+l9_9065;
l9_9062=l9_9068;
float4 l9_9069=float4(0.0);
int l9_9070;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_9071=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9071=0;
}
else
{
l9_9071=in.varStereoViewID;
}
int l9_9072=l9_9071;
l9_9070=1-l9_9072;
}
else
{
int l9_9073=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9073=0;
}
else
{
l9_9073=in.varStereoViewID;
}
int l9_9074=l9_9073;
l9_9070=l9_9074;
}
int l9_9075=l9_9070;
int l9_9076=patternTextureId02Layout_tmp;
int l9_9077=l9_9075;
float2 l9_9078=l9_9062;
bool l9_9079=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_9080=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_9081=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_9082=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_9083=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_9084=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_9085=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_9086=0.0;
bool l9_9087=l9_9084&&(!l9_9082);
float l9_9088=1.0;
float l9_9089=l9_9078.x;
int l9_9090=l9_9081.x;
if (l9_9090==1)
{
l9_9089=fract(l9_9089);
}
else
{
if (l9_9090==2)
{
float l9_9091=fract(l9_9089);
float l9_9092=l9_9089-l9_9091;
float l9_9093=step(0.25,fract(l9_9092*0.5));
l9_9089=mix(l9_9091,1.0-l9_9091,fast::clamp(l9_9093,0.0,1.0));
}
}
l9_9078.x=l9_9089;
float l9_9094=l9_9078.y;
int l9_9095=l9_9081.y;
if (l9_9095==1)
{
l9_9094=fract(l9_9094);
}
else
{
if (l9_9095==2)
{
float l9_9096=fract(l9_9094);
float l9_9097=l9_9094-l9_9096;
float l9_9098=step(0.25,fract(l9_9097*0.5));
l9_9094=mix(l9_9096,1.0-l9_9096,fast::clamp(l9_9098,0.0,1.0));
}
}
l9_9078.y=l9_9094;
if (l9_9082)
{
bool l9_9099=l9_9084;
bool l9_9100;
if (l9_9099)
{
l9_9100=l9_9081.x==3;
}
else
{
l9_9100=l9_9099;
}
float l9_9101=l9_9078.x;
float l9_9102=l9_9083.x;
float l9_9103=l9_9083.z;
bool l9_9104=l9_9100;
float l9_9105=l9_9088;
float l9_9106=fast::clamp(l9_9101,l9_9102,l9_9103);
float l9_9107=step(abs(l9_9101-l9_9106),9.9999997e-06);
l9_9105*=(l9_9107+((1.0-float(l9_9104))*(1.0-l9_9107)));
l9_9101=l9_9106;
l9_9078.x=l9_9101;
l9_9088=l9_9105;
bool l9_9108=l9_9084;
bool l9_9109;
if (l9_9108)
{
l9_9109=l9_9081.y==3;
}
else
{
l9_9109=l9_9108;
}
float l9_9110=l9_9078.y;
float l9_9111=l9_9083.y;
float l9_9112=l9_9083.w;
bool l9_9113=l9_9109;
float l9_9114=l9_9088;
float l9_9115=fast::clamp(l9_9110,l9_9111,l9_9112);
float l9_9116=step(abs(l9_9110-l9_9115),9.9999997e-06);
l9_9114*=(l9_9116+((1.0-float(l9_9113))*(1.0-l9_9116)));
l9_9110=l9_9115;
l9_9078.y=l9_9110;
l9_9088=l9_9114;
}
float2 l9_9117=l9_9078;
bool l9_9118=l9_9079;
float3x3 l9_9119=l9_9080;
if (l9_9118)
{
l9_9117=float2((l9_9119*float3(l9_9117,1.0)).xy);
}
float2 l9_9120=l9_9117;
l9_9078=l9_9120;
float l9_9121=l9_9078.x;
int l9_9122=l9_9081.x;
bool l9_9123=l9_9087;
float l9_9124=l9_9088;
if ((l9_9122==0)||(l9_9122==3))
{
float l9_9125=l9_9121;
float l9_9126=0.0;
float l9_9127=1.0;
bool l9_9128=l9_9123;
float l9_9129=l9_9124;
float l9_9130=fast::clamp(l9_9125,l9_9126,l9_9127);
float l9_9131=step(abs(l9_9125-l9_9130),9.9999997e-06);
l9_9129*=(l9_9131+((1.0-float(l9_9128))*(1.0-l9_9131)));
l9_9125=l9_9130;
l9_9121=l9_9125;
l9_9124=l9_9129;
}
l9_9078.x=l9_9121;
l9_9088=l9_9124;
float l9_9132=l9_9078.y;
int l9_9133=l9_9081.y;
bool l9_9134=l9_9087;
float l9_9135=l9_9088;
if ((l9_9133==0)||(l9_9133==3))
{
float l9_9136=l9_9132;
float l9_9137=0.0;
float l9_9138=1.0;
bool l9_9139=l9_9134;
float l9_9140=l9_9135;
float l9_9141=fast::clamp(l9_9136,l9_9137,l9_9138);
float l9_9142=step(abs(l9_9136-l9_9141),9.9999997e-06);
l9_9140*=(l9_9142+((1.0-float(l9_9139))*(1.0-l9_9142)));
l9_9136=l9_9141;
l9_9132=l9_9136;
l9_9135=l9_9140;
}
l9_9078.y=l9_9132;
l9_9088=l9_9135;
float2 l9_9143=l9_9078;
int l9_9144=l9_9076;
int l9_9145=l9_9077;
float l9_9146=l9_9086;
float2 l9_9147=l9_9143;
int l9_9148=l9_9144;
int l9_9149=l9_9145;
float3 l9_9150=float3(0.0);
if (l9_9148==0)
{
l9_9150=float3(l9_9147,0.0);
}
else
{
if (l9_9148==1)
{
l9_9150=float3(l9_9147.x,(l9_9147.y*0.5)+(0.5-(float(l9_9149)*0.5)),0.0);
}
else
{
l9_9150=float3(l9_9147,float(l9_9149));
}
}
float3 l9_9151=l9_9150;
float3 l9_9152=l9_9151;
float4 l9_9153=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_9152.xy,bias(l9_9146));
float4 l9_9154=l9_9153;
if (l9_9084)
{
l9_9154=mix(l9_9085,l9_9154,float4(l9_9088));
}
float4 l9_9155=l9_9154;
l9_9069=l9_9155;
l9_9047=l9_9069;
l9_9052=l9_9047;
}
else
{
float2 l9_9156=float2(0.0);
l9_9156=l9_9049.Surface_UVCoord0;
float2 l9_9157=float2(0.0);
float2 l9_9158=(*sc_set0.UserUniforms).patternScaleId02;
l9_9157=l9_9158;
float2 l9_9159=float2(0.0);
l9_9159=((l9_9156-(*sc_set0.UserUniforms).Port_Center_N282)*l9_9157)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_9160=float2(0.0);
float2 l9_9161=(*sc_set0.UserUniforms).patternOffsetId02;
l9_9160=l9_9161;
float2 l9_9162=float2(0.0);
l9_9162=l9_9159+l9_9160;
float l9_9163=0.0;
float l9_9164=(*sc_set0.UserUniforms).patternRotateId02;
l9_9163=l9_9164;
float2 l9_9165=float2(0.0);
float2 l9_9166=l9_9162;
float l9_9167=l9_9163;
float2 l9_9168=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_9169=sin(radians(l9_9167));
float l9_9170=cos(radians(l9_9167));
float2 l9_9171=l9_9166-l9_9168;
l9_9171=float2(dot(float2(l9_9170,l9_9169),l9_9171),dot(float2(-l9_9169,l9_9170),l9_9171))+l9_9168;
l9_9165=l9_9171;
float4 l9_9172=float4(0.0);
int l9_9173;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
{
int l9_9174=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9174=0;
}
else
{
l9_9174=in.varStereoViewID;
}
int l9_9175=l9_9174;
l9_9173=1-l9_9175;
}
else
{
int l9_9176=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9176=0;
}
else
{
l9_9176=in.varStereoViewID;
}
int l9_9177=l9_9176;
l9_9173=l9_9177;
}
int l9_9178=l9_9173;
int l9_9179=patternTextureId02Layout_tmp;
int l9_9180=l9_9178;
float2 l9_9181=l9_9165;
bool l9_9182=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_9183=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_9184=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_9185=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_9186=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_9187=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_9188=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
float l9_9189=0.0;
bool l9_9190=l9_9187&&(!l9_9185);
float l9_9191=1.0;
float l9_9192=l9_9181.x;
int l9_9193=l9_9184.x;
if (l9_9193==1)
{
l9_9192=fract(l9_9192);
}
else
{
if (l9_9193==2)
{
float l9_9194=fract(l9_9192);
float l9_9195=l9_9192-l9_9194;
float l9_9196=step(0.25,fract(l9_9195*0.5));
l9_9192=mix(l9_9194,1.0-l9_9194,fast::clamp(l9_9196,0.0,1.0));
}
}
l9_9181.x=l9_9192;
float l9_9197=l9_9181.y;
int l9_9198=l9_9184.y;
if (l9_9198==1)
{
l9_9197=fract(l9_9197);
}
else
{
if (l9_9198==2)
{
float l9_9199=fract(l9_9197);
float l9_9200=l9_9197-l9_9199;
float l9_9201=step(0.25,fract(l9_9200*0.5));
l9_9197=mix(l9_9199,1.0-l9_9199,fast::clamp(l9_9201,0.0,1.0));
}
}
l9_9181.y=l9_9197;
if (l9_9185)
{
bool l9_9202=l9_9187;
bool l9_9203;
if (l9_9202)
{
l9_9203=l9_9184.x==3;
}
else
{
l9_9203=l9_9202;
}
float l9_9204=l9_9181.x;
float l9_9205=l9_9186.x;
float l9_9206=l9_9186.z;
bool l9_9207=l9_9203;
float l9_9208=l9_9191;
float l9_9209=fast::clamp(l9_9204,l9_9205,l9_9206);
float l9_9210=step(abs(l9_9204-l9_9209),9.9999997e-06);
l9_9208*=(l9_9210+((1.0-float(l9_9207))*(1.0-l9_9210)));
l9_9204=l9_9209;
l9_9181.x=l9_9204;
l9_9191=l9_9208;
bool l9_9211=l9_9187;
bool l9_9212;
if (l9_9211)
{
l9_9212=l9_9184.y==3;
}
else
{
l9_9212=l9_9211;
}
float l9_9213=l9_9181.y;
float l9_9214=l9_9186.y;
float l9_9215=l9_9186.w;
bool l9_9216=l9_9212;
float l9_9217=l9_9191;
float l9_9218=fast::clamp(l9_9213,l9_9214,l9_9215);
float l9_9219=step(abs(l9_9213-l9_9218),9.9999997e-06);
l9_9217*=(l9_9219+((1.0-float(l9_9216))*(1.0-l9_9219)));
l9_9213=l9_9218;
l9_9181.y=l9_9213;
l9_9191=l9_9217;
}
float2 l9_9220=l9_9181;
bool l9_9221=l9_9182;
float3x3 l9_9222=l9_9183;
if (l9_9221)
{
l9_9220=float2((l9_9222*float3(l9_9220,1.0)).xy);
}
float2 l9_9223=l9_9220;
l9_9181=l9_9223;
float l9_9224=l9_9181.x;
int l9_9225=l9_9184.x;
bool l9_9226=l9_9190;
float l9_9227=l9_9191;
if ((l9_9225==0)||(l9_9225==3))
{
float l9_9228=l9_9224;
float l9_9229=0.0;
float l9_9230=1.0;
bool l9_9231=l9_9226;
float l9_9232=l9_9227;
float l9_9233=fast::clamp(l9_9228,l9_9229,l9_9230);
float l9_9234=step(abs(l9_9228-l9_9233),9.9999997e-06);
l9_9232*=(l9_9234+((1.0-float(l9_9231))*(1.0-l9_9234)));
l9_9228=l9_9233;
l9_9224=l9_9228;
l9_9227=l9_9232;
}
l9_9181.x=l9_9224;
l9_9191=l9_9227;
float l9_9235=l9_9181.y;
int l9_9236=l9_9184.y;
bool l9_9237=l9_9190;
float l9_9238=l9_9191;
if ((l9_9236==0)||(l9_9236==3))
{
float l9_9239=l9_9235;
float l9_9240=0.0;
float l9_9241=1.0;
bool l9_9242=l9_9237;
float l9_9243=l9_9238;
float l9_9244=fast::clamp(l9_9239,l9_9240,l9_9241);
float l9_9245=step(abs(l9_9239-l9_9244),9.9999997e-06);
l9_9243*=(l9_9245+((1.0-float(l9_9242))*(1.0-l9_9245)));
l9_9239=l9_9244;
l9_9235=l9_9239;
l9_9238=l9_9243;
}
l9_9181.y=l9_9235;
l9_9191=l9_9238;
float2 l9_9246=l9_9181;
int l9_9247=l9_9179;
int l9_9248=l9_9180;
float l9_9249=l9_9189;
float2 l9_9250=l9_9246;
int l9_9251=l9_9247;
int l9_9252=l9_9248;
float3 l9_9253=float3(0.0);
if (l9_9251==0)
{
l9_9253=float3(l9_9250,0.0);
}
else
{
if (l9_9251==1)
{
l9_9253=float3(l9_9250.x,(l9_9250.y*0.5)+(0.5-(float(l9_9252)*0.5)),0.0);
}
else
{
l9_9253=float3(l9_9250,float(l9_9252));
}
}
float3 l9_9254=l9_9253;
float3 l9_9255=l9_9254;
float4 l9_9256=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_9255.xy,bias(l9_9249));
float4 l9_9257=l9_9256;
if (l9_9187)
{
l9_9257=mix(l9_9188,l9_9257,float4(l9_9191));
}
float4 l9_9258=l9_9257;
l9_9172=l9_9258;
float l9_9259=0.0;
float3 l9_9260=l9_9172.xyz;
float l9_9261=l9_9260.x;
l9_9259=l9_9261;
l9_9048=float4(l9_9259);
l9_9052=l9_9048;
}
l9_9045=l9_9052;
float4 l9_9262=float4(0.0);
l9_9262=l9_9043*l9_9045;
l9_9037=l9_9262;
l9_9042=l9_9037;
}
else
{
float4 l9_9263=float4(0.0);
float4 l9_9264=(*sc_set0.UserUniforms).colorId02;
l9_9263=l9_9264;
float4 l9_9265=float4(0.0);
float l9_9266=0.0;
float4 l9_9267=float4(0.0);
float4 l9_9268=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_9269=l9_9039;
float l9_9270=0.0;
float l9_9271=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_9270=l9_9271;
l9_9266=l9_9270;
float4 l9_9272;
if ((l9_9266*1.0)!=0.0)
{
float2 l9_9273=float2(0.0);
l9_9273=l9_9269.Surface_UVCoord0;
float4 l9_9274=float4(0.0);
int l9_9275;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_9276=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9276=0;
}
else
{
l9_9276=in.varStereoViewID;
}
int l9_9277=l9_9276;
l9_9275=1-l9_9277;
}
else
{
int l9_9278=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9278=0;
}
else
{
l9_9278=in.varStereoViewID;
}
int l9_9279=l9_9278;
l9_9275=l9_9279;
}
int l9_9280=l9_9275;
int l9_9281=greyMaskIdLayout_tmp;
int l9_9282=l9_9280;
float2 l9_9283=l9_9273;
bool l9_9284=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_9285=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_9286=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_9287=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_9288=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_9289=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_9290=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_9291=0.0;
bool l9_9292=l9_9289&&(!l9_9287);
float l9_9293=1.0;
float l9_9294=l9_9283.x;
int l9_9295=l9_9286.x;
if (l9_9295==1)
{
l9_9294=fract(l9_9294);
}
else
{
if (l9_9295==2)
{
float l9_9296=fract(l9_9294);
float l9_9297=l9_9294-l9_9296;
float l9_9298=step(0.25,fract(l9_9297*0.5));
l9_9294=mix(l9_9296,1.0-l9_9296,fast::clamp(l9_9298,0.0,1.0));
}
}
l9_9283.x=l9_9294;
float l9_9299=l9_9283.y;
int l9_9300=l9_9286.y;
if (l9_9300==1)
{
l9_9299=fract(l9_9299);
}
else
{
if (l9_9300==2)
{
float l9_9301=fract(l9_9299);
float l9_9302=l9_9299-l9_9301;
float l9_9303=step(0.25,fract(l9_9302*0.5));
l9_9299=mix(l9_9301,1.0-l9_9301,fast::clamp(l9_9303,0.0,1.0));
}
}
l9_9283.y=l9_9299;
if (l9_9287)
{
bool l9_9304=l9_9289;
bool l9_9305;
if (l9_9304)
{
l9_9305=l9_9286.x==3;
}
else
{
l9_9305=l9_9304;
}
float l9_9306=l9_9283.x;
float l9_9307=l9_9288.x;
float l9_9308=l9_9288.z;
bool l9_9309=l9_9305;
float l9_9310=l9_9293;
float l9_9311=fast::clamp(l9_9306,l9_9307,l9_9308);
float l9_9312=step(abs(l9_9306-l9_9311),9.9999997e-06);
l9_9310*=(l9_9312+((1.0-float(l9_9309))*(1.0-l9_9312)));
l9_9306=l9_9311;
l9_9283.x=l9_9306;
l9_9293=l9_9310;
bool l9_9313=l9_9289;
bool l9_9314;
if (l9_9313)
{
l9_9314=l9_9286.y==3;
}
else
{
l9_9314=l9_9313;
}
float l9_9315=l9_9283.y;
float l9_9316=l9_9288.y;
float l9_9317=l9_9288.w;
bool l9_9318=l9_9314;
float l9_9319=l9_9293;
float l9_9320=fast::clamp(l9_9315,l9_9316,l9_9317);
float l9_9321=step(abs(l9_9315-l9_9320),9.9999997e-06);
l9_9319*=(l9_9321+((1.0-float(l9_9318))*(1.0-l9_9321)));
l9_9315=l9_9320;
l9_9283.y=l9_9315;
l9_9293=l9_9319;
}
float2 l9_9322=l9_9283;
bool l9_9323=l9_9284;
float3x3 l9_9324=l9_9285;
if (l9_9323)
{
l9_9322=float2((l9_9324*float3(l9_9322,1.0)).xy);
}
float2 l9_9325=l9_9322;
l9_9283=l9_9325;
float l9_9326=l9_9283.x;
int l9_9327=l9_9286.x;
bool l9_9328=l9_9292;
float l9_9329=l9_9293;
if ((l9_9327==0)||(l9_9327==3))
{
float l9_9330=l9_9326;
float l9_9331=0.0;
float l9_9332=1.0;
bool l9_9333=l9_9328;
float l9_9334=l9_9329;
float l9_9335=fast::clamp(l9_9330,l9_9331,l9_9332);
float l9_9336=step(abs(l9_9330-l9_9335),9.9999997e-06);
l9_9334*=(l9_9336+((1.0-float(l9_9333))*(1.0-l9_9336)));
l9_9330=l9_9335;
l9_9326=l9_9330;
l9_9329=l9_9334;
}
l9_9283.x=l9_9326;
l9_9293=l9_9329;
float l9_9337=l9_9283.y;
int l9_9338=l9_9286.y;
bool l9_9339=l9_9292;
float l9_9340=l9_9293;
if ((l9_9338==0)||(l9_9338==3))
{
float l9_9341=l9_9337;
float l9_9342=0.0;
float l9_9343=1.0;
bool l9_9344=l9_9339;
float l9_9345=l9_9340;
float l9_9346=fast::clamp(l9_9341,l9_9342,l9_9343);
float l9_9347=step(abs(l9_9341-l9_9346),9.9999997e-06);
l9_9345*=(l9_9347+((1.0-float(l9_9344))*(1.0-l9_9347)));
l9_9341=l9_9346;
l9_9337=l9_9341;
l9_9340=l9_9345;
}
l9_9283.y=l9_9337;
l9_9293=l9_9340;
float2 l9_9348=l9_9283;
int l9_9349=l9_9281;
int l9_9350=l9_9282;
float l9_9351=l9_9291;
float2 l9_9352=l9_9348;
int l9_9353=l9_9349;
int l9_9354=l9_9350;
float3 l9_9355=float3(0.0);
if (l9_9353==0)
{
l9_9355=float3(l9_9352,0.0);
}
else
{
if (l9_9353==1)
{
l9_9355=float3(l9_9352.x,(l9_9352.y*0.5)+(0.5-(float(l9_9354)*0.5)),0.0);
}
else
{
l9_9355=float3(l9_9352,float(l9_9354));
}
}
float3 l9_9356=l9_9355;
float3 l9_9357=l9_9356;
float4 l9_9358=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_9357.xy,bias(l9_9351));
float4 l9_9359=l9_9358;
if (l9_9289)
{
l9_9359=mix(l9_9290,l9_9359,float4(l9_9293));
}
float4 l9_9360=l9_9359;
l9_9274=l9_9360;
float l9_9361=0.0;
l9_9361=l9_9274.x;
float l9_9362=0.0;
l9_9362=step(l9_9361,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_9363=0.0;
l9_9363=step(l9_9361,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_9364=0.0;
l9_9364=l9_9362-l9_9363;
l9_9267=float4(l9_9364);
l9_9272=l9_9267;
}
else
{
l9_9272=l9_9268;
}
l9_9265=l9_9272;
float4 l9_9365=float4(0.0);
l9_9365=l9_9263*l9_9265;
l9_9038=l9_9365;
l9_9042=l9_9038;
}
l9_9035=l9_9042;
float4 l9_9366=float4(0.0);
float l9_9367=0.0;
float4 l9_9368=float4(0.0);
float4 l9_9369=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_9370=l9_8577;
float l9_9371=0.0;
float l9_9372=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_9371=l9_9372;
l9_9367=l9_9371;
float4 l9_9373;
if ((l9_9367*1.0)!=0.0)
{
float2 l9_9374=float2(0.0);
l9_9374=l9_9370.Surface_UVCoord0;
float4 l9_9375=float4(0.0);
int l9_9376;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_9377=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9377=0;
}
else
{
l9_9377=in.varStereoViewID;
}
int l9_9378=l9_9377;
l9_9376=1-l9_9378;
}
else
{
int l9_9379=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9379=0;
}
else
{
l9_9379=in.varStereoViewID;
}
int l9_9380=l9_9379;
l9_9376=l9_9380;
}
int l9_9381=l9_9376;
int l9_9382=greyMaskIdLayout_tmp;
int l9_9383=l9_9381;
float2 l9_9384=l9_9374;
bool l9_9385=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_9386=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_9387=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_9388=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_9389=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_9390=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_9391=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_9392=0.0;
bool l9_9393=l9_9390&&(!l9_9388);
float l9_9394=1.0;
float l9_9395=l9_9384.x;
int l9_9396=l9_9387.x;
if (l9_9396==1)
{
l9_9395=fract(l9_9395);
}
else
{
if (l9_9396==2)
{
float l9_9397=fract(l9_9395);
float l9_9398=l9_9395-l9_9397;
float l9_9399=step(0.25,fract(l9_9398*0.5));
l9_9395=mix(l9_9397,1.0-l9_9397,fast::clamp(l9_9399,0.0,1.0));
}
}
l9_9384.x=l9_9395;
float l9_9400=l9_9384.y;
int l9_9401=l9_9387.y;
if (l9_9401==1)
{
l9_9400=fract(l9_9400);
}
else
{
if (l9_9401==2)
{
float l9_9402=fract(l9_9400);
float l9_9403=l9_9400-l9_9402;
float l9_9404=step(0.25,fract(l9_9403*0.5));
l9_9400=mix(l9_9402,1.0-l9_9402,fast::clamp(l9_9404,0.0,1.0));
}
}
l9_9384.y=l9_9400;
if (l9_9388)
{
bool l9_9405=l9_9390;
bool l9_9406;
if (l9_9405)
{
l9_9406=l9_9387.x==3;
}
else
{
l9_9406=l9_9405;
}
float l9_9407=l9_9384.x;
float l9_9408=l9_9389.x;
float l9_9409=l9_9389.z;
bool l9_9410=l9_9406;
float l9_9411=l9_9394;
float l9_9412=fast::clamp(l9_9407,l9_9408,l9_9409);
float l9_9413=step(abs(l9_9407-l9_9412),9.9999997e-06);
l9_9411*=(l9_9413+((1.0-float(l9_9410))*(1.0-l9_9413)));
l9_9407=l9_9412;
l9_9384.x=l9_9407;
l9_9394=l9_9411;
bool l9_9414=l9_9390;
bool l9_9415;
if (l9_9414)
{
l9_9415=l9_9387.y==3;
}
else
{
l9_9415=l9_9414;
}
float l9_9416=l9_9384.y;
float l9_9417=l9_9389.y;
float l9_9418=l9_9389.w;
bool l9_9419=l9_9415;
float l9_9420=l9_9394;
float l9_9421=fast::clamp(l9_9416,l9_9417,l9_9418);
float l9_9422=step(abs(l9_9416-l9_9421),9.9999997e-06);
l9_9420*=(l9_9422+((1.0-float(l9_9419))*(1.0-l9_9422)));
l9_9416=l9_9421;
l9_9384.y=l9_9416;
l9_9394=l9_9420;
}
float2 l9_9423=l9_9384;
bool l9_9424=l9_9385;
float3x3 l9_9425=l9_9386;
if (l9_9424)
{
l9_9423=float2((l9_9425*float3(l9_9423,1.0)).xy);
}
float2 l9_9426=l9_9423;
l9_9384=l9_9426;
float l9_9427=l9_9384.x;
int l9_9428=l9_9387.x;
bool l9_9429=l9_9393;
float l9_9430=l9_9394;
if ((l9_9428==0)||(l9_9428==3))
{
float l9_9431=l9_9427;
float l9_9432=0.0;
float l9_9433=1.0;
bool l9_9434=l9_9429;
float l9_9435=l9_9430;
float l9_9436=fast::clamp(l9_9431,l9_9432,l9_9433);
float l9_9437=step(abs(l9_9431-l9_9436),9.9999997e-06);
l9_9435*=(l9_9437+((1.0-float(l9_9434))*(1.0-l9_9437)));
l9_9431=l9_9436;
l9_9427=l9_9431;
l9_9430=l9_9435;
}
l9_9384.x=l9_9427;
l9_9394=l9_9430;
float l9_9438=l9_9384.y;
int l9_9439=l9_9387.y;
bool l9_9440=l9_9393;
float l9_9441=l9_9394;
if ((l9_9439==0)||(l9_9439==3))
{
float l9_9442=l9_9438;
float l9_9443=0.0;
float l9_9444=1.0;
bool l9_9445=l9_9440;
float l9_9446=l9_9441;
float l9_9447=fast::clamp(l9_9442,l9_9443,l9_9444);
float l9_9448=step(abs(l9_9442-l9_9447),9.9999997e-06);
l9_9446*=(l9_9448+((1.0-float(l9_9445))*(1.0-l9_9448)));
l9_9442=l9_9447;
l9_9438=l9_9442;
l9_9441=l9_9446;
}
l9_9384.y=l9_9438;
l9_9394=l9_9441;
float2 l9_9449=l9_9384;
int l9_9450=l9_9382;
int l9_9451=l9_9383;
float l9_9452=l9_9392;
float2 l9_9453=l9_9449;
int l9_9454=l9_9450;
int l9_9455=l9_9451;
float3 l9_9456=float3(0.0);
if (l9_9454==0)
{
l9_9456=float3(l9_9453,0.0);
}
else
{
if (l9_9454==1)
{
l9_9456=float3(l9_9453.x,(l9_9453.y*0.5)+(0.5-(float(l9_9455)*0.5)),0.0);
}
else
{
l9_9456=float3(l9_9453,float(l9_9455));
}
}
float3 l9_9457=l9_9456;
float3 l9_9458=l9_9457;
float4 l9_9459=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_9458.xy,bias(l9_9452));
float4 l9_9460=l9_9459;
if (l9_9390)
{
l9_9460=mix(l9_9391,l9_9460,float4(l9_9394));
}
float4 l9_9461=l9_9460;
l9_9375=l9_9461;
float l9_9462=0.0;
l9_9462=l9_9375.x;
float l9_9463=0.0;
l9_9463=step(l9_9462,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_9464=0.0;
l9_9464=step(l9_9462,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_9465=0.0;
l9_9465=l9_9463-l9_9464;
l9_9368=float4(l9_9465);
l9_9373=l9_9368;
}
else
{
l9_9373=l9_9369;
}
l9_9366=l9_9373;
float4 l9_9466=float4(0.0);
l9_9466=l9_9035*l9_9366;
float4 l9_9467=float4(0.0);
float4 l9_9468=(*sc_set0.UserUniforms).colorId02;
l9_9467=l9_9468;
float4 l9_9469=float4(0.0);
l9_9469=l9_9467*l9_9366;
float4 l9_9470=float4(0.0);
float4 l9_9471=l9_9466;
float4 l9_9472=l9_9469;
float4 l9_9473=l9_9471;
float4 l9_9474=l9_9472;
float3 l9_9475=l9_9473.xyz*l9_9473.w;
l9_9473=float4(l9_9475.x,l9_9475.y,l9_9475.z,l9_9473.w);
float4 l9_9476=l9_9473+(l9_9474*(1.0-l9_9473.w));
l9_9470=l9_9476;
l9_8576=l9_9470;
l9_8580=l9_8576;
}
l9_8573=l9_8580;
l9_7636=l9_8573;
l9_7640=l9_7636;
}
l9_7633=l9_7640;
float4 l9_9477=float4(0.0);
float l9_9478=0.0;
float4 l9_9479=float4(0.0);
float4 l9_9480=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_9481=l9_7629;
float l9_9482=0.0;
float l9_9483=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_9482=l9_9483;
l9_9478=l9_9482;
float4 l9_9484;
if ((l9_9478*1.0)!=0.0)
{
float2 l9_9485=float2(0.0);
l9_9485=l9_9481.Surface_UVCoord0;
float4 l9_9486=float4(0.0);
int l9_9487;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_9488=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9488=0;
}
else
{
l9_9488=in.varStereoViewID;
}
int l9_9489=l9_9488;
l9_9487=1-l9_9489;
}
else
{
int l9_9490=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9490=0;
}
else
{
l9_9490=in.varStereoViewID;
}
int l9_9491=l9_9490;
l9_9487=l9_9491;
}
int l9_9492=l9_9487;
int l9_9493=greyMaskIdLayout_tmp;
int l9_9494=l9_9492;
float2 l9_9495=l9_9485;
bool l9_9496=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_9497=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_9498=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_9499=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_9500=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_9501=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_9502=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_9503=0.0;
bool l9_9504=l9_9501&&(!l9_9499);
float l9_9505=1.0;
float l9_9506=l9_9495.x;
int l9_9507=l9_9498.x;
if (l9_9507==1)
{
l9_9506=fract(l9_9506);
}
else
{
if (l9_9507==2)
{
float l9_9508=fract(l9_9506);
float l9_9509=l9_9506-l9_9508;
float l9_9510=step(0.25,fract(l9_9509*0.5));
l9_9506=mix(l9_9508,1.0-l9_9508,fast::clamp(l9_9510,0.0,1.0));
}
}
l9_9495.x=l9_9506;
float l9_9511=l9_9495.y;
int l9_9512=l9_9498.y;
if (l9_9512==1)
{
l9_9511=fract(l9_9511);
}
else
{
if (l9_9512==2)
{
float l9_9513=fract(l9_9511);
float l9_9514=l9_9511-l9_9513;
float l9_9515=step(0.25,fract(l9_9514*0.5));
l9_9511=mix(l9_9513,1.0-l9_9513,fast::clamp(l9_9515,0.0,1.0));
}
}
l9_9495.y=l9_9511;
if (l9_9499)
{
bool l9_9516=l9_9501;
bool l9_9517;
if (l9_9516)
{
l9_9517=l9_9498.x==3;
}
else
{
l9_9517=l9_9516;
}
float l9_9518=l9_9495.x;
float l9_9519=l9_9500.x;
float l9_9520=l9_9500.z;
bool l9_9521=l9_9517;
float l9_9522=l9_9505;
float l9_9523=fast::clamp(l9_9518,l9_9519,l9_9520);
float l9_9524=step(abs(l9_9518-l9_9523),9.9999997e-06);
l9_9522*=(l9_9524+((1.0-float(l9_9521))*(1.0-l9_9524)));
l9_9518=l9_9523;
l9_9495.x=l9_9518;
l9_9505=l9_9522;
bool l9_9525=l9_9501;
bool l9_9526;
if (l9_9525)
{
l9_9526=l9_9498.y==3;
}
else
{
l9_9526=l9_9525;
}
float l9_9527=l9_9495.y;
float l9_9528=l9_9500.y;
float l9_9529=l9_9500.w;
bool l9_9530=l9_9526;
float l9_9531=l9_9505;
float l9_9532=fast::clamp(l9_9527,l9_9528,l9_9529);
float l9_9533=step(abs(l9_9527-l9_9532),9.9999997e-06);
l9_9531*=(l9_9533+((1.0-float(l9_9530))*(1.0-l9_9533)));
l9_9527=l9_9532;
l9_9495.y=l9_9527;
l9_9505=l9_9531;
}
float2 l9_9534=l9_9495;
bool l9_9535=l9_9496;
float3x3 l9_9536=l9_9497;
if (l9_9535)
{
l9_9534=float2((l9_9536*float3(l9_9534,1.0)).xy);
}
float2 l9_9537=l9_9534;
l9_9495=l9_9537;
float l9_9538=l9_9495.x;
int l9_9539=l9_9498.x;
bool l9_9540=l9_9504;
float l9_9541=l9_9505;
if ((l9_9539==0)||(l9_9539==3))
{
float l9_9542=l9_9538;
float l9_9543=0.0;
float l9_9544=1.0;
bool l9_9545=l9_9540;
float l9_9546=l9_9541;
float l9_9547=fast::clamp(l9_9542,l9_9543,l9_9544);
float l9_9548=step(abs(l9_9542-l9_9547),9.9999997e-06);
l9_9546*=(l9_9548+((1.0-float(l9_9545))*(1.0-l9_9548)));
l9_9542=l9_9547;
l9_9538=l9_9542;
l9_9541=l9_9546;
}
l9_9495.x=l9_9538;
l9_9505=l9_9541;
float l9_9549=l9_9495.y;
int l9_9550=l9_9498.y;
bool l9_9551=l9_9504;
float l9_9552=l9_9505;
if ((l9_9550==0)||(l9_9550==3))
{
float l9_9553=l9_9549;
float l9_9554=0.0;
float l9_9555=1.0;
bool l9_9556=l9_9551;
float l9_9557=l9_9552;
float l9_9558=fast::clamp(l9_9553,l9_9554,l9_9555);
float l9_9559=step(abs(l9_9553-l9_9558),9.9999997e-06);
l9_9557*=(l9_9559+((1.0-float(l9_9556))*(1.0-l9_9559)));
l9_9553=l9_9558;
l9_9549=l9_9553;
l9_9552=l9_9557;
}
l9_9495.y=l9_9549;
l9_9505=l9_9552;
float2 l9_9560=l9_9495;
int l9_9561=l9_9493;
int l9_9562=l9_9494;
float l9_9563=l9_9503;
float2 l9_9564=l9_9560;
int l9_9565=l9_9561;
int l9_9566=l9_9562;
float3 l9_9567=float3(0.0);
if (l9_9565==0)
{
l9_9567=float3(l9_9564,0.0);
}
else
{
if (l9_9565==1)
{
l9_9567=float3(l9_9564.x,(l9_9564.y*0.5)+(0.5-(float(l9_9566)*0.5)),0.0);
}
else
{
l9_9567=float3(l9_9564,float(l9_9566));
}
}
float3 l9_9568=l9_9567;
float3 l9_9569=l9_9568;
float4 l9_9570=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_9569.xy,bias(l9_9563));
float4 l9_9571=l9_9570;
if (l9_9501)
{
l9_9571=mix(l9_9502,l9_9571,float4(l9_9505));
}
float4 l9_9572=l9_9571;
l9_9486=l9_9572;
float l9_9573=0.0;
l9_9573=l9_9486.x;
float l9_9574=0.0;
l9_9574=step(l9_9573,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_9575=0.0;
l9_9575=step(l9_9573,(*sc_set0.UserUniforms).Port_Input1_N035);
float l9_9576=0.0;
l9_9576=l9_9574-l9_9575;
l9_9479=float4(l9_9576);
l9_9484=l9_9479;
}
else
{
l9_9484=l9_9480;
}
l9_9477=l9_9484;
float4 l9_9577=float4(0.0);
l9_9577=l9_7633*l9_9477;
float4 l9_9578=float4(0.0);
float l9_9579=0.0;
float4 l9_9580=float4(0.0);
float4 l9_9581=float4(0.0);
ssGlobals l9_9582=l9_7629;
float l9_9583=0.0;
float l9_9584=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_9583=l9_9584;
l9_9579=l9_9583;
float4 l9_9585;
if ((l9_9579*1.0)!=0.0)
{
float4 l9_9586=float4(0.0);
float l9_9587=0.0;
float4 l9_9588=float4(0.0);
float4 l9_9589=float4(0.0);
ssGlobals l9_9590=l9_9582;
float l9_9591=0.0;
float l9_9592=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_9591=l9_9592;
l9_9587=l9_9591;
float4 l9_9593;
if ((l9_9587*1.0)!=0.0)
{
float l9_9594=0.0;
float l9_9595=(*sc_set0.UserUniforms).rimExpId01;
l9_9594=l9_9595;
float l9_9596=0.0;
float l9_9597=(*sc_set0.UserUniforms).rimIntId01;
l9_9596=l9_9597;
float l9_9598=0.0;
float l9_9599=l9_9594;
float l9_9600=l9_9596;
ssGlobals l9_9601=l9_9590;
float l9_9602=abs(dot(-l9_9601.ViewDirWS,l9_9601.VertexNormal_WorldSpace));
float l9_9603=1.0-pow(1.0-l9_9602,l9_9599);
l9_9603=fast::max(l9_9603,0.0);
l9_9603*=l9_9600;
l9_9598=l9_9603;
float4 l9_9604=float4(0.0);
float l9_9605=0.0;
float4 l9_9606=float4(0.0);
float4 l9_9607=float4(0.0);
ssGlobals l9_9608=l9_9590;
float l9_9609=0.0;
float l9_9610=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_9609=l9_9610;
l9_9605=l9_9609;
float4 l9_9611;
if ((l9_9605*1.0)!=0.0)
{
float4 l9_9612=float4(0.0);
float4 l9_9613=(*sc_set0.UserUniforms).patternColorId01;
l9_9612=l9_9613;
float4 l9_9614=float4(0.0);
float l9_9615=0.0;
float4 l9_9616=float4(0.0);
float4 l9_9617=float4(0.0);
ssGlobals l9_9618=l9_9608;
float l9_9619=0.0;
float l9_9620=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_9619=l9_9620;
l9_9615=l9_9619;
float4 l9_9621;
if ((l9_9615*1.0)!=0.0)
{
float2 l9_9622=float2(0.0);
l9_9622=l9_9618.Surface_UVCoord0;
float2 l9_9623=float2(0.0);
float2 l9_9624=(*sc_set0.UserUniforms).patternScaleId01;
l9_9623=l9_9624;
float2 l9_9625=float2(0.0);
l9_9625=((l9_9622-(*sc_set0.UserUniforms).Port_Center_N122)*l9_9623)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_9626=float2(0.0);
float2 l9_9627=(*sc_set0.UserUniforms).patternOffsetId01;
l9_9626=l9_9627;
float2 l9_9628=float2(0.0);
l9_9628=l9_9625+l9_9626;
float l9_9629=0.0;
float l9_9630=(*sc_set0.UserUniforms).patternRotateId01;
l9_9629=l9_9630;
float2 l9_9631=float2(0.0);
float2 l9_9632=l9_9628;
float l9_9633=l9_9629;
float2 l9_9634=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_9635=sin(radians(l9_9633));
float l9_9636=cos(radians(l9_9633));
float2 l9_9637=l9_9632-l9_9634;
l9_9637=float2(dot(float2(l9_9636,l9_9635),l9_9637),dot(float2(-l9_9635,l9_9636),l9_9637))+l9_9634;
l9_9631=l9_9637;
float4 l9_9638=float4(0.0);
int l9_9639;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_9640=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9640=0;
}
else
{
l9_9640=in.varStereoViewID;
}
int l9_9641=l9_9640;
l9_9639=1-l9_9641;
}
else
{
int l9_9642=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9642=0;
}
else
{
l9_9642=in.varStereoViewID;
}
int l9_9643=l9_9642;
l9_9639=l9_9643;
}
int l9_9644=l9_9639;
int l9_9645=patternTextureId01Layout_tmp;
int l9_9646=l9_9644;
float2 l9_9647=l9_9631;
bool l9_9648=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_9649=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_9650=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_9651=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_9652=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_9653=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_9654=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_9655=0.0;
bool l9_9656=l9_9653&&(!l9_9651);
float l9_9657=1.0;
float l9_9658=l9_9647.x;
int l9_9659=l9_9650.x;
if (l9_9659==1)
{
l9_9658=fract(l9_9658);
}
else
{
if (l9_9659==2)
{
float l9_9660=fract(l9_9658);
float l9_9661=l9_9658-l9_9660;
float l9_9662=step(0.25,fract(l9_9661*0.5));
l9_9658=mix(l9_9660,1.0-l9_9660,fast::clamp(l9_9662,0.0,1.0));
}
}
l9_9647.x=l9_9658;
float l9_9663=l9_9647.y;
int l9_9664=l9_9650.y;
if (l9_9664==1)
{
l9_9663=fract(l9_9663);
}
else
{
if (l9_9664==2)
{
float l9_9665=fract(l9_9663);
float l9_9666=l9_9663-l9_9665;
float l9_9667=step(0.25,fract(l9_9666*0.5));
l9_9663=mix(l9_9665,1.0-l9_9665,fast::clamp(l9_9667,0.0,1.0));
}
}
l9_9647.y=l9_9663;
if (l9_9651)
{
bool l9_9668=l9_9653;
bool l9_9669;
if (l9_9668)
{
l9_9669=l9_9650.x==3;
}
else
{
l9_9669=l9_9668;
}
float l9_9670=l9_9647.x;
float l9_9671=l9_9652.x;
float l9_9672=l9_9652.z;
bool l9_9673=l9_9669;
float l9_9674=l9_9657;
float l9_9675=fast::clamp(l9_9670,l9_9671,l9_9672);
float l9_9676=step(abs(l9_9670-l9_9675),9.9999997e-06);
l9_9674*=(l9_9676+((1.0-float(l9_9673))*(1.0-l9_9676)));
l9_9670=l9_9675;
l9_9647.x=l9_9670;
l9_9657=l9_9674;
bool l9_9677=l9_9653;
bool l9_9678;
if (l9_9677)
{
l9_9678=l9_9650.y==3;
}
else
{
l9_9678=l9_9677;
}
float l9_9679=l9_9647.y;
float l9_9680=l9_9652.y;
float l9_9681=l9_9652.w;
bool l9_9682=l9_9678;
float l9_9683=l9_9657;
float l9_9684=fast::clamp(l9_9679,l9_9680,l9_9681);
float l9_9685=step(abs(l9_9679-l9_9684),9.9999997e-06);
l9_9683*=(l9_9685+((1.0-float(l9_9682))*(1.0-l9_9685)));
l9_9679=l9_9684;
l9_9647.y=l9_9679;
l9_9657=l9_9683;
}
float2 l9_9686=l9_9647;
bool l9_9687=l9_9648;
float3x3 l9_9688=l9_9649;
if (l9_9687)
{
l9_9686=float2((l9_9688*float3(l9_9686,1.0)).xy);
}
float2 l9_9689=l9_9686;
l9_9647=l9_9689;
float l9_9690=l9_9647.x;
int l9_9691=l9_9650.x;
bool l9_9692=l9_9656;
float l9_9693=l9_9657;
if ((l9_9691==0)||(l9_9691==3))
{
float l9_9694=l9_9690;
float l9_9695=0.0;
float l9_9696=1.0;
bool l9_9697=l9_9692;
float l9_9698=l9_9693;
float l9_9699=fast::clamp(l9_9694,l9_9695,l9_9696);
float l9_9700=step(abs(l9_9694-l9_9699),9.9999997e-06);
l9_9698*=(l9_9700+((1.0-float(l9_9697))*(1.0-l9_9700)));
l9_9694=l9_9699;
l9_9690=l9_9694;
l9_9693=l9_9698;
}
l9_9647.x=l9_9690;
l9_9657=l9_9693;
float l9_9701=l9_9647.y;
int l9_9702=l9_9650.y;
bool l9_9703=l9_9656;
float l9_9704=l9_9657;
if ((l9_9702==0)||(l9_9702==3))
{
float l9_9705=l9_9701;
float l9_9706=0.0;
float l9_9707=1.0;
bool l9_9708=l9_9703;
float l9_9709=l9_9704;
float l9_9710=fast::clamp(l9_9705,l9_9706,l9_9707);
float l9_9711=step(abs(l9_9705-l9_9710),9.9999997e-06);
l9_9709*=(l9_9711+((1.0-float(l9_9708))*(1.0-l9_9711)));
l9_9705=l9_9710;
l9_9701=l9_9705;
l9_9704=l9_9709;
}
l9_9647.y=l9_9701;
l9_9657=l9_9704;
float2 l9_9712=l9_9647;
int l9_9713=l9_9645;
int l9_9714=l9_9646;
float l9_9715=l9_9655;
float2 l9_9716=l9_9712;
int l9_9717=l9_9713;
int l9_9718=l9_9714;
float3 l9_9719=float3(0.0);
if (l9_9717==0)
{
l9_9719=float3(l9_9716,0.0);
}
else
{
if (l9_9717==1)
{
l9_9719=float3(l9_9716.x,(l9_9716.y*0.5)+(0.5-(float(l9_9718)*0.5)),0.0);
}
else
{
l9_9719=float3(l9_9716,float(l9_9718));
}
}
float3 l9_9720=l9_9719;
float3 l9_9721=l9_9720;
float4 l9_9722=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_9721.xy,bias(l9_9715));
float4 l9_9723=l9_9722;
if (l9_9653)
{
l9_9723=mix(l9_9654,l9_9723,float4(l9_9657));
}
float4 l9_9724=l9_9723;
l9_9638=l9_9724;
l9_9616=l9_9638;
l9_9621=l9_9616;
}
else
{
float2 l9_9725=float2(0.0);
l9_9725=l9_9618.Surface_UVCoord0;
float2 l9_9726=float2(0.0);
float2 l9_9727=(*sc_set0.UserUniforms).patternScaleId01;
l9_9726=l9_9727;
float2 l9_9728=float2(0.0);
l9_9728=((l9_9725-(*sc_set0.UserUniforms).Port_Center_N122)*l9_9726)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_9729=float2(0.0);
float2 l9_9730=(*sc_set0.UserUniforms).patternOffsetId01;
l9_9729=l9_9730;
float2 l9_9731=float2(0.0);
l9_9731=l9_9728+l9_9729;
float l9_9732=0.0;
float l9_9733=(*sc_set0.UserUniforms).patternRotateId01;
l9_9732=l9_9733;
float2 l9_9734=float2(0.0);
float2 l9_9735=l9_9731;
float l9_9736=l9_9732;
float2 l9_9737=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_9738=sin(radians(l9_9736));
float l9_9739=cos(radians(l9_9736));
float2 l9_9740=l9_9735-l9_9737;
l9_9740=float2(dot(float2(l9_9739,l9_9738),l9_9740),dot(float2(-l9_9738,l9_9739),l9_9740))+l9_9737;
l9_9734=l9_9740;
float4 l9_9741=float4(0.0);
int l9_9742;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_9743=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9743=0;
}
else
{
l9_9743=in.varStereoViewID;
}
int l9_9744=l9_9743;
l9_9742=1-l9_9744;
}
else
{
int l9_9745=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9745=0;
}
else
{
l9_9745=in.varStereoViewID;
}
int l9_9746=l9_9745;
l9_9742=l9_9746;
}
int l9_9747=l9_9742;
int l9_9748=patternTextureId01Layout_tmp;
int l9_9749=l9_9747;
float2 l9_9750=l9_9734;
bool l9_9751=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_9752=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_9753=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_9754=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_9755=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_9756=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_9757=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_9758=0.0;
bool l9_9759=l9_9756&&(!l9_9754);
float l9_9760=1.0;
float l9_9761=l9_9750.x;
int l9_9762=l9_9753.x;
if (l9_9762==1)
{
l9_9761=fract(l9_9761);
}
else
{
if (l9_9762==2)
{
float l9_9763=fract(l9_9761);
float l9_9764=l9_9761-l9_9763;
float l9_9765=step(0.25,fract(l9_9764*0.5));
l9_9761=mix(l9_9763,1.0-l9_9763,fast::clamp(l9_9765,0.0,1.0));
}
}
l9_9750.x=l9_9761;
float l9_9766=l9_9750.y;
int l9_9767=l9_9753.y;
if (l9_9767==1)
{
l9_9766=fract(l9_9766);
}
else
{
if (l9_9767==2)
{
float l9_9768=fract(l9_9766);
float l9_9769=l9_9766-l9_9768;
float l9_9770=step(0.25,fract(l9_9769*0.5));
l9_9766=mix(l9_9768,1.0-l9_9768,fast::clamp(l9_9770,0.0,1.0));
}
}
l9_9750.y=l9_9766;
if (l9_9754)
{
bool l9_9771=l9_9756;
bool l9_9772;
if (l9_9771)
{
l9_9772=l9_9753.x==3;
}
else
{
l9_9772=l9_9771;
}
float l9_9773=l9_9750.x;
float l9_9774=l9_9755.x;
float l9_9775=l9_9755.z;
bool l9_9776=l9_9772;
float l9_9777=l9_9760;
float l9_9778=fast::clamp(l9_9773,l9_9774,l9_9775);
float l9_9779=step(abs(l9_9773-l9_9778),9.9999997e-06);
l9_9777*=(l9_9779+((1.0-float(l9_9776))*(1.0-l9_9779)));
l9_9773=l9_9778;
l9_9750.x=l9_9773;
l9_9760=l9_9777;
bool l9_9780=l9_9756;
bool l9_9781;
if (l9_9780)
{
l9_9781=l9_9753.y==3;
}
else
{
l9_9781=l9_9780;
}
float l9_9782=l9_9750.y;
float l9_9783=l9_9755.y;
float l9_9784=l9_9755.w;
bool l9_9785=l9_9781;
float l9_9786=l9_9760;
float l9_9787=fast::clamp(l9_9782,l9_9783,l9_9784);
float l9_9788=step(abs(l9_9782-l9_9787),9.9999997e-06);
l9_9786*=(l9_9788+((1.0-float(l9_9785))*(1.0-l9_9788)));
l9_9782=l9_9787;
l9_9750.y=l9_9782;
l9_9760=l9_9786;
}
float2 l9_9789=l9_9750;
bool l9_9790=l9_9751;
float3x3 l9_9791=l9_9752;
if (l9_9790)
{
l9_9789=float2((l9_9791*float3(l9_9789,1.0)).xy);
}
float2 l9_9792=l9_9789;
l9_9750=l9_9792;
float l9_9793=l9_9750.x;
int l9_9794=l9_9753.x;
bool l9_9795=l9_9759;
float l9_9796=l9_9760;
if ((l9_9794==0)||(l9_9794==3))
{
float l9_9797=l9_9793;
float l9_9798=0.0;
float l9_9799=1.0;
bool l9_9800=l9_9795;
float l9_9801=l9_9796;
float l9_9802=fast::clamp(l9_9797,l9_9798,l9_9799);
float l9_9803=step(abs(l9_9797-l9_9802),9.9999997e-06);
l9_9801*=(l9_9803+((1.0-float(l9_9800))*(1.0-l9_9803)));
l9_9797=l9_9802;
l9_9793=l9_9797;
l9_9796=l9_9801;
}
l9_9750.x=l9_9793;
l9_9760=l9_9796;
float l9_9804=l9_9750.y;
int l9_9805=l9_9753.y;
bool l9_9806=l9_9759;
float l9_9807=l9_9760;
if ((l9_9805==0)||(l9_9805==3))
{
float l9_9808=l9_9804;
float l9_9809=0.0;
float l9_9810=1.0;
bool l9_9811=l9_9806;
float l9_9812=l9_9807;
float l9_9813=fast::clamp(l9_9808,l9_9809,l9_9810);
float l9_9814=step(abs(l9_9808-l9_9813),9.9999997e-06);
l9_9812*=(l9_9814+((1.0-float(l9_9811))*(1.0-l9_9814)));
l9_9808=l9_9813;
l9_9804=l9_9808;
l9_9807=l9_9812;
}
l9_9750.y=l9_9804;
l9_9760=l9_9807;
float2 l9_9815=l9_9750;
int l9_9816=l9_9748;
int l9_9817=l9_9749;
float l9_9818=l9_9758;
float2 l9_9819=l9_9815;
int l9_9820=l9_9816;
int l9_9821=l9_9817;
float3 l9_9822=float3(0.0);
if (l9_9820==0)
{
l9_9822=float3(l9_9819,0.0);
}
else
{
if (l9_9820==1)
{
l9_9822=float3(l9_9819.x,(l9_9819.y*0.5)+(0.5-(float(l9_9821)*0.5)),0.0);
}
else
{
l9_9822=float3(l9_9819,float(l9_9821));
}
}
float3 l9_9823=l9_9822;
float3 l9_9824=l9_9823;
float4 l9_9825=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_9824.xy,bias(l9_9818));
float4 l9_9826=l9_9825;
if (l9_9756)
{
l9_9826=mix(l9_9757,l9_9826,float4(l9_9760));
}
float4 l9_9827=l9_9826;
l9_9741=l9_9827;
float l9_9828=0.0;
float3 l9_9829=l9_9741.xyz;
float l9_9830=l9_9829.x;
l9_9828=l9_9830;
l9_9617=float4(l9_9828);
l9_9621=l9_9617;
}
l9_9614=l9_9621;
float4 l9_9831=float4(0.0);
l9_9831=l9_9612*l9_9614;
l9_9606=l9_9831;
l9_9611=l9_9606;
}
else
{
float4 l9_9832=float4(0.0);
float4 l9_9833=(*sc_set0.UserUniforms).colorId01;
l9_9832=l9_9833;
float2 l9_9834=float2(0.0);
l9_9834=l9_9608.Surface_UVCoord0;
float4 l9_9835=float4(0.0);
int l9_9836;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_9837=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9837=0;
}
else
{
l9_9837=in.varStereoViewID;
}
int l9_9838=l9_9837;
l9_9836=1-l9_9838;
}
else
{
int l9_9839=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9839=0;
}
else
{
l9_9839=in.varStereoViewID;
}
int l9_9840=l9_9839;
l9_9836=l9_9840;
}
int l9_9841=l9_9836;
int l9_9842=greyMaskIdLayout_tmp;
int l9_9843=l9_9841;
float2 l9_9844=l9_9834;
bool l9_9845=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_9846=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_9847=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_9848=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_9849=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_9850=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_9851=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_9852=0.0;
bool l9_9853=l9_9850&&(!l9_9848);
float l9_9854=1.0;
float l9_9855=l9_9844.x;
int l9_9856=l9_9847.x;
if (l9_9856==1)
{
l9_9855=fract(l9_9855);
}
else
{
if (l9_9856==2)
{
float l9_9857=fract(l9_9855);
float l9_9858=l9_9855-l9_9857;
float l9_9859=step(0.25,fract(l9_9858*0.5));
l9_9855=mix(l9_9857,1.0-l9_9857,fast::clamp(l9_9859,0.0,1.0));
}
}
l9_9844.x=l9_9855;
float l9_9860=l9_9844.y;
int l9_9861=l9_9847.y;
if (l9_9861==1)
{
l9_9860=fract(l9_9860);
}
else
{
if (l9_9861==2)
{
float l9_9862=fract(l9_9860);
float l9_9863=l9_9860-l9_9862;
float l9_9864=step(0.25,fract(l9_9863*0.5));
l9_9860=mix(l9_9862,1.0-l9_9862,fast::clamp(l9_9864,0.0,1.0));
}
}
l9_9844.y=l9_9860;
if (l9_9848)
{
bool l9_9865=l9_9850;
bool l9_9866;
if (l9_9865)
{
l9_9866=l9_9847.x==3;
}
else
{
l9_9866=l9_9865;
}
float l9_9867=l9_9844.x;
float l9_9868=l9_9849.x;
float l9_9869=l9_9849.z;
bool l9_9870=l9_9866;
float l9_9871=l9_9854;
float l9_9872=fast::clamp(l9_9867,l9_9868,l9_9869);
float l9_9873=step(abs(l9_9867-l9_9872),9.9999997e-06);
l9_9871*=(l9_9873+((1.0-float(l9_9870))*(1.0-l9_9873)));
l9_9867=l9_9872;
l9_9844.x=l9_9867;
l9_9854=l9_9871;
bool l9_9874=l9_9850;
bool l9_9875;
if (l9_9874)
{
l9_9875=l9_9847.y==3;
}
else
{
l9_9875=l9_9874;
}
float l9_9876=l9_9844.y;
float l9_9877=l9_9849.y;
float l9_9878=l9_9849.w;
bool l9_9879=l9_9875;
float l9_9880=l9_9854;
float l9_9881=fast::clamp(l9_9876,l9_9877,l9_9878);
float l9_9882=step(abs(l9_9876-l9_9881),9.9999997e-06);
l9_9880*=(l9_9882+((1.0-float(l9_9879))*(1.0-l9_9882)));
l9_9876=l9_9881;
l9_9844.y=l9_9876;
l9_9854=l9_9880;
}
float2 l9_9883=l9_9844;
bool l9_9884=l9_9845;
float3x3 l9_9885=l9_9846;
if (l9_9884)
{
l9_9883=float2((l9_9885*float3(l9_9883,1.0)).xy);
}
float2 l9_9886=l9_9883;
l9_9844=l9_9886;
float l9_9887=l9_9844.x;
int l9_9888=l9_9847.x;
bool l9_9889=l9_9853;
float l9_9890=l9_9854;
if ((l9_9888==0)||(l9_9888==3))
{
float l9_9891=l9_9887;
float l9_9892=0.0;
float l9_9893=1.0;
bool l9_9894=l9_9889;
float l9_9895=l9_9890;
float l9_9896=fast::clamp(l9_9891,l9_9892,l9_9893);
float l9_9897=step(abs(l9_9891-l9_9896),9.9999997e-06);
l9_9895*=(l9_9897+((1.0-float(l9_9894))*(1.0-l9_9897)));
l9_9891=l9_9896;
l9_9887=l9_9891;
l9_9890=l9_9895;
}
l9_9844.x=l9_9887;
l9_9854=l9_9890;
float l9_9898=l9_9844.y;
int l9_9899=l9_9847.y;
bool l9_9900=l9_9853;
float l9_9901=l9_9854;
if ((l9_9899==0)||(l9_9899==3))
{
float l9_9902=l9_9898;
float l9_9903=0.0;
float l9_9904=1.0;
bool l9_9905=l9_9900;
float l9_9906=l9_9901;
float l9_9907=fast::clamp(l9_9902,l9_9903,l9_9904);
float l9_9908=step(abs(l9_9902-l9_9907),9.9999997e-06);
l9_9906*=(l9_9908+((1.0-float(l9_9905))*(1.0-l9_9908)));
l9_9902=l9_9907;
l9_9898=l9_9902;
l9_9901=l9_9906;
}
l9_9844.y=l9_9898;
l9_9854=l9_9901;
float2 l9_9909=l9_9844;
int l9_9910=l9_9842;
int l9_9911=l9_9843;
float l9_9912=l9_9852;
float2 l9_9913=l9_9909;
int l9_9914=l9_9910;
int l9_9915=l9_9911;
float3 l9_9916=float3(0.0);
if (l9_9914==0)
{
l9_9916=float3(l9_9913,0.0);
}
else
{
if (l9_9914==1)
{
l9_9916=float3(l9_9913.x,(l9_9913.y*0.5)+(0.5-(float(l9_9915)*0.5)),0.0);
}
else
{
l9_9916=float3(l9_9913,float(l9_9915));
}
}
float3 l9_9917=l9_9916;
float3 l9_9918=l9_9917;
float4 l9_9919=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_9918.xy,bias(l9_9912));
float4 l9_9920=l9_9919;
if (l9_9850)
{
l9_9920=mix(l9_9851,l9_9920,float4(l9_9854));
}
float4 l9_9921=l9_9920;
l9_9835=l9_9921;
float l9_9922=0.0;
l9_9922=l9_9835.x;
float l9_9923=0.0;
l9_9923=step(l9_9922,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_9924=float4(0.0);
l9_9924=l9_9832*float4(l9_9923);
l9_9607=l9_9924;
l9_9611=l9_9607;
}
l9_9604=l9_9611;
float2 l9_9925=float2(0.0);
l9_9925=l9_9590.Surface_UVCoord0;
float4 l9_9926=float4(0.0);
int l9_9927;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_9928=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9928=0;
}
else
{
l9_9928=in.varStereoViewID;
}
int l9_9929=l9_9928;
l9_9927=1-l9_9929;
}
else
{
int l9_9930=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_9930=0;
}
else
{
l9_9930=in.varStereoViewID;
}
int l9_9931=l9_9930;
l9_9927=l9_9931;
}
int l9_9932=l9_9927;
int l9_9933=greyMaskIdLayout_tmp;
int l9_9934=l9_9932;
float2 l9_9935=l9_9925;
bool l9_9936=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_9937=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_9938=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_9939=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_9940=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_9941=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_9942=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_9943=0.0;
bool l9_9944=l9_9941&&(!l9_9939);
float l9_9945=1.0;
float l9_9946=l9_9935.x;
int l9_9947=l9_9938.x;
if (l9_9947==1)
{
l9_9946=fract(l9_9946);
}
else
{
if (l9_9947==2)
{
float l9_9948=fract(l9_9946);
float l9_9949=l9_9946-l9_9948;
float l9_9950=step(0.25,fract(l9_9949*0.5));
l9_9946=mix(l9_9948,1.0-l9_9948,fast::clamp(l9_9950,0.0,1.0));
}
}
l9_9935.x=l9_9946;
float l9_9951=l9_9935.y;
int l9_9952=l9_9938.y;
if (l9_9952==1)
{
l9_9951=fract(l9_9951);
}
else
{
if (l9_9952==2)
{
float l9_9953=fract(l9_9951);
float l9_9954=l9_9951-l9_9953;
float l9_9955=step(0.25,fract(l9_9954*0.5));
l9_9951=mix(l9_9953,1.0-l9_9953,fast::clamp(l9_9955,0.0,1.0));
}
}
l9_9935.y=l9_9951;
if (l9_9939)
{
bool l9_9956=l9_9941;
bool l9_9957;
if (l9_9956)
{
l9_9957=l9_9938.x==3;
}
else
{
l9_9957=l9_9956;
}
float l9_9958=l9_9935.x;
float l9_9959=l9_9940.x;
float l9_9960=l9_9940.z;
bool l9_9961=l9_9957;
float l9_9962=l9_9945;
float l9_9963=fast::clamp(l9_9958,l9_9959,l9_9960);
float l9_9964=step(abs(l9_9958-l9_9963),9.9999997e-06);
l9_9962*=(l9_9964+((1.0-float(l9_9961))*(1.0-l9_9964)));
l9_9958=l9_9963;
l9_9935.x=l9_9958;
l9_9945=l9_9962;
bool l9_9965=l9_9941;
bool l9_9966;
if (l9_9965)
{
l9_9966=l9_9938.y==3;
}
else
{
l9_9966=l9_9965;
}
float l9_9967=l9_9935.y;
float l9_9968=l9_9940.y;
float l9_9969=l9_9940.w;
bool l9_9970=l9_9966;
float l9_9971=l9_9945;
float l9_9972=fast::clamp(l9_9967,l9_9968,l9_9969);
float l9_9973=step(abs(l9_9967-l9_9972),9.9999997e-06);
l9_9971*=(l9_9973+((1.0-float(l9_9970))*(1.0-l9_9973)));
l9_9967=l9_9972;
l9_9935.y=l9_9967;
l9_9945=l9_9971;
}
float2 l9_9974=l9_9935;
bool l9_9975=l9_9936;
float3x3 l9_9976=l9_9937;
if (l9_9975)
{
l9_9974=float2((l9_9976*float3(l9_9974,1.0)).xy);
}
float2 l9_9977=l9_9974;
l9_9935=l9_9977;
float l9_9978=l9_9935.x;
int l9_9979=l9_9938.x;
bool l9_9980=l9_9944;
float l9_9981=l9_9945;
if ((l9_9979==0)||(l9_9979==3))
{
float l9_9982=l9_9978;
float l9_9983=0.0;
float l9_9984=1.0;
bool l9_9985=l9_9980;
float l9_9986=l9_9981;
float l9_9987=fast::clamp(l9_9982,l9_9983,l9_9984);
float l9_9988=step(abs(l9_9982-l9_9987),9.9999997e-06);
l9_9986*=(l9_9988+((1.0-float(l9_9985))*(1.0-l9_9988)));
l9_9982=l9_9987;
l9_9978=l9_9982;
l9_9981=l9_9986;
}
l9_9935.x=l9_9978;
l9_9945=l9_9981;
float l9_9989=l9_9935.y;
int l9_9990=l9_9938.y;
bool l9_9991=l9_9944;
float l9_9992=l9_9945;
if ((l9_9990==0)||(l9_9990==3))
{
float l9_9993=l9_9989;
float l9_9994=0.0;
float l9_9995=1.0;
bool l9_9996=l9_9991;
float l9_9997=l9_9992;
float l9_9998=fast::clamp(l9_9993,l9_9994,l9_9995);
float l9_9999=step(abs(l9_9993-l9_9998),9.9999997e-06);
l9_9997*=(l9_9999+((1.0-float(l9_9996))*(1.0-l9_9999)));
l9_9993=l9_9998;
l9_9989=l9_9993;
l9_9992=l9_9997;
}
l9_9935.y=l9_9989;
l9_9945=l9_9992;
float2 l9_10000=l9_9935;
int l9_10001=l9_9933;
int l9_10002=l9_9934;
float l9_10003=l9_9943;
float2 l9_10004=l9_10000;
int l9_10005=l9_10001;
int l9_10006=l9_10002;
float3 l9_10007=float3(0.0);
if (l9_10005==0)
{
l9_10007=float3(l9_10004,0.0);
}
else
{
if (l9_10005==1)
{
l9_10007=float3(l9_10004.x,(l9_10004.y*0.5)+(0.5-(float(l9_10006)*0.5)),0.0);
}
else
{
l9_10007=float3(l9_10004,float(l9_10006));
}
}
float3 l9_10008=l9_10007;
float3 l9_10009=l9_10008;
float4 l9_10010=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_10009.xy,bias(l9_10003));
float4 l9_10011=l9_10010;
if (l9_9941)
{
l9_10011=mix(l9_9942,l9_10011,float4(l9_9945));
}
float4 l9_10012=l9_10011;
l9_9926=l9_10012;
float l9_10013=0.0;
l9_10013=l9_9926.x;
float l9_10014=0.0;
l9_10014=step(l9_10013,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_10015=float4(0.0);
l9_10015=l9_9604*float4(l9_10014);
float4 l9_10016=float4(0.0);
float4 l9_10017=(*sc_set0.UserUniforms).colorId01;
l9_10016=l9_10017;
float4 l9_10018=float4(0.0);
l9_10018=l9_10016*float4(l9_10014);
float4 l9_10019=float4(0.0);
float4 l9_10020=l9_10015;
float4 l9_10021=l9_10018;
float4 l9_10022=l9_10020;
float4 l9_10023=l9_10021;
float3 l9_10024=l9_10022.xyz*l9_10022.w;
l9_10022=float4(l9_10024.x,l9_10024.y,l9_10024.z,l9_10022.w);
float4 l9_10025=l9_10022+(l9_10023*(1.0-l9_10022.w));
l9_10019=l9_10025;
float4 l9_10026=float4(0.0);
l9_10026=float4(l9_9598)*l9_10019;
float4 l9_10027=float4(0.0);
l9_10027=l9_10026+l9_10019;
l9_9588=l9_10027;
l9_9593=l9_9588;
}
else
{
float4 l9_10028=float4(0.0);
float l9_10029=0.0;
float4 l9_10030=float4(0.0);
float4 l9_10031=float4(0.0);
ssGlobals l9_10032=l9_9590;
float l9_10033=0.0;
float l9_10034=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_10033=l9_10034;
l9_10029=l9_10033;
float4 l9_10035;
if ((l9_10029*1.0)!=0.0)
{
float4 l9_10036=float4(0.0);
float4 l9_10037=(*sc_set0.UserUniforms).patternColorId01;
l9_10036=l9_10037;
float4 l9_10038=float4(0.0);
float l9_10039=0.0;
float4 l9_10040=float4(0.0);
float4 l9_10041=float4(0.0);
ssGlobals l9_10042=l9_10032;
float l9_10043=0.0;
float l9_10044=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_10043=l9_10044;
l9_10039=l9_10043;
float4 l9_10045;
if ((l9_10039*1.0)!=0.0)
{
float2 l9_10046=float2(0.0);
l9_10046=l9_10042.Surface_UVCoord0;
float2 l9_10047=float2(0.0);
float2 l9_10048=(*sc_set0.UserUniforms).patternScaleId01;
l9_10047=l9_10048;
float2 l9_10049=float2(0.0);
l9_10049=((l9_10046-(*sc_set0.UserUniforms).Port_Center_N122)*l9_10047)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_10050=float2(0.0);
float2 l9_10051=(*sc_set0.UserUniforms).patternOffsetId01;
l9_10050=l9_10051;
float2 l9_10052=float2(0.0);
l9_10052=l9_10049+l9_10050;
float l9_10053=0.0;
float l9_10054=(*sc_set0.UserUniforms).patternRotateId01;
l9_10053=l9_10054;
float2 l9_10055=float2(0.0);
float2 l9_10056=l9_10052;
float l9_10057=l9_10053;
float2 l9_10058=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_10059=sin(radians(l9_10057));
float l9_10060=cos(radians(l9_10057));
float2 l9_10061=l9_10056-l9_10058;
l9_10061=float2(dot(float2(l9_10060,l9_10059),l9_10061),dot(float2(-l9_10059,l9_10060),l9_10061))+l9_10058;
l9_10055=l9_10061;
float4 l9_10062=float4(0.0);
int l9_10063;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_10064=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10064=0;
}
else
{
l9_10064=in.varStereoViewID;
}
int l9_10065=l9_10064;
l9_10063=1-l9_10065;
}
else
{
int l9_10066=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10066=0;
}
else
{
l9_10066=in.varStereoViewID;
}
int l9_10067=l9_10066;
l9_10063=l9_10067;
}
int l9_10068=l9_10063;
int l9_10069=patternTextureId01Layout_tmp;
int l9_10070=l9_10068;
float2 l9_10071=l9_10055;
bool l9_10072=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_10073=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_10074=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_10075=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_10076=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_10077=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_10078=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_10079=0.0;
bool l9_10080=l9_10077&&(!l9_10075);
float l9_10081=1.0;
float l9_10082=l9_10071.x;
int l9_10083=l9_10074.x;
if (l9_10083==1)
{
l9_10082=fract(l9_10082);
}
else
{
if (l9_10083==2)
{
float l9_10084=fract(l9_10082);
float l9_10085=l9_10082-l9_10084;
float l9_10086=step(0.25,fract(l9_10085*0.5));
l9_10082=mix(l9_10084,1.0-l9_10084,fast::clamp(l9_10086,0.0,1.0));
}
}
l9_10071.x=l9_10082;
float l9_10087=l9_10071.y;
int l9_10088=l9_10074.y;
if (l9_10088==1)
{
l9_10087=fract(l9_10087);
}
else
{
if (l9_10088==2)
{
float l9_10089=fract(l9_10087);
float l9_10090=l9_10087-l9_10089;
float l9_10091=step(0.25,fract(l9_10090*0.5));
l9_10087=mix(l9_10089,1.0-l9_10089,fast::clamp(l9_10091,0.0,1.0));
}
}
l9_10071.y=l9_10087;
if (l9_10075)
{
bool l9_10092=l9_10077;
bool l9_10093;
if (l9_10092)
{
l9_10093=l9_10074.x==3;
}
else
{
l9_10093=l9_10092;
}
float l9_10094=l9_10071.x;
float l9_10095=l9_10076.x;
float l9_10096=l9_10076.z;
bool l9_10097=l9_10093;
float l9_10098=l9_10081;
float l9_10099=fast::clamp(l9_10094,l9_10095,l9_10096);
float l9_10100=step(abs(l9_10094-l9_10099),9.9999997e-06);
l9_10098*=(l9_10100+((1.0-float(l9_10097))*(1.0-l9_10100)));
l9_10094=l9_10099;
l9_10071.x=l9_10094;
l9_10081=l9_10098;
bool l9_10101=l9_10077;
bool l9_10102;
if (l9_10101)
{
l9_10102=l9_10074.y==3;
}
else
{
l9_10102=l9_10101;
}
float l9_10103=l9_10071.y;
float l9_10104=l9_10076.y;
float l9_10105=l9_10076.w;
bool l9_10106=l9_10102;
float l9_10107=l9_10081;
float l9_10108=fast::clamp(l9_10103,l9_10104,l9_10105);
float l9_10109=step(abs(l9_10103-l9_10108),9.9999997e-06);
l9_10107*=(l9_10109+((1.0-float(l9_10106))*(1.0-l9_10109)));
l9_10103=l9_10108;
l9_10071.y=l9_10103;
l9_10081=l9_10107;
}
float2 l9_10110=l9_10071;
bool l9_10111=l9_10072;
float3x3 l9_10112=l9_10073;
if (l9_10111)
{
l9_10110=float2((l9_10112*float3(l9_10110,1.0)).xy);
}
float2 l9_10113=l9_10110;
l9_10071=l9_10113;
float l9_10114=l9_10071.x;
int l9_10115=l9_10074.x;
bool l9_10116=l9_10080;
float l9_10117=l9_10081;
if ((l9_10115==0)||(l9_10115==3))
{
float l9_10118=l9_10114;
float l9_10119=0.0;
float l9_10120=1.0;
bool l9_10121=l9_10116;
float l9_10122=l9_10117;
float l9_10123=fast::clamp(l9_10118,l9_10119,l9_10120);
float l9_10124=step(abs(l9_10118-l9_10123),9.9999997e-06);
l9_10122*=(l9_10124+((1.0-float(l9_10121))*(1.0-l9_10124)));
l9_10118=l9_10123;
l9_10114=l9_10118;
l9_10117=l9_10122;
}
l9_10071.x=l9_10114;
l9_10081=l9_10117;
float l9_10125=l9_10071.y;
int l9_10126=l9_10074.y;
bool l9_10127=l9_10080;
float l9_10128=l9_10081;
if ((l9_10126==0)||(l9_10126==3))
{
float l9_10129=l9_10125;
float l9_10130=0.0;
float l9_10131=1.0;
bool l9_10132=l9_10127;
float l9_10133=l9_10128;
float l9_10134=fast::clamp(l9_10129,l9_10130,l9_10131);
float l9_10135=step(abs(l9_10129-l9_10134),9.9999997e-06);
l9_10133*=(l9_10135+((1.0-float(l9_10132))*(1.0-l9_10135)));
l9_10129=l9_10134;
l9_10125=l9_10129;
l9_10128=l9_10133;
}
l9_10071.y=l9_10125;
l9_10081=l9_10128;
float2 l9_10136=l9_10071;
int l9_10137=l9_10069;
int l9_10138=l9_10070;
float l9_10139=l9_10079;
float2 l9_10140=l9_10136;
int l9_10141=l9_10137;
int l9_10142=l9_10138;
float3 l9_10143=float3(0.0);
if (l9_10141==0)
{
l9_10143=float3(l9_10140,0.0);
}
else
{
if (l9_10141==1)
{
l9_10143=float3(l9_10140.x,(l9_10140.y*0.5)+(0.5-(float(l9_10142)*0.5)),0.0);
}
else
{
l9_10143=float3(l9_10140,float(l9_10142));
}
}
float3 l9_10144=l9_10143;
float3 l9_10145=l9_10144;
float4 l9_10146=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_10145.xy,bias(l9_10139));
float4 l9_10147=l9_10146;
if (l9_10077)
{
l9_10147=mix(l9_10078,l9_10147,float4(l9_10081));
}
float4 l9_10148=l9_10147;
l9_10062=l9_10148;
l9_10040=l9_10062;
l9_10045=l9_10040;
}
else
{
float2 l9_10149=float2(0.0);
l9_10149=l9_10042.Surface_UVCoord0;
float2 l9_10150=float2(0.0);
float2 l9_10151=(*sc_set0.UserUniforms).patternScaleId01;
l9_10150=l9_10151;
float2 l9_10152=float2(0.0);
l9_10152=((l9_10149-(*sc_set0.UserUniforms).Port_Center_N122)*l9_10150)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_10153=float2(0.0);
float2 l9_10154=(*sc_set0.UserUniforms).patternOffsetId01;
l9_10153=l9_10154;
float2 l9_10155=float2(0.0);
l9_10155=l9_10152+l9_10153;
float l9_10156=0.0;
float l9_10157=(*sc_set0.UserUniforms).patternRotateId01;
l9_10156=l9_10157;
float2 l9_10158=float2(0.0);
float2 l9_10159=l9_10155;
float l9_10160=l9_10156;
float2 l9_10161=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_10162=sin(radians(l9_10160));
float l9_10163=cos(radians(l9_10160));
float2 l9_10164=l9_10159-l9_10161;
l9_10164=float2(dot(float2(l9_10163,l9_10162),l9_10164),dot(float2(-l9_10162,l9_10163),l9_10164))+l9_10161;
l9_10158=l9_10164;
float4 l9_10165=float4(0.0);
int l9_10166;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_10167=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10167=0;
}
else
{
l9_10167=in.varStereoViewID;
}
int l9_10168=l9_10167;
l9_10166=1-l9_10168;
}
else
{
int l9_10169=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10169=0;
}
else
{
l9_10169=in.varStereoViewID;
}
int l9_10170=l9_10169;
l9_10166=l9_10170;
}
int l9_10171=l9_10166;
int l9_10172=patternTextureId01Layout_tmp;
int l9_10173=l9_10171;
float2 l9_10174=l9_10158;
bool l9_10175=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_10176=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_10177=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_10178=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_10179=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_10180=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_10181=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_10182=0.0;
bool l9_10183=l9_10180&&(!l9_10178);
float l9_10184=1.0;
float l9_10185=l9_10174.x;
int l9_10186=l9_10177.x;
if (l9_10186==1)
{
l9_10185=fract(l9_10185);
}
else
{
if (l9_10186==2)
{
float l9_10187=fract(l9_10185);
float l9_10188=l9_10185-l9_10187;
float l9_10189=step(0.25,fract(l9_10188*0.5));
l9_10185=mix(l9_10187,1.0-l9_10187,fast::clamp(l9_10189,0.0,1.0));
}
}
l9_10174.x=l9_10185;
float l9_10190=l9_10174.y;
int l9_10191=l9_10177.y;
if (l9_10191==1)
{
l9_10190=fract(l9_10190);
}
else
{
if (l9_10191==2)
{
float l9_10192=fract(l9_10190);
float l9_10193=l9_10190-l9_10192;
float l9_10194=step(0.25,fract(l9_10193*0.5));
l9_10190=mix(l9_10192,1.0-l9_10192,fast::clamp(l9_10194,0.0,1.0));
}
}
l9_10174.y=l9_10190;
if (l9_10178)
{
bool l9_10195=l9_10180;
bool l9_10196;
if (l9_10195)
{
l9_10196=l9_10177.x==3;
}
else
{
l9_10196=l9_10195;
}
float l9_10197=l9_10174.x;
float l9_10198=l9_10179.x;
float l9_10199=l9_10179.z;
bool l9_10200=l9_10196;
float l9_10201=l9_10184;
float l9_10202=fast::clamp(l9_10197,l9_10198,l9_10199);
float l9_10203=step(abs(l9_10197-l9_10202),9.9999997e-06);
l9_10201*=(l9_10203+((1.0-float(l9_10200))*(1.0-l9_10203)));
l9_10197=l9_10202;
l9_10174.x=l9_10197;
l9_10184=l9_10201;
bool l9_10204=l9_10180;
bool l9_10205;
if (l9_10204)
{
l9_10205=l9_10177.y==3;
}
else
{
l9_10205=l9_10204;
}
float l9_10206=l9_10174.y;
float l9_10207=l9_10179.y;
float l9_10208=l9_10179.w;
bool l9_10209=l9_10205;
float l9_10210=l9_10184;
float l9_10211=fast::clamp(l9_10206,l9_10207,l9_10208);
float l9_10212=step(abs(l9_10206-l9_10211),9.9999997e-06);
l9_10210*=(l9_10212+((1.0-float(l9_10209))*(1.0-l9_10212)));
l9_10206=l9_10211;
l9_10174.y=l9_10206;
l9_10184=l9_10210;
}
float2 l9_10213=l9_10174;
bool l9_10214=l9_10175;
float3x3 l9_10215=l9_10176;
if (l9_10214)
{
l9_10213=float2((l9_10215*float3(l9_10213,1.0)).xy);
}
float2 l9_10216=l9_10213;
l9_10174=l9_10216;
float l9_10217=l9_10174.x;
int l9_10218=l9_10177.x;
bool l9_10219=l9_10183;
float l9_10220=l9_10184;
if ((l9_10218==0)||(l9_10218==3))
{
float l9_10221=l9_10217;
float l9_10222=0.0;
float l9_10223=1.0;
bool l9_10224=l9_10219;
float l9_10225=l9_10220;
float l9_10226=fast::clamp(l9_10221,l9_10222,l9_10223);
float l9_10227=step(abs(l9_10221-l9_10226),9.9999997e-06);
l9_10225*=(l9_10227+((1.0-float(l9_10224))*(1.0-l9_10227)));
l9_10221=l9_10226;
l9_10217=l9_10221;
l9_10220=l9_10225;
}
l9_10174.x=l9_10217;
l9_10184=l9_10220;
float l9_10228=l9_10174.y;
int l9_10229=l9_10177.y;
bool l9_10230=l9_10183;
float l9_10231=l9_10184;
if ((l9_10229==0)||(l9_10229==3))
{
float l9_10232=l9_10228;
float l9_10233=0.0;
float l9_10234=1.0;
bool l9_10235=l9_10230;
float l9_10236=l9_10231;
float l9_10237=fast::clamp(l9_10232,l9_10233,l9_10234);
float l9_10238=step(abs(l9_10232-l9_10237),9.9999997e-06);
l9_10236*=(l9_10238+((1.0-float(l9_10235))*(1.0-l9_10238)));
l9_10232=l9_10237;
l9_10228=l9_10232;
l9_10231=l9_10236;
}
l9_10174.y=l9_10228;
l9_10184=l9_10231;
float2 l9_10239=l9_10174;
int l9_10240=l9_10172;
int l9_10241=l9_10173;
float l9_10242=l9_10182;
float2 l9_10243=l9_10239;
int l9_10244=l9_10240;
int l9_10245=l9_10241;
float3 l9_10246=float3(0.0);
if (l9_10244==0)
{
l9_10246=float3(l9_10243,0.0);
}
else
{
if (l9_10244==1)
{
l9_10246=float3(l9_10243.x,(l9_10243.y*0.5)+(0.5-(float(l9_10245)*0.5)),0.0);
}
else
{
l9_10246=float3(l9_10243,float(l9_10245));
}
}
float3 l9_10247=l9_10246;
float3 l9_10248=l9_10247;
float4 l9_10249=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_10248.xy,bias(l9_10242));
float4 l9_10250=l9_10249;
if (l9_10180)
{
l9_10250=mix(l9_10181,l9_10250,float4(l9_10184));
}
float4 l9_10251=l9_10250;
l9_10165=l9_10251;
float l9_10252=0.0;
float3 l9_10253=l9_10165.xyz;
float l9_10254=l9_10253.x;
l9_10252=l9_10254;
l9_10041=float4(l9_10252);
l9_10045=l9_10041;
}
l9_10038=l9_10045;
float4 l9_10255=float4(0.0);
l9_10255=l9_10036*l9_10038;
l9_10030=l9_10255;
l9_10035=l9_10030;
}
else
{
float4 l9_10256=float4(0.0);
float4 l9_10257=(*sc_set0.UserUniforms).colorId01;
l9_10256=l9_10257;
float2 l9_10258=float2(0.0);
l9_10258=l9_10032.Surface_UVCoord0;
float4 l9_10259=float4(0.0);
int l9_10260;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_10261=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10261=0;
}
else
{
l9_10261=in.varStereoViewID;
}
int l9_10262=l9_10261;
l9_10260=1-l9_10262;
}
else
{
int l9_10263=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10263=0;
}
else
{
l9_10263=in.varStereoViewID;
}
int l9_10264=l9_10263;
l9_10260=l9_10264;
}
int l9_10265=l9_10260;
int l9_10266=greyMaskIdLayout_tmp;
int l9_10267=l9_10265;
float2 l9_10268=l9_10258;
bool l9_10269=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_10270=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_10271=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_10272=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_10273=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_10274=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_10275=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_10276=0.0;
bool l9_10277=l9_10274&&(!l9_10272);
float l9_10278=1.0;
float l9_10279=l9_10268.x;
int l9_10280=l9_10271.x;
if (l9_10280==1)
{
l9_10279=fract(l9_10279);
}
else
{
if (l9_10280==2)
{
float l9_10281=fract(l9_10279);
float l9_10282=l9_10279-l9_10281;
float l9_10283=step(0.25,fract(l9_10282*0.5));
l9_10279=mix(l9_10281,1.0-l9_10281,fast::clamp(l9_10283,0.0,1.0));
}
}
l9_10268.x=l9_10279;
float l9_10284=l9_10268.y;
int l9_10285=l9_10271.y;
if (l9_10285==1)
{
l9_10284=fract(l9_10284);
}
else
{
if (l9_10285==2)
{
float l9_10286=fract(l9_10284);
float l9_10287=l9_10284-l9_10286;
float l9_10288=step(0.25,fract(l9_10287*0.5));
l9_10284=mix(l9_10286,1.0-l9_10286,fast::clamp(l9_10288,0.0,1.0));
}
}
l9_10268.y=l9_10284;
if (l9_10272)
{
bool l9_10289=l9_10274;
bool l9_10290;
if (l9_10289)
{
l9_10290=l9_10271.x==3;
}
else
{
l9_10290=l9_10289;
}
float l9_10291=l9_10268.x;
float l9_10292=l9_10273.x;
float l9_10293=l9_10273.z;
bool l9_10294=l9_10290;
float l9_10295=l9_10278;
float l9_10296=fast::clamp(l9_10291,l9_10292,l9_10293);
float l9_10297=step(abs(l9_10291-l9_10296),9.9999997e-06);
l9_10295*=(l9_10297+((1.0-float(l9_10294))*(1.0-l9_10297)));
l9_10291=l9_10296;
l9_10268.x=l9_10291;
l9_10278=l9_10295;
bool l9_10298=l9_10274;
bool l9_10299;
if (l9_10298)
{
l9_10299=l9_10271.y==3;
}
else
{
l9_10299=l9_10298;
}
float l9_10300=l9_10268.y;
float l9_10301=l9_10273.y;
float l9_10302=l9_10273.w;
bool l9_10303=l9_10299;
float l9_10304=l9_10278;
float l9_10305=fast::clamp(l9_10300,l9_10301,l9_10302);
float l9_10306=step(abs(l9_10300-l9_10305),9.9999997e-06);
l9_10304*=(l9_10306+((1.0-float(l9_10303))*(1.0-l9_10306)));
l9_10300=l9_10305;
l9_10268.y=l9_10300;
l9_10278=l9_10304;
}
float2 l9_10307=l9_10268;
bool l9_10308=l9_10269;
float3x3 l9_10309=l9_10270;
if (l9_10308)
{
l9_10307=float2((l9_10309*float3(l9_10307,1.0)).xy);
}
float2 l9_10310=l9_10307;
l9_10268=l9_10310;
float l9_10311=l9_10268.x;
int l9_10312=l9_10271.x;
bool l9_10313=l9_10277;
float l9_10314=l9_10278;
if ((l9_10312==0)||(l9_10312==3))
{
float l9_10315=l9_10311;
float l9_10316=0.0;
float l9_10317=1.0;
bool l9_10318=l9_10313;
float l9_10319=l9_10314;
float l9_10320=fast::clamp(l9_10315,l9_10316,l9_10317);
float l9_10321=step(abs(l9_10315-l9_10320),9.9999997e-06);
l9_10319*=(l9_10321+((1.0-float(l9_10318))*(1.0-l9_10321)));
l9_10315=l9_10320;
l9_10311=l9_10315;
l9_10314=l9_10319;
}
l9_10268.x=l9_10311;
l9_10278=l9_10314;
float l9_10322=l9_10268.y;
int l9_10323=l9_10271.y;
bool l9_10324=l9_10277;
float l9_10325=l9_10278;
if ((l9_10323==0)||(l9_10323==3))
{
float l9_10326=l9_10322;
float l9_10327=0.0;
float l9_10328=1.0;
bool l9_10329=l9_10324;
float l9_10330=l9_10325;
float l9_10331=fast::clamp(l9_10326,l9_10327,l9_10328);
float l9_10332=step(abs(l9_10326-l9_10331),9.9999997e-06);
l9_10330*=(l9_10332+((1.0-float(l9_10329))*(1.0-l9_10332)));
l9_10326=l9_10331;
l9_10322=l9_10326;
l9_10325=l9_10330;
}
l9_10268.y=l9_10322;
l9_10278=l9_10325;
float2 l9_10333=l9_10268;
int l9_10334=l9_10266;
int l9_10335=l9_10267;
float l9_10336=l9_10276;
float2 l9_10337=l9_10333;
int l9_10338=l9_10334;
int l9_10339=l9_10335;
float3 l9_10340=float3(0.0);
if (l9_10338==0)
{
l9_10340=float3(l9_10337,0.0);
}
else
{
if (l9_10338==1)
{
l9_10340=float3(l9_10337.x,(l9_10337.y*0.5)+(0.5-(float(l9_10339)*0.5)),0.0);
}
else
{
l9_10340=float3(l9_10337,float(l9_10339));
}
}
float3 l9_10341=l9_10340;
float3 l9_10342=l9_10341;
float4 l9_10343=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_10342.xy,bias(l9_10336));
float4 l9_10344=l9_10343;
if (l9_10274)
{
l9_10344=mix(l9_10275,l9_10344,float4(l9_10278));
}
float4 l9_10345=l9_10344;
l9_10259=l9_10345;
float l9_10346=0.0;
l9_10346=l9_10259.x;
float l9_10347=0.0;
l9_10347=step(l9_10346,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_10348=float4(0.0);
l9_10348=l9_10256*float4(l9_10347);
l9_10031=l9_10348;
l9_10035=l9_10031;
}
l9_10028=l9_10035;
float2 l9_10349=float2(0.0);
l9_10349=l9_9590.Surface_UVCoord0;
float4 l9_10350=float4(0.0);
int l9_10351;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_10352=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10352=0;
}
else
{
l9_10352=in.varStereoViewID;
}
int l9_10353=l9_10352;
l9_10351=1-l9_10353;
}
else
{
int l9_10354=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10354=0;
}
else
{
l9_10354=in.varStereoViewID;
}
int l9_10355=l9_10354;
l9_10351=l9_10355;
}
int l9_10356=l9_10351;
int l9_10357=greyMaskIdLayout_tmp;
int l9_10358=l9_10356;
float2 l9_10359=l9_10349;
bool l9_10360=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_10361=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_10362=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_10363=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_10364=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_10365=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_10366=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_10367=0.0;
bool l9_10368=l9_10365&&(!l9_10363);
float l9_10369=1.0;
float l9_10370=l9_10359.x;
int l9_10371=l9_10362.x;
if (l9_10371==1)
{
l9_10370=fract(l9_10370);
}
else
{
if (l9_10371==2)
{
float l9_10372=fract(l9_10370);
float l9_10373=l9_10370-l9_10372;
float l9_10374=step(0.25,fract(l9_10373*0.5));
l9_10370=mix(l9_10372,1.0-l9_10372,fast::clamp(l9_10374,0.0,1.0));
}
}
l9_10359.x=l9_10370;
float l9_10375=l9_10359.y;
int l9_10376=l9_10362.y;
if (l9_10376==1)
{
l9_10375=fract(l9_10375);
}
else
{
if (l9_10376==2)
{
float l9_10377=fract(l9_10375);
float l9_10378=l9_10375-l9_10377;
float l9_10379=step(0.25,fract(l9_10378*0.5));
l9_10375=mix(l9_10377,1.0-l9_10377,fast::clamp(l9_10379,0.0,1.0));
}
}
l9_10359.y=l9_10375;
if (l9_10363)
{
bool l9_10380=l9_10365;
bool l9_10381;
if (l9_10380)
{
l9_10381=l9_10362.x==3;
}
else
{
l9_10381=l9_10380;
}
float l9_10382=l9_10359.x;
float l9_10383=l9_10364.x;
float l9_10384=l9_10364.z;
bool l9_10385=l9_10381;
float l9_10386=l9_10369;
float l9_10387=fast::clamp(l9_10382,l9_10383,l9_10384);
float l9_10388=step(abs(l9_10382-l9_10387),9.9999997e-06);
l9_10386*=(l9_10388+((1.0-float(l9_10385))*(1.0-l9_10388)));
l9_10382=l9_10387;
l9_10359.x=l9_10382;
l9_10369=l9_10386;
bool l9_10389=l9_10365;
bool l9_10390;
if (l9_10389)
{
l9_10390=l9_10362.y==3;
}
else
{
l9_10390=l9_10389;
}
float l9_10391=l9_10359.y;
float l9_10392=l9_10364.y;
float l9_10393=l9_10364.w;
bool l9_10394=l9_10390;
float l9_10395=l9_10369;
float l9_10396=fast::clamp(l9_10391,l9_10392,l9_10393);
float l9_10397=step(abs(l9_10391-l9_10396),9.9999997e-06);
l9_10395*=(l9_10397+((1.0-float(l9_10394))*(1.0-l9_10397)));
l9_10391=l9_10396;
l9_10359.y=l9_10391;
l9_10369=l9_10395;
}
float2 l9_10398=l9_10359;
bool l9_10399=l9_10360;
float3x3 l9_10400=l9_10361;
if (l9_10399)
{
l9_10398=float2((l9_10400*float3(l9_10398,1.0)).xy);
}
float2 l9_10401=l9_10398;
l9_10359=l9_10401;
float l9_10402=l9_10359.x;
int l9_10403=l9_10362.x;
bool l9_10404=l9_10368;
float l9_10405=l9_10369;
if ((l9_10403==0)||(l9_10403==3))
{
float l9_10406=l9_10402;
float l9_10407=0.0;
float l9_10408=1.0;
bool l9_10409=l9_10404;
float l9_10410=l9_10405;
float l9_10411=fast::clamp(l9_10406,l9_10407,l9_10408);
float l9_10412=step(abs(l9_10406-l9_10411),9.9999997e-06);
l9_10410*=(l9_10412+((1.0-float(l9_10409))*(1.0-l9_10412)));
l9_10406=l9_10411;
l9_10402=l9_10406;
l9_10405=l9_10410;
}
l9_10359.x=l9_10402;
l9_10369=l9_10405;
float l9_10413=l9_10359.y;
int l9_10414=l9_10362.y;
bool l9_10415=l9_10368;
float l9_10416=l9_10369;
if ((l9_10414==0)||(l9_10414==3))
{
float l9_10417=l9_10413;
float l9_10418=0.0;
float l9_10419=1.0;
bool l9_10420=l9_10415;
float l9_10421=l9_10416;
float l9_10422=fast::clamp(l9_10417,l9_10418,l9_10419);
float l9_10423=step(abs(l9_10417-l9_10422),9.9999997e-06);
l9_10421*=(l9_10423+((1.0-float(l9_10420))*(1.0-l9_10423)));
l9_10417=l9_10422;
l9_10413=l9_10417;
l9_10416=l9_10421;
}
l9_10359.y=l9_10413;
l9_10369=l9_10416;
float2 l9_10424=l9_10359;
int l9_10425=l9_10357;
int l9_10426=l9_10358;
float l9_10427=l9_10367;
float2 l9_10428=l9_10424;
int l9_10429=l9_10425;
int l9_10430=l9_10426;
float3 l9_10431=float3(0.0);
if (l9_10429==0)
{
l9_10431=float3(l9_10428,0.0);
}
else
{
if (l9_10429==1)
{
l9_10431=float3(l9_10428.x,(l9_10428.y*0.5)+(0.5-(float(l9_10430)*0.5)),0.0);
}
else
{
l9_10431=float3(l9_10428,float(l9_10430));
}
}
float3 l9_10432=l9_10431;
float3 l9_10433=l9_10432;
float4 l9_10434=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_10433.xy,bias(l9_10427));
float4 l9_10435=l9_10434;
if (l9_10365)
{
l9_10435=mix(l9_10366,l9_10435,float4(l9_10369));
}
float4 l9_10436=l9_10435;
l9_10350=l9_10436;
float l9_10437=0.0;
l9_10437=l9_10350.x;
float l9_10438=0.0;
l9_10438=step(l9_10437,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_10439=float4(0.0);
l9_10439=l9_10028*float4(l9_10438);
float4 l9_10440=float4(0.0);
float4 l9_10441=(*sc_set0.UserUniforms).colorId01;
l9_10440=l9_10441;
float4 l9_10442=float4(0.0);
l9_10442=l9_10440*float4(l9_10438);
float4 l9_10443=float4(0.0);
float4 l9_10444=l9_10439;
float4 l9_10445=l9_10442;
float4 l9_10446=l9_10444;
float4 l9_10447=l9_10445;
float3 l9_10448=l9_10446.xyz*l9_10446.w;
l9_10446=float4(l9_10448.x,l9_10448.y,l9_10448.z,l9_10446.w);
float4 l9_10449=l9_10446+(l9_10447*(1.0-l9_10446.w));
l9_10443=l9_10449;
l9_9589=l9_10443;
l9_9593=l9_9589;
}
l9_9586=l9_9593;
float l9_10450=0.0;
float l9_10451=(*sc_set0.UserUniforms).metallicId01;
l9_10450=l9_10451;
float l9_10452=0.0;
float l9_10453=(*sc_set0.UserUniforms).rougnessId01;
l9_10452=l9_10453;
float4 l9_10454=float4(0.0);
float3 l9_10455=l9_9586.xyz;
float l9_10456=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_10457=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_10458=l9_10450;
float l9_10459=l9_10452;
float3 l9_10460=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_10461=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_10462=l9_9582;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_10462.BumpedNormal=l9_10462.VertexNormal_WorldSpace;
}
float l9_10463=l9_10456;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_10463<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_10464=gl_FragCoord;
float2 l9_10465=floor(mod(l9_10464.xy,float2(4.0)));
float l9_10466=(mod(dot(l9_10465,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_10463<l9_10466)
{
discard_fragment();
}
}
l9_10455=fast::max(l9_10455,float3(0.0));
float4 l9_10467;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_10467=float4(l9_10455,l9_10456);
}
else
{
l9_10458=fast::clamp(l9_10458,0.0,1.0);
l9_10459=fast::clamp(l9_10459,0.0,1.0);
float3 l9_10468=l9_10455;
float l9_10469=l9_10456;
float3 l9_10470=l9_10462.BumpedNormal;
float3 l9_10471=l9_10462.PositionWS;
float3 l9_10472=l9_10462.ViewDirWS;
float3 l9_10473=l9_10457;
float l9_10474=l9_10458;
float l9_10475=l9_10459;
float3 l9_10476=l9_10460;
float3 l9_10477=l9_10461;
l9_10467=ngsCalculateLighting(l9_10468,l9_10469,l9_10470,l9_10471,l9_10472,l9_10473,l9_10474,l9_10475,l9_10476,l9_10477,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_10467=fast::max(l9_10467,float4(0.0));
l9_10454=l9_10467;
l9_9580=l9_10454;
l9_9585=l9_9580;
}
else
{
float4 l9_10478=float4(0.0);
float l9_10479=0.0;
float4 l9_10480=float4(0.0);
float4 l9_10481=float4(0.0);
ssGlobals l9_10482=l9_9582;
float l9_10483=0.0;
float l9_10484=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_10483=l9_10484;
l9_10479=l9_10483;
float4 l9_10485;
if ((l9_10479*1.0)!=0.0)
{
float l9_10486=0.0;
float l9_10487=(*sc_set0.UserUniforms).rimExpId01;
l9_10486=l9_10487;
float l9_10488=0.0;
float l9_10489=(*sc_set0.UserUniforms).rimIntId01;
l9_10488=l9_10489;
float l9_10490=0.0;
float l9_10491=l9_10486;
float l9_10492=l9_10488;
ssGlobals l9_10493=l9_10482;
float l9_10494=abs(dot(-l9_10493.ViewDirWS,l9_10493.VertexNormal_WorldSpace));
float l9_10495=1.0-pow(1.0-l9_10494,l9_10491);
l9_10495=fast::max(l9_10495,0.0);
l9_10495*=l9_10492;
l9_10490=l9_10495;
float4 l9_10496=float4(0.0);
float l9_10497=0.0;
float4 l9_10498=float4(0.0);
float4 l9_10499=float4(0.0);
ssGlobals l9_10500=l9_10482;
float l9_10501=0.0;
float l9_10502=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_10501=l9_10502;
l9_10497=l9_10501;
float4 l9_10503;
if ((l9_10497*1.0)!=0.0)
{
float4 l9_10504=float4(0.0);
float4 l9_10505=(*sc_set0.UserUniforms).patternColorId01;
l9_10504=l9_10505;
float4 l9_10506=float4(0.0);
float l9_10507=0.0;
float4 l9_10508=float4(0.0);
float4 l9_10509=float4(0.0);
ssGlobals l9_10510=l9_10500;
float l9_10511=0.0;
float l9_10512=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_10511=l9_10512;
l9_10507=l9_10511;
float4 l9_10513;
if ((l9_10507*1.0)!=0.0)
{
float2 l9_10514=float2(0.0);
l9_10514=l9_10510.Surface_UVCoord0;
float2 l9_10515=float2(0.0);
float2 l9_10516=(*sc_set0.UserUniforms).patternScaleId01;
l9_10515=l9_10516;
float2 l9_10517=float2(0.0);
l9_10517=((l9_10514-(*sc_set0.UserUniforms).Port_Center_N122)*l9_10515)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_10518=float2(0.0);
float2 l9_10519=(*sc_set0.UserUniforms).patternOffsetId01;
l9_10518=l9_10519;
float2 l9_10520=float2(0.0);
l9_10520=l9_10517+l9_10518;
float l9_10521=0.0;
float l9_10522=(*sc_set0.UserUniforms).patternRotateId01;
l9_10521=l9_10522;
float2 l9_10523=float2(0.0);
float2 l9_10524=l9_10520;
float l9_10525=l9_10521;
float2 l9_10526=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_10527=sin(radians(l9_10525));
float l9_10528=cos(radians(l9_10525));
float2 l9_10529=l9_10524-l9_10526;
l9_10529=float2(dot(float2(l9_10528,l9_10527),l9_10529),dot(float2(-l9_10527,l9_10528),l9_10529))+l9_10526;
l9_10523=l9_10529;
float4 l9_10530=float4(0.0);
int l9_10531;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_10532=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10532=0;
}
else
{
l9_10532=in.varStereoViewID;
}
int l9_10533=l9_10532;
l9_10531=1-l9_10533;
}
else
{
int l9_10534=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10534=0;
}
else
{
l9_10534=in.varStereoViewID;
}
int l9_10535=l9_10534;
l9_10531=l9_10535;
}
int l9_10536=l9_10531;
int l9_10537=patternTextureId01Layout_tmp;
int l9_10538=l9_10536;
float2 l9_10539=l9_10523;
bool l9_10540=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_10541=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_10542=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_10543=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_10544=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_10545=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_10546=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_10547=0.0;
bool l9_10548=l9_10545&&(!l9_10543);
float l9_10549=1.0;
float l9_10550=l9_10539.x;
int l9_10551=l9_10542.x;
if (l9_10551==1)
{
l9_10550=fract(l9_10550);
}
else
{
if (l9_10551==2)
{
float l9_10552=fract(l9_10550);
float l9_10553=l9_10550-l9_10552;
float l9_10554=step(0.25,fract(l9_10553*0.5));
l9_10550=mix(l9_10552,1.0-l9_10552,fast::clamp(l9_10554,0.0,1.0));
}
}
l9_10539.x=l9_10550;
float l9_10555=l9_10539.y;
int l9_10556=l9_10542.y;
if (l9_10556==1)
{
l9_10555=fract(l9_10555);
}
else
{
if (l9_10556==2)
{
float l9_10557=fract(l9_10555);
float l9_10558=l9_10555-l9_10557;
float l9_10559=step(0.25,fract(l9_10558*0.5));
l9_10555=mix(l9_10557,1.0-l9_10557,fast::clamp(l9_10559,0.0,1.0));
}
}
l9_10539.y=l9_10555;
if (l9_10543)
{
bool l9_10560=l9_10545;
bool l9_10561;
if (l9_10560)
{
l9_10561=l9_10542.x==3;
}
else
{
l9_10561=l9_10560;
}
float l9_10562=l9_10539.x;
float l9_10563=l9_10544.x;
float l9_10564=l9_10544.z;
bool l9_10565=l9_10561;
float l9_10566=l9_10549;
float l9_10567=fast::clamp(l9_10562,l9_10563,l9_10564);
float l9_10568=step(abs(l9_10562-l9_10567),9.9999997e-06);
l9_10566*=(l9_10568+((1.0-float(l9_10565))*(1.0-l9_10568)));
l9_10562=l9_10567;
l9_10539.x=l9_10562;
l9_10549=l9_10566;
bool l9_10569=l9_10545;
bool l9_10570;
if (l9_10569)
{
l9_10570=l9_10542.y==3;
}
else
{
l9_10570=l9_10569;
}
float l9_10571=l9_10539.y;
float l9_10572=l9_10544.y;
float l9_10573=l9_10544.w;
bool l9_10574=l9_10570;
float l9_10575=l9_10549;
float l9_10576=fast::clamp(l9_10571,l9_10572,l9_10573);
float l9_10577=step(abs(l9_10571-l9_10576),9.9999997e-06);
l9_10575*=(l9_10577+((1.0-float(l9_10574))*(1.0-l9_10577)));
l9_10571=l9_10576;
l9_10539.y=l9_10571;
l9_10549=l9_10575;
}
float2 l9_10578=l9_10539;
bool l9_10579=l9_10540;
float3x3 l9_10580=l9_10541;
if (l9_10579)
{
l9_10578=float2((l9_10580*float3(l9_10578,1.0)).xy);
}
float2 l9_10581=l9_10578;
l9_10539=l9_10581;
float l9_10582=l9_10539.x;
int l9_10583=l9_10542.x;
bool l9_10584=l9_10548;
float l9_10585=l9_10549;
if ((l9_10583==0)||(l9_10583==3))
{
float l9_10586=l9_10582;
float l9_10587=0.0;
float l9_10588=1.0;
bool l9_10589=l9_10584;
float l9_10590=l9_10585;
float l9_10591=fast::clamp(l9_10586,l9_10587,l9_10588);
float l9_10592=step(abs(l9_10586-l9_10591),9.9999997e-06);
l9_10590*=(l9_10592+((1.0-float(l9_10589))*(1.0-l9_10592)));
l9_10586=l9_10591;
l9_10582=l9_10586;
l9_10585=l9_10590;
}
l9_10539.x=l9_10582;
l9_10549=l9_10585;
float l9_10593=l9_10539.y;
int l9_10594=l9_10542.y;
bool l9_10595=l9_10548;
float l9_10596=l9_10549;
if ((l9_10594==0)||(l9_10594==3))
{
float l9_10597=l9_10593;
float l9_10598=0.0;
float l9_10599=1.0;
bool l9_10600=l9_10595;
float l9_10601=l9_10596;
float l9_10602=fast::clamp(l9_10597,l9_10598,l9_10599);
float l9_10603=step(abs(l9_10597-l9_10602),9.9999997e-06);
l9_10601*=(l9_10603+((1.0-float(l9_10600))*(1.0-l9_10603)));
l9_10597=l9_10602;
l9_10593=l9_10597;
l9_10596=l9_10601;
}
l9_10539.y=l9_10593;
l9_10549=l9_10596;
float2 l9_10604=l9_10539;
int l9_10605=l9_10537;
int l9_10606=l9_10538;
float l9_10607=l9_10547;
float2 l9_10608=l9_10604;
int l9_10609=l9_10605;
int l9_10610=l9_10606;
float3 l9_10611=float3(0.0);
if (l9_10609==0)
{
l9_10611=float3(l9_10608,0.0);
}
else
{
if (l9_10609==1)
{
l9_10611=float3(l9_10608.x,(l9_10608.y*0.5)+(0.5-(float(l9_10610)*0.5)),0.0);
}
else
{
l9_10611=float3(l9_10608,float(l9_10610));
}
}
float3 l9_10612=l9_10611;
float3 l9_10613=l9_10612;
float4 l9_10614=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_10613.xy,bias(l9_10607));
float4 l9_10615=l9_10614;
if (l9_10545)
{
l9_10615=mix(l9_10546,l9_10615,float4(l9_10549));
}
float4 l9_10616=l9_10615;
l9_10530=l9_10616;
l9_10508=l9_10530;
l9_10513=l9_10508;
}
else
{
float2 l9_10617=float2(0.0);
l9_10617=l9_10510.Surface_UVCoord0;
float2 l9_10618=float2(0.0);
float2 l9_10619=(*sc_set0.UserUniforms).patternScaleId01;
l9_10618=l9_10619;
float2 l9_10620=float2(0.0);
l9_10620=((l9_10617-(*sc_set0.UserUniforms).Port_Center_N122)*l9_10618)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_10621=float2(0.0);
float2 l9_10622=(*sc_set0.UserUniforms).patternOffsetId01;
l9_10621=l9_10622;
float2 l9_10623=float2(0.0);
l9_10623=l9_10620+l9_10621;
float l9_10624=0.0;
float l9_10625=(*sc_set0.UserUniforms).patternRotateId01;
l9_10624=l9_10625;
float2 l9_10626=float2(0.0);
float2 l9_10627=l9_10623;
float l9_10628=l9_10624;
float2 l9_10629=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_10630=sin(radians(l9_10628));
float l9_10631=cos(radians(l9_10628));
float2 l9_10632=l9_10627-l9_10629;
l9_10632=float2(dot(float2(l9_10631,l9_10630),l9_10632),dot(float2(-l9_10630,l9_10631),l9_10632))+l9_10629;
l9_10626=l9_10632;
float4 l9_10633=float4(0.0);
int l9_10634;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_10635=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10635=0;
}
else
{
l9_10635=in.varStereoViewID;
}
int l9_10636=l9_10635;
l9_10634=1-l9_10636;
}
else
{
int l9_10637=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10637=0;
}
else
{
l9_10637=in.varStereoViewID;
}
int l9_10638=l9_10637;
l9_10634=l9_10638;
}
int l9_10639=l9_10634;
int l9_10640=patternTextureId01Layout_tmp;
int l9_10641=l9_10639;
float2 l9_10642=l9_10626;
bool l9_10643=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_10644=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_10645=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_10646=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_10647=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_10648=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_10649=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_10650=0.0;
bool l9_10651=l9_10648&&(!l9_10646);
float l9_10652=1.0;
float l9_10653=l9_10642.x;
int l9_10654=l9_10645.x;
if (l9_10654==1)
{
l9_10653=fract(l9_10653);
}
else
{
if (l9_10654==2)
{
float l9_10655=fract(l9_10653);
float l9_10656=l9_10653-l9_10655;
float l9_10657=step(0.25,fract(l9_10656*0.5));
l9_10653=mix(l9_10655,1.0-l9_10655,fast::clamp(l9_10657,0.0,1.0));
}
}
l9_10642.x=l9_10653;
float l9_10658=l9_10642.y;
int l9_10659=l9_10645.y;
if (l9_10659==1)
{
l9_10658=fract(l9_10658);
}
else
{
if (l9_10659==2)
{
float l9_10660=fract(l9_10658);
float l9_10661=l9_10658-l9_10660;
float l9_10662=step(0.25,fract(l9_10661*0.5));
l9_10658=mix(l9_10660,1.0-l9_10660,fast::clamp(l9_10662,0.0,1.0));
}
}
l9_10642.y=l9_10658;
if (l9_10646)
{
bool l9_10663=l9_10648;
bool l9_10664;
if (l9_10663)
{
l9_10664=l9_10645.x==3;
}
else
{
l9_10664=l9_10663;
}
float l9_10665=l9_10642.x;
float l9_10666=l9_10647.x;
float l9_10667=l9_10647.z;
bool l9_10668=l9_10664;
float l9_10669=l9_10652;
float l9_10670=fast::clamp(l9_10665,l9_10666,l9_10667);
float l9_10671=step(abs(l9_10665-l9_10670),9.9999997e-06);
l9_10669*=(l9_10671+((1.0-float(l9_10668))*(1.0-l9_10671)));
l9_10665=l9_10670;
l9_10642.x=l9_10665;
l9_10652=l9_10669;
bool l9_10672=l9_10648;
bool l9_10673;
if (l9_10672)
{
l9_10673=l9_10645.y==3;
}
else
{
l9_10673=l9_10672;
}
float l9_10674=l9_10642.y;
float l9_10675=l9_10647.y;
float l9_10676=l9_10647.w;
bool l9_10677=l9_10673;
float l9_10678=l9_10652;
float l9_10679=fast::clamp(l9_10674,l9_10675,l9_10676);
float l9_10680=step(abs(l9_10674-l9_10679),9.9999997e-06);
l9_10678*=(l9_10680+((1.0-float(l9_10677))*(1.0-l9_10680)));
l9_10674=l9_10679;
l9_10642.y=l9_10674;
l9_10652=l9_10678;
}
float2 l9_10681=l9_10642;
bool l9_10682=l9_10643;
float3x3 l9_10683=l9_10644;
if (l9_10682)
{
l9_10681=float2((l9_10683*float3(l9_10681,1.0)).xy);
}
float2 l9_10684=l9_10681;
l9_10642=l9_10684;
float l9_10685=l9_10642.x;
int l9_10686=l9_10645.x;
bool l9_10687=l9_10651;
float l9_10688=l9_10652;
if ((l9_10686==0)||(l9_10686==3))
{
float l9_10689=l9_10685;
float l9_10690=0.0;
float l9_10691=1.0;
bool l9_10692=l9_10687;
float l9_10693=l9_10688;
float l9_10694=fast::clamp(l9_10689,l9_10690,l9_10691);
float l9_10695=step(abs(l9_10689-l9_10694),9.9999997e-06);
l9_10693*=(l9_10695+((1.0-float(l9_10692))*(1.0-l9_10695)));
l9_10689=l9_10694;
l9_10685=l9_10689;
l9_10688=l9_10693;
}
l9_10642.x=l9_10685;
l9_10652=l9_10688;
float l9_10696=l9_10642.y;
int l9_10697=l9_10645.y;
bool l9_10698=l9_10651;
float l9_10699=l9_10652;
if ((l9_10697==0)||(l9_10697==3))
{
float l9_10700=l9_10696;
float l9_10701=0.0;
float l9_10702=1.0;
bool l9_10703=l9_10698;
float l9_10704=l9_10699;
float l9_10705=fast::clamp(l9_10700,l9_10701,l9_10702);
float l9_10706=step(abs(l9_10700-l9_10705),9.9999997e-06);
l9_10704*=(l9_10706+((1.0-float(l9_10703))*(1.0-l9_10706)));
l9_10700=l9_10705;
l9_10696=l9_10700;
l9_10699=l9_10704;
}
l9_10642.y=l9_10696;
l9_10652=l9_10699;
float2 l9_10707=l9_10642;
int l9_10708=l9_10640;
int l9_10709=l9_10641;
float l9_10710=l9_10650;
float2 l9_10711=l9_10707;
int l9_10712=l9_10708;
int l9_10713=l9_10709;
float3 l9_10714=float3(0.0);
if (l9_10712==0)
{
l9_10714=float3(l9_10711,0.0);
}
else
{
if (l9_10712==1)
{
l9_10714=float3(l9_10711.x,(l9_10711.y*0.5)+(0.5-(float(l9_10713)*0.5)),0.0);
}
else
{
l9_10714=float3(l9_10711,float(l9_10713));
}
}
float3 l9_10715=l9_10714;
float3 l9_10716=l9_10715;
float4 l9_10717=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_10716.xy,bias(l9_10710));
float4 l9_10718=l9_10717;
if (l9_10648)
{
l9_10718=mix(l9_10649,l9_10718,float4(l9_10652));
}
float4 l9_10719=l9_10718;
l9_10633=l9_10719;
float l9_10720=0.0;
float3 l9_10721=l9_10633.xyz;
float l9_10722=l9_10721.x;
l9_10720=l9_10722;
l9_10509=float4(l9_10720);
l9_10513=l9_10509;
}
l9_10506=l9_10513;
float4 l9_10723=float4(0.0);
l9_10723=l9_10504*l9_10506;
l9_10498=l9_10723;
l9_10503=l9_10498;
}
else
{
float4 l9_10724=float4(0.0);
float4 l9_10725=(*sc_set0.UserUniforms).colorId01;
l9_10724=l9_10725;
float2 l9_10726=float2(0.0);
l9_10726=l9_10500.Surface_UVCoord0;
float4 l9_10727=float4(0.0);
int l9_10728;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_10729=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10729=0;
}
else
{
l9_10729=in.varStereoViewID;
}
int l9_10730=l9_10729;
l9_10728=1-l9_10730;
}
else
{
int l9_10731=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10731=0;
}
else
{
l9_10731=in.varStereoViewID;
}
int l9_10732=l9_10731;
l9_10728=l9_10732;
}
int l9_10733=l9_10728;
int l9_10734=greyMaskIdLayout_tmp;
int l9_10735=l9_10733;
float2 l9_10736=l9_10726;
bool l9_10737=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_10738=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_10739=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_10740=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_10741=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_10742=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_10743=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_10744=0.0;
bool l9_10745=l9_10742&&(!l9_10740);
float l9_10746=1.0;
float l9_10747=l9_10736.x;
int l9_10748=l9_10739.x;
if (l9_10748==1)
{
l9_10747=fract(l9_10747);
}
else
{
if (l9_10748==2)
{
float l9_10749=fract(l9_10747);
float l9_10750=l9_10747-l9_10749;
float l9_10751=step(0.25,fract(l9_10750*0.5));
l9_10747=mix(l9_10749,1.0-l9_10749,fast::clamp(l9_10751,0.0,1.0));
}
}
l9_10736.x=l9_10747;
float l9_10752=l9_10736.y;
int l9_10753=l9_10739.y;
if (l9_10753==1)
{
l9_10752=fract(l9_10752);
}
else
{
if (l9_10753==2)
{
float l9_10754=fract(l9_10752);
float l9_10755=l9_10752-l9_10754;
float l9_10756=step(0.25,fract(l9_10755*0.5));
l9_10752=mix(l9_10754,1.0-l9_10754,fast::clamp(l9_10756,0.0,1.0));
}
}
l9_10736.y=l9_10752;
if (l9_10740)
{
bool l9_10757=l9_10742;
bool l9_10758;
if (l9_10757)
{
l9_10758=l9_10739.x==3;
}
else
{
l9_10758=l9_10757;
}
float l9_10759=l9_10736.x;
float l9_10760=l9_10741.x;
float l9_10761=l9_10741.z;
bool l9_10762=l9_10758;
float l9_10763=l9_10746;
float l9_10764=fast::clamp(l9_10759,l9_10760,l9_10761);
float l9_10765=step(abs(l9_10759-l9_10764),9.9999997e-06);
l9_10763*=(l9_10765+((1.0-float(l9_10762))*(1.0-l9_10765)));
l9_10759=l9_10764;
l9_10736.x=l9_10759;
l9_10746=l9_10763;
bool l9_10766=l9_10742;
bool l9_10767;
if (l9_10766)
{
l9_10767=l9_10739.y==3;
}
else
{
l9_10767=l9_10766;
}
float l9_10768=l9_10736.y;
float l9_10769=l9_10741.y;
float l9_10770=l9_10741.w;
bool l9_10771=l9_10767;
float l9_10772=l9_10746;
float l9_10773=fast::clamp(l9_10768,l9_10769,l9_10770);
float l9_10774=step(abs(l9_10768-l9_10773),9.9999997e-06);
l9_10772*=(l9_10774+((1.0-float(l9_10771))*(1.0-l9_10774)));
l9_10768=l9_10773;
l9_10736.y=l9_10768;
l9_10746=l9_10772;
}
float2 l9_10775=l9_10736;
bool l9_10776=l9_10737;
float3x3 l9_10777=l9_10738;
if (l9_10776)
{
l9_10775=float2((l9_10777*float3(l9_10775,1.0)).xy);
}
float2 l9_10778=l9_10775;
l9_10736=l9_10778;
float l9_10779=l9_10736.x;
int l9_10780=l9_10739.x;
bool l9_10781=l9_10745;
float l9_10782=l9_10746;
if ((l9_10780==0)||(l9_10780==3))
{
float l9_10783=l9_10779;
float l9_10784=0.0;
float l9_10785=1.0;
bool l9_10786=l9_10781;
float l9_10787=l9_10782;
float l9_10788=fast::clamp(l9_10783,l9_10784,l9_10785);
float l9_10789=step(abs(l9_10783-l9_10788),9.9999997e-06);
l9_10787*=(l9_10789+((1.0-float(l9_10786))*(1.0-l9_10789)));
l9_10783=l9_10788;
l9_10779=l9_10783;
l9_10782=l9_10787;
}
l9_10736.x=l9_10779;
l9_10746=l9_10782;
float l9_10790=l9_10736.y;
int l9_10791=l9_10739.y;
bool l9_10792=l9_10745;
float l9_10793=l9_10746;
if ((l9_10791==0)||(l9_10791==3))
{
float l9_10794=l9_10790;
float l9_10795=0.0;
float l9_10796=1.0;
bool l9_10797=l9_10792;
float l9_10798=l9_10793;
float l9_10799=fast::clamp(l9_10794,l9_10795,l9_10796);
float l9_10800=step(abs(l9_10794-l9_10799),9.9999997e-06);
l9_10798*=(l9_10800+((1.0-float(l9_10797))*(1.0-l9_10800)));
l9_10794=l9_10799;
l9_10790=l9_10794;
l9_10793=l9_10798;
}
l9_10736.y=l9_10790;
l9_10746=l9_10793;
float2 l9_10801=l9_10736;
int l9_10802=l9_10734;
int l9_10803=l9_10735;
float l9_10804=l9_10744;
float2 l9_10805=l9_10801;
int l9_10806=l9_10802;
int l9_10807=l9_10803;
float3 l9_10808=float3(0.0);
if (l9_10806==0)
{
l9_10808=float3(l9_10805,0.0);
}
else
{
if (l9_10806==1)
{
l9_10808=float3(l9_10805.x,(l9_10805.y*0.5)+(0.5-(float(l9_10807)*0.5)),0.0);
}
else
{
l9_10808=float3(l9_10805,float(l9_10807));
}
}
float3 l9_10809=l9_10808;
float3 l9_10810=l9_10809;
float4 l9_10811=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_10810.xy,bias(l9_10804));
float4 l9_10812=l9_10811;
if (l9_10742)
{
l9_10812=mix(l9_10743,l9_10812,float4(l9_10746));
}
float4 l9_10813=l9_10812;
l9_10727=l9_10813;
float l9_10814=0.0;
l9_10814=l9_10727.x;
float l9_10815=0.0;
l9_10815=step(l9_10814,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_10816=float4(0.0);
l9_10816=l9_10724*float4(l9_10815);
l9_10499=l9_10816;
l9_10503=l9_10499;
}
l9_10496=l9_10503;
float2 l9_10817=float2(0.0);
l9_10817=l9_10482.Surface_UVCoord0;
float4 l9_10818=float4(0.0);
int l9_10819;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_10820=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10820=0;
}
else
{
l9_10820=in.varStereoViewID;
}
int l9_10821=l9_10820;
l9_10819=1-l9_10821;
}
else
{
int l9_10822=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10822=0;
}
else
{
l9_10822=in.varStereoViewID;
}
int l9_10823=l9_10822;
l9_10819=l9_10823;
}
int l9_10824=l9_10819;
int l9_10825=greyMaskIdLayout_tmp;
int l9_10826=l9_10824;
float2 l9_10827=l9_10817;
bool l9_10828=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_10829=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_10830=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_10831=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_10832=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_10833=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_10834=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_10835=0.0;
bool l9_10836=l9_10833&&(!l9_10831);
float l9_10837=1.0;
float l9_10838=l9_10827.x;
int l9_10839=l9_10830.x;
if (l9_10839==1)
{
l9_10838=fract(l9_10838);
}
else
{
if (l9_10839==2)
{
float l9_10840=fract(l9_10838);
float l9_10841=l9_10838-l9_10840;
float l9_10842=step(0.25,fract(l9_10841*0.5));
l9_10838=mix(l9_10840,1.0-l9_10840,fast::clamp(l9_10842,0.0,1.0));
}
}
l9_10827.x=l9_10838;
float l9_10843=l9_10827.y;
int l9_10844=l9_10830.y;
if (l9_10844==1)
{
l9_10843=fract(l9_10843);
}
else
{
if (l9_10844==2)
{
float l9_10845=fract(l9_10843);
float l9_10846=l9_10843-l9_10845;
float l9_10847=step(0.25,fract(l9_10846*0.5));
l9_10843=mix(l9_10845,1.0-l9_10845,fast::clamp(l9_10847,0.0,1.0));
}
}
l9_10827.y=l9_10843;
if (l9_10831)
{
bool l9_10848=l9_10833;
bool l9_10849;
if (l9_10848)
{
l9_10849=l9_10830.x==3;
}
else
{
l9_10849=l9_10848;
}
float l9_10850=l9_10827.x;
float l9_10851=l9_10832.x;
float l9_10852=l9_10832.z;
bool l9_10853=l9_10849;
float l9_10854=l9_10837;
float l9_10855=fast::clamp(l9_10850,l9_10851,l9_10852);
float l9_10856=step(abs(l9_10850-l9_10855),9.9999997e-06);
l9_10854*=(l9_10856+((1.0-float(l9_10853))*(1.0-l9_10856)));
l9_10850=l9_10855;
l9_10827.x=l9_10850;
l9_10837=l9_10854;
bool l9_10857=l9_10833;
bool l9_10858;
if (l9_10857)
{
l9_10858=l9_10830.y==3;
}
else
{
l9_10858=l9_10857;
}
float l9_10859=l9_10827.y;
float l9_10860=l9_10832.y;
float l9_10861=l9_10832.w;
bool l9_10862=l9_10858;
float l9_10863=l9_10837;
float l9_10864=fast::clamp(l9_10859,l9_10860,l9_10861);
float l9_10865=step(abs(l9_10859-l9_10864),9.9999997e-06);
l9_10863*=(l9_10865+((1.0-float(l9_10862))*(1.0-l9_10865)));
l9_10859=l9_10864;
l9_10827.y=l9_10859;
l9_10837=l9_10863;
}
float2 l9_10866=l9_10827;
bool l9_10867=l9_10828;
float3x3 l9_10868=l9_10829;
if (l9_10867)
{
l9_10866=float2((l9_10868*float3(l9_10866,1.0)).xy);
}
float2 l9_10869=l9_10866;
l9_10827=l9_10869;
float l9_10870=l9_10827.x;
int l9_10871=l9_10830.x;
bool l9_10872=l9_10836;
float l9_10873=l9_10837;
if ((l9_10871==0)||(l9_10871==3))
{
float l9_10874=l9_10870;
float l9_10875=0.0;
float l9_10876=1.0;
bool l9_10877=l9_10872;
float l9_10878=l9_10873;
float l9_10879=fast::clamp(l9_10874,l9_10875,l9_10876);
float l9_10880=step(abs(l9_10874-l9_10879),9.9999997e-06);
l9_10878*=(l9_10880+((1.0-float(l9_10877))*(1.0-l9_10880)));
l9_10874=l9_10879;
l9_10870=l9_10874;
l9_10873=l9_10878;
}
l9_10827.x=l9_10870;
l9_10837=l9_10873;
float l9_10881=l9_10827.y;
int l9_10882=l9_10830.y;
bool l9_10883=l9_10836;
float l9_10884=l9_10837;
if ((l9_10882==0)||(l9_10882==3))
{
float l9_10885=l9_10881;
float l9_10886=0.0;
float l9_10887=1.0;
bool l9_10888=l9_10883;
float l9_10889=l9_10884;
float l9_10890=fast::clamp(l9_10885,l9_10886,l9_10887);
float l9_10891=step(abs(l9_10885-l9_10890),9.9999997e-06);
l9_10889*=(l9_10891+((1.0-float(l9_10888))*(1.0-l9_10891)));
l9_10885=l9_10890;
l9_10881=l9_10885;
l9_10884=l9_10889;
}
l9_10827.y=l9_10881;
l9_10837=l9_10884;
float2 l9_10892=l9_10827;
int l9_10893=l9_10825;
int l9_10894=l9_10826;
float l9_10895=l9_10835;
float2 l9_10896=l9_10892;
int l9_10897=l9_10893;
int l9_10898=l9_10894;
float3 l9_10899=float3(0.0);
if (l9_10897==0)
{
l9_10899=float3(l9_10896,0.0);
}
else
{
if (l9_10897==1)
{
l9_10899=float3(l9_10896.x,(l9_10896.y*0.5)+(0.5-(float(l9_10898)*0.5)),0.0);
}
else
{
l9_10899=float3(l9_10896,float(l9_10898));
}
}
float3 l9_10900=l9_10899;
float3 l9_10901=l9_10900;
float4 l9_10902=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_10901.xy,bias(l9_10895));
float4 l9_10903=l9_10902;
if (l9_10833)
{
l9_10903=mix(l9_10834,l9_10903,float4(l9_10837));
}
float4 l9_10904=l9_10903;
l9_10818=l9_10904;
float l9_10905=0.0;
l9_10905=l9_10818.x;
float l9_10906=0.0;
l9_10906=step(l9_10905,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_10907=float4(0.0);
l9_10907=l9_10496*float4(l9_10906);
float4 l9_10908=float4(0.0);
float4 l9_10909=(*sc_set0.UserUniforms).colorId01;
l9_10908=l9_10909;
float4 l9_10910=float4(0.0);
l9_10910=l9_10908*float4(l9_10906);
float4 l9_10911=float4(0.0);
float4 l9_10912=l9_10907;
float4 l9_10913=l9_10910;
float4 l9_10914=l9_10912;
float4 l9_10915=l9_10913;
float3 l9_10916=l9_10914.xyz*l9_10914.w;
l9_10914=float4(l9_10916.x,l9_10916.y,l9_10916.z,l9_10914.w);
float4 l9_10917=l9_10914+(l9_10915*(1.0-l9_10914.w));
l9_10911=l9_10917;
float4 l9_10918=float4(0.0);
l9_10918=float4(l9_10490)*l9_10911;
float4 l9_10919=float4(0.0);
l9_10919=l9_10918+l9_10911;
l9_10480=l9_10919;
l9_10485=l9_10480;
}
else
{
float4 l9_10920=float4(0.0);
float l9_10921=0.0;
float4 l9_10922=float4(0.0);
float4 l9_10923=float4(0.0);
ssGlobals l9_10924=l9_10482;
float l9_10925=0.0;
float l9_10926=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_10925=l9_10926;
l9_10921=l9_10925;
float4 l9_10927;
if ((l9_10921*1.0)!=0.0)
{
float4 l9_10928=float4(0.0);
float4 l9_10929=(*sc_set0.UserUniforms).patternColorId01;
l9_10928=l9_10929;
float4 l9_10930=float4(0.0);
float l9_10931=0.0;
float4 l9_10932=float4(0.0);
float4 l9_10933=float4(0.0);
ssGlobals l9_10934=l9_10924;
float l9_10935=0.0;
float l9_10936=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_10935=l9_10936;
l9_10931=l9_10935;
float4 l9_10937;
if ((l9_10931*1.0)!=0.0)
{
float2 l9_10938=float2(0.0);
l9_10938=l9_10934.Surface_UVCoord0;
float2 l9_10939=float2(0.0);
float2 l9_10940=(*sc_set0.UserUniforms).patternScaleId01;
l9_10939=l9_10940;
float2 l9_10941=float2(0.0);
l9_10941=((l9_10938-(*sc_set0.UserUniforms).Port_Center_N122)*l9_10939)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_10942=float2(0.0);
float2 l9_10943=(*sc_set0.UserUniforms).patternOffsetId01;
l9_10942=l9_10943;
float2 l9_10944=float2(0.0);
l9_10944=l9_10941+l9_10942;
float l9_10945=0.0;
float l9_10946=(*sc_set0.UserUniforms).patternRotateId01;
l9_10945=l9_10946;
float2 l9_10947=float2(0.0);
float2 l9_10948=l9_10944;
float l9_10949=l9_10945;
float2 l9_10950=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_10951=sin(radians(l9_10949));
float l9_10952=cos(radians(l9_10949));
float2 l9_10953=l9_10948-l9_10950;
l9_10953=float2(dot(float2(l9_10952,l9_10951),l9_10953),dot(float2(-l9_10951,l9_10952),l9_10953))+l9_10950;
l9_10947=l9_10953;
float4 l9_10954=float4(0.0);
int l9_10955;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_10956=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10956=0;
}
else
{
l9_10956=in.varStereoViewID;
}
int l9_10957=l9_10956;
l9_10955=1-l9_10957;
}
else
{
int l9_10958=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_10958=0;
}
else
{
l9_10958=in.varStereoViewID;
}
int l9_10959=l9_10958;
l9_10955=l9_10959;
}
int l9_10960=l9_10955;
int l9_10961=patternTextureId01Layout_tmp;
int l9_10962=l9_10960;
float2 l9_10963=l9_10947;
bool l9_10964=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_10965=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_10966=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_10967=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_10968=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_10969=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_10970=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_10971=0.0;
bool l9_10972=l9_10969&&(!l9_10967);
float l9_10973=1.0;
float l9_10974=l9_10963.x;
int l9_10975=l9_10966.x;
if (l9_10975==1)
{
l9_10974=fract(l9_10974);
}
else
{
if (l9_10975==2)
{
float l9_10976=fract(l9_10974);
float l9_10977=l9_10974-l9_10976;
float l9_10978=step(0.25,fract(l9_10977*0.5));
l9_10974=mix(l9_10976,1.0-l9_10976,fast::clamp(l9_10978,0.0,1.0));
}
}
l9_10963.x=l9_10974;
float l9_10979=l9_10963.y;
int l9_10980=l9_10966.y;
if (l9_10980==1)
{
l9_10979=fract(l9_10979);
}
else
{
if (l9_10980==2)
{
float l9_10981=fract(l9_10979);
float l9_10982=l9_10979-l9_10981;
float l9_10983=step(0.25,fract(l9_10982*0.5));
l9_10979=mix(l9_10981,1.0-l9_10981,fast::clamp(l9_10983,0.0,1.0));
}
}
l9_10963.y=l9_10979;
if (l9_10967)
{
bool l9_10984=l9_10969;
bool l9_10985;
if (l9_10984)
{
l9_10985=l9_10966.x==3;
}
else
{
l9_10985=l9_10984;
}
float l9_10986=l9_10963.x;
float l9_10987=l9_10968.x;
float l9_10988=l9_10968.z;
bool l9_10989=l9_10985;
float l9_10990=l9_10973;
float l9_10991=fast::clamp(l9_10986,l9_10987,l9_10988);
float l9_10992=step(abs(l9_10986-l9_10991),9.9999997e-06);
l9_10990*=(l9_10992+((1.0-float(l9_10989))*(1.0-l9_10992)));
l9_10986=l9_10991;
l9_10963.x=l9_10986;
l9_10973=l9_10990;
bool l9_10993=l9_10969;
bool l9_10994;
if (l9_10993)
{
l9_10994=l9_10966.y==3;
}
else
{
l9_10994=l9_10993;
}
float l9_10995=l9_10963.y;
float l9_10996=l9_10968.y;
float l9_10997=l9_10968.w;
bool l9_10998=l9_10994;
float l9_10999=l9_10973;
float l9_11000=fast::clamp(l9_10995,l9_10996,l9_10997);
float l9_11001=step(abs(l9_10995-l9_11000),9.9999997e-06);
l9_10999*=(l9_11001+((1.0-float(l9_10998))*(1.0-l9_11001)));
l9_10995=l9_11000;
l9_10963.y=l9_10995;
l9_10973=l9_10999;
}
float2 l9_11002=l9_10963;
bool l9_11003=l9_10964;
float3x3 l9_11004=l9_10965;
if (l9_11003)
{
l9_11002=float2((l9_11004*float3(l9_11002,1.0)).xy);
}
float2 l9_11005=l9_11002;
l9_10963=l9_11005;
float l9_11006=l9_10963.x;
int l9_11007=l9_10966.x;
bool l9_11008=l9_10972;
float l9_11009=l9_10973;
if ((l9_11007==0)||(l9_11007==3))
{
float l9_11010=l9_11006;
float l9_11011=0.0;
float l9_11012=1.0;
bool l9_11013=l9_11008;
float l9_11014=l9_11009;
float l9_11015=fast::clamp(l9_11010,l9_11011,l9_11012);
float l9_11016=step(abs(l9_11010-l9_11015),9.9999997e-06);
l9_11014*=(l9_11016+((1.0-float(l9_11013))*(1.0-l9_11016)));
l9_11010=l9_11015;
l9_11006=l9_11010;
l9_11009=l9_11014;
}
l9_10963.x=l9_11006;
l9_10973=l9_11009;
float l9_11017=l9_10963.y;
int l9_11018=l9_10966.y;
bool l9_11019=l9_10972;
float l9_11020=l9_10973;
if ((l9_11018==0)||(l9_11018==3))
{
float l9_11021=l9_11017;
float l9_11022=0.0;
float l9_11023=1.0;
bool l9_11024=l9_11019;
float l9_11025=l9_11020;
float l9_11026=fast::clamp(l9_11021,l9_11022,l9_11023);
float l9_11027=step(abs(l9_11021-l9_11026),9.9999997e-06);
l9_11025*=(l9_11027+((1.0-float(l9_11024))*(1.0-l9_11027)));
l9_11021=l9_11026;
l9_11017=l9_11021;
l9_11020=l9_11025;
}
l9_10963.y=l9_11017;
l9_10973=l9_11020;
float2 l9_11028=l9_10963;
int l9_11029=l9_10961;
int l9_11030=l9_10962;
float l9_11031=l9_10971;
float2 l9_11032=l9_11028;
int l9_11033=l9_11029;
int l9_11034=l9_11030;
float3 l9_11035=float3(0.0);
if (l9_11033==0)
{
l9_11035=float3(l9_11032,0.0);
}
else
{
if (l9_11033==1)
{
l9_11035=float3(l9_11032.x,(l9_11032.y*0.5)+(0.5-(float(l9_11034)*0.5)),0.0);
}
else
{
l9_11035=float3(l9_11032,float(l9_11034));
}
}
float3 l9_11036=l9_11035;
float3 l9_11037=l9_11036;
float4 l9_11038=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_11037.xy,bias(l9_11031));
float4 l9_11039=l9_11038;
if (l9_10969)
{
l9_11039=mix(l9_10970,l9_11039,float4(l9_10973));
}
float4 l9_11040=l9_11039;
l9_10954=l9_11040;
l9_10932=l9_10954;
l9_10937=l9_10932;
}
else
{
float2 l9_11041=float2(0.0);
l9_11041=l9_10934.Surface_UVCoord0;
float2 l9_11042=float2(0.0);
float2 l9_11043=(*sc_set0.UserUniforms).patternScaleId01;
l9_11042=l9_11043;
float2 l9_11044=float2(0.0);
l9_11044=((l9_11041-(*sc_set0.UserUniforms).Port_Center_N122)*l9_11042)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_11045=float2(0.0);
float2 l9_11046=(*sc_set0.UserUniforms).patternOffsetId01;
l9_11045=l9_11046;
float2 l9_11047=float2(0.0);
l9_11047=l9_11044+l9_11045;
float l9_11048=0.0;
float l9_11049=(*sc_set0.UserUniforms).patternRotateId01;
l9_11048=l9_11049;
float2 l9_11050=float2(0.0);
float2 l9_11051=l9_11047;
float l9_11052=l9_11048;
float2 l9_11053=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_11054=sin(radians(l9_11052));
float l9_11055=cos(radians(l9_11052));
float2 l9_11056=l9_11051-l9_11053;
l9_11056=float2(dot(float2(l9_11055,l9_11054),l9_11056),dot(float2(-l9_11054,l9_11055),l9_11056))+l9_11053;
l9_11050=l9_11056;
float4 l9_11057=float4(0.0);
int l9_11058;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_11059=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11059=0;
}
else
{
l9_11059=in.varStereoViewID;
}
int l9_11060=l9_11059;
l9_11058=1-l9_11060;
}
else
{
int l9_11061=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11061=0;
}
else
{
l9_11061=in.varStereoViewID;
}
int l9_11062=l9_11061;
l9_11058=l9_11062;
}
int l9_11063=l9_11058;
int l9_11064=patternTextureId01Layout_tmp;
int l9_11065=l9_11063;
float2 l9_11066=l9_11050;
bool l9_11067=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_11068=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_11069=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_11070=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_11071=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_11072=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_11073=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_11074=0.0;
bool l9_11075=l9_11072&&(!l9_11070);
float l9_11076=1.0;
float l9_11077=l9_11066.x;
int l9_11078=l9_11069.x;
if (l9_11078==1)
{
l9_11077=fract(l9_11077);
}
else
{
if (l9_11078==2)
{
float l9_11079=fract(l9_11077);
float l9_11080=l9_11077-l9_11079;
float l9_11081=step(0.25,fract(l9_11080*0.5));
l9_11077=mix(l9_11079,1.0-l9_11079,fast::clamp(l9_11081,0.0,1.0));
}
}
l9_11066.x=l9_11077;
float l9_11082=l9_11066.y;
int l9_11083=l9_11069.y;
if (l9_11083==1)
{
l9_11082=fract(l9_11082);
}
else
{
if (l9_11083==2)
{
float l9_11084=fract(l9_11082);
float l9_11085=l9_11082-l9_11084;
float l9_11086=step(0.25,fract(l9_11085*0.5));
l9_11082=mix(l9_11084,1.0-l9_11084,fast::clamp(l9_11086,0.0,1.0));
}
}
l9_11066.y=l9_11082;
if (l9_11070)
{
bool l9_11087=l9_11072;
bool l9_11088;
if (l9_11087)
{
l9_11088=l9_11069.x==3;
}
else
{
l9_11088=l9_11087;
}
float l9_11089=l9_11066.x;
float l9_11090=l9_11071.x;
float l9_11091=l9_11071.z;
bool l9_11092=l9_11088;
float l9_11093=l9_11076;
float l9_11094=fast::clamp(l9_11089,l9_11090,l9_11091);
float l9_11095=step(abs(l9_11089-l9_11094),9.9999997e-06);
l9_11093*=(l9_11095+((1.0-float(l9_11092))*(1.0-l9_11095)));
l9_11089=l9_11094;
l9_11066.x=l9_11089;
l9_11076=l9_11093;
bool l9_11096=l9_11072;
bool l9_11097;
if (l9_11096)
{
l9_11097=l9_11069.y==3;
}
else
{
l9_11097=l9_11096;
}
float l9_11098=l9_11066.y;
float l9_11099=l9_11071.y;
float l9_11100=l9_11071.w;
bool l9_11101=l9_11097;
float l9_11102=l9_11076;
float l9_11103=fast::clamp(l9_11098,l9_11099,l9_11100);
float l9_11104=step(abs(l9_11098-l9_11103),9.9999997e-06);
l9_11102*=(l9_11104+((1.0-float(l9_11101))*(1.0-l9_11104)));
l9_11098=l9_11103;
l9_11066.y=l9_11098;
l9_11076=l9_11102;
}
float2 l9_11105=l9_11066;
bool l9_11106=l9_11067;
float3x3 l9_11107=l9_11068;
if (l9_11106)
{
l9_11105=float2((l9_11107*float3(l9_11105,1.0)).xy);
}
float2 l9_11108=l9_11105;
l9_11066=l9_11108;
float l9_11109=l9_11066.x;
int l9_11110=l9_11069.x;
bool l9_11111=l9_11075;
float l9_11112=l9_11076;
if ((l9_11110==0)||(l9_11110==3))
{
float l9_11113=l9_11109;
float l9_11114=0.0;
float l9_11115=1.0;
bool l9_11116=l9_11111;
float l9_11117=l9_11112;
float l9_11118=fast::clamp(l9_11113,l9_11114,l9_11115);
float l9_11119=step(abs(l9_11113-l9_11118),9.9999997e-06);
l9_11117*=(l9_11119+((1.0-float(l9_11116))*(1.0-l9_11119)));
l9_11113=l9_11118;
l9_11109=l9_11113;
l9_11112=l9_11117;
}
l9_11066.x=l9_11109;
l9_11076=l9_11112;
float l9_11120=l9_11066.y;
int l9_11121=l9_11069.y;
bool l9_11122=l9_11075;
float l9_11123=l9_11076;
if ((l9_11121==0)||(l9_11121==3))
{
float l9_11124=l9_11120;
float l9_11125=0.0;
float l9_11126=1.0;
bool l9_11127=l9_11122;
float l9_11128=l9_11123;
float l9_11129=fast::clamp(l9_11124,l9_11125,l9_11126);
float l9_11130=step(abs(l9_11124-l9_11129),9.9999997e-06);
l9_11128*=(l9_11130+((1.0-float(l9_11127))*(1.0-l9_11130)));
l9_11124=l9_11129;
l9_11120=l9_11124;
l9_11123=l9_11128;
}
l9_11066.y=l9_11120;
l9_11076=l9_11123;
float2 l9_11131=l9_11066;
int l9_11132=l9_11064;
int l9_11133=l9_11065;
float l9_11134=l9_11074;
float2 l9_11135=l9_11131;
int l9_11136=l9_11132;
int l9_11137=l9_11133;
float3 l9_11138=float3(0.0);
if (l9_11136==0)
{
l9_11138=float3(l9_11135,0.0);
}
else
{
if (l9_11136==1)
{
l9_11138=float3(l9_11135.x,(l9_11135.y*0.5)+(0.5-(float(l9_11137)*0.5)),0.0);
}
else
{
l9_11138=float3(l9_11135,float(l9_11137));
}
}
float3 l9_11139=l9_11138;
float3 l9_11140=l9_11139;
float4 l9_11141=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_11140.xy,bias(l9_11134));
float4 l9_11142=l9_11141;
if (l9_11072)
{
l9_11142=mix(l9_11073,l9_11142,float4(l9_11076));
}
float4 l9_11143=l9_11142;
l9_11057=l9_11143;
float l9_11144=0.0;
float3 l9_11145=l9_11057.xyz;
float l9_11146=l9_11145.x;
l9_11144=l9_11146;
l9_10933=float4(l9_11144);
l9_10937=l9_10933;
}
l9_10930=l9_10937;
float4 l9_11147=float4(0.0);
l9_11147=l9_10928*l9_10930;
l9_10922=l9_11147;
l9_10927=l9_10922;
}
else
{
float4 l9_11148=float4(0.0);
float4 l9_11149=(*sc_set0.UserUniforms).colorId01;
l9_11148=l9_11149;
float2 l9_11150=float2(0.0);
l9_11150=l9_10924.Surface_UVCoord0;
float4 l9_11151=float4(0.0);
int l9_11152;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_11153=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11153=0;
}
else
{
l9_11153=in.varStereoViewID;
}
int l9_11154=l9_11153;
l9_11152=1-l9_11154;
}
else
{
int l9_11155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11155=0;
}
else
{
l9_11155=in.varStereoViewID;
}
int l9_11156=l9_11155;
l9_11152=l9_11156;
}
int l9_11157=l9_11152;
int l9_11158=greyMaskIdLayout_tmp;
int l9_11159=l9_11157;
float2 l9_11160=l9_11150;
bool l9_11161=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_11162=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_11163=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_11164=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_11165=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_11166=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_11167=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_11168=0.0;
bool l9_11169=l9_11166&&(!l9_11164);
float l9_11170=1.0;
float l9_11171=l9_11160.x;
int l9_11172=l9_11163.x;
if (l9_11172==1)
{
l9_11171=fract(l9_11171);
}
else
{
if (l9_11172==2)
{
float l9_11173=fract(l9_11171);
float l9_11174=l9_11171-l9_11173;
float l9_11175=step(0.25,fract(l9_11174*0.5));
l9_11171=mix(l9_11173,1.0-l9_11173,fast::clamp(l9_11175,0.0,1.0));
}
}
l9_11160.x=l9_11171;
float l9_11176=l9_11160.y;
int l9_11177=l9_11163.y;
if (l9_11177==1)
{
l9_11176=fract(l9_11176);
}
else
{
if (l9_11177==2)
{
float l9_11178=fract(l9_11176);
float l9_11179=l9_11176-l9_11178;
float l9_11180=step(0.25,fract(l9_11179*0.5));
l9_11176=mix(l9_11178,1.0-l9_11178,fast::clamp(l9_11180,0.0,1.0));
}
}
l9_11160.y=l9_11176;
if (l9_11164)
{
bool l9_11181=l9_11166;
bool l9_11182;
if (l9_11181)
{
l9_11182=l9_11163.x==3;
}
else
{
l9_11182=l9_11181;
}
float l9_11183=l9_11160.x;
float l9_11184=l9_11165.x;
float l9_11185=l9_11165.z;
bool l9_11186=l9_11182;
float l9_11187=l9_11170;
float l9_11188=fast::clamp(l9_11183,l9_11184,l9_11185);
float l9_11189=step(abs(l9_11183-l9_11188),9.9999997e-06);
l9_11187*=(l9_11189+((1.0-float(l9_11186))*(1.0-l9_11189)));
l9_11183=l9_11188;
l9_11160.x=l9_11183;
l9_11170=l9_11187;
bool l9_11190=l9_11166;
bool l9_11191;
if (l9_11190)
{
l9_11191=l9_11163.y==3;
}
else
{
l9_11191=l9_11190;
}
float l9_11192=l9_11160.y;
float l9_11193=l9_11165.y;
float l9_11194=l9_11165.w;
bool l9_11195=l9_11191;
float l9_11196=l9_11170;
float l9_11197=fast::clamp(l9_11192,l9_11193,l9_11194);
float l9_11198=step(abs(l9_11192-l9_11197),9.9999997e-06);
l9_11196*=(l9_11198+((1.0-float(l9_11195))*(1.0-l9_11198)));
l9_11192=l9_11197;
l9_11160.y=l9_11192;
l9_11170=l9_11196;
}
float2 l9_11199=l9_11160;
bool l9_11200=l9_11161;
float3x3 l9_11201=l9_11162;
if (l9_11200)
{
l9_11199=float2((l9_11201*float3(l9_11199,1.0)).xy);
}
float2 l9_11202=l9_11199;
l9_11160=l9_11202;
float l9_11203=l9_11160.x;
int l9_11204=l9_11163.x;
bool l9_11205=l9_11169;
float l9_11206=l9_11170;
if ((l9_11204==0)||(l9_11204==3))
{
float l9_11207=l9_11203;
float l9_11208=0.0;
float l9_11209=1.0;
bool l9_11210=l9_11205;
float l9_11211=l9_11206;
float l9_11212=fast::clamp(l9_11207,l9_11208,l9_11209);
float l9_11213=step(abs(l9_11207-l9_11212),9.9999997e-06);
l9_11211*=(l9_11213+((1.0-float(l9_11210))*(1.0-l9_11213)));
l9_11207=l9_11212;
l9_11203=l9_11207;
l9_11206=l9_11211;
}
l9_11160.x=l9_11203;
l9_11170=l9_11206;
float l9_11214=l9_11160.y;
int l9_11215=l9_11163.y;
bool l9_11216=l9_11169;
float l9_11217=l9_11170;
if ((l9_11215==0)||(l9_11215==3))
{
float l9_11218=l9_11214;
float l9_11219=0.0;
float l9_11220=1.0;
bool l9_11221=l9_11216;
float l9_11222=l9_11217;
float l9_11223=fast::clamp(l9_11218,l9_11219,l9_11220);
float l9_11224=step(abs(l9_11218-l9_11223),9.9999997e-06);
l9_11222*=(l9_11224+((1.0-float(l9_11221))*(1.0-l9_11224)));
l9_11218=l9_11223;
l9_11214=l9_11218;
l9_11217=l9_11222;
}
l9_11160.y=l9_11214;
l9_11170=l9_11217;
float2 l9_11225=l9_11160;
int l9_11226=l9_11158;
int l9_11227=l9_11159;
float l9_11228=l9_11168;
float2 l9_11229=l9_11225;
int l9_11230=l9_11226;
int l9_11231=l9_11227;
float3 l9_11232=float3(0.0);
if (l9_11230==0)
{
l9_11232=float3(l9_11229,0.0);
}
else
{
if (l9_11230==1)
{
l9_11232=float3(l9_11229.x,(l9_11229.y*0.5)+(0.5-(float(l9_11231)*0.5)),0.0);
}
else
{
l9_11232=float3(l9_11229,float(l9_11231));
}
}
float3 l9_11233=l9_11232;
float3 l9_11234=l9_11233;
float4 l9_11235=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_11234.xy,bias(l9_11228));
float4 l9_11236=l9_11235;
if (l9_11166)
{
l9_11236=mix(l9_11167,l9_11236,float4(l9_11170));
}
float4 l9_11237=l9_11236;
l9_11151=l9_11237;
float l9_11238=0.0;
l9_11238=l9_11151.x;
float l9_11239=0.0;
l9_11239=step(l9_11238,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_11240=float4(0.0);
l9_11240=l9_11148*float4(l9_11239);
l9_10923=l9_11240;
l9_10927=l9_10923;
}
l9_10920=l9_10927;
float2 l9_11241=float2(0.0);
l9_11241=l9_10482.Surface_UVCoord0;
float4 l9_11242=float4(0.0);
int l9_11243;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_11244=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11244=0;
}
else
{
l9_11244=in.varStereoViewID;
}
int l9_11245=l9_11244;
l9_11243=1-l9_11245;
}
else
{
int l9_11246=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11246=0;
}
else
{
l9_11246=in.varStereoViewID;
}
int l9_11247=l9_11246;
l9_11243=l9_11247;
}
int l9_11248=l9_11243;
int l9_11249=greyMaskIdLayout_tmp;
int l9_11250=l9_11248;
float2 l9_11251=l9_11241;
bool l9_11252=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_11253=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_11254=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_11255=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_11256=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_11257=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_11258=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_11259=0.0;
bool l9_11260=l9_11257&&(!l9_11255);
float l9_11261=1.0;
float l9_11262=l9_11251.x;
int l9_11263=l9_11254.x;
if (l9_11263==1)
{
l9_11262=fract(l9_11262);
}
else
{
if (l9_11263==2)
{
float l9_11264=fract(l9_11262);
float l9_11265=l9_11262-l9_11264;
float l9_11266=step(0.25,fract(l9_11265*0.5));
l9_11262=mix(l9_11264,1.0-l9_11264,fast::clamp(l9_11266,0.0,1.0));
}
}
l9_11251.x=l9_11262;
float l9_11267=l9_11251.y;
int l9_11268=l9_11254.y;
if (l9_11268==1)
{
l9_11267=fract(l9_11267);
}
else
{
if (l9_11268==2)
{
float l9_11269=fract(l9_11267);
float l9_11270=l9_11267-l9_11269;
float l9_11271=step(0.25,fract(l9_11270*0.5));
l9_11267=mix(l9_11269,1.0-l9_11269,fast::clamp(l9_11271,0.0,1.0));
}
}
l9_11251.y=l9_11267;
if (l9_11255)
{
bool l9_11272=l9_11257;
bool l9_11273;
if (l9_11272)
{
l9_11273=l9_11254.x==3;
}
else
{
l9_11273=l9_11272;
}
float l9_11274=l9_11251.x;
float l9_11275=l9_11256.x;
float l9_11276=l9_11256.z;
bool l9_11277=l9_11273;
float l9_11278=l9_11261;
float l9_11279=fast::clamp(l9_11274,l9_11275,l9_11276);
float l9_11280=step(abs(l9_11274-l9_11279),9.9999997e-06);
l9_11278*=(l9_11280+((1.0-float(l9_11277))*(1.0-l9_11280)));
l9_11274=l9_11279;
l9_11251.x=l9_11274;
l9_11261=l9_11278;
bool l9_11281=l9_11257;
bool l9_11282;
if (l9_11281)
{
l9_11282=l9_11254.y==3;
}
else
{
l9_11282=l9_11281;
}
float l9_11283=l9_11251.y;
float l9_11284=l9_11256.y;
float l9_11285=l9_11256.w;
bool l9_11286=l9_11282;
float l9_11287=l9_11261;
float l9_11288=fast::clamp(l9_11283,l9_11284,l9_11285);
float l9_11289=step(abs(l9_11283-l9_11288),9.9999997e-06);
l9_11287*=(l9_11289+((1.0-float(l9_11286))*(1.0-l9_11289)));
l9_11283=l9_11288;
l9_11251.y=l9_11283;
l9_11261=l9_11287;
}
float2 l9_11290=l9_11251;
bool l9_11291=l9_11252;
float3x3 l9_11292=l9_11253;
if (l9_11291)
{
l9_11290=float2((l9_11292*float3(l9_11290,1.0)).xy);
}
float2 l9_11293=l9_11290;
l9_11251=l9_11293;
float l9_11294=l9_11251.x;
int l9_11295=l9_11254.x;
bool l9_11296=l9_11260;
float l9_11297=l9_11261;
if ((l9_11295==0)||(l9_11295==3))
{
float l9_11298=l9_11294;
float l9_11299=0.0;
float l9_11300=1.0;
bool l9_11301=l9_11296;
float l9_11302=l9_11297;
float l9_11303=fast::clamp(l9_11298,l9_11299,l9_11300);
float l9_11304=step(abs(l9_11298-l9_11303),9.9999997e-06);
l9_11302*=(l9_11304+((1.0-float(l9_11301))*(1.0-l9_11304)));
l9_11298=l9_11303;
l9_11294=l9_11298;
l9_11297=l9_11302;
}
l9_11251.x=l9_11294;
l9_11261=l9_11297;
float l9_11305=l9_11251.y;
int l9_11306=l9_11254.y;
bool l9_11307=l9_11260;
float l9_11308=l9_11261;
if ((l9_11306==0)||(l9_11306==3))
{
float l9_11309=l9_11305;
float l9_11310=0.0;
float l9_11311=1.0;
bool l9_11312=l9_11307;
float l9_11313=l9_11308;
float l9_11314=fast::clamp(l9_11309,l9_11310,l9_11311);
float l9_11315=step(abs(l9_11309-l9_11314),9.9999997e-06);
l9_11313*=(l9_11315+((1.0-float(l9_11312))*(1.0-l9_11315)));
l9_11309=l9_11314;
l9_11305=l9_11309;
l9_11308=l9_11313;
}
l9_11251.y=l9_11305;
l9_11261=l9_11308;
float2 l9_11316=l9_11251;
int l9_11317=l9_11249;
int l9_11318=l9_11250;
float l9_11319=l9_11259;
float2 l9_11320=l9_11316;
int l9_11321=l9_11317;
int l9_11322=l9_11318;
float3 l9_11323=float3(0.0);
if (l9_11321==0)
{
l9_11323=float3(l9_11320,0.0);
}
else
{
if (l9_11321==1)
{
l9_11323=float3(l9_11320.x,(l9_11320.y*0.5)+(0.5-(float(l9_11322)*0.5)),0.0);
}
else
{
l9_11323=float3(l9_11320,float(l9_11322));
}
}
float3 l9_11324=l9_11323;
float3 l9_11325=l9_11324;
float4 l9_11326=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_11325.xy,bias(l9_11319));
float4 l9_11327=l9_11326;
if (l9_11257)
{
l9_11327=mix(l9_11258,l9_11327,float4(l9_11261));
}
float4 l9_11328=l9_11327;
l9_11242=l9_11328;
float l9_11329=0.0;
l9_11329=l9_11242.x;
float l9_11330=0.0;
l9_11330=step(l9_11329,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_11331=float4(0.0);
l9_11331=l9_10920*float4(l9_11330);
float4 l9_11332=float4(0.0);
float4 l9_11333=(*sc_set0.UserUniforms).colorId01;
l9_11332=l9_11333;
float4 l9_11334=float4(0.0);
l9_11334=l9_11332*float4(l9_11330);
float4 l9_11335=float4(0.0);
float4 l9_11336=l9_11331;
float4 l9_11337=l9_11334;
float4 l9_11338=l9_11336;
float4 l9_11339=l9_11337;
float3 l9_11340=l9_11338.xyz*l9_11338.w;
l9_11338=float4(l9_11340.x,l9_11340.y,l9_11340.z,l9_11338.w);
float4 l9_11341=l9_11338+(l9_11339*(1.0-l9_11338.w));
l9_11335=l9_11341;
l9_10481=l9_11335;
l9_10485=l9_10481;
}
l9_10478=l9_10485;
l9_9581=l9_10478;
l9_9585=l9_9581;
}
l9_9578=l9_9585;
float2 l9_11342=float2(0.0);
l9_11342=l9_7629.Surface_UVCoord0;
float4 l9_11343=float4(0.0);
int l9_11344;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_11345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11345=0;
}
else
{
l9_11345=in.varStereoViewID;
}
int l9_11346=l9_11345;
l9_11344=1-l9_11346;
}
else
{
int l9_11347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11347=0;
}
else
{
l9_11347=in.varStereoViewID;
}
int l9_11348=l9_11347;
l9_11344=l9_11348;
}
int l9_11349=l9_11344;
int l9_11350=greyMaskIdLayout_tmp;
int l9_11351=l9_11349;
float2 l9_11352=l9_11342;
bool l9_11353=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_11354=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_11355=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_11356=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_11357=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_11358=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_11359=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_11360=0.0;
bool l9_11361=l9_11358&&(!l9_11356);
float l9_11362=1.0;
float l9_11363=l9_11352.x;
int l9_11364=l9_11355.x;
if (l9_11364==1)
{
l9_11363=fract(l9_11363);
}
else
{
if (l9_11364==2)
{
float l9_11365=fract(l9_11363);
float l9_11366=l9_11363-l9_11365;
float l9_11367=step(0.25,fract(l9_11366*0.5));
l9_11363=mix(l9_11365,1.0-l9_11365,fast::clamp(l9_11367,0.0,1.0));
}
}
l9_11352.x=l9_11363;
float l9_11368=l9_11352.y;
int l9_11369=l9_11355.y;
if (l9_11369==1)
{
l9_11368=fract(l9_11368);
}
else
{
if (l9_11369==2)
{
float l9_11370=fract(l9_11368);
float l9_11371=l9_11368-l9_11370;
float l9_11372=step(0.25,fract(l9_11371*0.5));
l9_11368=mix(l9_11370,1.0-l9_11370,fast::clamp(l9_11372,0.0,1.0));
}
}
l9_11352.y=l9_11368;
if (l9_11356)
{
bool l9_11373=l9_11358;
bool l9_11374;
if (l9_11373)
{
l9_11374=l9_11355.x==3;
}
else
{
l9_11374=l9_11373;
}
float l9_11375=l9_11352.x;
float l9_11376=l9_11357.x;
float l9_11377=l9_11357.z;
bool l9_11378=l9_11374;
float l9_11379=l9_11362;
float l9_11380=fast::clamp(l9_11375,l9_11376,l9_11377);
float l9_11381=step(abs(l9_11375-l9_11380),9.9999997e-06);
l9_11379*=(l9_11381+((1.0-float(l9_11378))*(1.0-l9_11381)));
l9_11375=l9_11380;
l9_11352.x=l9_11375;
l9_11362=l9_11379;
bool l9_11382=l9_11358;
bool l9_11383;
if (l9_11382)
{
l9_11383=l9_11355.y==3;
}
else
{
l9_11383=l9_11382;
}
float l9_11384=l9_11352.y;
float l9_11385=l9_11357.y;
float l9_11386=l9_11357.w;
bool l9_11387=l9_11383;
float l9_11388=l9_11362;
float l9_11389=fast::clamp(l9_11384,l9_11385,l9_11386);
float l9_11390=step(abs(l9_11384-l9_11389),9.9999997e-06);
l9_11388*=(l9_11390+((1.0-float(l9_11387))*(1.0-l9_11390)));
l9_11384=l9_11389;
l9_11352.y=l9_11384;
l9_11362=l9_11388;
}
float2 l9_11391=l9_11352;
bool l9_11392=l9_11353;
float3x3 l9_11393=l9_11354;
if (l9_11392)
{
l9_11391=float2((l9_11393*float3(l9_11391,1.0)).xy);
}
float2 l9_11394=l9_11391;
l9_11352=l9_11394;
float l9_11395=l9_11352.x;
int l9_11396=l9_11355.x;
bool l9_11397=l9_11361;
float l9_11398=l9_11362;
if ((l9_11396==0)||(l9_11396==3))
{
float l9_11399=l9_11395;
float l9_11400=0.0;
float l9_11401=1.0;
bool l9_11402=l9_11397;
float l9_11403=l9_11398;
float l9_11404=fast::clamp(l9_11399,l9_11400,l9_11401);
float l9_11405=step(abs(l9_11399-l9_11404),9.9999997e-06);
l9_11403*=(l9_11405+((1.0-float(l9_11402))*(1.0-l9_11405)));
l9_11399=l9_11404;
l9_11395=l9_11399;
l9_11398=l9_11403;
}
l9_11352.x=l9_11395;
l9_11362=l9_11398;
float l9_11406=l9_11352.y;
int l9_11407=l9_11355.y;
bool l9_11408=l9_11361;
float l9_11409=l9_11362;
if ((l9_11407==0)||(l9_11407==3))
{
float l9_11410=l9_11406;
float l9_11411=0.0;
float l9_11412=1.0;
bool l9_11413=l9_11408;
float l9_11414=l9_11409;
float l9_11415=fast::clamp(l9_11410,l9_11411,l9_11412);
float l9_11416=step(abs(l9_11410-l9_11415),9.9999997e-06);
l9_11414*=(l9_11416+((1.0-float(l9_11413))*(1.0-l9_11416)));
l9_11410=l9_11415;
l9_11406=l9_11410;
l9_11409=l9_11414;
}
l9_11352.y=l9_11406;
l9_11362=l9_11409;
float2 l9_11417=l9_11352;
int l9_11418=l9_11350;
int l9_11419=l9_11351;
float l9_11420=l9_11360;
float2 l9_11421=l9_11417;
int l9_11422=l9_11418;
int l9_11423=l9_11419;
float3 l9_11424=float3(0.0);
if (l9_11422==0)
{
l9_11424=float3(l9_11421,0.0);
}
else
{
if (l9_11422==1)
{
l9_11424=float3(l9_11421.x,(l9_11421.y*0.5)+(0.5-(float(l9_11423)*0.5)),0.0);
}
else
{
l9_11424=float3(l9_11421,float(l9_11423));
}
}
float3 l9_11425=l9_11424;
float3 l9_11426=l9_11425;
float4 l9_11427=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_11426.xy,bias(l9_11420));
float4 l9_11428=l9_11427;
if (l9_11358)
{
l9_11428=mix(l9_11359,l9_11428,float4(l9_11362));
}
float4 l9_11429=l9_11428;
l9_11343=l9_11429;
float l9_11430=0.0;
l9_11430=l9_11343.x;
float l9_11431=0.0;
l9_11431=step(l9_11430,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_11432=float4(0.0);
l9_11432=l9_9578*float4(l9_11431);
float4 l9_11433=float4(0.0);
float4 l9_11434=l9_9577;
float4 l9_11435=l9_11432;
float4 l9_11436=l9_11434;
float4 l9_11437=l9_11435;
float3 l9_11438=l9_11436.xyz*l9_11436.w;
l9_11436=float4(l9_11438.x,l9_11438.y,l9_11438.z,l9_11436.w);
float4 l9_11439=l9_11436+(l9_11437*(1.0-l9_11436.w));
l9_11433=l9_11439;
l9_7627=l9_11433;
l9_7632=l9_7627;
}
else
{
float4 l9_11440=float4(0.0);
float l9_11441=0.0;
float4 l9_11442=float4(0.0);
float4 l9_11443=float4(0.0);
ssGlobals l9_11444=l9_7629;
float l9_11445=0.0;
float l9_11446=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_11445=l9_11446;
l9_11441=l9_11445;
float4 l9_11447;
if ((l9_11441*1.0)!=0.0)
{
float4 l9_11448=float4(0.0);
float l9_11449=0.0;
float4 l9_11450=float4(0.0);
float4 l9_11451=float4(0.0);
ssGlobals l9_11452=l9_11444;
float l9_11453=0.0;
float l9_11454=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_11453=l9_11454;
l9_11449=l9_11453;
float4 l9_11455;
if ((l9_11449*1.0)!=0.0)
{
float l9_11456=0.0;
float l9_11457=(*sc_set0.UserUniforms).rimExpId01;
l9_11456=l9_11457;
float l9_11458=0.0;
float l9_11459=(*sc_set0.UserUniforms).rimIntId01;
l9_11458=l9_11459;
float l9_11460=0.0;
float l9_11461=l9_11456;
float l9_11462=l9_11458;
ssGlobals l9_11463=l9_11452;
float l9_11464=abs(dot(-l9_11463.ViewDirWS,l9_11463.VertexNormal_WorldSpace));
float l9_11465=1.0-pow(1.0-l9_11464,l9_11461);
l9_11465=fast::max(l9_11465,0.0);
l9_11465*=l9_11462;
l9_11460=l9_11465;
float4 l9_11466=float4(0.0);
float l9_11467=0.0;
float4 l9_11468=float4(0.0);
float4 l9_11469=float4(0.0);
ssGlobals l9_11470=l9_11452;
float l9_11471=0.0;
float l9_11472=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_11471=l9_11472;
l9_11467=l9_11471;
float4 l9_11473;
if ((l9_11467*1.0)!=0.0)
{
float4 l9_11474=float4(0.0);
float4 l9_11475=(*sc_set0.UserUniforms).patternColorId01;
l9_11474=l9_11475;
float4 l9_11476=float4(0.0);
float l9_11477=0.0;
float4 l9_11478=float4(0.0);
float4 l9_11479=float4(0.0);
ssGlobals l9_11480=l9_11470;
float l9_11481=0.0;
float l9_11482=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_11481=l9_11482;
l9_11477=l9_11481;
float4 l9_11483;
if ((l9_11477*1.0)!=0.0)
{
float2 l9_11484=float2(0.0);
l9_11484=l9_11480.Surface_UVCoord0;
float2 l9_11485=float2(0.0);
float2 l9_11486=(*sc_set0.UserUniforms).patternScaleId01;
l9_11485=l9_11486;
float2 l9_11487=float2(0.0);
l9_11487=((l9_11484-(*sc_set0.UserUniforms).Port_Center_N122)*l9_11485)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_11488=float2(0.0);
float2 l9_11489=(*sc_set0.UserUniforms).patternOffsetId01;
l9_11488=l9_11489;
float2 l9_11490=float2(0.0);
l9_11490=l9_11487+l9_11488;
float l9_11491=0.0;
float l9_11492=(*sc_set0.UserUniforms).patternRotateId01;
l9_11491=l9_11492;
float2 l9_11493=float2(0.0);
float2 l9_11494=l9_11490;
float l9_11495=l9_11491;
float2 l9_11496=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_11497=sin(radians(l9_11495));
float l9_11498=cos(radians(l9_11495));
float2 l9_11499=l9_11494-l9_11496;
l9_11499=float2(dot(float2(l9_11498,l9_11497),l9_11499),dot(float2(-l9_11497,l9_11498),l9_11499))+l9_11496;
l9_11493=l9_11499;
float4 l9_11500=float4(0.0);
int l9_11501;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_11502=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11502=0;
}
else
{
l9_11502=in.varStereoViewID;
}
int l9_11503=l9_11502;
l9_11501=1-l9_11503;
}
else
{
int l9_11504=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11504=0;
}
else
{
l9_11504=in.varStereoViewID;
}
int l9_11505=l9_11504;
l9_11501=l9_11505;
}
int l9_11506=l9_11501;
int l9_11507=patternTextureId01Layout_tmp;
int l9_11508=l9_11506;
float2 l9_11509=l9_11493;
bool l9_11510=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_11511=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_11512=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_11513=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_11514=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_11515=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_11516=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_11517=0.0;
bool l9_11518=l9_11515&&(!l9_11513);
float l9_11519=1.0;
float l9_11520=l9_11509.x;
int l9_11521=l9_11512.x;
if (l9_11521==1)
{
l9_11520=fract(l9_11520);
}
else
{
if (l9_11521==2)
{
float l9_11522=fract(l9_11520);
float l9_11523=l9_11520-l9_11522;
float l9_11524=step(0.25,fract(l9_11523*0.5));
l9_11520=mix(l9_11522,1.0-l9_11522,fast::clamp(l9_11524,0.0,1.0));
}
}
l9_11509.x=l9_11520;
float l9_11525=l9_11509.y;
int l9_11526=l9_11512.y;
if (l9_11526==1)
{
l9_11525=fract(l9_11525);
}
else
{
if (l9_11526==2)
{
float l9_11527=fract(l9_11525);
float l9_11528=l9_11525-l9_11527;
float l9_11529=step(0.25,fract(l9_11528*0.5));
l9_11525=mix(l9_11527,1.0-l9_11527,fast::clamp(l9_11529,0.0,1.0));
}
}
l9_11509.y=l9_11525;
if (l9_11513)
{
bool l9_11530=l9_11515;
bool l9_11531;
if (l9_11530)
{
l9_11531=l9_11512.x==3;
}
else
{
l9_11531=l9_11530;
}
float l9_11532=l9_11509.x;
float l9_11533=l9_11514.x;
float l9_11534=l9_11514.z;
bool l9_11535=l9_11531;
float l9_11536=l9_11519;
float l9_11537=fast::clamp(l9_11532,l9_11533,l9_11534);
float l9_11538=step(abs(l9_11532-l9_11537),9.9999997e-06);
l9_11536*=(l9_11538+((1.0-float(l9_11535))*(1.0-l9_11538)));
l9_11532=l9_11537;
l9_11509.x=l9_11532;
l9_11519=l9_11536;
bool l9_11539=l9_11515;
bool l9_11540;
if (l9_11539)
{
l9_11540=l9_11512.y==3;
}
else
{
l9_11540=l9_11539;
}
float l9_11541=l9_11509.y;
float l9_11542=l9_11514.y;
float l9_11543=l9_11514.w;
bool l9_11544=l9_11540;
float l9_11545=l9_11519;
float l9_11546=fast::clamp(l9_11541,l9_11542,l9_11543);
float l9_11547=step(abs(l9_11541-l9_11546),9.9999997e-06);
l9_11545*=(l9_11547+((1.0-float(l9_11544))*(1.0-l9_11547)));
l9_11541=l9_11546;
l9_11509.y=l9_11541;
l9_11519=l9_11545;
}
float2 l9_11548=l9_11509;
bool l9_11549=l9_11510;
float3x3 l9_11550=l9_11511;
if (l9_11549)
{
l9_11548=float2((l9_11550*float3(l9_11548,1.0)).xy);
}
float2 l9_11551=l9_11548;
l9_11509=l9_11551;
float l9_11552=l9_11509.x;
int l9_11553=l9_11512.x;
bool l9_11554=l9_11518;
float l9_11555=l9_11519;
if ((l9_11553==0)||(l9_11553==3))
{
float l9_11556=l9_11552;
float l9_11557=0.0;
float l9_11558=1.0;
bool l9_11559=l9_11554;
float l9_11560=l9_11555;
float l9_11561=fast::clamp(l9_11556,l9_11557,l9_11558);
float l9_11562=step(abs(l9_11556-l9_11561),9.9999997e-06);
l9_11560*=(l9_11562+((1.0-float(l9_11559))*(1.0-l9_11562)));
l9_11556=l9_11561;
l9_11552=l9_11556;
l9_11555=l9_11560;
}
l9_11509.x=l9_11552;
l9_11519=l9_11555;
float l9_11563=l9_11509.y;
int l9_11564=l9_11512.y;
bool l9_11565=l9_11518;
float l9_11566=l9_11519;
if ((l9_11564==0)||(l9_11564==3))
{
float l9_11567=l9_11563;
float l9_11568=0.0;
float l9_11569=1.0;
bool l9_11570=l9_11565;
float l9_11571=l9_11566;
float l9_11572=fast::clamp(l9_11567,l9_11568,l9_11569);
float l9_11573=step(abs(l9_11567-l9_11572),9.9999997e-06);
l9_11571*=(l9_11573+((1.0-float(l9_11570))*(1.0-l9_11573)));
l9_11567=l9_11572;
l9_11563=l9_11567;
l9_11566=l9_11571;
}
l9_11509.y=l9_11563;
l9_11519=l9_11566;
float2 l9_11574=l9_11509;
int l9_11575=l9_11507;
int l9_11576=l9_11508;
float l9_11577=l9_11517;
float2 l9_11578=l9_11574;
int l9_11579=l9_11575;
int l9_11580=l9_11576;
float3 l9_11581=float3(0.0);
if (l9_11579==0)
{
l9_11581=float3(l9_11578,0.0);
}
else
{
if (l9_11579==1)
{
l9_11581=float3(l9_11578.x,(l9_11578.y*0.5)+(0.5-(float(l9_11580)*0.5)),0.0);
}
else
{
l9_11581=float3(l9_11578,float(l9_11580));
}
}
float3 l9_11582=l9_11581;
float3 l9_11583=l9_11582;
float4 l9_11584=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_11583.xy,bias(l9_11577));
float4 l9_11585=l9_11584;
if (l9_11515)
{
l9_11585=mix(l9_11516,l9_11585,float4(l9_11519));
}
float4 l9_11586=l9_11585;
l9_11500=l9_11586;
l9_11478=l9_11500;
l9_11483=l9_11478;
}
else
{
float2 l9_11587=float2(0.0);
l9_11587=l9_11480.Surface_UVCoord0;
float2 l9_11588=float2(0.0);
float2 l9_11589=(*sc_set0.UserUniforms).patternScaleId01;
l9_11588=l9_11589;
float2 l9_11590=float2(0.0);
l9_11590=((l9_11587-(*sc_set0.UserUniforms).Port_Center_N122)*l9_11588)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_11591=float2(0.0);
float2 l9_11592=(*sc_set0.UserUniforms).patternOffsetId01;
l9_11591=l9_11592;
float2 l9_11593=float2(0.0);
l9_11593=l9_11590+l9_11591;
float l9_11594=0.0;
float l9_11595=(*sc_set0.UserUniforms).patternRotateId01;
l9_11594=l9_11595;
float2 l9_11596=float2(0.0);
float2 l9_11597=l9_11593;
float l9_11598=l9_11594;
float2 l9_11599=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_11600=sin(radians(l9_11598));
float l9_11601=cos(radians(l9_11598));
float2 l9_11602=l9_11597-l9_11599;
l9_11602=float2(dot(float2(l9_11601,l9_11600),l9_11602),dot(float2(-l9_11600,l9_11601),l9_11602))+l9_11599;
l9_11596=l9_11602;
float4 l9_11603=float4(0.0);
int l9_11604;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_11605=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11605=0;
}
else
{
l9_11605=in.varStereoViewID;
}
int l9_11606=l9_11605;
l9_11604=1-l9_11606;
}
else
{
int l9_11607=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11607=0;
}
else
{
l9_11607=in.varStereoViewID;
}
int l9_11608=l9_11607;
l9_11604=l9_11608;
}
int l9_11609=l9_11604;
int l9_11610=patternTextureId01Layout_tmp;
int l9_11611=l9_11609;
float2 l9_11612=l9_11596;
bool l9_11613=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_11614=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_11615=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_11616=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_11617=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_11618=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_11619=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_11620=0.0;
bool l9_11621=l9_11618&&(!l9_11616);
float l9_11622=1.0;
float l9_11623=l9_11612.x;
int l9_11624=l9_11615.x;
if (l9_11624==1)
{
l9_11623=fract(l9_11623);
}
else
{
if (l9_11624==2)
{
float l9_11625=fract(l9_11623);
float l9_11626=l9_11623-l9_11625;
float l9_11627=step(0.25,fract(l9_11626*0.5));
l9_11623=mix(l9_11625,1.0-l9_11625,fast::clamp(l9_11627,0.0,1.0));
}
}
l9_11612.x=l9_11623;
float l9_11628=l9_11612.y;
int l9_11629=l9_11615.y;
if (l9_11629==1)
{
l9_11628=fract(l9_11628);
}
else
{
if (l9_11629==2)
{
float l9_11630=fract(l9_11628);
float l9_11631=l9_11628-l9_11630;
float l9_11632=step(0.25,fract(l9_11631*0.5));
l9_11628=mix(l9_11630,1.0-l9_11630,fast::clamp(l9_11632,0.0,1.0));
}
}
l9_11612.y=l9_11628;
if (l9_11616)
{
bool l9_11633=l9_11618;
bool l9_11634;
if (l9_11633)
{
l9_11634=l9_11615.x==3;
}
else
{
l9_11634=l9_11633;
}
float l9_11635=l9_11612.x;
float l9_11636=l9_11617.x;
float l9_11637=l9_11617.z;
bool l9_11638=l9_11634;
float l9_11639=l9_11622;
float l9_11640=fast::clamp(l9_11635,l9_11636,l9_11637);
float l9_11641=step(abs(l9_11635-l9_11640),9.9999997e-06);
l9_11639*=(l9_11641+((1.0-float(l9_11638))*(1.0-l9_11641)));
l9_11635=l9_11640;
l9_11612.x=l9_11635;
l9_11622=l9_11639;
bool l9_11642=l9_11618;
bool l9_11643;
if (l9_11642)
{
l9_11643=l9_11615.y==3;
}
else
{
l9_11643=l9_11642;
}
float l9_11644=l9_11612.y;
float l9_11645=l9_11617.y;
float l9_11646=l9_11617.w;
bool l9_11647=l9_11643;
float l9_11648=l9_11622;
float l9_11649=fast::clamp(l9_11644,l9_11645,l9_11646);
float l9_11650=step(abs(l9_11644-l9_11649),9.9999997e-06);
l9_11648*=(l9_11650+((1.0-float(l9_11647))*(1.0-l9_11650)));
l9_11644=l9_11649;
l9_11612.y=l9_11644;
l9_11622=l9_11648;
}
float2 l9_11651=l9_11612;
bool l9_11652=l9_11613;
float3x3 l9_11653=l9_11614;
if (l9_11652)
{
l9_11651=float2((l9_11653*float3(l9_11651,1.0)).xy);
}
float2 l9_11654=l9_11651;
l9_11612=l9_11654;
float l9_11655=l9_11612.x;
int l9_11656=l9_11615.x;
bool l9_11657=l9_11621;
float l9_11658=l9_11622;
if ((l9_11656==0)||(l9_11656==3))
{
float l9_11659=l9_11655;
float l9_11660=0.0;
float l9_11661=1.0;
bool l9_11662=l9_11657;
float l9_11663=l9_11658;
float l9_11664=fast::clamp(l9_11659,l9_11660,l9_11661);
float l9_11665=step(abs(l9_11659-l9_11664),9.9999997e-06);
l9_11663*=(l9_11665+((1.0-float(l9_11662))*(1.0-l9_11665)));
l9_11659=l9_11664;
l9_11655=l9_11659;
l9_11658=l9_11663;
}
l9_11612.x=l9_11655;
l9_11622=l9_11658;
float l9_11666=l9_11612.y;
int l9_11667=l9_11615.y;
bool l9_11668=l9_11621;
float l9_11669=l9_11622;
if ((l9_11667==0)||(l9_11667==3))
{
float l9_11670=l9_11666;
float l9_11671=0.0;
float l9_11672=1.0;
bool l9_11673=l9_11668;
float l9_11674=l9_11669;
float l9_11675=fast::clamp(l9_11670,l9_11671,l9_11672);
float l9_11676=step(abs(l9_11670-l9_11675),9.9999997e-06);
l9_11674*=(l9_11676+((1.0-float(l9_11673))*(1.0-l9_11676)));
l9_11670=l9_11675;
l9_11666=l9_11670;
l9_11669=l9_11674;
}
l9_11612.y=l9_11666;
l9_11622=l9_11669;
float2 l9_11677=l9_11612;
int l9_11678=l9_11610;
int l9_11679=l9_11611;
float l9_11680=l9_11620;
float2 l9_11681=l9_11677;
int l9_11682=l9_11678;
int l9_11683=l9_11679;
float3 l9_11684=float3(0.0);
if (l9_11682==0)
{
l9_11684=float3(l9_11681,0.0);
}
else
{
if (l9_11682==1)
{
l9_11684=float3(l9_11681.x,(l9_11681.y*0.5)+(0.5-(float(l9_11683)*0.5)),0.0);
}
else
{
l9_11684=float3(l9_11681,float(l9_11683));
}
}
float3 l9_11685=l9_11684;
float3 l9_11686=l9_11685;
float4 l9_11687=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_11686.xy,bias(l9_11680));
float4 l9_11688=l9_11687;
if (l9_11618)
{
l9_11688=mix(l9_11619,l9_11688,float4(l9_11622));
}
float4 l9_11689=l9_11688;
l9_11603=l9_11689;
float l9_11690=0.0;
float3 l9_11691=l9_11603.xyz;
float l9_11692=l9_11691.x;
l9_11690=l9_11692;
l9_11479=float4(l9_11690);
l9_11483=l9_11479;
}
l9_11476=l9_11483;
float4 l9_11693=float4(0.0);
l9_11693=l9_11474*l9_11476;
l9_11468=l9_11693;
l9_11473=l9_11468;
}
else
{
float4 l9_11694=float4(0.0);
float4 l9_11695=(*sc_set0.UserUniforms).colorId01;
l9_11694=l9_11695;
float2 l9_11696=float2(0.0);
l9_11696=l9_11470.Surface_UVCoord0;
float4 l9_11697=float4(0.0);
int l9_11698;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_11699=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11699=0;
}
else
{
l9_11699=in.varStereoViewID;
}
int l9_11700=l9_11699;
l9_11698=1-l9_11700;
}
else
{
int l9_11701=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11701=0;
}
else
{
l9_11701=in.varStereoViewID;
}
int l9_11702=l9_11701;
l9_11698=l9_11702;
}
int l9_11703=l9_11698;
int l9_11704=greyMaskIdLayout_tmp;
int l9_11705=l9_11703;
float2 l9_11706=l9_11696;
bool l9_11707=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_11708=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_11709=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_11710=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_11711=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_11712=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_11713=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_11714=0.0;
bool l9_11715=l9_11712&&(!l9_11710);
float l9_11716=1.0;
float l9_11717=l9_11706.x;
int l9_11718=l9_11709.x;
if (l9_11718==1)
{
l9_11717=fract(l9_11717);
}
else
{
if (l9_11718==2)
{
float l9_11719=fract(l9_11717);
float l9_11720=l9_11717-l9_11719;
float l9_11721=step(0.25,fract(l9_11720*0.5));
l9_11717=mix(l9_11719,1.0-l9_11719,fast::clamp(l9_11721,0.0,1.0));
}
}
l9_11706.x=l9_11717;
float l9_11722=l9_11706.y;
int l9_11723=l9_11709.y;
if (l9_11723==1)
{
l9_11722=fract(l9_11722);
}
else
{
if (l9_11723==2)
{
float l9_11724=fract(l9_11722);
float l9_11725=l9_11722-l9_11724;
float l9_11726=step(0.25,fract(l9_11725*0.5));
l9_11722=mix(l9_11724,1.0-l9_11724,fast::clamp(l9_11726,0.0,1.0));
}
}
l9_11706.y=l9_11722;
if (l9_11710)
{
bool l9_11727=l9_11712;
bool l9_11728;
if (l9_11727)
{
l9_11728=l9_11709.x==3;
}
else
{
l9_11728=l9_11727;
}
float l9_11729=l9_11706.x;
float l9_11730=l9_11711.x;
float l9_11731=l9_11711.z;
bool l9_11732=l9_11728;
float l9_11733=l9_11716;
float l9_11734=fast::clamp(l9_11729,l9_11730,l9_11731);
float l9_11735=step(abs(l9_11729-l9_11734),9.9999997e-06);
l9_11733*=(l9_11735+((1.0-float(l9_11732))*(1.0-l9_11735)));
l9_11729=l9_11734;
l9_11706.x=l9_11729;
l9_11716=l9_11733;
bool l9_11736=l9_11712;
bool l9_11737;
if (l9_11736)
{
l9_11737=l9_11709.y==3;
}
else
{
l9_11737=l9_11736;
}
float l9_11738=l9_11706.y;
float l9_11739=l9_11711.y;
float l9_11740=l9_11711.w;
bool l9_11741=l9_11737;
float l9_11742=l9_11716;
float l9_11743=fast::clamp(l9_11738,l9_11739,l9_11740);
float l9_11744=step(abs(l9_11738-l9_11743),9.9999997e-06);
l9_11742*=(l9_11744+((1.0-float(l9_11741))*(1.0-l9_11744)));
l9_11738=l9_11743;
l9_11706.y=l9_11738;
l9_11716=l9_11742;
}
float2 l9_11745=l9_11706;
bool l9_11746=l9_11707;
float3x3 l9_11747=l9_11708;
if (l9_11746)
{
l9_11745=float2((l9_11747*float3(l9_11745,1.0)).xy);
}
float2 l9_11748=l9_11745;
l9_11706=l9_11748;
float l9_11749=l9_11706.x;
int l9_11750=l9_11709.x;
bool l9_11751=l9_11715;
float l9_11752=l9_11716;
if ((l9_11750==0)||(l9_11750==3))
{
float l9_11753=l9_11749;
float l9_11754=0.0;
float l9_11755=1.0;
bool l9_11756=l9_11751;
float l9_11757=l9_11752;
float l9_11758=fast::clamp(l9_11753,l9_11754,l9_11755);
float l9_11759=step(abs(l9_11753-l9_11758),9.9999997e-06);
l9_11757*=(l9_11759+((1.0-float(l9_11756))*(1.0-l9_11759)));
l9_11753=l9_11758;
l9_11749=l9_11753;
l9_11752=l9_11757;
}
l9_11706.x=l9_11749;
l9_11716=l9_11752;
float l9_11760=l9_11706.y;
int l9_11761=l9_11709.y;
bool l9_11762=l9_11715;
float l9_11763=l9_11716;
if ((l9_11761==0)||(l9_11761==3))
{
float l9_11764=l9_11760;
float l9_11765=0.0;
float l9_11766=1.0;
bool l9_11767=l9_11762;
float l9_11768=l9_11763;
float l9_11769=fast::clamp(l9_11764,l9_11765,l9_11766);
float l9_11770=step(abs(l9_11764-l9_11769),9.9999997e-06);
l9_11768*=(l9_11770+((1.0-float(l9_11767))*(1.0-l9_11770)));
l9_11764=l9_11769;
l9_11760=l9_11764;
l9_11763=l9_11768;
}
l9_11706.y=l9_11760;
l9_11716=l9_11763;
float2 l9_11771=l9_11706;
int l9_11772=l9_11704;
int l9_11773=l9_11705;
float l9_11774=l9_11714;
float2 l9_11775=l9_11771;
int l9_11776=l9_11772;
int l9_11777=l9_11773;
float3 l9_11778=float3(0.0);
if (l9_11776==0)
{
l9_11778=float3(l9_11775,0.0);
}
else
{
if (l9_11776==1)
{
l9_11778=float3(l9_11775.x,(l9_11775.y*0.5)+(0.5-(float(l9_11777)*0.5)),0.0);
}
else
{
l9_11778=float3(l9_11775,float(l9_11777));
}
}
float3 l9_11779=l9_11778;
float3 l9_11780=l9_11779;
float4 l9_11781=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_11780.xy,bias(l9_11774));
float4 l9_11782=l9_11781;
if (l9_11712)
{
l9_11782=mix(l9_11713,l9_11782,float4(l9_11716));
}
float4 l9_11783=l9_11782;
l9_11697=l9_11783;
float l9_11784=0.0;
l9_11784=l9_11697.x;
float l9_11785=0.0;
l9_11785=step(l9_11784,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_11786=float4(0.0);
l9_11786=l9_11694*float4(l9_11785);
l9_11469=l9_11786;
l9_11473=l9_11469;
}
l9_11466=l9_11473;
float2 l9_11787=float2(0.0);
l9_11787=l9_11452.Surface_UVCoord0;
float4 l9_11788=float4(0.0);
int l9_11789;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_11790=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11790=0;
}
else
{
l9_11790=in.varStereoViewID;
}
int l9_11791=l9_11790;
l9_11789=1-l9_11791;
}
else
{
int l9_11792=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11792=0;
}
else
{
l9_11792=in.varStereoViewID;
}
int l9_11793=l9_11792;
l9_11789=l9_11793;
}
int l9_11794=l9_11789;
int l9_11795=greyMaskIdLayout_tmp;
int l9_11796=l9_11794;
float2 l9_11797=l9_11787;
bool l9_11798=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_11799=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_11800=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_11801=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_11802=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_11803=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_11804=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_11805=0.0;
bool l9_11806=l9_11803&&(!l9_11801);
float l9_11807=1.0;
float l9_11808=l9_11797.x;
int l9_11809=l9_11800.x;
if (l9_11809==1)
{
l9_11808=fract(l9_11808);
}
else
{
if (l9_11809==2)
{
float l9_11810=fract(l9_11808);
float l9_11811=l9_11808-l9_11810;
float l9_11812=step(0.25,fract(l9_11811*0.5));
l9_11808=mix(l9_11810,1.0-l9_11810,fast::clamp(l9_11812,0.0,1.0));
}
}
l9_11797.x=l9_11808;
float l9_11813=l9_11797.y;
int l9_11814=l9_11800.y;
if (l9_11814==1)
{
l9_11813=fract(l9_11813);
}
else
{
if (l9_11814==2)
{
float l9_11815=fract(l9_11813);
float l9_11816=l9_11813-l9_11815;
float l9_11817=step(0.25,fract(l9_11816*0.5));
l9_11813=mix(l9_11815,1.0-l9_11815,fast::clamp(l9_11817,0.0,1.0));
}
}
l9_11797.y=l9_11813;
if (l9_11801)
{
bool l9_11818=l9_11803;
bool l9_11819;
if (l9_11818)
{
l9_11819=l9_11800.x==3;
}
else
{
l9_11819=l9_11818;
}
float l9_11820=l9_11797.x;
float l9_11821=l9_11802.x;
float l9_11822=l9_11802.z;
bool l9_11823=l9_11819;
float l9_11824=l9_11807;
float l9_11825=fast::clamp(l9_11820,l9_11821,l9_11822);
float l9_11826=step(abs(l9_11820-l9_11825),9.9999997e-06);
l9_11824*=(l9_11826+((1.0-float(l9_11823))*(1.0-l9_11826)));
l9_11820=l9_11825;
l9_11797.x=l9_11820;
l9_11807=l9_11824;
bool l9_11827=l9_11803;
bool l9_11828;
if (l9_11827)
{
l9_11828=l9_11800.y==3;
}
else
{
l9_11828=l9_11827;
}
float l9_11829=l9_11797.y;
float l9_11830=l9_11802.y;
float l9_11831=l9_11802.w;
bool l9_11832=l9_11828;
float l9_11833=l9_11807;
float l9_11834=fast::clamp(l9_11829,l9_11830,l9_11831);
float l9_11835=step(abs(l9_11829-l9_11834),9.9999997e-06);
l9_11833*=(l9_11835+((1.0-float(l9_11832))*(1.0-l9_11835)));
l9_11829=l9_11834;
l9_11797.y=l9_11829;
l9_11807=l9_11833;
}
float2 l9_11836=l9_11797;
bool l9_11837=l9_11798;
float3x3 l9_11838=l9_11799;
if (l9_11837)
{
l9_11836=float2((l9_11838*float3(l9_11836,1.0)).xy);
}
float2 l9_11839=l9_11836;
l9_11797=l9_11839;
float l9_11840=l9_11797.x;
int l9_11841=l9_11800.x;
bool l9_11842=l9_11806;
float l9_11843=l9_11807;
if ((l9_11841==0)||(l9_11841==3))
{
float l9_11844=l9_11840;
float l9_11845=0.0;
float l9_11846=1.0;
bool l9_11847=l9_11842;
float l9_11848=l9_11843;
float l9_11849=fast::clamp(l9_11844,l9_11845,l9_11846);
float l9_11850=step(abs(l9_11844-l9_11849),9.9999997e-06);
l9_11848*=(l9_11850+((1.0-float(l9_11847))*(1.0-l9_11850)));
l9_11844=l9_11849;
l9_11840=l9_11844;
l9_11843=l9_11848;
}
l9_11797.x=l9_11840;
l9_11807=l9_11843;
float l9_11851=l9_11797.y;
int l9_11852=l9_11800.y;
bool l9_11853=l9_11806;
float l9_11854=l9_11807;
if ((l9_11852==0)||(l9_11852==3))
{
float l9_11855=l9_11851;
float l9_11856=0.0;
float l9_11857=1.0;
bool l9_11858=l9_11853;
float l9_11859=l9_11854;
float l9_11860=fast::clamp(l9_11855,l9_11856,l9_11857);
float l9_11861=step(abs(l9_11855-l9_11860),9.9999997e-06);
l9_11859*=(l9_11861+((1.0-float(l9_11858))*(1.0-l9_11861)));
l9_11855=l9_11860;
l9_11851=l9_11855;
l9_11854=l9_11859;
}
l9_11797.y=l9_11851;
l9_11807=l9_11854;
float2 l9_11862=l9_11797;
int l9_11863=l9_11795;
int l9_11864=l9_11796;
float l9_11865=l9_11805;
float2 l9_11866=l9_11862;
int l9_11867=l9_11863;
int l9_11868=l9_11864;
float3 l9_11869=float3(0.0);
if (l9_11867==0)
{
l9_11869=float3(l9_11866,0.0);
}
else
{
if (l9_11867==1)
{
l9_11869=float3(l9_11866.x,(l9_11866.y*0.5)+(0.5-(float(l9_11868)*0.5)),0.0);
}
else
{
l9_11869=float3(l9_11866,float(l9_11868));
}
}
float3 l9_11870=l9_11869;
float3 l9_11871=l9_11870;
float4 l9_11872=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_11871.xy,bias(l9_11865));
float4 l9_11873=l9_11872;
if (l9_11803)
{
l9_11873=mix(l9_11804,l9_11873,float4(l9_11807));
}
float4 l9_11874=l9_11873;
l9_11788=l9_11874;
float l9_11875=0.0;
l9_11875=l9_11788.x;
float l9_11876=0.0;
l9_11876=step(l9_11875,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_11877=float4(0.0);
l9_11877=l9_11466*float4(l9_11876);
float4 l9_11878=float4(0.0);
float4 l9_11879=(*sc_set0.UserUniforms).colorId01;
l9_11878=l9_11879;
float4 l9_11880=float4(0.0);
l9_11880=l9_11878*float4(l9_11876);
float4 l9_11881=float4(0.0);
float4 l9_11882=l9_11877;
float4 l9_11883=l9_11880;
float4 l9_11884=l9_11882;
float4 l9_11885=l9_11883;
float3 l9_11886=l9_11884.xyz*l9_11884.w;
l9_11884=float4(l9_11886.x,l9_11886.y,l9_11886.z,l9_11884.w);
float4 l9_11887=l9_11884+(l9_11885*(1.0-l9_11884.w));
l9_11881=l9_11887;
float4 l9_11888=float4(0.0);
l9_11888=float4(l9_11460)*l9_11881;
float4 l9_11889=float4(0.0);
l9_11889=l9_11888+l9_11881;
l9_11450=l9_11889;
l9_11455=l9_11450;
}
else
{
float4 l9_11890=float4(0.0);
float l9_11891=0.0;
float4 l9_11892=float4(0.0);
float4 l9_11893=float4(0.0);
ssGlobals l9_11894=l9_11452;
float l9_11895=0.0;
float l9_11896=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_11895=l9_11896;
l9_11891=l9_11895;
float4 l9_11897;
if ((l9_11891*1.0)!=0.0)
{
float4 l9_11898=float4(0.0);
float4 l9_11899=(*sc_set0.UserUniforms).patternColorId01;
l9_11898=l9_11899;
float4 l9_11900=float4(0.0);
float l9_11901=0.0;
float4 l9_11902=float4(0.0);
float4 l9_11903=float4(0.0);
ssGlobals l9_11904=l9_11894;
float l9_11905=0.0;
float l9_11906=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_11905=l9_11906;
l9_11901=l9_11905;
float4 l9_11907;
if ((l9_11901*1.0)!=0.0)
{
float2 l9_11908=float2(0.0);
l9_11908=l9_11904.Surface_UVCoord0;
float2 l9_11909=float2(0.0);
float2 l9_11910=(*sc_set0.UserUniforms).patternScaleId01;
l9_11909=l9_11910;
float2 l9_11911=float2(0.0);
l9_11911=((l9_11908-(*sc_set0.UserUniforms).Port_Center_N122)*l9_11909)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_11912=float2(0.0);
float2 l9_11913=(*sc_set0.UserUniforms).patternOffsetId01;
l9_11912=l9_11913;
float2 l9_11914=float2(0.0);
l9_11914=l9_11911+l9_11912;
float l9_11915=0.0;
float l9_11916=(*sc_set0.UserUniforms).patternRotateId01;
l9_11915=l9_11916;
float2 l9_11917=float2(0.0);
float2 l9_11918=l9_11914;
float l9_11919=l9_11915;
float2 l9_11920=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_11921=sin(radians(l9_11919));
float l9_11922=cos(radians(l9_11919));
float2 l9_11923=l9_11918-l9_11920;
l9_11923=float2(dot(float2(l9_11922,l9_11921),l9_11923),dot(float2(-l9_11921,l9_11922),l9_11923))+l9_11920;
l9_11917=l9_11923;
float4 l9_11924=float4(0.0);
int l9_11925;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_11926=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11926=0;
}
else
{
l9_11926=in.varStereoViewID;
}
int l9_11927=l9_11926;
l9_11925=1-l9_11927;
}
else
{
int l9_11928=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_11928=0;
}
else
{
l9_11928=in.varStereoViewID;
}
int l9_11929=l9_11928;
l9_11925=l9_11929;
}
int l9_11930=l9_11925;
int l9_11931=patternTextureId01Layout_tmp;
int l9_11932=l9_11930;
float2 l9_11933=l9_11917;
bool l9_11934=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_11935=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_11936=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_11937=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_11938=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_11939=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_11940=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_11941=0.0;
bool l9_11942=l9_11939&&(!l9_11937);
float l9_11943=1.0;
float l9_11944=l9_11933.x;
int l9_11945=l9_11936.x;
if (l9_11945==1)
{
l9_11944=fract(l9_11944);
}
else
{
if (l9_11945==2)
{
float l9_11946=fract(l9_11944);
float l9_11947=l9_11944-l9_11946;
float l9_11948=step(0.25,fract(l9_11947*0.5));
l9_11944=mix(l9_11946,1.0-l9_11946,fast::clamp(l9_11948,0.0,1.0));
}
}
l9_11933.x=l9_11944;
float l9_11949=l9_11933.y;
int l9_11950=l9_11936.y;
if (l9_11950==1)
{
l9_11949=fract(l9_11949);
}
else
{
if (l9_11950==2)
{
float l9_11951=fract(l9_11949);
float l9_11952=l9_11949-l9_11951;
float l9_11953=step(0.25,fract(l9_11952*0.5));
l9_11949=mix(l9_11951,1.0-l9_11951,fast::clamp(l9_11953,0.0,1.0));
}
}
l9_11933.y=l9_11949;
if (l9_11937)
{
bool l9_11954=l9_11939;
bool l9_11955;
if (l9_11954)
{
l9_11955=l9_11936.x==3;
}
else
{
l9_11955=l9_11954;
}
float l9_11956=l9_11933.x;
float l9_11957=l9_11938.x;
float l9_11958=l9_11938.z;
bool l9_11959=l9_11955;
float l9_11960=l9_11943;
float l9_11961=fast::clamp(l9_11956,l9_11957,l9_11958);
float l9_11962=step(abs(l9_11956-l9_11961),9.9999997e-06);
l9_11960*=(l9_11962+((1.0-float(l9_11959))*(1.0-l9_11962)));
l9_11956=l9_11961;
l9_11933.x=l9_11956;
l9_11943=l9_11960;
bool l9_11963=l9_11939;
bool l9_11964;
if (l9_11963)
{
l9_11964=l9_11936.y==3;
}
else
{
l9_11964=l9_11963;
}
float l9_11965=l9_11933.y;
float l9_11966=l9_11938.y;
float l9_11967=l9_11938.w;
bool l9_11968=l9_11964;
float l9_11969=l9_11943;
float l9_11970=fast::clamp(l9_11965,l9_11966,l9_11967);
float l9_11971=step(abs(l9_11965-l9_11970),9.9999997e-06);
l9_11969*=(l9_11971+((1.0-float(l9_11968))*(1.0-l9_11971)));
l9_11965=l9_11970;
l9_11933.y=l9_11965;
l9_11943=l9_11969;
}
float2 l9_11972=l9_11933;
bool l9_11973=l9_11934;
float3x3 l9_11974=l9_11935;
if (l9_11973)
{
l9_11972=float2((l9_11974*float3(l9_11972,1.0)).xy);
}
float2 l9_11975=l9_11972;
l9_11933=l9_11975;
float l9_11976=l9_11933.x;
int l9_11977=l9_11936.x;
bool l9_11978=l9_11942;
float l9_11979=l9_11943;
if ((l9_11977==0)||(l9_11977==3))
{
float l9_11980=l9_11976;
float l9_11981=0.0;
float l9_11982=1.0;
bool l9_11983=l9_11978;
float l9_11984=l9_11979;
float l9_11985=fast::clamp(l9_11980,l9_11981,l9_11982);
float l9_11986=step(abs(l9_11980-l9_11985),9.9999997e-06);
l9_11984*=(l9_11986+((1.0-float(l9_11983))*(1.0-l9_11986)));
l9_11980=l9_11985;
l9_11976=l9_11980;
l9_11979=l9_11984;
}
l9_11933.x=l9_11976;
l9_11943=l9_11979;
float l9_11987=l9_11933.y;
int l9_11988=l9_11936.y;
bool l9_11989=l9_11942;
float l9_11990=l9_11943;
if ((l9_11988==0)||(l9_11988==3))
{
float l9_11991=l9_11987;
float l9_11992=0.0;
float l9_11993=1.0;
bool l9_11994=l9_11989;
float l9_11995=l9_11990;
float l9_11996=fast::clamp(l9_11991,l9_11992,l9_11993);
float l9_11997=step(abs(l9_11991-l9_11996),9.9999997e-06);
l9_11995*=(l9_11997+((1.0-float(l9_11994))*(1.0-l9_11997)));
l9_11991=l9_11996;
l9_11987=l9_11991;
l9_11990=l9_11995;
}
l9_11933.y=l9_11987;
l9_11943=l9_11990;
float2 l9_11998=l9_11933;
int l9_11999=l9_11931;
int l9_12000=l9_11932;
float l9_12001=l9_11941;
float2 l9_12002=l9_11998;
int l9_12003=l9_11999;
int l9_12004=l9_12000;
float3 l9_12005=float3(0.0);
if (l9_12003==0)
{
l9_12005=float3(l9_12002,0.0);
}
else
{
if (l9_12003==1)
{
l9_12005=float3(l9_12002.x,(l9_12002.y*0.5)+(0.5-(float(l9_12004)*0.5)),0.0);
}
else
{
l9_12005=float3(l9_12002,float(l9_12004));
}
}
float3 l9_12006=l9_12005;
float3 l9_12007=l9_12006;
float4 l9_12008=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_12007.xy,bias(l9_12001));
float4 l9_12009=l9_12008;
if (l9_11939)
{
l9_12009=mix(l9_11940,l9_12009,float4(l9_11943));
}
float4 l9_12010=l9_12009;
l9_11924=l9_12010;
l9_11902=l9_11924;
l9_11907=l9_11902;
}
else
{
float2 l9_12011=float2(0.0);
l9_12011=l9_11904.Surface_UVCoord0;
float2 l9_12012=float2(0.0);
float2 l9_12013=(*sc_set0.UserUniforms).patternScaleId01;
l9_12012=l9_12013;
float2 l9_12014=float2(0.0);
l9_12014=((l9_12011-(*sc_set0.UserUniforms).Port_Center_N122)*l9_12012)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_12015=float2(0.0);
float2 l9_12016=(*sc_set0.UserUniforms).patternOffsetId01;
l9_12015=l9_12016;
float2 l9_12017=float2(0.0);
l9_12017=l9_12014+l9_12015;
float l9_12018=0.0;
float l9_12019=(*sc_set0.UserUniforms).patternRotateId01;
l9_12018=l9_12019;
float2 l9_12020=float2(0.0);
float2 l9_12021=l9_12017;
float l9_12022=l9_12018;
float2 l9_12023=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_12024=sin(radians(l9_12022));
float l9_12025=cos(radians(l9_12022));
float2 l9_12026=l9_12021-l9_12023;
l9_12026=float2(dot(float2(l9_12025,l9_12024),l9_12026),dot(float2(-l9_12024,l9_12025),l9_12026))+l9_12023;
l9_12020=l9_12026;
float4 l9_12027=float4(0.0);
int l9_12028;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_12029=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12029=0;
}
else
{
l9_12029=in.varStereoViewID;
}
int l9_12030=l9_12029;
l9_12028=1-l9_12030;
}
else
{
int l9_12031=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12031=0;
}
else
{
l9_12031=in.varStereoViewID;
}
int l9_12032=l9_12031;
l9_12028=l9_12032;
}
int l9_12033=l9_12028;
int l9_12034=patternTextureId01Layout_tmp;
int l9_12035=l9_12033;
float2 l9_12036=l9_12020;
bool l9_12037=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_12038=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_12039=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_12040=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_12041=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_12042=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_12043=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_12044=0.0;
bool l9_12045=l9_12042&&(!l9_12040);
float l9_12046=1.0;
float l9_12047=l9_12036.x;
int l9_12048=l9_12039.x;
if (l9_12048==1)
{
l9_12047=fract(l9_12047);
}
else
{
if (l9_12048==2)
{
float l9_12049=fract(l9_12047);
float l9_12050=l9_12047-l9_12049;
float l9_12051=step(0.25,fract(l9_12050*0.5));
l9_12047=mix(l9_12049,1.0-l9_12049,fast::clamp(l9_12051,0.0,1.0));
}
}
l9_12036.x=l9_12047;
float l9_12052=l9_12036.y;
int l9_12053=l9_12039.y;
if (l9_12053==1)
{
l9_12052=fract(l9_12052);
}
else
{
if (l9_12053==2)
{
float l9_12054=fract(l9_12052);
float l9_12055=l9_12052-l9_12054;
float l9_12056=step(0.25,fract(l9_12055*0.5));
l9_12052=mix(l9_12054,1.0-l9_12054,fast::clamp(l9_12056,0.0,1.0));
}
}
l9_12036.y=l9_12052;
if (l9_12040)
{
bool l9_12057=l9_12042;
bool l9_12058;
if (l9_12057)
{
l9_12058=l9_12039.x==3;
}
else
{
l9_12058=l9_12057;
}
float l9_12059=l9_12036.x;
float l9_12060=l9_12041.x;
float l9_12061=l9_12041.z;
bool l9_12062=l9_12058;
float l9_12063=l9_12046;
float l9_12064=fast::clamp(l9_12059,l9_12060,l9_12061);
float l9_12065=step(abs(l9_12059-l9_12064),9.9999997e-06);
l9_12063*=(l9_12065+((1.0-float(l9_12062))*(1.0-l9_12065)));
l9_12059=l9_12064;
l9_12036.x=l9_12059;
l9_12046=l9_12063;
bool l9_12066=l9_12042;
bool l9_12067;
if (l9_12066)
{
l9_12067=l9_12039.y==3;
}
else
{
l9_12067=l9_12066;
}
float l9_12068=l9_12036.y;
float l9_12069=l9_12041.y;
float l9_12070=l9_12041.w;
bool l9_12071=l9_12067;
float l9_12072=l9_12046;
float l9_12073=fast::clamp(l9_12068,l9_12069,l9_12070);
float l9_12074=step(abs(l9_12068-l9_12073),9.9999997e-06);
l9_12072*=(l9_12074+((1.0-float(l9_12071))*(1.0-l9_12074)));
l9_12068=l9_12073;
l9_12036.y=l9_12068;
l9_12046=l9_12072;
}
float2 l9_12075=l9_12036;
bool l9_12076=l9_12037;
float3x3 l9_12077=l9_12038;
if (l9_12076)
{
l9_12075=float2((l9_12077*float3(l9_12075,1.0)).xy);
}
float2 l9_12078=l9_12075;
l9_12036=l9_12078;
float l9_12079=l9_12036.x;
int l9_12080=l9_12039.x;
bool l9_12081=l9_12045;
float l9_12082=l9_12046;
if ((l9_12080==0)||(l9_12080==3))
{
float l9_12083=l9_12079;
float l9_12084=0.0;
float l9_12085=1.0;
bool l9_12086=l9_12081;
float l9_12087=l9_12082;
float l9_12088=fast::clamp(l9_12083,l9_12084,l9_12085);
float l9_12089=step(abs(l9_12083-l9_12088),9.9999997e-06);
l9_12087*=(l9_12089+((1.0-float(l9_12086))*(1.0-l9_12089)));
l9_12083=l9_12088;
l9_12079=l9_12083;
l9_12082=l9_12087;
}
l9_12036.x=l9_12079;
l9_12046=l9_12082;
float l9_12090=l9_12036.y;
int l9_12091=l9_12039.y;
bool l9_12092=l9_12045;
float l9_12093=l9_12046;
if ((l9_12091==0)||(l9_12091==3))
{
float l9_12094=l9_12090;
float l9_12095=0.0;
float l9_12096=1.0;
bool l9_12097=l9_12092;
float l9_12098=l9_12093;
float l9_12099=fast::clamp(l9_12094,l9_12095,l9_12096);
float l9_12100=step(abs(l9_12094-l9_12099),9.9999997e-06);
l9_12098*=(l9_12100+((1.0-float(l9_12097))*(1.0-l9_12100)));
l9_12094=l9_12099;
l9_12090=l9_12094;
l9_12093=l9_12098;
}
l9_12036.y=l9_12090;
l9_12046=l9_12093;
float2 l9_12101=l9_12036;
int l9_12102=l9_12034;
int l9_12103=l9_12035;
float l9_12104=l9_12044;
float2 l9_12105=l9_12101;
int l9_12106=l9_12102;
int l9_12107=l9_12103;
float3 l9_12108=float3(0.0);
if (l9_12106==0)
{
l9_12108=float3(l9_12105,0.0);
}
else
{
if (l9_12106==1)
{
l9_12108=float3(l9_12105.x,(l9_12105.y*0.5)+(0.5-(float(l9_12107)*0.5)),0.0);
}
else
{
l9_12108=float3(l9_12105,float(l9_12107));
}
}
float3 l9_12109=l9_12108;
float3 l9_12110=l9_12109;
float4 l9_12111=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_12110.xy,bias(l9_12104));
float4 l9_12112=l9_12111;
if (l9_12042)
{
l9_12112=mix(l9_12043,l9_12112,float4(l9_12046));
}
float4 l9_12113=l9_12112;
l9_12027=l9_12113;
float l9_12114=0.0;
float3 l9_12115=l9_12027.xyz;
float l9_12116=l9_12115.x;
l9_12114=l9_12116;
l9_11903=float4(l9_12114);
l9_11907=l9_11903;
}
l9_11900=l9_11907;
float4 l9_12117=float4(0.0);
l9_12117=l9_11898*l9_11900;
l9_11892=l9_12117;
l9_11897=l9_11892;
}
else
{
float4 l9_12118=float4(0.0);
float4 l9_12119=(*sc_set0.UserUniforms).colorId01;
l9_12118=l9_12119;
float2 l9_12120=float2(0.0);
l9_12120=l9_11894.Surface_UVCoord0;
float4 l9_12121=float4(0.0);
int l9_12122;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_12123=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12123=0;
}
else
{
l9_12123=in.varStereoViewID;
}
int l9_12124=l9_12123;
l9_12122=1-l9_12124;
}
else
{
int l9_12125=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12125=0;
}
else
{
l9_12125=in.varStereoViewID;
}
int l9_12126=l9_12125;
l9_12122=l9_12126;
}
int l9_12127=l9_12122;
int l9_12128=greyMaskIdLayout_tmp;
int l9_12129=l9_12127;
float2 l9_12130=l9_12120;
bool l9_12131=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_12132=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_12133=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_12134=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_12135=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_12136=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_12137=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_12138=0.0;
bool l9_12139=l9_12136&&(!l9_12134);
float l9_12140=1.0;
float l9_12141=l9_12130.x;
int l9_12142=l9_12133.x;
if (l9_12142==1)
{
l9_12141=fract(l9_12141);
}
else
{
if (l9_12142==2)
{
float l9_12143=fract(l9_12141);
float l9_12144=l9_12141-l9_12143;
float l9_12145=step(0.25,fract(l9_12144*0.5));
l9_12141=mix(l9_12143,1.0-l9_12143,fast::clamp(l9_12145,0.0,1.0));
}
}
l9_12130.x=l9_12141;
float l9_12146=l9_12130.y;
int l9_12147=l9_12133.y;
if (l9_12147==1)
{
l9_12146=fract(l9_12146);
}
else
{
if (l9_12147==2)
{
float l9_12148=fract(l9_12146);
float l9_12149=l9_12146-l9_12148;
float l9_12150=step(0.25,fract(l9_12149*0.5));
l9_12146=mix(l9_12148,1.0-l9_12148,fast::clamp(l9_12150,0.0,1.0));
}
}
l9_12130.y=l9_12146;
if (l9_12134)
{
bool l9_12151=l9_12136;
bool l9_12152;
if (l9_12151)
{
l9_12152=l9_12133.x==3;
}
else
{
l9_12152=l9_12151;
}
float l9_12153=l9_12130.x;
float l9_12154=l9_12135.x;
float l9_12155=l9_12135.z;
bool l9_12156=l9_12152;
float l9_12157=l9_12140;
float l9_12158=fast::clamp(l9_12153,l9_12154,l9_12155);
float l9_12159=step(abs(l9_12153-l9_12158),9.9999997e-06);
l9_12157*=(l9_12159+((1.0-float(l9_12156))*(1.0-l9_12159)));
l9_12153=l9_12158;
l9_12130.x=l9_12153;
l9_12140=l9_12157;
bool l9_12160=l9_12136;
bool l9_12161;
if (l9_12160)
{
l9_12161=l9_12133.y==3;
}
else
{
l9_12161=l9_12160;
}
float l9_12162=l9_12130.y;
float l9_12163=l9_12135.y;
float l9_12164=l9_12135.w;
bool l9_12165=l9_12161;
float l9_12166=l9_12140;
float l9_12167=fast::clamp(l9_12162,l9_12163,l9_12164);
float l9_12168=step(abs(l9_12162-l9_12167),9.9999997e-06);
l9_12166*=(l9_12168+((1.0-float(l9_12165))*(1.0-l9_12168)));
l9_12162=l9_12167;
l9_12130.y=l9_12162;
l9_12140=l9_12166;
}
float2 l9_12169=l9_12130;
bool l9_12170=l9_12131;
float3x3 l9_12171=l9_12132;
if (l9_12170)
{
l9_12169=float2((l9_12171*float3(l9_12169,1.0)).xy);
}
float2 l9_12172=l9_12169;
l9_12130=l9_12172;
float l9_12173=l9_12130.x;
int l9_12174=l9_12133.x;
bool l9_12175=l9_12139;
float l9_12176=l9_12140;
if ((l9_12174==0)||(l9_12174==3))
{
float l9_12177=l9_12173;
float l9_12178=0.0;
float l9_12179=1.0;
bool l9_12180=l9_12175;
float l9_12181=l9_12176;
float l9_12182=fast::clamp(l9_12177,l9_12178,l9_12179);
float l9_12183=step(abs(l9_12177-l9_12182),9.9999997e-06);
l9_12181*=(l9_12183+((1.0-float(l9_12180))*(1.0-l9_12183)));
l9_12177=l9_12182;
l9_12173=l9_12177;
l9_12176=l9_12181;
}
l9_12130.x=l9_12173;
l9_12140=l9_12176;
float l9_12184=l9_12130.y;
int l9_12185=l9_12133.y;
bool l9_12186=l9_12139;
float l9_12187=l9_12140;
if ((l9_12185==0)||(l9_12185==3))
{
float l9_12188=l9_12184;
float l9_12189=0.0;
float l9_12190=1.0;
bool l9_12191=l9_12186;
float l9_12192=l9_12187;
float l9_12193=fast::clamp(l9_12188,l9_12189,l9_12190);
float l9_12194=step(abs(l9_12188-l9_12193),9.9999997e-06);
l9_12192*=(l9_12194+((1.0-float(l9_12191))*(1.0-l9_12194)));
l9_12188=l9_12193;
l9_12184=l9_12188;
l9_12187=l9_12192;
}
l9_12130.y=l9_12184;
l9_12140=l9_12187;
float2 l9_12195=l9_12130;
int l9_12196=l9_12128;
int l9_12197=l9_12129;
float l9_12198=l9_12138;
float2 l9_12199=l9_12195;
int l9_12200=l9_12196;
int l9_12201=l9_12197;
float3 l9_12202=float3(0.0);
if (l9_12200==0)
{
l9_12202=float3(l9_12199,0.0);
}
else
{
if (l9_12200==1)
{
l9_12202=float3(l9_12199.x,(l9_12199.y*0.5)+(0.5-(float(l9_12201)*0.5)),0.0);
}
else
{
l9_12202=float3(l9_12199,float(l9_12201));
}
}
float3 l9_12203=l9_12202;
float3 l9_12204=l9_12203;
float4 l9_12205=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_12204.xy,bias(l9_12198));
float4 l9_12206=l9_12205;
if (l9_12136)
{
l9_12206=mix(l9_12137,l9_12206,float4(l9_12140));
}
float4 l9_12207=l9_12206;
l9_12121=l9_12207;
float l9_12208=0.0;
l9_12208=l9_12121.x;
float l9_12209=0.0;
l9_12209=step(l9_12208,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_12210=float4(0.0);
l9_12210=l9_12118*float4(l9_12209);
l9_11893=l9_12210;
l9_11897=l9_11893;
}
l9_11890=l9_11897;
float2 l9_12211=float2(0.0);
l9_12211=l9_11452.Surface_UVCoord0;
float4 l9_12212=float4(0.0);
int l9_12213;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_12214=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12214=0;
}
else
{
l9_12214=in.varStereoViewID;
}
int l9_12215=l9_12214;
l9_12213=1-l9_12215;
}
else
{
int l9_12216=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12216=0;
}
else
{
l9_12216=in.varStereoViewID;
}
int l9_12217=l9_12216;
l9_12213=l9_12217;
}
int l9_12218=l9_12213;
int l9_12219=greyMaskIdLayout_tmp;
int l9_12220=l9_12218;
float2 l9_12221=l9_12211;
bool l9_12222=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_12223=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_12224=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_12225=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_12226=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_12227=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_12228=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_12229=0.0;
bool l9_12230=l9_12227&&(!l9_12225);
float l9_12231=1.0;
float l9_12232=l9_12221.x;
int l9_12233=l9_12224.x;
if (l9_12233==1)
{
l9_12232=fract(l9_12232);
}
else
{
if (l9_12233==2)
{
float l9_12234=fract(l9_12232);
float l9_12235=l9_12232-l9_12234;
float l9_12236=step(0.25,fract(l9_12235*0.5));
l9_12232=mix(l9_12234,1.0-l9_12234,fast::clamp(l9_12236,0.0,1.0));
}
}
l9_12221.x=l9_12232;
float l9_12237=l9_12221.y;
int l9_12238=l9_12224.y;
if (l9_12238==1)
{
l9_12237=fract(l9_12237);
}
else
{
if (l9_12238==2)
{
float l9_12239=fract(l9_12237);
float l9_12240=l9_12237-l9_12239;
float l9_12241=step(0.25,fract(l9_12240*0.5));
l9_12237=mix(l9_12239,1.0-l9_12239,fast::clamp(l9_12241,0.0,1.0));
}
}
l9_12221.y=l9_12237;
if (l9_12225)
{
bool l9_12242=l9_12227;
bool l9_12243;
if (l9_12242)
{
l9_12243=l9_12224.x==3;
}
else
{
l9_12243=l9_12242;
}
float l9_12244=l9_12221.x;
float l9_12245=l9_12226.x;
float l9_12246=l9_12226.z;
bool l9_12247=l9_12243;
float l9_12248=l9_12231;
float l9_12249=fast::clamp(l9_12244,l9_12245,l9_12246);
float l9_12250=step(abs(l9_12244-l9_12249),9.9999997e-06);
l9_12248*=(l9_12250+((1.0-float(l9_12247))*(1.0-l9_12250)));
l9_12244=l9_12249;
l9_12221.x=l9_12244;
l9_12231=l9_12248;
bool l9_12251=l9_12227;
bool l9_12252;
if (l9_12251)
{
l9_12252=l9_12224.y==3;
}
else
{
l9_12252=l9_12251;
}
float l9_12253=l9_12221.y;
float l9_12254=l9_12226.y;
float l9_12255=l9_12226.w;
bool l9_12256=l9_12252;
float l9_12257=l9_12231;
float l9_12258=fast::clamp(l9_12253,l9_12254,l9_12255);
float l9_12259=step(abs(l9_12253-l9_12258),9.9999997e-06);
l9_12257*=(l9_12259+((1.0-float(l9_12256))*(1.0-l9_12259)));
l9_12253=l9_12258;
l9_12221.y=l9_12253;
l9_12231=l9_12257;
}
float2 l9_12260=l9_12221;
bool l9_12261=l9_12222;
float3x3 l9_12262=l9_12223;
if (l9_12261)
{
l9_12260=float2((l9_12262*float3(l9_12260,1.0)).xy);
}
float2 l9_12263=l9_12260;
l9_12221=l9_12263;
float l9_12264=l9_12221.x;
int l9_12265=l9_12224.x;
bool l9_12266=l9_12230;
float l9_12267=l9_12231;
if ((l9_12265==0)||(l9_12265==3))
{
float l9_12268=l9_12264;
float l9_12269=0.0;
float l9_12270=1.0;
bool l9_12271=l9_12266;
float l9_12272=l9_12267;
float l9_12273=fast::clamp(l9_12268,l9_12269,l9_12270);
float l9_12274=step(abs(l9_12268-l9_12273),9.9999997e-06);
l9_12272*=(l9_12274+((1.0-float(l9_12271))*(1.0-l9_12274)));
l9_12268=l9_12273;
l9_12264=l9_12268;
l9_12267=l9_12272;
}
l9_12221.x=l9_12264;
l9_12231=l9_12267;
float l9_12275=l9_12221.y;
int l9_12276=l9_12224.y;
bool l9_12277=l9_12230;
float l9_12278=l9_12231;
if ((l9_12276==0)||(l9_12276==3))
{
float l9_12279=l9_12275;
float l9_12280=0.0;
float l9_12281=1.0;
bool l9_12282=l9_12277;
float l9_12283=l9_12278;
float l9_12284=fast::clamp(l9_12279,l9_12280,l9_12281);
float l9_12285=step(abs(l9_12279-l9_12284),9.9999997e-06);
l9_12283*=(l9_12285+((1.0-float(l9_12282))*(1.0-l9_12285)));
l9_12279=l9_12284;
l9_12275=l9_12279;
l9_12278=l9_12283;
}
l9_12221.y=l9_12275;
l9_12231=l9_12278;
float2 l9_12286=l9_12221;
int l9_12287=l9_12219;
int l9_12288=l9_12220;
float l9_12289=l9_12229;
float2 l9_12290=l9_12286;
int l9_12291=l9_12287;
int l9_12292=l9_12288;
float3 l9_12293=float3(0.0);
if (l9_12291==0)
{
l9_12293=float3(l9_12290,0.0);
}
else
{
if (l9_12291==1)
{
l9_12293=float3(l9_12290.x,(l9_12290.y*0.5)+(0.5-(float(l9_12292)*0.5)),0.0);
}
else
{
l9_12293=float3(l9_12290,float(l9_12292));
}
}
float3 l9_12294=l9_12293;
float3 l9_12295=l9_12294;
float4 l9_12296=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_12295.xy,bias(l9_12289));
float4 l9_12297=l9_12296;
if (l9_12227)
{
l9_12297=mix(l9_12228,l9_12297,float4(l9_12231));
}
float4 l9_12298=l9_12297;
l9_12212=l9_12298;
float l9_12299=0.0;
l9_12299=l9_12212.x;
float l9_12300=0.0;
l9_12300=step(l9_12299,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_12301=float4(0.0);
l9_12301=l9_11890*float4(l9_12300);
float4 l9_12302=float4(0.0);
float4 l9_12303=(*sc_set0.UserUniforms).colorId01;
l9_12302=l9_12303;
float4 l9_12304=float4(0.0);
l9_12304=l9_12302*float4(l9_12300);
float4 l9_12305=float4(0.0);
float4 l9_12306=l9_12301;
float4 l9_12307=l9_12304;
float4 l9_12308=l9_12306;
float4 l9_12309=l9_12307;
float3 l9_12310=l9_12308.xyz*l9_12308.w;
l9_12308=float4(l9_12310.x,l9_12310.y,l9_12310.z,l9_12308.w);
float4 l9_12311=l9_12308+(l9_12309*(1.0-l9_12308.w));
l9_12305=l9_12311;
l9_11451=l9_12305;
l9_11455=l9_11451;
}
l9_11448=l9_11455;
float l9_12312=0.0;
float l9_12313=(*sc_set0.UserUniforms).metallicId01;
l9_12312=l9_12313;
float l9_12314=0.0;
float l9_12315=(*sc_set0.UserUniforms).rougnessId01;
l9_12314=l9_12315;
float4 l9_12316=float4(0.0);
float3 l9_12317=l9_11448.xyz;
float l9_12318=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_12319=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_12320=l9_12312;
float l9_12321=l9_12314;
float3 l9_12322=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_12323=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_12324=l9_11444;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_12324.BumpedNormal=l9_12324.VertexNormal_WorldSpace;
}
float l9_12325=l9_12318;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_12325<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_12326=gl_FragCoord;
float2 l9_12327=floor(mod(l9_12326.xy,float2(4.0)));
float l9_12328=(mod(dot(l9_12327,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_12325<l9_12328)
{
discard_fragment();
}
}
l9_12317=fast::max(l9_12317,float3(0.0));
float4 l9_12329;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_12329=float4(l9_12317,l9_12318);
}
else
{
l9_12320=fast::clamp(l9_12320,0.0,1.0);
l9_12321=fast::clamp(l9_12321,0.0,1.0);
float3 l9_12330=l9_12317;
float l9_12331=l9_12318;
float3 l9_12332=l9_12324.BumpedNormal;
float3 l9_12333=l9_12324.PositionWS;
float3 l9_12334=l9_12324.ViewDirWS;
float3 l9_12335=l9_12319;
float l9_12336=l9_12320;
float l9_12337=l9_12321;
float3 l9_12338=l9_12322;
float3 l9_12339=l9_12323;
l9_12329=ngsCalculateLighting(l9_12330,l9_12331,l9_12332,l9_12333,l9_12334,l9_12335,l9_12336,l9_12337,l9_12338,l9_12339,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_12329=fast::max(l9_12329,float4(0.0));
l9_12316=l9_12329;
l9_11442=l9_12316;
l9_11447=l9_11442;
}
else
{
float4 l9_12340=float4(0.0);
float l9_12341=0.0;
float4 l9_12342=float4(0.0);
float4 l9_12343=float4(0.0);
ssGlobals l9_12344=l9_11444;
float l9_12345=0.0;
float l9_12346=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_12345=l9_12346;
l9_12341=l9_12345;
float4 l9_12347;
if ((l9_12341*1.0)!=0.0)
{
float l9_12348=0.0;
float l9_12349=(*sc_set0.UserUniforms).rimExpId01;
l9_12348=l9_12349;
float l9_12350=0.0;
float l9_12351=(*sc_set0.UserUniforms).rimIntId01;
l9_12350=l9_12351;
float l9_12352=0.0;
float l9_12353=l9_12348;
float l9_12354=l9_12350;
ssGlobals l9_12355=l9_12344;
float l9_12356=abs(dot(-l9_12355.ViewDirWS,l9_12355.VertexNormal_WorldSpace));
float l9_12357=1.0-pow(1.0-l9_12356,l9_12353);
l9_12357=fast::max(l9_12357,0.0);
l9_12357*=l9_12354;
l9_12352=l9_12357;
float4 l9_12358=float4(0.0);
float l9_12359=0.0;
float4 l9_12360=float4(0.0);
float4 l9_12361=float4(0.0);
ssGlobals l9_12362=l9_12344;
float l9_12363=0.0;
float l9_12364=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_12363=l9_12364;
l9_12359=l9_12363;
float4 l9_12365;
if ((l9_12359*1.0)!=0.0)
{
float4 l9_12366=float4(0.0);
float4 l9_12367=(*sc_set0.UserUniforms).patternColorId01;
l9_12366=l9_12367;
float4 l9_12368=float4(0.0);
float l9_12369=0.0;
float4 l9_12370=float4(0.0);
float4 l9_12371=float4(0.0);
ssGlobals l9_12372=l9_12362;
float l9_12373=0.0;
float l9_12374=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_12373=l9_12374;
l9_12369=l9_12373;
float4 l9_12375;
if ((l9_12369*1.0)!=0.0)
{
float2 l9_12376=float2(0.0);
l9_12376=l9_12372.Surface_UVCoord0;
float2 l9_12377=float2(0.0);
float2 l9_12378=(*sc_set0.UserUniforms).patternScaleId01;
l9_12377=l9_12378;
float2 l9_12379=float2(0.0);
l9_12379=((l9_12376-(*sc_set0.UserUniforms).Port_Center_N122)*l9_12377)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_12380=float2(0.0);
float2 l9_12381=(*sc_set0.UserUniforms).patternOffsetId01;
l9_12380=l9_12381;
float2 l9_12382=float2(0.0);
l9_12382=l9_12379+l9_12380;
float l9_12383=0.0;
float l9_12384=(*sc_set0.UserUniforms).patternRotateId01;
l9_12383=l9_12384;
float2 l9_12385=float2(0.0);
float2 l9_12386=l9_12382;
float l9_12387=l9_12383;
float2 l9_12388=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_12389=sin(radians(l9_12387));
float l9_12390=cos(radians(l9_12387));
float2 l9_12391=l9_12386-l9_12388;
l9_12391=float2(dot(float2(l9_12390,l9_12389),l9_12391),dot(float2(-l9_12389,l9_12390),l9_12391))+l9_12388;
l9_12385=l9_12391;
float4 l9_12392=float4(0.0);
int l9_12393;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_12394=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12394=0;
}
else
{
l9_12394=in.varStereoViewID;
}
int l9_12395=l9_12394;
l9_12393=1-l9_12395;
}
else
{
int l9_12396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12396=0;
}
else
{
l9_12396=in.varStereoViewID;
}
int l9_12397=l9_12396;
l9_12393=l9_12397;
}
int l9_12398=l9_12393;
int l9_12399=patternTextureId01Layout_tmp;
int l9_12400=l9_12398;
float2 l9_12401=l9_12385;
bool l9_12402=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_12403=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_12404=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_12405=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_12406=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_12407=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_12408=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_12409=0.0;
bool l9_12410=l9_12407&&(!l9_12405);
float l9_12411=1.0;
float l9_12412=l9_12401.x;
int l9_12413=l9_12404.x;
if (l9_12413==1)
{
l9_12412=fract(l9_12412);
}
else
{
if (l9_12413==2)
{
float l9_12414=fract(l9_12412);
float l9_12415=l9_12412-l9_12414;
float l9_12416=step(0.25,fract(l9_12415*0.5));
l9_12412=mix(l9_12414,1.0-l9_12414,fast::clamp(l9_12416,0.0,1.0));
}
}
l9_12401.x=l9_12412;
float l9_12417=l9_12401.y;
int l9_12418=l9_12404.y;
if (l9_12418==1)
{
l9_12417=fract(l9_12417);
}
else
{
if (l9_12418==2)
{
float l9_12419=fract(l9_12417);
float l9_12420=l9_12417-l9_12419;
float l9_12421=step(0.25,fract(l9_12420*0.5));
l9_12417=mix(l9_12419,1.0-l9_12419,fast::clamp(l9_12421,0.0,1.0));
}
}
l9_12401.y=l9_12417;
if (l9_12405)
{
bool l9_12422=l9_12407;
bool l9_12423;
if (l9_12422)
{
l9_12423=l9_12404.x==3;
}
else
{
l9_12423=l9_12422;
}
float l9_12424=l9_12401.x;
float l9_12425=l9_12406.x;
float l9_12426=l9_12406.z;
bool l9_12427=l9_12423;
float l9_12428=l9_12411;
float l9_12429=fast::clamp(l9_12424,l9_12425,l9_12426);
float l9_12430=step(abs(l9_12424-l9_12429),9.9999997e-06);
l9_12428*=(l9_12430+((1.0-float(l9_12427))*(1.0-l9_12430)));
l9_12424=l9_12429;
l9_12401.x=l9_12424;
l9_12411=l9_12428;
bool l9_12431=l9_12407;
bool l9_12432;
if (l9_12431)
{
l9_12432=l9_12404.y==3;
}
else
{
l9_12432=l9_12431;
}
float l9_12433=l9_12401.y;
float l9_12434=l9_12406.y;
float l9_12435=l9_12406.w;
bool l9_12436=l9_12432;
float l9_12437=l9_12411;
float l9_12438=fast::clamp(l9_12433,l9_12434,l9_12435);
float l9_12439=step(abs(l9_12433-l9_12438),9.9999997e-06);
l9_12437*=(l9_12439+((1.0-float(l9_12436))*(1.0-l9_12439)));
l9_12433=l9_12438;
l9_12401.y=l9_12433;
l9_12411=l9_12437;
}
float2 l9_12440=l9_12401;
bool l9_12441=l9_12402;
float3x3 l9_12442=l9_12403;
if (l9_12441)
{
l9_12440=float2((l9_12442*float3(l9_12440,1.0)).xy);
}
float2 l9_12443=l9_12440;
l9_12401=l9_12443;
float l9_12444=l9_12401.x;
int l9_12445=l9_12404.x;
bool l9_12446=l9_12410;
float l9_12447=l9_12411;
if ((l9_12445==0)||(l9_12445==3))
{
float l9_12448=l9_12444;
float l9_12449=0.0;
float l9_12450=1.0;
bool l9_12451=l9_12446;
float l9_12452=l9_12447;
float l9_12453=fast::clamp(l9_12448,l9_12449,l9_12450);
float l9_12454=step(abs(l9_12448-l9_12453),9.9999997e-06);
l9_12452*=(l9_12454+((1.0-float(l9_12451))*(1.0-l9_12454)));
l9_12448=l9_12453;
l9_12444=l9_12448;
l9_12447=l9_12452;
}
l9_12401.x=l9_12444;
l9_12411=l9_12447;
float l9_12455=l9_12401.y;
int l9_12456=l9_12404.y;
bool l9_12457=l9_12410;
float l9_12458=l9_12411;
if ((l9_12456==0)||(l9_12456==3))
{
float l9_12459=l9_12455;
float l9_12460=0.0;
float l9_12461=1.0;
bool l9_12462=l9_12457;
float l9_12463=l9_12458;
float l9_12464=fast::clamp(l9_12459,l9_12460,l9_12461);
float l9_12465=step(abs(l9_12459-l9_12464),9.9999997e-06);
l9_12463*=(l9_12465+((1.0-float(l9_12462))*(1.0-l9_12465)));
l9_12459=l9_12464;
l9_12455=l9_12459;
l9_12458=l9_12463;
}
l9_12401.y=l9_12455;
l9_12411=l9_12458;
float2 l9_12466=l9_12401;
int l9_12467=l9_12399;
int l9_12468=l9_12400;
float l9_12469=l9_12409;
float2 l9_12470=l9_12466;
int l9_12471=l9_12467;
int l9_12472=l9_12468;
float3 l9_12473=float3(0.0);
if (l9_12471==0)
{
l9_12473=float3(l9_12470,0.0);
}
else
{
if (l9_12471==1)
{
l9_12473=float3(l9_12470.x,(l9_12470.y*0.5)+(0.5-(float(l9_12472)*0.5)),0.0);
}
else
{
l9_12473=float3(l9_12470,float(l9_12472));
}
}
float3 l9_12474=l9_12473;
float3 l9_12475=l9_12474;
float4 l9_12476=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_12475.xy,bias(l9_12469));
float4 l9_12477=l9_12476;
if (l9_12407)
{
l9_12477=mix(l9_12408,l9_12477,float4(l9_12411));
}
float4 l9_12478=l9_12477;
l9_12392=l9_12478;
l9_12370=l9_12392;
l9_12375=l9_12370;
}
else
{
float2 l9_12479=float2(0.0);
l9_12479=l9_12372.Surface_UVCoord0;
float2 l9_12480=float2(0.0);
float2 l9_12481=(*sc_set0.UserUniforms).patternScaleId01;
l9_12480=l9_12481;
float2 l9_12482=float2(0.0);
l9_12482=((l9_12479-(*sc_set0.UserUniforms).Port_Center_N122)*l9_12480)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_12483=float2(0.0);
float2 l9_12484=(*sc_set0.UserUniforms).patternOffsetId01;
l9_12483=l9_12484;
float2 l9_12485=float2(0.0);
l9_12485=l9_12482+l9_12483;
float l9_12486=0.0;
float l9_12487=(*sc_set0.UserUniforms).patternRotateId01;
l9_12486=l9_12487;
float2 l9_12488=float2(0.0);
float2 l9_12489=l9_12485;
float l9_12490=l9_12486;
float2 l9_12491=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_12492=sin(radians(l9_12490));
float l9_12493=cos(radians(l9_12490));
float2 l9_12494=l9_12489-l9_12491;
l9_12494=float2(dot(float2(l9_12493,l9_12492),l9_12494),dot(float2(-l9_12492,l9_12493),l9_12494))+l9_12491;
l9_12488=l9_12494;
float4 l9_12495=float4(0.0);
int l9_12496;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_12497=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12497=0;
}
else
{
l9_12497=in.varStereoViewID;
}
int l9_12498=l9_12497;
l9_12496=1-l9_12498;
}
else
{
int l9_12499=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12499=0;
}
else
{
l9_12499=in.varStereoViewID;
}
int l9_12500=l9_12499;
l9_12496=l9_12500;
}
int l9_12501=l9_12496;
int l9_12502=patternTextureId01Layout_tmp;
int l9_12503=l9_12501;
float2 l9_12504=l9_12488;
bool l9_12505=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_12506=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_12507=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_12508=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_12509=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_12510=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_12511=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_12512=0.0;
bool l9_12513=l9_12510&&(!l9_12508);
float l9_12514=1.0;
float l9_12515=l9_12504.x;
int l9_12516=l9_12507.x;
if (l9_12516==1)
{
l9_12515=fract(l9_12515);
}
else
{
if (l9_12516==2)
{
float l9_12517=fract(l9_12515);
float l9_12518=l9_12515-l9_12517;
float l9_12519=step(0.25,fract(l9_12518*0.5));
l9_12515=mix(l9_12517,1.0-l9_12517,fast::clamp(l9_12519,0.0,1.0));
}
}
l9_12504.x=l9_12515;
float l9_12520=l9_12504.y;
int l9_12521=l9_12507.y;
if (l9_12521==1)
{
l9_12520=fract(l9_12520);
}
else
{
if (l9_12521==2)
{
float l9_12522=fract(l9_12520);
float l9_12523=l9_12520-l9_12522;
float l9_12524=step(0.25,fract(l9_12523*0.5));
l9_12520=mix(l9_12522,1.0-l9_12522,fast::clamp(l9_12524,0.0,1.0));
}
}
l9_12504.y=l9_12520;
if (l9_12508)
{
bool l9_12525=l9_12510;
bool l9_12526;
if (l9_12525)
{
l9_12526=l9_12507.x==3;
}
else
{
l9_12526=l9_12525;
}
float l9_12527=l9_12504.x;
float l9_12528=l9_12509.x;
float l9_12529=l9_12509.z;
bool l9_12530=l9_12526;
float l9_12531=l9_12514;
float l9_12532=fast::clamp(l9_12527,l9_12528,l9_12529);
float l9_12533=step(abs(l9_12527-l9_12532),9.9999997e-06);
l9_12531*=(l9_12533+((1.0-float(l9_12530))*(1.0-l9_12533)));
l9_12527=l9_12532;
l9_12504.x=l9_12527;
l9_12514=l9_12531;
bool l9_12534=l9_12510;
bool l9_12535;
if (l9_12534)
{
l9_12535=l9_12507.y==3;
}
else
{
l9_12535=l9_12534;
}
float l9_12536=l9_12504.y;
float l9_12537=l9_12509.y;
float l9_12538=l9_12509.w;
bool l9_12539=l9_12535;
float l9_12540=l9_12514;
float l9_12541=fast::clamp(l9_12536,l9_12537,l9_12538);
float l9_12542=step(abs(l9_12536-l9_12541),9.9999997e-06);
l9_12540*=(l9_12542+((1.0-float(l9_12539))*(1.0-l9_12542)));
l9_12536=l9_12541;
l9_12504.y=l9_12536;
l9_12514=l9_12540;
}
float2 l9_12543=l9_12504;
bool l9_12544=l9_12505;
float3x3 l9_12545=l9_12506;
if (l9_12544)
{
l9_12543=float2((l9_12545*float3(l9_12543,1.0)).xy);
}
float2 l9_12546=l9_12543;
l9_12504=l9_12546;
float l9_12547=l9_12504.x;
int l9_12548=l9_12507.x;
bool l9_12549=l9_12513;
float l9_12550=l9_12514;
if ((l9_12548==0)||(l9_12548==3))
{
float l9_12551=l9_12547;
float l9_12552=0.0;
float l9_12553=1.0;
bool l9_12554=l9_12549;
float l9_12555=l9_12550;
float l9_12556=fast::clamp(l9_12551,l9_12552,l9_12553);
float l9_12557=step(abs(l9_12551-l9_12556),9.9999997e-06);
l9_12555*=(l9_12557+((1.0-float(l9_12554))*(1.0-l9_12557)));
l9_12551=l9_12556;
l9_12547=l9_12551;
l9_12550=l9_12555;
}
l9_12504.x=l9_12547;
l9_12514=l9_12550;
float l9_12558=l9_12504.y;
int l9_12559=l9_12507.y;
bool l9_12560=l9_12513;
float l9_12561=l9_12514;
if ((l9_12559==0)||(l9_12559==3))
{
float l9_12562=l9_12558;
float l9_12563=0.0;
float l9_12564=1.0;
bool l9_12565=l9_12560;
float l9_12566=l9_12561;
float l9_12567=fast::clamp(l9_12562,l9_12563,l9_12564);
float l9_12568=step(abs(l9_12562-l9_12567),9.9999997e-06);
l9_12566*=(l9_12568+((1.0-float(l9_12565))*(1.0-l9_12568)));
l9_12562=l9_12567;
l9_12558=l9_12562;
l9_12561=l9_12566;
}
l9_12504.y=l9_12558;
l9_12514=l9_12561;
float2 l9_12569=l9_12504;
int l9_12570=l9_12502;
int l9_12571=l9_12503;
float l9_12572=l9_12512;
float2 l9_12573=l9_12569;
int l9_12574=l9_12570;
int l9_12575=l9_12571;
float3 l9_12576=float3(0.0);
if (l9_12574==0)
{
l9_12576=float3(l9_12573,0.0);
}
else
{
if (l9_12574==1)
{
l9_12576=float3(l9_12573.x,(l9_12573.y*0.5)+(0.5-(float(l9_12575)*0.5)),0.0);
}
else
{
l9_12576=float3(l9_12573,float(l9_12575));
}
}
float3 l9_12577=l9_12576;
float3 l9_12578=l9_12577;
float4 l9_12579=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_12578.xy,bias(l9_12572));
float4 l9_12580=l9_12579;
if (l9_12510)
{
l9_12580=mix(l9_12511,l9_12580,float4(l9_12514));
}
float4 l9_12581=l9_12580;
l9_12495=l9_12581;
float l9_12582=0.0;
float3 l9_12583=l9_12495.xyz;
float l9_12584=l9_12583.x;
l9_12582=l9_12584;
l9_12371=float4(l9_12582);
l9_12375=l9_12371;
}
l9_12368=l9_12375;
float4 l9_12585=float4(0.0);
l9_12585=l9_12366*l9_12368;
l9_12360=l9_12585;
l9_12365=l9_12360;
}
else
{
float4 l9_12586=float4(0.0);
float4 l9_12587=(*sc_set0.UserUniforms).colorId01;
l9_12586=l9_12587;
float2 l9_12588=float2(0.0);
l9_12588=l9_12362.Surface_UVCoord0;
float4 l9_12589=float4(0.0);
int l9_12590;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_12591=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12591=0;
}
else
{
l9_12591=in.varStereoViewID;
}
int l9_12592=l9_12591;
l9_12590=1-l9_12592;
}
else
{
int l9_12593=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12593=0;
}
else
{
l9_12593=in.varStereoViewID;
}
int l9_12594=l9_12593;
l9_12590=l9_12594;
}
int l9_12595=l9_12590;
int l9_12596=greyMaskIdLayout_tmp;
int l9_12597=l9_12595;
float2 l9_12598=l9_12588;
bool l9_12599=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_12600=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_12601=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_12602=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_12603=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_12604=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_12605=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_12606=0.0;
bool l9_12607=l9_12604&&(!l9_12602);
float l9_12608=1.0;
float l9_12609=l9_12598.x;
int l9_12610=l9_12601.x;
if (l9_12610==1)
{
l9_12609=fract(l9_12609);
}
else
{
if (l9_12610==2)
{
float l9_12611=fract(l9_12609);
float l9_12612=l9_12609-l9_12611;
float l9_12613=step(0.25,fract(l9_12612*0.5));
l9_12609=mix(l9_12611,1.0-l9_12611,fast::clamp(l9_12613,0.0,1.0));
}
}
l9_12598.x=l9_12609;
float l9_12614=l9_12598.y;
int l9_12615=l9_12601.y;
if (l9_12615==1)
{
l9_12614=fract(l9_12614);
}
else
{
if (l9_12615==2)
{
float l9_12616=fract(l9_12614);
float l9_12617=l9_12614-l9_12616;
float l9_12618=step(0.25,fract(l9_12617*0.5));
l9_12614=mix(l9_12616,1.0-l9_12616,fast::clamp(l9_12618,0.0,1.0));
}
}
l9_12598.y=l9_12614;
if (l9_12602)
{
bool l9_12619=l9_12604;
bool l9_12620;
if (l9_12619)
{
l9_12620=l9_12601.x==3;
}
else
{
l9_12620=l9_12619;
}
float l9_12621=l9_12598.x;
float l9_12622=l9_12603.x;
float l9_12623=l9_12603.z;
bool l9_12624=l9_12620;
float l9_12625=l9_12608;
float l9_12626=fast::clamp(l9_12621,l9_12622,l9_12623);
float l9_12627=step(abs(l9_12621-l9_12626),9.9999997e-06);
l9_12625*=(l9_12627+((1.0-float(l9_12624))*(1.0-l9_12627)));
l9_12621=l9_12626;
l9_12598.x=l9_12621;
l9_12608=l9_12625;
bool l9_12628=l9_12604;
bool l9_12629;
if (l9_12628)
{
l9_12629=l9_12601.y==3;
}
else
{
l9_12629=l9_12628;
}
float l9_12630=l9_12598.y;
float l9_12631=l9_12603.y;
float l9_12632=l9_12603.w;
bool l9_12633=l9_12629;
float l9_12634=l9_12608;
float l9_12635=fast::clamp(l9_12630,l9_12631,l9_12632);
float l9_12636=step(abs(l9_12630-l9_12635),9.9999997e-06);
l9_12634*=(l9_12636+((1.0-float(l9_12633))*(1.0-l9_12636)));
l9_12630=l9_12635;
l9_12598.y=l9_12630;
l9_12608=l9_12634;
}
float2 l9_12637=l9_12598;
bool l9_12638=l9_12599;
float3x3 l9_12639=l9_12600;
if (l9_12638)
{
l9_12637=float2((l9_12639*float3(l9_12637,1.0)).xy);
}
float2 l9_12640=l9_12637;
l9_12598=l9_12640;
float l9_12641=l9_12598.x;
int l9_12642=l9_12601.x;
bool l9_12643=l9_12607;
float l9_12644=l9_12608;
if ((l9_12642==0)||(l9_12642==3))
{
float l9_12645=l9_12641;
float l9_12646=0.0;
float l9_12647=1.0;
bool l9_12648=l9_12643;
float l9_12649=l9_12644;
float l9_12650=fast::clamp(l9_12645,l9_12646,l9_12647);
float l9_12651=step(abs(l9_12645-l9_12650),9.9999997e-06);
l9_12649*=(l9_12651+((1.0-float(l9_12648))*(1.0-l9_12651)));
l9_12645=l9_12650;
l9_12641=l9_12645;
l9_12644=l9_12649;
}
l9_12598.x=l9_12641;
l9_12608=l9_12644;
float l9_12652=l9_12598.y;
int l9_12653=l9_12601.y;
bool l9_12654=l9_12607;
float l9_12655=l9_12608;
if ((l9_12653==0)||(l9_12653==3))
{
float l9_12656=l9_12652;
float l9_12657=0.0;
float l9_12658=1.0;
bool l9_12659=l9_12654;
float l9_12660=l9_12655;
float l9_12661=fast::clamp(l9_12656,l9_12657,l9_12658);
float l9_12662=step(abs(l9_12656-l9_12661),9.9999997e-06);
l9_12660*=(l9_12662+((1.0-float(l9_12659))*(1.0-l9_12662)));
l9_12656=l9_12661;
l9_12652=l9_12656;
l9_12655=l9_12660;
}
l9_12598.y=l9_12652;
l9_12608=l9_12655;
float2 l9_12663=l9_12598;
int l9_12664=l9_12596;
int l9_12665=l9_12597;
float l9_12666=l9_12606;
float2 l9_12667=l9_12663;
int l9_12668=l9_12664;
int l9_12669=l9_12665;
float3 l9_12670=float3(0.0);
if (l9_12668==0)
{
l9_12670=float3(l9_12667,0.0);
}
else
{
if (l9_12668==1)
{
l9_12670=float3(l9_12667.x,(l9_12667.y*0.5)+(0.5-(float(l9_12669)*0.5)),0.0);
}
else
{
l9_12670=float3(l9_12667,float(l9_12669));
}
}
float3 l9_12671=l9_12670;
float3 l9_12672=l9_12671;
float4 l9_12673=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_12672.xy,bias(l9_12666));
float4 l9_12674=l9_12673;
if (l9_12604)
{
l9_12674=mix(l9_12605,l9_12674,float4(l9_12608));
}
float4 l9_12675=l9_12674;
l9_12589=l9_12675;
float l9_12676=0.0;
l9_12676=l9_12589.x;
float l9_12677=0.0;
l9_12677=step(l9_12676,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_12678=float4(0.0);
l9_12678=l9_12586*float4(l9_12677);
l9_12361=l9_12678;
l9_12365=l9_12361;
}
l9_12358=l9_12365;
float2 l9_12679=float2(0.0);
l9_12679=l9_12344.Surface_UVCoord0;
float4 l9_12680=float4(0.0);
int l9_12681;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_12682=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12682=0;
}
else
{
l9_12682=in.varStereoViewID;
}
int l9_12683=l9_12682;
l9_12681=1-l9_12683;
}
else
{
int l9_12684=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12684=0;
}
else
{
l9_12684=in.varStereoViewID;
}
int l9_12685=l9_12684;
l9_12681=l9_12685;
}
int l9_12686=l9_12681;
int l9_12687=greyMaskIdLayout_tmp;
int l9_12688=l9_12686;
float2 l9_12689=l9_12679;
bool l9_12690=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_12691=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_12692=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_12693=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_12694=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_12695=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_12696=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_12697=0.0;
bool l9_12698=l9_12695&&(!l9_12693);
float l9_12699=1.0;
float l9_12700=l9_12689.x;
int l9_12701=l9_12692.x;
if (l9_12701==1)
{
l9_12700=fract(l9_12700);
}
else
{
if (l9_12701==2)
{
float l9_12702=fract(l9_12700);
float l9_12703=l9_12700-l9_12702;
float l9_12704=step(0.25,fract(l9_12703*0.5));
l9_12700=mix(l9_12702,1.0-l9_12702,fast::clamp(l9_12704,0.0,1.0));
}
}
l9_12689.x=l9_12700;
float l9_12705=l9_12689.y;
int l9_12706=l9_12692.y;
if (l9_12706==1)
{
l9_12705=fract(l9_12705);
}
else
{
if (l9_12706==2)
{
float l9_12707=fract(l9_12705);
float l9_12708=l9_12705-l9_12707;
float l9_12709=step(0.25,fract(l9_12708*0.5));
l9_12705=mix(l9_12707,1.0-l9_12707,fast::clamp(l9_12709,0.0,1.0));
}
}
l9_12689.y=l9_12705;
if (l9_12693)
{
bool l9_12710=l9_12695;
bool l9_12711;
if (l9_12710)
{
l9_12711=l9_12692.x==3;
}
else
{
l9_12711=l9_12710;
}
float l9_12712=l9_12689.x;
float l9_12713=l9_12694.x;
float l9_12714=l9_12694.z;
bool l9_12715=l9_12711;
float l9_12716=l9_12699;
float l9_12717=fast::clamp(l9_12712,l9_12713,l9_12714);
float l9_12718=step(abs(l9_12712-l9_12717),9.9999997e-06);
l9_12716*=(l9_12718+((1.0-float(l9_12715))*(1.0-l9_12718)));
l9_12712=l9_12717;
l9_12689.x=l9_12712;
l9_12699=l9_12716;
bool l9_12719=l9_12695;
bool l9_12720;
if (l9_12719)
{
l9_12720=l9_12692.y==3;
}
else
{
l9_12720=l9_12719;
}
float l9_12721=l9_12689.y;
float l9_12722=l9_12694.y;
float l9_12723=l9_12694.w;
bool l9_12724=l9_12720;
float l9_12725=l9_12699;
float l9_12726=fast::clamp(l9_12721,l9_12722,l9_12723);
float l9_12727=step(abs(l9_12721-l9_12726),9.9999997e-06);
l9_12725*=(l9_12727+((1.0-float(l9_12724))*(1.0-l9_12727)));
l9_12721=l9_12726;
l9_12689.y=l9_12721;
l9_12699=l9_12725;
}
float2 l9_12728=l9_12689;
bool l9_12729=l9_12690;
float3x3 l9_12730=l9_12691;
if (l9_12729)
{
l9_12728=float2((l9_12730*float3(l9_12728,1.0)).xy);
}
float2 l9_12731=l9_12728;
l9_12689=l9_12731;
float l9_12732=l9_12689.x;
int l9_12733=l9_12692.x;
bool l9_12734=l9_12698;
float l9_12735=l9_12699;
if ((l9_12733==0)||(l9_12733==3))
{
float l9_12736=l9_12732;
float l9_12737=0.0;
float l9_12738=1.0;
bool l9_12739=l9_12734;
float l9_12740=l9_12735;
float l9_12741=fast::clamp(l9_12736,l9_12737,l9_12738);
float l9_12742=step(abs(l9_12736-l9_12741),9.9999997e-06);
l9_12740*=(l9_12742+((1.0-float(l9_12739))*(1.0-l9_12742)));
l9_12736=l9_12741;
l9_12732=l9_12736;
l9_12735=l9_12740;
}
l9_12689.x=l9_12732;
l9_12699=l9_12735;
float l9_12743=l9_12689.y;
int l9_12744=l9_12692.y;
bool l9_12745=l9_12698;
float l9_12746=l9_12699;
if ((l9_12744==0)||(l9_12744==3))
{
float l9_12747=l9_12743;
float l9_12748=0.0;
float l9_12749=1.0;
bool l9_12750=l9_12745;
float l9_12751=l9_12746;
float l9_12752=fast::clamp(l9_12747,l9_12748,l9_12749);
float l9_12753=step(abs(l9_12747-l9_12752),9.9999997e-06);
l9_12751*=(l9_12753+((1.0-float(l9_12750))*(1.0-l9_12753)));
l9_12747=l9_12752;
l9_12743=l9_12747;
l9_12746=l9_12751;
}
l9_12689.y=l9_12743;
l9_12699=l9_12746;
float2 l9_12754=l9_12689;
int l9_12755=l9_12687;
int l9_12756=l9_12688;
float l9_12757=l9_12697;
float2 l9_12758=l9_12754;
int l9_12759=l9_12755;
int l9_12760=l9_12756;
float3 l9_12761=float3(0.0);
if (l9_12759==0)
{
l9_12761=float3(l9_12758,0.0);
}
else
{
if (l9_12759==1)
{
l9_12761=float3(l9_12758.x,(l9_12758.y*0.5)+(0.5-(float(l9_12760)*0.5)),0.0);
}
else
{
l9_12761=float3(l9_12758,float(l9_12760));
}
}
float3 l9_12762=l9_12761;
float3 l9_12763=l9_12762;
float4 l9_12764=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_12763.xy,bias(l9_12757));
float4 l9_12765=l9_12764;
if (l9_12695)
{
l9_12765=mix(l9_12696,l9_12765,float4(l9_12699));
}
float4 l9_12766=l9_12765;
l9_12680=l9_12766;
float l9_12767=0.0;
l9_12767=l9_12680.x;
float l9_12768=0.0;
l9_12768=step(l9_12767,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_12769=float4(0.0);
l9_12769=l9_12358*float4(l9_12768);
float4 l9_12770=float4(0.0);
float4 l9_12771=(*sc_set0.UserUniforms).colorId01;
l9_12770=l9_12771;
float4 l9_12772=float4(0.0);
l9_12772=l9_12770*float4(l9_12768);
float4 l9_12773=float4(0.0);
float4 l9_12774=l9_12769;
float4 l9_12775=l9_12772;
float4 l9_12776=l9_12774;
float4 l9_12777=l9_12775;
float3 l9_12778=l9_12776.xyz*l9_12776.w;
l9_12776=float4(l9_12778.x,l9_12778.y,l9_12778.z,l9_12776.w);
float4 l9_12779=l9_12776+(l9_12777*(1.0-l9_12776.w));
l9_12773=l9_12779;
float4 l9_12780=float4(0.0);
l9_12780=float4(l9_12352)*l9_12773;
float4 l9_12781=float4(0.0);
l9_12781=l9_12780+l9_12773;
l9_12342=l9_12781;
l9_12347=l9_12342;
}
else
{
float4 l9_12782=float4(0.0);
float l9_12783=0.0;
float4 l9_12784=float4(0.0);
float4 l9_12785=float4(0.0);
ssGlobals l9_12786=l9_12344;
float l9_12787=0.0;
float l9_12788=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_12787=l9_12788;
l9_12783=l9_12787;
float4 l9_12789;
if ((l9_12783*1.0)!=0.0)
{
float4 l9_12790=float4(0.0);
float4 l9_12791=(*sc_set0.UserUniforms).patternColorId01;
l9_12790=l9_12791;
float4 l9_12792=float4(0.0);
float l9_12793=0.0;
float4 l9_12794=float4(0.0);
float4 l9_12795=float4(0.0);
ssGlobals l9_12796=l9_12786;
float l9_12797=0.0;
float l9_12798=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_12797=l9_12798;
l9_12793=l9_12797;
float4 l9_12799;
if ((l9_12793*1.0)!=0.0)
{
float2 l9_12800=float2(0.0);
l9_12800=l9_12796.Surface_UVCoord0;
float2 l9_12801=float2(0.0);
float2 l9_12802=(*sc_set0.UserUniforms).patternScaleId01;
l9_12801=l9_12802;
float2 l9_12803=float2(0.0);
l9_12803=((l9_12800-(*sc_set0.UserUniforms).Port_Center_N122)*l9_12801)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_12804=float2(0.0);
float2 l9_12805=(*sc_set0.UserUniforms).patternOffsetId01;
l9_12804=l9_12805;
float2 l9_12806=float2(0.0);
l9_12806=l9_12803+l9_12804;
float l9_12807=0.0;
float l9_12808=(*sc_set0.UserUniforms).patternRotateId01;
l9_12807=l9_12808;
float2 l9_12809=float2(0.0);
float2 l9_12810=l9_12806;
float l9_12811=l9_12807;
float2 l9_12812=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_12813=sin(radians(l9_12811));
float l9_12814=cos(radians(l9_12811));
float2 l9_12815=l9_12810-l9_12812;
l9_12815=float2(dot(float2(l9_12814,l9_12813),l9_12815),dot(float2(-l9_12813,l9_12814),l9_12815))+l9_12812;
l9_12809=l9_12815;
float4 l9_12816=float4(0.0);
int l9_12817;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_12818=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12818=0;
}
else
{
l9_12818=in.varStereoViewID;
}
int l9_12819=l9_12818;
l9_12817=1-l9_12819;
}
else
{
int l9_12820=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12820=0;
}
else
{
l9_12820=in.varStereoViewID;
}
int l9_12821=l9_12820;
l9_12817=l9_12821;
}
int l9_12822=l9_12817;
int l9_12823=patternTextureId01Layout_tmp;
int l9_12824=l9_12822;
float2 l9_12825=l9_12809;
bool l9_12826=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_12827=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_12828=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_12829=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_12830=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_12831=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_12832=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_12833=0.0;
bool l9_12834=l9_12831&&(!l9_12829);
float l9_12835=1.0;
float l9_12836=l9_12825.x;
int l9_12837=l9_12828.x;
if (l9_12837==1)
{
l9_12836=fract(l9_12836);
}
else
{
if (l9_12837==2)
{
float l9_12838=fract(l9_12836);
float l9_12839=l9_12836-l9_12838;
float l9_12840=step(0.25,fract(l9_12839*0.5));
l9_12836=mix(l9_12838,1.0-l9_12838,fast::clamp(l9_12840,0.0,1.0));
}
}
l9_12825.x=l9_12836;
float l9_12841=l9_12825.y;
int l9_12842=l9_12828.y;
if (l9_12842==1)
{
l9_12841=fract(l9_12841);
}
else
{
if (l9_12842==2)
{
float l9_12843=fract(l9_12841);
float l9_12844=l9_12841-l9_12843;
float l9_12845=step(0.25,fract(l9_12844*0.5));
l9_12841=mix(l9_12843,1.0-l9_12843,fast::clamp(l9_12845,0.0,1.0));
}
}
l9_12825.y=l9_12841;
if (l9_12829)
{
bool l9_12846=l9_12831;
bool l9_12847;
if (l9_12846)
{
l9_12847=l9_12828.x==3;
}
else
{
l9_12847=l9_12846;
}
float l9_12848=l9_12825.x;
float l9_12849=l9_12830.x;
float l9_12850=l9_12830.z;
bool l9_12851=l9_12847;
float l9_12852=l9_12835;
float l9_12853=fast::clamp(l9_12848,l9_12849,l9_12850);
float l9_12854=step(abs(l9_12848-l9_12853),9.9999997e-06);
l9_12852*=(l9_12854+((1.0-float(l9_12851))*(1.0-l9_12854)));
l9_12848=l9_12853;
l9_12825.x=l9_12848;
l9_12835=l9_12852;
bool l9_12855=l9_12831;
bool l9_12856;
if (l9_12855)
{
l9_12856=l9_12828.y==3;
}
else
{
l9_12856=l9_12855;
}
float l9_12857=l9_12825.y;
float l9_12858=l9_12830.y;
float l9_12859=l9_12830.w;
bool l9_12860=l9_12856;
float l9_12861=l9_12835;
float l9_12862=fast::clamp(l9_12857,l9_12858,l9_12859);
float l9_12863=step(abs(l9_12857-l9_12862),9.9999997e-06);
l9_12861*=(l9_12863+((1.0-float(l9_12860))*(1.0-l9_12863)));
l9_12857=l9_12862;
l9_12825.y=l9_12857;
l9_12835=l9_12861;
}
float2 l9_12864=l9_12825;
bool l9_12865=l9_12826;
float3x3 l9_12866=l9_12827;
if (l9_12865)
{
l9_12864=float2((l9_12866*float3(l9_12864,1.0)).xy);
}
float2 l9_12867=l9_12864;
l9_12825=l9_12867;
float l9_12868=l9_12825.x;
int l9_12869=l9_12828.x;
bool l9_12870=l9_12834;
float l9_12871=l9_12835;
if ((l9_12869==0)||(l9_12869==3))
{
float l9_12872=l9_12868;
float l9_12873=0.0;
float l9_12874=1.0;
bool l9_12875=l9_12870;
float l9_12876=l9_12871;
float l9_12877=fast::clamp(l9_12872,l9_12873,l9_12874);
float l9_12878=step(abs(l9_12872-l9_12877),9.9999997e-06);
l9_12876*=(l9_12878+((1.0-float(l9_12875))*(1.0-l9_12878)));
l9_12872=l9_12877;
l9_12868=l9_12872;
l9_12871=l9_12876;
}
l9_12825.x=l9_12868;
l9_12835=l9_12871;
float l9_12879=l9_12825.y;
int l9_12880=l9_12828.y;
bool l9_12881=l9_12834;
float l9_12882=l9_12835;
if ((l9_12880==0)||(l9_12880==3))
{
float l9_12883=l9_12879;
float l9_12884=0.0;
float l9_12885=1.0;
bool l9_12886=l9_12881;
float l9_12887=l9_12882;
float l9_12888=fast::clamp(l9_12883,l9_12884,l9_12885);
float l9_12889=step(abs(l9_12883-l9_12888),9.9999997e-06);
l9_12887*=(l9_12889+((1.0-float(l9_12886))*(1.0-l9_12889)));
l9_12883=l9_12888;
l9_12879=l9_12883;
l9_12882=l9_12887;
}
l9_12825.y=l9_12879;
l9_12835=l9_12882;
float2 l9_12890=l9_12825;
int l9_12891=l9_12823;
int l9_12892=l9_12824;
float l9_12893=l9_12833;
float2 l9_12894=l9_12890;
int l9_12895=l9_12891;
int l9_12896=l9_12892;
float3 l9_12897=float3(0.0);
if (l9_12895==0)
{
l9_12897=float3(l9_12894,0.0);
}
else
{
if (l9_12895==1)
{
l9_12897=float3(l9_12894.x,(l9_12894.y*0.5)+(0.5-(float(l9_12896)*0.5)),0.0);
}
else
{
l9_12897=float3(l9_12894,float(l9_12896));
}
}
float3 l9_12898=l9_12897;
float3 l9_12899=l9_12898;
float4 l9_12900=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_12899.xy,bias(l9_12893));
float4 l9_12901=l9_12900;
if (l9_12831)
{
l9_12901=mix(l9_12832,l9_12901,float4(l9_12835));
}
float4 l9_12902=l9_12901;
l9_12816=l9_12902;
l9_12794=l9_12816;
l9_12799=l9_12794;
}
else
{
float2 l9_12903=float2(0.0);
l9_12903=l9_12796.Surface_UVCoord0;
float2 l9_12904=float2(0.0);
float2 l9_12905=(*sc_set0.UserUniforms).patternScaleId01;
l9_12904=l9_12905;
float2 l9_12906=float2(0.0);
l9_12906=((l9_12903-(*sc_set0.UserUniforms).Port_Center_N122)*l9_12904)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_12907=float2(0.0);
float2 l9_12908=(*sc_set0.UserUniforms).patternOffsetId01;
l9_12907=l9_12908;
float2 l9_12909=float2(0.0);
l9_12909=l9_12906+l9_12907;
float l9_12910=0.0;
float l9_12911=(*sc_set0.UserUniforms).patternRotateId01;
l9_12910=l9_12911;
float2 l9_12912=float2(0.0);
float2 l9_12913=l9_12909;
float l9_12914=l9_12910;
float2 l9_12915=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_12916=sin(radians(l9_12914));
float l9_12917=cos(radians(l9_12914));
float2 l9_12918=l9_12913-l9_12915;
l9_12918=float2(dot(float2(l9_12917,l9_12916),l9_12918),dot(float2(-l9_12916,l9_12917),l9_12918))+l9_12915;
l9_12912=l9_12918;
float4 l9_12919=float4(0.0);
int l9_12920;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_12921=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12921=0;
}
else
{
l9_12921=in.varStereoViewID;
}
int l9_12922=l9_12921;
l9_12920=1-l9_12922;
}
else
{
int l9_12923=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12923=0;
}
else
{
l9_12923=in.varStereoViewID;
}
int l9_12924=l9_12923;
l9_12920=l9_12924;
}
int l9_12925=l9_12920;
int l9_12926=patternTextureId01Layout_tmp;
int l9_12927=l9_12925;
float2 l9_12928=l9_12912;
bool l9_12929=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_12930=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_12931=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_12932=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_12933=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_12934=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_12935=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_12936=0.0;
bool l9_12937=l9_12934&&(!l9_12932);
float l9_12938=1.0;
float l9_12939=l9_12928.x;
int l9_12940=l9_12931.x;
if (l9_12940==1)
{
l9_12939=fract(l9_12939);
}
else
{
if (l9_12940==2)
{
float l9_12941=fract(l9_12939);
float l9_12942=l9_12939-l9_12941;
float l9_12943=step(0.25,fract(l9_12942*0.5));
l9_12939=mix(l9_12941,1.0-l9_12941,fast::clamp(l9_12943,0.0,1.0));
}
}
l9_12928.x=l9_12939;
float l9_12944=l9_12928.y;
int l9_12945=l9_12931.y;
if (l9_12945==1)
{
l9_12944=fract(l9_12944);
}
else
{
if (l9_12945==2)
{
float l9_12946=fract(l9_12944);
float l9_12947=l9_12944-l9_12946;
float l9_12948=step(0.25,fract(l9_12947*0.5));
l9_12944=mix(l9_12946,1.0-l9_12946,fast::clamp(l9_12948,0.0,1.0));
}
}
l9_12928.y=l9_12944;
if (l9_12932)
{
bool l9_12949=l9_12934;
bool l9_12950;
if (l9_12949)
{
l9_12950=l9_12931.x==3;
}
else
{
l9_12950=l9_12949;
}
float l9_12951=l9_12928.x;
float l9_12952=l9_12933.x;
float l9_12953=l9_12933.z;
bool l9_12954=l9_12950;
float l9_12955=l9_12938;
float l9_12956=fast::clamp(l9_12951,l9_12952,l9_12953);
float l9_12957=step(abs(l9_12951-l9_12956),9.9999997e-06);
l9_12955*=(l9_12957+((1.0-float(l9_12954))*(1.0-l9_12957)));
l9_12951=l9_12956;
l9_12928.x=l9_12951;
l9_12938=l9_12955;
bool l9_12958=l9_12934;
bool l9_12959;
if (l9_12958)
{
l9_12959=l9_12931.y==3;
}
else
{
l9_12959=l9_12958;
}
float l9_12960=l9_12928.y;
float l9_12961=l9_12933.y;
float l9_12962=l9_12933.w;
bool l9_12963=l9_12959;
float l9_12964=l9_12938;
float l9_12965=fast::clamp(l9_12960,l9_12961,l9_12962);
float l9_12966=step(abs(l9_12960-l9_12965),9.9999997e-06);
l9_12964*=(l9_12966+((1.0-float(l9_12963))*(1.0-l9_12966)));
l9_12960=l9_12965;
l9_12928.y=l9_12960;
l9_12938=l9_12964;
}
float2 l9_12967=l9_12928;
bool l9_12968=l9_12929;
float3x3 l9_12969=l9_12930;
if (l9_12968)
{
l9_12967=float2((l9_12969*float3(l9_12967,1.0)).xy);
}
float2 l9_12970=l9_12967;
l9_12928=l9_12970;
float l9_12971=l9_12928.x;
int l9_12972=l9_12931.x;
bool l9_12973=l9_12937;
float l9_12974=l9_12938;
if ((l9_12972==0)||(l9_12972==3))
{
float l9_12975=l9_12971;
float l9_12976=0.0;
float l9_12977=1.0;
bool l9_12978=l9_12973;
float l9_12979=l9_12974;
float l9_12980=fast::clamp(l9_12975,l9_12976,l9_12977);
float l9_12981=step(abs(l9_12975-l9_12980),9.9999997e-06);
l9_12979*=(l9_12981+((1.0-float(l9_12978))*(1.0-l9_12981)));
l9_12975=l9_12980;
l9_12971=l9_12975;
l9_12974=l9_12979;
}
l9_12928.x=l9_12971;
l9_12938=l9_12974;
float l9_12982=l9_12928.y;
int l9_12983=l9_12931.y;
bool l9_12984=l9_12937;
float l9_12985=l9_12938;
if ((l9_12983==0)||(l9_12983==3))
{
float l9_12986=l9_12982;
float l9_12987=0.0;
float l9_12988=1.0;
bool l9_12989=l9_12984;
float l9_12990=l9_12985;
float l9_12991=fast::clamp(l9_12986,l9_12987,l9_12988);
float l9_12992=step(abs(l9_12986-l9_12991),9.9999997e-06);
l9_12990*=(l9_12992+((1.0-float(l9_12989))*(1.0-l9_12992)));
l9_12986=l9_12991;
l9_12982=l9_12986;
l9_12985=l9_12990;
}
l9_12928.y=l9_12982;
l9_12938=l9_12985;
float2 l9_12993=l9_12928;
int l9_12994=l9_12926;
int l9_12995=l9_12927;
float l9_12996=l9_12936;
float2 l9_12997=l9_12993;
int l9_12998=l9_12994;
int l9_12999=l9_12995;
float3 l9_13000=float3(0.0);
if (l9_12998==0)
{
l9_13000=float3(l9_12997,0.0);
}
else
{
if (l9_12998==1)
{
l9_13000=float3(l9_12997.x,(l9_12997.y*0.5)+(0.5-(float(l9_12999)*0.5)),0.0);
}
else
{
l9_13000=float3(l9_12997,float(l9_12999));
}
}
float3 l9_13001=l9_13000;
float3 l9_13002=l9_13001;
float4 l9_13003=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_13002.xy,bias(l9_12996));
float4 l9_13004=l9_13003;
if (l9_12934)
{
l9_13004=mix(l9_12935,l9_13004,float4(l9_12938));
}
float4 l9_13005=l9_13004;
l9_12919=l9_13005;
float l9_13006=0.0;
float3 l9_13007=l9_12919.xyz;
float l9_13008=l9_13007.x;
l9_13006=l9_13008;
l9_12795=float4(l9_13006);
l9_12799=l9_12795;
}
l9_12792=l9_12799;
float4 l9_13009=float4(0.0);
l9_13009=l9_12790*l9_12792;
l9_12784=l9_13009;
l9_12789=l9_12784;
}
else
{
float4 l9_13010=float4(0.0);
float4 l9_13011=(*sc_set0.UserUniforms).colorId01;
l9_13010=l9_13011;
float2 l9_13012=float2(0.0);
l9_13012=l9_12786.Surface_UVCoord0;
float4 l9_13013=float4(0.0);
int l9_13014;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_13015=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13015=0;
}
else
{
l9_13015=in.varStereoViewID;
}
int l9_13016=l9_13015;
l9_13014=1-l9_13016;
}
else
{
int l9_13017=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13017=0;
}
else
{
l9_13017=in.varStereoViewID;
}
int l9_13018=l9_13017;
l9_13014=l9_13018;
}
int l9_13019=l9_13014;
int l9_13020=greyMaskIdLayout_tmp;
int l9_13021=l9_13019;
float2 l9_13022=l9_13012;
bool l9_13023=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_13024=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_13025=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_13026=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_13027=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_13028=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_13029=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_13030=0.0;
bool l9_13031=l9_13028&&(!l9_13026);
float l9_13032=1.0;
float l9_13033=l9_13022.x;
int l9_13034=l9_13025.x;
if (l9_13034==1)
{
l9_13033=fract(l9_13033);
}
else
{
if (l9_13034==2)
{
float l9_13035=fract(l9_13033);
float l9_13036=l9_13033-l9_13035;
float l9_13037=step(0.25,fract(l9_13036*0.5));
l9_13033=mix(l9_13035,1.0-l9_13035,fast::clamp(l9_13037,0.0,1.0));
}
}
l9_13022.x=l9_13033;
float l9_13038=l9_13022.y;
int l9_13039=l9_13025.y;
if (l9_13039==1)
{
l9_13038=fract(l9_13038);
}
else
{
if (l9_13039==2)
{
float l9_13040=fract(l9_13038);
float l9_13041=l9_13038-l9_13040;
float l9_13042=step(0.25,fract(l9_13041*0.5));
l9_13038=mix(l9_13040,1.0-l9_13040,fast::clamp(l9_13042,0.0,1.0));
}
}
l9_13022.y=l9_13038;
if (l9_13026)
{
bool l9_13043=l9_13028;
bool l9_13044;
if (l9_13043)
{
l9_13044=l9_13025.x==3;
}
else
{
l9_13044=l9_13043;
}
float l9_13045=l9_13022.x;
float l9_13046=l9_13027.x;
float l9_13047=l9_13027.z;
bool l9_13048=l9_13044;
float l9_13049=l9_13032;
float l9_13050=fast::clamp(l9_13045,l9_13046,l9_13047);
float l9_13051=step(abs(l9_13045-l9_13050),9.9999997e-06);
l9_13049*=(l9_13051+((1.0-float(l9_13048))*(1.0-l9_13051)));
l9_13045=l9_13050;
l9_13022.x=l9_13045;
l9_13032=l9_13049;
bool l9_13052=l9_13028;
bool l9_13053;
if (l9_13052)
{
l9_13053=l9_13025.y==3;
}
else
{
l9_13053=l9_13052;
}
float l9_13054=l9_13022.y;
float l9_13055=l9_13027.y;
float l9_13056=l9_13027.w;
bool l9_13057=l9_13053;
float l9_13058=l9_13032;
float l9_13059=fast::clamp(l9_13054,l9_13055,l9_13056);
float l9_13060=step(abs(l9_13054-l9_13059),9.9999997e-06);
l9_13058*=(l9_13060+((1.0-float(l9_13057))*(1.0-l9_13060)));
l9_13054=l9_13059;
l9_13022.y=l9_13054;
l9_13032=l9_13058;
}
float2 l9_13061=l9_13022;
bool l9_13062=l9_13023;
float3x3 l9_13063=l9_13024;
if (l9_13062)
{
l9_13061=float2((l9_13063*float3(l9_13061,1.0)).xy);
}
float2 l9_13064=l9_13061;
l9_13022=l9_13064;
float l9_13065=l9_13022.x;
int l9_13066=l9_13025.x;
bool l9_13067=l9_13031;
float l9_13068=l9_13032;
if ((l9_13066==0)||(l9_13066==3))
{
float l9_13069=l9_13065;
float l9_13070=0.0;
float l9_13071=1.0;
bool l9_13072=l9_13067;
float l9_13073=l9_13068;
float l9_13074=fast::clamp(l9_13069,l9_13070,l9_13071);
float l9_13075=step(abs(l9_13069-l9_13074),9.9999997e-06);
l9_13073*=(l9_13075+((1.0-float(l9_13072))*(1.0-l9_13075)));
l9_13069=l9_13074;
l9_13065=l9_13069;
l9_13068=l9_13073;
}
l9_13022.x=l9_13065;
l9_13032=l9_13068;
float l9_13076=l9_13022.y;
int l9_13077=l9_13025.y;
bool l9_13078=l9_13031;
float l9_13079=l9_13032;
if ((l9_13077==0)||(l9_13077==3))
{
float l9_13080=l9_13076;
float l9_13081=0.0;
float l9_13082=1.0;
bool l9_13083=l9_13078;
float l9_13084=l9_13079;
float l9_13085=fast::clamp(l9_13080,l9_13081,l9_13082);
float l9_13086=step(abs(l9_13080-l9_13085),9.9999997e-06);
l9_13084*=(l9_13086+((1.0-float(l9_13083))*(1.0-l9_13086)));
l9_13080=l9_13085;
l9_13076=l9_13080;
l9_13079=l9_13084;
}
l9_13022.y=l9_13076;
l9_13032=l9_13079;
float2 l9_13087=l9_13022;
int l9_13088=l9_13020;
int l9_13089=l9_13021;
float l9_13090=l9_13030;
float2 l9_13091=l9_13087;
int l9_13092=l9_13088;
int l9_13093=l9_13089;
float3 l9_13094=float3(0.0);
if (l9_13092==0)
{
l9_13094=float3(l9_13091,0.0);
}
else
{
if (l9_13092==1)
{
l9_13094=float3(l9_13091.x,(l9_13091.y*0.5)+(0.5-(float(l9_13093)*0.5)),0.0);
}
else
{
l9_13094=float3(l9_13091,float(l9_13093));
}
}
float3 l9_13095=l9_13094;
float3 l9_13096=l9_13095;
float4 l9_13097=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_13096.xy,bias(l9_13090));
float4 l9_13098=l9_13097;
if (l9_13028)
{
l9_13098=mix(l9_13029,l9_13098,float4(l9_13032));
}
float4 l9_13099=l9_13098;
l9_13013=l9_13099;
float l9_13100=0.0;
l9_13100=l9_13013.x;
float l9_13101=0.0;
l9_13101=step(l9_13100,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_13102=float4(0.0);
l9_13102=l9_13010*float4(l9_13101);
l9_12785=l9_13102;
l9_12789=l9_12785;
}
l9_12782=l9_12789;
float2 l9_13103=float2(0.0);
l9_13103=l9_12344.Surface_UVCoord0;
float4 l9_13104=float4(0.0);
int l9_13105;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_13106=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13106=0;
}
else
{
l9_13106=in.varStereoViewID;
}
int l9_13107=l9_13106;
l9_13105=1-l9_13107;
}
else
{
int l9_13108=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13108=0;
}
else
{
l9_13108=in.varStereoViewID;
}
int l9_13109=l9_13108;
l9_13105=l9_13109;
}
int l9_13110=l9_13105;
int l9_13111=greyMaskIdLayout_tmp;
int l9_13112=l9_13110;
float2 l9_13113=l9_13103;
bool l9_13114=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_13115=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_13116=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_13117=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_13118=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_13119=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_13120=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_13121=0.0;
bool l9_13122=l9_13119&&(!l9_13117);
float l9_13123=1.0;
float l9_13124=l9_13113.x;
int l9_13125=l9_13116.x;
if (l9_13125==1)
{
l9_13124=fract(l9_13124);
}
else
{
if (l9_13125==2)
{
float l9_13126=fract(l9_13124);
float l9_13127=l9_13124-l9_13126;
float l9_13128=step(0.25,fract(l9_13127*0.5));
l9_13124=mix(l9_13126,1.0-l9_13126,fast::clamp(l9_13128,0.0,1.0));
}
}
l9_13113.x=l9_13124;
float l9_13129=l9_13113.y;
int l9_13130=l9_13116.y;
if (l9_13130==1)
{
l9_13129=fract(l9_13129);
}
else
{
if (l9_13130==2)
{
float l9_13131=fract(l9_13129);
float l9_13132=l9_13129-l9_13131;
float l9_13133=step(0.25,fract(l9_13132*0.5));
l9_13129=mix(l9_13131,1.0-l9_13131,fast::clamp(l9_13133,0.0,1.0));
}
}
l9_13113.y=l9_13129;
if (l9_13117)
{
bool l9_13134=l9_13119;
bool l9_13135;
if (l9_13134)
{
l9_13135=l9_13116.x==3;
}
else
{
l9_13135=l9_13134;
}
float l9_13136=l9_13113.x;
float l9_13137=l9_13118.x;
float l9_13138=l9_13118.z;
bool l9_13139=l9_13135;
float l9_13140=l9_13123;
float l9_13141=fast::clamp(l9_13136,l9_13137,l9_13138);
float l9_13142=step(abs(l9_13136-l9_13141),9.9999997e-06);
l9_13140*=(l9_13142+((1.0-float(l9_13139))*(1.0-l9_13142)));
l9_13136=l9_13141;
l9_13113.x=l9_13136;
l9_13123=l9_13140;
bool l9_13143=l9_13119;
bool l9_13144;
if (l9_13143)
{
l9_13144=l9_13116.y==3;
}
else
{
l9_13144=l9_13143;
}
float l9_13145=l9_13113.y;
float l9_13146=l9_13118.y;
float l9_13147=l9_13118.w;
bool l9_13148=l9_13144;
float l9_13149=l9_13123;
float l9_13150=fast::clamp(l9_13145,l9_13146,l9_13147);
float l9_13151=step(abs(l9_13145-l9_13150),9.9999997e-06);
l9_13149*=(l9_13151+((1.0-float(l9_13148))*(1.0-l9_13151)));
l9_13145=l9_13150;
l9_13113.y=l9_13145;
l9_13123=l9_13149;
}
float2 l9_13152=l9_13113;
bool l9_13153=l9_13114;
float3x3 l9_13154=l9_13115;
if (l9_13153)
{
l9_13152=float2((l9_13154*float3(l9_13152,1.0)).xy);
}
float2 l9_13155=l9_13152;
l9_13113=l9_13155;
float l9_13156=l9_13113.x;
int l9_13157=l9_13116.x;
bool l9_13158=l9_13122;
float l9_13159=l9_13123;
if ((l9_13157==0)||(l9_13157==3))
{
float l9_13160=l9_13156;
float l9_13161=0.0;
float l9_13162=1.0;
bool l9_13163=l9_13158;
float l9_13164=l9_13159;
float l9_13165=fast::clamp(l9_13160,l9_13161,l9_13162);
float l9_13166=step(abs(l9_13160-l9_13165),9.9999997e-06);
l9_13164*=(l9_13166+((1.0-float(l9_13163))*(1.0-l9_13166)));
l9_13160=l9_13165;
l9_13156=l9_13160;
l9_13159=l9_13164;
}
l9_13113.x=l9_13156;
l9_13123=l9_13159;
float l9_13167=l9_13113.y;
int l9_13168=l9_13116.y;
bool l9_13169=l9_13122;
float l9_13170=l9_13123;
if ((l9_13168==0)||(l9_13168==3))
{
float l9_13171=l9_13167;
float l9_13172=0.0;
float l9_13173=1.0;
bool l9_13174=l9_13169;
float l9_13175=l9_13170;
float l9_13176=fast::clamp(l9_13171,l9_13172,l9_13173);
float l9_13177=step(abs(l9_13171-l9_13176),9.9999997e-06);
l9_13175*=(l9_13177+((1.0-float(l9_13174))*(1.0-l9_13177)));
l9_13171=l9_13176;
l9_13167=l9_13171;
l9_13170=l9_13175;
}
l9_13113.y=l9_13167;
l9_13123=l9_13170;
float2 l9_13178=l9_13113;
int l9_13179=l9_13111;
int l9_13180=l9_13112;
float l9_13181=l9_13121;
float2 l9_13182=l9_13178;
int l9_13183=l9_13179;
int l9_13184=l9_13180;
float3 l9_13185=float3(0.0);
if (l9_13183==0)
{
l9_13185=float3(l9_13182,0.0);
}
else
{
if (l9_13183==1)
{
l9_13185=float3(l9_13182.x,(l9_13182.y*0.5)+(0.5-(float(l9_13184)*0.5)),0.0);
}
else
{
l9_13185=float3(l9_13182,float(l9_13184));
}
}
float3 l9_13186=l9_13185;
float3 l9_13187=l9_13186;
float4 l9_13188=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_13187.xy,bias(l9_13181));
float4 l9_13189=l9_13188;
if (l9_13119)
{
l9_13189=mix(l9_13120,l9_13189,float4(l9_13123));
}
float4 l9_13190=l9_13189;
l9_13104=l9_13190;
float l9_13191=0.0;
l9_13191=l9_13104.x;
float l9_13192=0.0;
l9_13192=step(l9_13191,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_13193=float4(0.0);
l9_13193=l9_12782*float4(l9_13192);
float4 l9_13194=float4(0.0);
float4 l9_13195=(*sc_set0.UserUniforms).colorId01;
l9_13194=l9_13195;
float4 l9_13196=float4(0.0);
l9_13196=l9_13194*float4(l9_13192);
float4 l9_13197=float4(0.0);
float4 l9_13198=l9_13193;
float4 l9_13199=l9_13196;
float4 l9_13200=l9_13198;
float4 l9_13201=l9_13199;
float3 l9_13202=l9_13200.xyz*l9_13200.w;
l9_13200=float4(l9_13202.x,l9_13202.y,l9_13202.z,l9_13200.w);
float4 l9_13203=l9_13200+(l9_13201*(1.0-l9_13200.w));
l9_13197=l9_13203;
l9_12343=l9_13197;
l9_12347=l9_12343;
}
l9_12340=l9_12347;
l9_11443=l9_12340;
l9_11447=l9_11443;
}
l9_11440=l9_11447;
float2 l9_13204=float2(0.0);
l9_13204=l9_7629.Surface_UVCoord0;
float4 l9_13205=float4(0.0);
int l9_13206;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_13207=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13207=0;
}
else
{
l9_13207=in.varStereoViewID;
}
int l9_13208=l9_13207;
l9_13206=1-l9_13208;
}
else
{
int l9_13209=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13209=0;
}
else
{
l9_13209=in.varStereoViewID;
}
int l9_13210=l9_13209;
l9_13206=l9_13210;
}
int l9_13211=l9_13206;
int l9_13212=greyMaskIdLayout_tmp;
int l9_13213=l9_13211;
float2 l9_13214=l9_13204;
bool l9_13215=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_13216=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_13217=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_13218=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_13219=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_13220=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_13221=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_13222=0.0;
bool l9_13223=l9_13220&&(!l9_13218);
float l9_13224=1.0;
float l9_13225=l9_13214.x;
int l9_13226=l9_13217.x;
if (l9_13226==1)
{
l9_13225=fract(l9_13225);
}
else
{
if (l9_13226==2)
{
float l9_13227=fract(l9_13225);
float l9_13228=l9_13225-l9_13227;
float l9_13229=step(0.25,fract(l9_13228*0.5));
l9_13225=mix(l9_13227,1.0-l9_13227,fast::clamp(l9_13229,0.0,1.0));
}
}
l9_13214.x=l9_13225;
float l9_13230=l9_13214.y;
int l9_13231=l9_13217.y;
if (l9_13231==1)
{
l9_13230=fract(l9_13230);
}
else
{
if (l9_13231==2)
{
float l9_13232=fract(l9_13230);
float l9_13233=l9_13230-l9_13232;
float l9_13234=step(0.25,fract(l9_13233*0.5));
l9_13230=mix(l9_13232,1.0-l9_13232,fast::clamp(l9_13234,0.0,1.0));
}
}
l9_13214.y=l9_13230;
if (l9_13218)
{
bool l9_13235=l9_13220;
bool l9_13236;
if (l9_13235)
{
l9_13236=l9_13217.x==3;
}
else
{
l9_13236=l9_13235;
}
float l9_13237=l9_13214.x;
float l9_13238=l9_13219.x;
float l9_13239=l9_13219.z;
bool l9_13240=l9_13236;
float l9_13241=l9_13224;
float l9_13242=fast::clamp(l9_13237,l9_13238,l9_13239);
float l9_13243=step(abs(l9_13237-l9_13242),9.9999997e-06);
l9_13241*=(l9_13243+((1.0-float(l9_13240))*(1.0-l9_13243)));
l9_13237=l9_13242;
l9_13214.x=l9_13237;
l9_13224=l9_13241;
bool l9_13244=l9_13220;
bool l9_13245;
if (l9_13244)
{
l9_13245=l9_13217.y==3;
}
else
{
l9_13245=l9_13244;
}
float l9_13246=l9_13214.y;
float l9_13247=l9_13219.y;
float l9_13248=l9_13219.w;
bool l9_13249=l9_13245;
float l9_13250=l9_13224;
float l9_13251=fast::clamp(l9_13246,l9_13247,l9_13248);
float l9_13252=step(abs(l9_13246-l9_13251),9.9999997e-06);
l9_13250*=(l9_13252+((1.0-float(l9_13249))*(1.0-l9_13252)));
l9_13246=l9_13251;
l9_13214.y=l9_13246;
l9_13224=l9_13250;
}
float2 l9_13253=l9_13214;
bool l9_13254=l9_13215;
float3x3 l9_13255=l9_13216;
if (l9_13254)
{
l9_13253=float2((l9_13255*float3(l9_13253,1.0)).xy);
}
float2 l9_13256=l9_13253;
l9_13214=l9_13256;
float l9_13257=l9_13214.x;
int l9_13258=l9_13217.x;
bool l9_13259=l9_13223;
float l9_13260=l9_13224;
if ((l9_13258==0)||(l9_13258==3))
{
float l9_13261=l9_13257;
float l9_13262=0.0;
float l9_13263=1.0;
bool l9_13264=l9_13259;
float l9_13265=l9_13260;
float l9_13266=fast::clamp(l9_13261,l9_13262,l9_13263);
float l9_13267=step(abs(l9_13261-l9_13266),9.9999997e-06);
l9_13265*=(l9_13267+((1.0-float(l9_13264))*(1.0-l9_13267)));
l9_13261=l9_13266;
l9_13257=l9_13261;
l9_13260=l9_13265;
}
l9_13214.x=l9_13257;
l9_13224=l9_13260;
float l9_13268=l9_13214.y;
int l9_13269=l9_13217.y;
bool l9_13270=l9_13223;
float l9_13271=l9_13224;
if ((l9_13269==0)||(l9_13269==3))
{
float l9_13272=l9_13268;
float l9_13273=0.0;
float l9_13274=1.0;
bool l9_13275=l9_13270;
float l9_13276=l9_13271;
float l9_13277=fast::clamp(l9_13272,l9_13273,l9_13274);
float l9_13278=step(abs(l9_13272-l9_13277),9.9999997e-06);
l9_13276*=(l9_13278+((1.0-float(l9_13275))*(1.0-l9_13278)));
l9_13272=l9_13277;
l9_13268=l9_13272;
l9_13271=l9_13276;
}
l9_13214.y=l9_13268;
l9_13224=l9_13271;
float2 l9_13279=l9_13214;
int l9_13280=l9_13212;
int l9_13281=l9_13213;
float l9_13282=l9_13222;
float2 l9_13283=l9_13279;
int l9_13284=l9_13280;
int l9_13285=l9_13281;
float3 l9_13286=float3(0.0);
if (l9_13284==0)
{
l9_13286=float3(l9_13283,0.0);
}
else
{
if (l9_13284==1)
{
l9_13286=float3(l9_13283.x,(l9_13283.y*0.5)+(0.5-(float(l9_13285)*0.5)),0.0);
}
else
{
l9_13286=float3(l9_13283,float(l9_13285));
}
}
float3 l9_13287=l9_13286;
float3 l9_13288=l9_13287;
float4 l9_13289=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_13288.xy,bias(l9_13282));
float4 l9_13290=l9_13289;
if (l9_13220)
{
l9_13290=mix(l9_13221,l9_13290,float4(l9_13224));
}
float4 l9_13291=l9_13290;
l9_13205=l9_13291;
float l9_13292=0.0;
l9_13292=l9_13205.x;
float l9_13293=0.0;
l9_13293=step(l9_13292,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_13294=float4(0.0);
l9_13294=l9_11440*float4(l9_13293);
l9_7628=l9_13294;
l9_7632=l9_7628;
}
l9_7625=l9_7632;
param_3=l9_7625;
param_4=param_3;
}
Result_N419=param_4;
float4 Output_N50=float4(0.0);
Output_N50=((Result_N419*Result_N419)*Result_N419)*Result_N419;
float4 Output_N51=float4(0.0);
Output_N51=fast::clamp(Output_N50+float4(0.001),(*sc_set0.UserUniforms).Port_Input1_N051+float4(0.001),(*sc_set0.UserUniforms).Port_Input2_N051+float4(0.001))-float4(0.001);
float4 Output_N52=float4(0.0);
int l9_13295;
if ((int(Tweak_N27HasSwappedViews_tmp)!=0))
{
int l9_13296=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13296=0;
}
else
{
l9_13296=in.varStereoViewID;
}
int l9_13297=l9_13296;
l9_13295=1-l9_13297;
}
else
{
int l9_13298=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13298=0;
}
else
{
l9_13298=in.varStereoViewID;
}
int l9_13299=l9_13298;
l9_13295=l9_13299;
}
int l9_13300=l9_13295;
int param_6=Tweak_N27Layout_tmp;
int param_7=l9_13300;
float2 param_8=Globals.Surface_UVCoord0;
bool param_9=(int(SC_USE_UV_TRANSFORM_Tweak_N27_tmp)!=0);
float3x3 param_10=(*sc_set0.UserUniforms).Tweak_N27Transform;
int2 param_11=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N27_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N27_tmp);
bool param_12=(int(SC_USE_UV_MIN_MAX_Tweak_N27_tmp)!=0);
float4 param_13=(*sc_set0.UserUniforms).Tweak_N27UvMinMax;
bool param_14=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N27_tmp)!=0);
float4 param_15=(*sc_set0.UserUniforms).Tweak_N27BorderColor;
float param_16=0.0;
bool l9_13301=param_14&&(!param_12);
float l9_13302=1.0;
float l9_13303=param_8.x;
int l9_13304=param_11.x;
if (l9_13304==1)
{
l9_13303=fract(l9_13303);
}
else
{
if (l9_13304==2)
{
float l9_13305=fract(l9_13303);
float l9_13306=l9_13303-l9_13305;
float l9_13307=step(0.25,fract(l9_13306*0.5));
l9_13303=mix(l9_13305,1.0-l9_13305,fast::clamp(l9_13307,0.0,1.0));
}
}
param_8.x=l9_13303;
float l9_13308=param_8.y;
int l9_13309=param_11.y;
if (l9_13309==1)
{
l9_13308=fract(l9_13308);
}
else
{
if (l9_13309==2)
{
float l9_13310=fract(l9_13308);
float l9_13311=l9_13308-l9_13310;
float l9_13312=step(0.25,fract(l9_13311*0.5));
l9_13308=mix(l9_13310,1.0-l9_13310,fast::clamp(l9_13312,0.0,1.0));
}
}
param_8.y=l9_13308;
if (param_12)
{
bool l9_13313=param_14;
bool l9_13314;
if (l9_13313)
{
l9_13314=param_11.x==3;
}
else
{
l9_13314=l9_13313;
}
float l9_13315=param_8.x;
float l9_13316=param_13.x;
float l9_13317=param_13.z;
bool l9_13318=l9_13314;
float l9_13319=l9_13302;
float l9_13320=fast::clamp(l9_13315,l9_13316,l9_13317);
float l9_13321=step(abs(l9_13315-l9_13320),9.9999997e-06);
l9_13319*=(l9_13321+((1.0-float(l9_13318))*(1.0-l9_13321)));
l9_13315=l9_13320;
param_8.x=l9_13315;
l9_13302=l9_13319;
bool l9_13322=param_14;
bool l9_13323;
if (l9_13322)
{
l9_13323=param_11.y==3;
}
else
{
l9_13323=l9_13322;
}
float l9_13324=param_8.y;
float l9_13325=param_13.y;
float l9_13326=param_13.w;
bool l9_13327=l9_13323;
float l9_13328=l9_13302;
float l9_13329=fast::clamp(l9_13324,l9_13325,l9_13326);
float l9_13330=step(abs(l9_13324-l9_13329),9.9999997e-06);
l9_13328*=(l9_13330+((1.0-float(l9_13327))*(1.0-l9_13330)));
l9_13324=l9_13329;
param_8.y=l9_13324;
l9_13302=l9_13328;
}
float2 l9_13331=param_8;
bool l9_13332=param_9;
float3x3 l9_13333=param_10;
if (l9_13332)
{
l9_13331=float2((l9_13333*float3(l9_13331,1.0)).xy);
}
float2 l9_13334=l9_13331;
param_8=l9_13334;
float l9_13335=param_8.x;
int l9_13336=param_11.x;
bool l9_13337=l9_13301;
float l9_13338=l9_13302;
if ((l9_13336==0)||(l9_13336==3))
{
float l9_13339=l9_13335;
float l9_13340=0.0;
float l9_13341=1.0;
bool l9_13342=l9_13337;
float l9_13343=l9_13338;
float l9_13344=fast::clamp(l9_13339,l9_13340,l9_13341);
float l9_13345=step(abs(l9_13339-l9_13344),9.9999997e-06);
l9_13343*=(l9_13345+((1.0-float(l9_13342))*(1.0-l9_13345)));
l9_13339=l9_13344;
l9_13335=l9_13339;
l9_13338=l9_13343;
}
param_8.x=l9_13335;
l9_13302=l9_13338;
float l9_13346=param_8.y;
int l9_13347=param_11.y;
bool l9_13348=l9_13301;
float l9_13349=l9_13302;
if ((l9_13347==0)||(l9_13347==3))
{
float l9_13350=l9_13346;
float l9_13351=0.0;
float l9_13352=1.0;
bool l9_13353=l9_13348;
float l9_13354=l9_13349;
float l9_13355=fast::clamp(l9_13350,l9_13351,l9_13352);
float l9_13356=step(abs(l9_13350-l9_13355),9.9999997e-06);
l9_13354*=(l9_13356+((1.0-float(l9_13353))*(1.0-l9_13356)));
l9_13350=l9_13355;
l9_13346=l9_13350;
l9_13349=l9_13354;
}
param_8.y=l9_13346;
l9_13302=l9_13349;
float2 l9_13357=param_8;
int l9_13358=param_6;
int l9_13359=param_7;
float l9_13360=param_16;
float2 l9_13361=l9_13357;
int l9_13362=l9_13358;
int l9_13363=l9_13359;
float3 l9_13364=float3(0.0);
if (l9_13362==0)
{
l9_13364=float3(l9_13361,0.0);
}
else
{
if (l9_13362==1)
{
l9_13364=float3(l9_13361.x,(l9_13361.y*0.5)+(0.5-(float(l9_13363)*0.5)),0.0);
}
else
{
l9_13364=float3(l9_13361,float(l9_13363));
}
}
float3 l9_13365=l9_13364;
float3 l9_13366=l9_13365;
float4 l9_13367=sc_set0.Tweak_N27.sample(sc_set0.Tweak_N27SmpSC,l9_13366.xy,bias(l9_13360));
float4 l9_13368=l9_13367;
if (param_14)
{
l9_13368=mix(param_15,l9_13368,float4(l9_13302));
}
float4 l9_13369=l9_13368;
Output_N52=l9_13369;
float4 Output_N57=float4(0.0);
Output_N57=float4(1.0)-Output_N52;
float4 Value_N59=float4(0.0);
Value_N59=Output_N57;
float Value_N60=0.0;
Value_N60=fast::clamp((*sc_set0.UserUniforms).Port_Import_N060,0.0,5.0);
float4 Output_N61=float4(0.0);
Output_N61=Value_N59*float4(Value_N60);
float Output_N62=0.0;
Output_N62=dot(Output_N61,(*sc_set0.UserUniforms).Port_Input1_N062);
float Value_N63=0.0;
Value_N63=fast::clamp((*sc_set0.UserUniforms).Port_Import_N063,0.0,2.0);
float4 Output_N98=float4(0.0);
Output_N98=mix(float4(Output_N62),Output_N61,float4(Value_N63));
float Value_N100=0.0;
Value_N100=fast::clamp((*sc_set0.UserUniforms).Port_Import_N100,0.0,2.0);
float4 Output_N102=float4(0.0);
Output_N102=mix((*sc_set0.UserUniforms).Port_Input0_N102,Output_N98,float4(Value_N100));
float4 Export_N64=float4(0.0);
Export_N64=Output_N102;
float4 Output_N67=float4(0.0);
Output_N67=mix(Result_N419,Output_N51,Export_N64);
float Output_N68=0.0;
float param_17=(*sc_set0.UserUniforms).Tweak_N47;
Output_N68=param_17;
float4 Output_N69=float4(0.0);
float4 param_18=Output_N67;
float param_19=Output_N68;
float l9_13370=dot(param_18.xyz,float3(0.29899999,0.58700001,0.114));
float4 param_20=float4(mix(float3(l9_13370),param_18.xyz,float3(param_19)),param_18.w);
Output_N69=param_20;
float4 Output_N70=float4(0.0);
Output_N70=fast::clamp(Output_N69+float4(0.001),(*sc_set0.UserUniforms).Port_Input1_N070+float4(0.001),(*sc_set0.UserUniforms).Port_Input2_N070+float4(0.001))-float4(0.001);
FinalColor=Output_N70;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param_21=FinalColor;
if ((int(sc_RayTracingCasterForceOpaque_tmp)!=0))
{
param_21.w=1.0;
}
float4 l9_13371=fast::max(param_21,float4(0.0));
float4 param_22=l9_13371;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_22.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=param_22;
return out;
}
float4 param_23=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_13372=param_23;
float4 l9_13373=l9_13372;
float l9_13374=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_13374=l9_13373.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_13374=fast::clamp(l9_13373.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_13374=fast::clamp(dot(l9_13373.xyz,float3(l9_13373.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_13374=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_13374=(1.0-dot(l9_13373.xyz,float3(0.33333001)))*l9_13373.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_13374=(1.0-fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0))*l9_13373.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_13374=fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0)*l9_13373.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_13374=fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_13374=fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0)*l9_13373.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_13374=dot(l9_13373.xyz,float3(0.33333001))*l9_13373.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_13374=1.0-fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_13374=fast::clamp(dot(l9_13373.xyz,float3(1.0)),0.0,1.0);
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
float l9_13375=l9_13374;
float l9_13376=l9_13375;
float l9_13377=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_13376;
float3 l9_13378=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_13372.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_13379=float4(l9_13378.x,l9_13378.y,l9_13378.z,l9_13377);
param_23=l9_13379;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_23=float4(param_23.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_13380=param_23;
float4 l9_13381=float4(0.0);
float4 l9_13382=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_13383=out.sc_FragData0;
l9_13382=l9_13383;
}
else
{
float4 l9_13384=gl_FragCoord;
float2 l9_13385=l9_13384.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_13386=l9_13385;
float2 l9_13387=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_13388=1;
int l9_13389=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13389=0;
}
else
{
l9_13389=in.varStereoViewID;
}
int l9_13390=l9_13389;
int l9_13391=l9_13390;
float3 l9_13392=float3(l9_13386,0.0);
int l9_13393=l9_13388;
int l9_13394=l9_13391;
if (l9_13393==1)
{
l9_13392.y=((2.0*l9_13392.y)+float(l9_13394))-1.0;
}
float2 l9_13395=l9_13392.xy;
l9_13387=l9_13395;
}
else
{
l9_13387=l9_13386;
}
float2 l9_13396=l9_13387;
float2 l9_13397=l9_13396;
float2 l9_13398=l9_13397;
float2 l9_13399=l9_13398;
float l9_13400=0.0;
int l9_13401;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_13402=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13402=0;
}
else
{
l9_13402=in.varStereoViewID;
}
int l9_13403=l9_13402;
l9_13401=1-l9_13403;
}
else
{
int l9_13404=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_13404=0;
}
else
{
l9_13404=in.varStereoViewID;
}
int l9_13405=l9_13404;
l9_13401=l9_13405;
}
int l9_13406=l9_13401;
float2 l9_13407=l9_13399;
int l9_13408=sc_ScreenTextureLayout_tmp;
int l9_13409=l9_13406;
float l9_13410=l9_13400;
float2 l9_13411=l9_13407;
int l9_13412=l9_13408;
int l9_13413=l9_13409;
float3 l9_13414=float3(0.0);
if (l9_13412==0)
{
l9_13414=float3(l9_13411,0.0);
}
else
{
if (l9_13412==1)
{
l9_13414=float3(l9_13411.x,(l9_13411.y*0.5)+(0.5-(float(l9_13413)*0.5)),0.0);
}
else
{
l9_13414=float3(l9_13411,float(l9_13413));
}
}
float3 l9_13415=l9_13414;
float3 l9_13416=l9_13415;
float4 l9_13417=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_13416.xy,bias(l9_13410));
float4 l9_13418=l9_13417;
float4 l9_13419=l9_13418;
l9_13382=l9_13419;
}
float4 l9_13420=l9_13382;
float3 l9_13421=l9_13420.xyz;
float3 l9_13422=l9_13421;
float3 l9_13423=l9_13380.xyz;
float3 l9_13424=definedBlend(l9_13422,l9_13423,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_13381=float4(l9_13424.x,l9_13424.y,l9_13424.z,l9_13381.w);
float3 l9_13425=mix(l9_13421,l9_13381.xyz,float3(l9_13380.w));
l9_13381=float4(l9_13425.x,l9_13425.y,l9_13425.z,l9_13381.w);
l9_13381.w=1.0;
float4 l9_13426=l9_13381;
param_23=l9_13426;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_13427=float4(in.varScreenPos.xyz,1.0);
param_23=l9_13427;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_13428=gl_FragCoord;
float l9_13429=fast::clamp(abs(l9_13428.z),0.0,1.0);
float4 l9_13430=float4(l9_13429,1.0-l9_13429,1.0,1.0);
param_23=l9_13430;
}
else
{
float4 l9_13431=param_23;
float4 l9_13432=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_13432=float4(mix(float3(1.0),l9_13431.xyz,float3(l9_13431.w)),l9_13431.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_13433=l9_13431.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_13433=fast::clamp(l9_13433,0.0,1.0);
}
l9_13432=float4(l9_13431.xyz*l9_13433,l9_13433);
}
else
{
l9_13432=l9_13431;
}
}
float4 l9_13434=l9_13432;
param_23=l9_13434;
}
}
}
}
}
float4 l9_13435=param_23;
FinalColor=l9_13435;
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
float4 l9_13436=float4(0.0);
l9_13436=float4(0.0);
float4 l9_13437=l9_13436;
float4 Cost=l9_13437;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_24=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_24,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_25=FinalColor;
float4 l9_13438=param_25;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_13438.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_13438;
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
float3 VertexNormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
float2 Surface_UVCoord0;
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
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
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
int ColorOnOffid03;
int pbrOnOffId03;
int rimOnOffId03;
float rimExpId03;
float rimIntId03;
int patternOnOffId03;
float4 patternColorId03;
int pngPatternId03;
float4 patternTextureId03Size;
float4 patternTextureId03Dims;
float4 patternTextureId03View;
float3x3 patternTextureId03Transform;
float4 patternTextureId03UvMinMax;
float4 patternTextureId03BorderColor;
float2 patternScaleId03;
float2 patternOffsetId03;
float patternRotateId03;
float4 colorId03;
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
float metallicId03;
float rougnessId03;
int ColorOnOffid02;
int pbrOnOffId02;
int rimOnOffId02;
float rimExpId02;
float rimIntId02;
int patternOnOffId02;
float4 patternColorId02;
int pngPatternId02;
float4 patternTextureId02Size;
float4 patternTextureId02Dims;
float4 patternTextureId02View;
float3x3 patternTextureId02Transform;
float4 patternTextureId02UvMinMax;
float4 patternTextureId02BorderColor;
float2 patternScaleId02;
float2 patternOffsetId02;
float patternRotateId02;
float4 colorId02;
float metallicId02;
float rougnessId02;
int pbrOnOffId01;
int rimOnOffId01;
float rimExpId01;
float rimIntId01;
int patternOnOffId01;
float4 patternColorId01;
int pngPatternId01;
float4 patternTextureId01Size;
float4 patternTextureId01Dims;
float4 patternTextureId01View;
float3x3 patternTextureId01Transform;
float4 patternTextureId01UvMinMax;
float4 patternTextureId01BorderColor;
float2 patternScaleId01;
float2 patternOffsetId01;
float patternRotateId01;
float4 colorId01;
float metallicId01;
float rougnessId01;
float4 Tweak_N27Size;
float4 Tweak_N27Dims;
float4 Tweak_N27View;
float3x3 Tweak_N27Transform;
float4 Tweak_N27UvMinMax;
float4 Tweak_N27BorderColor;
float Tweak_N47;
float2 Port_Center_N379;
float2 Port_Center_N383;
float Port_Input1_N006;
float Port_Input1_N009;
float4 Port_Default_N358;
float Port_Mask_N399;
float Port_Opacity_N410;
float3 Port_Normal_N410;
float3 Port_Emissive_N410;
float3 Port_AO_N410;
float3 Port_SpecularAO_N410;
float2 Port_Center_N282;
float2 Port_Center_N286;
float Port_Input1_N038;
float Port_Input1_N035;
float4 Port_Default_N338;
float Port_Mask_N302;
float Port_Opacity_N313;
float3 Port_Normal_N313;
float3 Port_Emissive_N313;
float3 Port_AO_N313;
float3 Port_SpecularAO_N313;
float2 Port_Center_N122;
float2 Port_Center_N126;
float Port_Input1_N034;
float Port_Mask_N139;
float Port_Opacity_N152;
float3 Port_Normal_N152;
float3 Port_Emissive_N152;
float3 Port_AO_N152;
float3 Port_SpecularAO_N152;
float Port_Mask_N263;
float Port_Mask_N418;
float4 Port_Input1_N051;
float4 Port_Input2_N051;
float4 Port_Input0_N102;
float4 Port_Import_N059;
float Port_Import_N060;
float4 Port_Input1_N062;
float Port_Import_N063;
float Port_Import_N100;
float4 Port_Input1_N070;
float4 Port_Input2_N070;
float depthRef;
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
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> Tweak_N27 [[id(4)]];
texture2d<float> greyMaskId [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> patternTextureId01 [[id(7)]];
texture2d<float> patternTextureId02 [[id(8)]];
texture2d<float> patternTextureId03 [[id(9)]];
texture2d<float> sc_EnvmapDiffuse [[id(10)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(20)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(21)]];
texture2d<float> sc_RayTracingRayDirection [[id(22)]];
texture2d<float> sc_RayTracingReflections [[id(23)]];
texture2d<float> sc_RayTracingShadows [[id(24)]];
texture2d<float> sc_SSAOTexture [[id(25)]];
texture2d<float> sc_ScreenTexture [[id(26)]];
texture2d<float> sc_ShadowTexture [[id(27)]];
sampler Tweak_N27SmpSC [[id(29)]];
sampler greyMaskIdSmpSC [[id(30)]];
sampler intensityTextureSmpSC [[id(31)]];
sampler patternTextureId01SmpSC [[id(32)]];
sampler patternTextureId02SmpSC [[id(33)]];
sampler patternTextureId03SmpSC [[id(34)]];
sampler sc_EnvmapDiffuseSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(36)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(38)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(39)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(40)]];
sampler sc_RayTracingReflectionsSmpSC [[id(41)]];
sampler sc_RayTracingShadowsSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
constant userUniformsObj* UserUniforms [[id(47)]];
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
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
Globals.Surface_UVCoord0=in.varTex01.xy;
float param=0.0;
ssGlobals param_1=Globals;
float l9_0=0.0;
float l9_1=float((*sc_set0.UserUniforms).ColorOnOffid03!=0);
l9_0=l9_1;
param=l9_0;
if ((param*1.0)!=0.0)
{
float l9_2=0.0;
ssGlobals l9_3=param_1;
float l9_4=0.0;
float l9_5=float((*sc_set0.UserUniforms).pbrOnOffId03!=0);
l9_4=l9_5;
l9_2=l9_4;
if ((l9_2*1.0)!=0.0)
{
float l9_6=0.0;
float l9_7=(*sc_set0.UserUniforms).rougnessId03;
l9_6=l9_7;
float l9_8=(*sc_set0.UserUniforms).Port_Opacity_N410;
float l9_9=l9_6;
ssGlobals l9_10=l9_3;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_10.BumpedNormal=l9_10.VertexNormal_WorldSpace;
}
float l9_11=l9_8;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_11<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_12=gl_FragCoord;
float2 l9_13=floor(mod(l9_12.xy,float2(4.0)));
float l9_14=(mod(dot(l9_13,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_11<l9_14)
{
discard_fragment();
}
}
float3 l9_15=l9_10.PositionWS;
float3 l9_16=l9_10.BumpedNormal;
float l9_17=l9_9;
float3 l9_18=l9_15;
float3 l9_19=l9_16;
float l9_20=l9_17;
uint l9_21=0u;
uint3 l9_22=uint3(round((l9_18-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_22.x,l9_22.y,l9_22.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_23=l9_19;
float l9_24=dot(abs(l9_23),float3(1.0));
l9_23/=float3(l9_24);
float2 l9_25=float2(fast::clamp(-l9_23.z,0.0,1.0));
float2 l9_26=l9_23.xy+mix(-l9_25,l9_25,step(float2(0.0),l9_23.xy));
uint l9_27=as_type<uint>(half2(l9_26));
uint2 l9_28=uint2(l9_27&65535u,l9_27>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_28.x,l9_28.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_21;
uint l9_29=uint(fast::clamp(l9_20,0.0,1.0)*1000.0);
l9_29 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_29;
}
else
{
}
float l9_30=0.0;
ssGlobals l9_31=param_1;
float l9_32=0.0;
float l9_33=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_32=l9_33;
l9_30=l9_32;
if ((l9_30*1.0)!=0.0)
{
float l9_34=0.0;
ssGlobals l9_35=l9_31;
float l9_36=0.0;
float l9_37=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
l9_36=l9_37;
l9_34=l9_36;
if ((l9_34*1.0)!=0.0)
{
float l9_38=0.0;
float l9_39=(*sc_set0.UserUniforms).rougnessId02;
l9_38=l9_39;
float l9_40=(*sc_set0.UserUniforms).Port_Opacity_N313;
float l9_41=l9_38;
ssGlobals l9_42=l9_35;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_42.BumpedNormal=l9_42.VertexNormal_WorldSpace;
}
float l9_43=l9_40;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_43<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_44=gl_FragCoord;
float2 l9_45=floor(mod(l9_44.xy,float2(4.0)));
float l9_46=(mod(dot(l9_45,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_43<l9_46)
{
discard_fragment();
}
}
float3 l9_47=l9_42.PositionWS;
float3 l9_48=l9_42.BumpedNormal;
float l9_49=l9_41;
float3 l9_50=l9_47;
float3 l9_51=l9_48;
float l9_52=l9_49;
uint l9_53=0u;
uint3 l9_54=uint3(round((l9_50-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_54.x,l9_54.y,l9_54.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_55=l9_51;
float l9_56=dot(abs(l9_55),float3(1.0));
l9_55/=float3(l9_56);
float2 l9_57=float2(fast::clamp(-l9_55.z,0.0,1.0));
float2 l9_58=l9_55.xy+mix(-l9_57,l9_57,step(float2(0.0),l9_55.xy));
uint l9_59=as_type<uint>(half2(l9_58));
uint2 l9_60=uint2(l9_59&65535u,l9_59>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_60.x,l9_60.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_53;
uint l9_61=uint(fast::clamp(l9_52,0.0,1.0)*1000.0);
l9_61 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_61;
}
else
{
}
float l9_62=0.0;
ssGlobals l9_63=l9_31;
float l9_64=0.0;
float l9_65=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_64=l9_65;
l9_62=l9_64;
if ((l9_62*1.0)!=0.0)
{
float l9_66=0.0;
float l9_67=(*sc_set0.UserUniforms).rougnessId01;
l9_66=l9_67;
float l9_68=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_69=l9_66;
ssGlobals l9_70=l9_63;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_70.BumpedNormal=l9_70.VertexNormal_WorldSpace;
}
float l9_71=l9_68;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_71<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_72=gl_FragCoord;
float2 l9_73=floor(mod(l9_72.xy,float2(4.0)));
float l9_74=(mod(dot(l9_73,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_71<l9_74)
{
discard_fragment();
}
}
float3 l9_75=l9_70.PositionWS;
float3 l9_76=l9_70.BumpedNormal;
float l9_77=l9_69;
float3 l9_78=l9_75;
float3 l9_79=l9_76;
float l9_80=l9_77;
uint l9_81=0u;
uint3 l9_82=uint3(round((l9_78-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_82.x,l9_82.y,l9_82.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_83=l9_79;
float l9_84=dot(abs(l9_83),float3(1.0));
l9_83/=float3(l9_84);
float2 l9_85=float2(fast::clamp(-l9_83.z,0.0,1.0));
float2 l9_86=l9_83.xy+mix(-l9_85,l9_85,step(float2(0.0),l9_83.xy));
uint l9_87=as_type<uint>(half2(l9_86));
uint2 l9_88=uint2(l9_87&65535u,l9_87>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_88.x,l9_88.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_81;
uint l9_89=uint(fast::clamp(l9_80,0.0,1.0)*1000.0);
l9_89 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_89;
}
else
{
}
}
else
{
float l9_90=0.0;
ssGlobals l9_91=l9_31;
float l9_92=0.0;
float l9_93=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_92=l9_93;
l9_90=l9_92;
if ((l9_90*1.0)!=0.0)
{
float l9_94=0.0;
float l9_95=(*sc_set0.UserUniforms).rougnessId01;
l9_94=l9_95;
float l9_96=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_97=l9_94;
ssGlobals l9_98=l9_91;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_98.BumpedNormal=l9_98.VertexNormal_WorldSpace;
}
float l9_99=l9_96;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_99<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_100=gl_FragCoord;
float2 l9_101=floor(mod(l9_100.xy,float2(4.0)));
float l9_102=(mod(dot(l9_101,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_99<l9_102)
{
discard_fragment();
}
}
float3 l9_103=l9_98.PositionWS;
float3 l9_104=l9_98.BumpedNormal;
float l9_105=l9_97;
float3 l9_106=l9_103;
float3 l9_107=l9_104;
float l9_108=l9_105;
uint l9_109=0u;
uint3 l9_110=uint3(round((l9_106-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_110.x,l9_110.y,l9_110.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_111=l9_107;
float l9_112=dot(abs(l9_111),float3(1.0));
l9_111/=float3(l9_112);
float2 l9_113=float2(fast::clamp(-l9_111.z,0.0,1.0));
float2 l9_114=l9_111.xy+mix(-l9_113,l9_113,step(float2(0.0),l9_111.xy));
uint l9_115=as_type<uint>(half2(l9_114));
uint2 l9_116=uint2(l9_115&65535u,l9_115>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_116.x,l9_116.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_109;
uint l9_117=uint(fast::clamp(l9_108,0.0,1.0)*1000.0);
l9_117 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_117;
}
else
{
}
}
}
else
{
float l9_118=0.0;
ssGlobals l9_119=param_1;
float l9_120=0.0;
float l9_121=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_120=l9_121;
l9_118=l9_120;
if ((l9_118*1.0)!=0.0)
{
float l9_122=0.0;
ssGlobals l9_123=l9_119;
float l9_124=0.0;
float l9_125=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
l9_124=l9_125;
l9_122=l9_124;
if ((l9_122*1.0)!=0.0)
{
float l9_126=0.0;
float l9_127=(*sc_set0.UserUniforms).rougnessId02;
l9_126=l9_127;
float l9_128=(*sc_set0.UserUniforms).Port_Opacity_N313;
float l9_129=l9_126;
ssGlobals l9_130=l9_123;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_130.BumpedNormal=l9_130.VertexNormal_WorldSpace;
}
float l9_131=l9_128;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_131<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_132=gl_FragCoord;
float2 l9_133=floor(mod(l9_132.xy,float2(4.0)));
float l9_134=(mod(dot(l9_133,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_131<l9_134)
{
discard_fragment();
}
}
float3 l9_135=l9_130.PositionWS;
float3 l9_136=l9_130.BumpedNormal;
float l9_137=l9_129;
float3 l9_138=l9_135;
float3 l9_139=l9_136;
float l9_140=l9_137;
uint l9_141=0u;
uint3 l9_142=uint3(round((l9_138-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_142.x,l9_142.y,l9_142.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_143=l9_139;
float l9_144=dot(abs(l9_143),float3(1.0));
l9_143/=float3(l9_144);
float2 l9_145=float2(fast::clamp(-l9_143.z,0.0,1.0));
float2 l9_146=l9_143.xy+mix(-l9_145,l9_145,step(float2(0.0),l9_143.xy));
uint l9_147=as_type<uint>(half2(l9_146));
uint2 l9_148=uint2(l9_147&65535u,l9_147>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_148.x,l9_148.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_141;
uint l9_149=uint(fast::clamp(l9_140,0.0,1.0)*1000.0);
l9_149 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_149;
}
else
{
}
float l9_150=0.0;
ssGlobals l9_151=l9_119;
float l9_152=0.0;
float l9_153=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_152=l9_153;
l9_150=l9_152;
if ((l9_150*1.0)!=0.0)
{
float l9_154=0.0;
float l9_155=(*sc_set0.UserUniforms).rougnessId01;
l9_154=l9_155;
float l9_156=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_157=l9_154;
ssGlobals l9_158=l9_151;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_158.BumpedNormal=l9_158.VertexNormal_WorldSpace;
}
float l9_159=l9_156;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_159<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_160=gl_FragCoord;
float2 l9_161=floor(mod(l9_160.xy,float2(4.0)));
float l9_162=(mod(dot(l9_161,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_159<l9_162)
{
discard_fragment();
}
}
float3 l9_163=l9_158.PositionWS;
float3 l9_164=l9_158.BumpedNormal;
float l9_165=l9_157;
float3 l9_166=l9_163;
float3 l9_167=l9_164;
float l9_168=l9_165;
uint l9_169=0u;
uint3 l9_170=uint3(round((l9_166-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_170.x,l9_170.y,l9_170.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_171=l9_167;
float l9_172=dot(abs(l9_171),float3(1.0));
l9_171/=float3(l9_172);
float2 l9_173=float2(fast::clamp(-l9_171.z,0.0,1.0));
float2 l9_174=l9_171.xy+mix(-l9_173,l9_173,step(float2(0.0),l9_171.xy));
uint l9_175=as_type<uint>(half2(l9_174));
uint2 l9_176=uint2(l9_175&65535u,l9_175>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_176.x,l9_176.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_169;
uint l9_177=uint(fast::clamp(l9_168,0.0,1.0)*1000.0);
l9_177 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_177;
}
else
{
}
}
else
{
float l9_178=0.0;
ssGlobals l9_179=l9_119;
float l9_180=0.0;
float l9_181=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_180=l9_181;
l9_178=l9_180;
if ((l9_178*1.0)!=0.0)
{
float l9_182=0.0;
float l9_183=(*sc_set0.UserUniforms).rougnessId01;
l9_182=l9_183;
float l9_184=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_185=l9_182;
ssGlobals l9_186=l9_179;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_186.BumpedNormal=l9_186.VertexNormal_WorldSpace;
}
float l9_187=l9_184;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_187<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_188=gl_FragCoord;
float2 l9_189=floor(mod(l9_188.xy,float2(4.0)));
float l9_190=(mod(dot(l9_189,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_187<l9_190)
{
discard_fragment();
}
}
float3 l9_191=l9_186.PositionWS;
float3 l9_192=l9_186.BumpedNormal;
float l9_193=l9_185;
float3 l9_194=l9_191;
float3 l9_195=l9_192;
float l9_196=l9_193;
uint l9_197=0u;
uint3 l9_198=uint3(round((l9_194-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_198.x,l9_198.y,l9_198.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_199=l9_195;
float l9_200=dot(abs(l9_199),float3(1.0));
l9_199/=float3(l9_200);
float2 l9_201=float2(fast::clamp(-l9_199.z,0.0,1.0));
float2 l9_202=l9_199.xy+mix(-l9_201,l9_201,step(float2(0.0),l9_199.xy));
uint l9_203=as_type<uint>(half2(l9_202));
uint2 l9_204=uint2(l9_203&65535u,l9_203>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_204.x,l9_204.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_197;
uint l9_205=uint(fast::clamp(l9_196,0.0,1.0)*1000.0);
l9_205 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_205;
}
else
{
}
}
}
return out;
}
} // RECEIVER MODE SHADER
