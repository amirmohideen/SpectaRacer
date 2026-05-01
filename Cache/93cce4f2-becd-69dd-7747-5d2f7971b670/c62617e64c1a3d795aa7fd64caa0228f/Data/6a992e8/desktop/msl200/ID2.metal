#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
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
//sampler sampler Tweak_N27SmpSC 0:28
//sampler sampler greyMaskIdSmpSC 0:29
//sampler sampler intensityTextureSmpSC 0:30
//sampler sampler patternTextureId01SmpSC 0:31
//sampler sampler patternTextureId02SmpSC 0:32
//sampler sampler sc_EnvmapDiffuseSmpSC 0:33
//sampler sampler sc_EnvmapSpecularSmpSC 0:34
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:36
//sampler sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC 0:37
//sampler sampler sc_RayTracingRayDirectionSmpSC 0:38
//sampler sampler sc_RayTracingReflectionsSmpSC 0:39
//sampler sampler sc_RayTracingShadowsSmpSC 0:40
//sampler sampler sc_SSAOTextureSmpSC 0:41
//sampler sampler sc_ScreenTextureSmpSC 0:42
//sampler sampler sc_ShadowTextureSmpSC 0:43
//texture texture2D Tweak_N27 0:4:0:28
//texture texture2D greyMaskId 0:5:0:29
//texture texture2D intensityTexture 0:6:0:30
//texture texture2D patternTextureId01 0:7:0:31
//texture texture2D patternTextureId02 0:8:0:32
//texture texture2D sc_EnvmapDiffuse 0:9:0:33
//texture texture2D sc_EnvmapSpecular 0:10:0:34
//texture texture2D sc_RayTracingGlobalIllumination 0:19:0:36
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:20:0:37
//texture texture2D sc_RayTracingRayDirection 0:21:0:38
//texture texture2D sc_RayTracingReflections 0:22:0:39
//texture texture2D sc_RayTracingShadows 0:23:0:40
//texture texture2D sc_SSAOTexture 0:24:0:41
//texture texture2D sc_ScreenTexture 0:25:0:42
//texture texture2D sc_ShadowTexture 0:26:0:43
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:45:5776 {
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
//bool ColorOnOffid02 4624
//bool pbrOnOffId02 4628
//bool rimOnOffId02 4632
//float rimExpId02 4636
//float rimIntId02 4640
//bool patternOnOffId02 4644
//float4 patternColorId02 4656
//bool pngPatternId02 4672
//float3x3 patternTextureId02Transform 4736
//float4 patternTextureId02UvMinMax 4784
//float4 patternTextureId02BorderColor 4800
//float2 patternScaleId02 4816
//float2 patternOffsetId02 4824
//float patternRotateId02 4832
//float4 colorId02 4848
//float3x3 greyMaskIdTransform 4912
//float4 greyMaskIdUvMinMax 4960
//float4 greyMaskIdBorderColor 4976
//float metallicId02 4992
//float rougnessId02 4996
//bool pbrOnOffId01 5000
//bool rimOnOffId01 5004
//float rimExpId01 5008
//float rimIntId01 5012
//bool patternOnOffId01 5016
//float4 patternColorId01 5024
//bool pngPatternId01 5040
//float3x3 patternTextureId01Transform 5104
//float4 patternTextureId01UvMinMax 5152
//float4 patternTextureId01BorderColor 5168
//float2 patternScaleId01 5184
//float2 patternOffsetId01 5192
//float patternRotateId01 5200
//float4 colorId01 5216
//float metallicId01 5232
//float rougnessId01 5236
//float3x3 Tweak_N27Transform 5296
//float4 Tweak_N27UvMinMax 5344
//float4 Tweak_N27BorderColor 5360
//float Tweak_N47 5376
//float2 Port_Center_N282 5384
//float2 Port_Center_N286 5392
//float Port_Input1_N038 5400
//float Port_Input1_N035 5404
//float4 Port_Default_N338 5408
//float Port_Opacity_N313 5428
//float3 Port_Emissive_N313 5456
//float3 Port_AO_N313 5472
//float3 Port_SpecularAO_N313 5488
//float2 Port_Center_N122 5504
//float2 Port_Center_N126 5512
//float Port_Input1_N034 5520
//float Port_Opacity_N152 5528
//float3 Port_Emissive_N152 5552
//float3 Port_AO_N152 5568
//float3 Port_SpecularAO_N152 5584
//float4 Port_Input1_N051 5616
//float4 Port_Input2_N051 5632
//float4 Port_Input0_N102 5648
//float Port_Import_N060 5680
//float4 Port_Input1_N062 5696
//float Port_Import_N063 5712
//float Port_Import_N100 5716
//float4 Port_Input1_N070 5728
//float4 Port_Input2_N070 5744
//float depthRef 5760
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
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N27 36 0
//spec_const bool SC_USE_UV_MIN_MAX_greyMaskId 37 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 38 0
//spec_const bool SC_USE_UV_MIN_MAX_patternTextureId01 39 0
//spec_const bool SC_USE_UV_MIN_MAX_patternTextureId02 40 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N27 41 0
//spec_const bool SC_USE_UV_TRANSFORM_greyMaskId 42 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 43 0
//spec_const bool SC_USE_UV_TRANSFORM_patternTextureId01 44 0
//spec_const bool SC_USE_UV_TRANSFORM_patternTextureId02 45 0
//spec_const bool Tweak_N27HasSwappedViews 46 0
//spec_const bool UseViewSpaceDepthVariant 47 1
//spec_const bool greyMaskIdHasSwappedViews 48 0
//spec_const bool intensityTextureHasSwappedViews 49 0
//spec_const bool patternTextureId01HasSwappedViews 50 0
//spec_const bool patternTextureId02HasSwappedViews 51 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 52 0
//spec_const bool sc_BlendMode_Add 53 0
//spec_const bool sc_BlendMode_AlphaTest 54 0
//spec_const bool sc_BlendMode_AlphaToCoverage 55 0
//spec_const bool sc_BlendMode_ColoredGlass 56 0
//spec_const bool sc_BlendMode_Custom 57 0
//spec_const bool sc_BlendMode_Max 58 0
//spec_const bool sc_BlendMode_Min 59 0
//spec_const bool sc_BlendMode_MultiplyOriginal 60 0
//spec_const bool sc_BlendMode_Multiply 61 0
//spec_const bool sc_BlendMode_Normal 62 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 63 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 64 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 65 0
//spec_const bool sc_BlendMode_Screen 66 0
//spec_const bool sc_DepthOnly 67 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 68 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 69 0
//spec_const bool sc_FramebufferFetch 70 0
//spec_const bool sc_HasDiffuseEnvmap 71 0
//spec_const bool sc_IsEditor 72 0
//spec_const bool sc_LightEstimation 73 0
//spec_const bool sc_MotionVectorsPass 74 0
//spec_const bool sc_OITCompositingPass 75 0
//spec_const bool sc_OITDepthBoundsPass 76 0
//spec_const bool sc_OITDepthGatherPass 77 0
//spec_const bool sc_OutputBounds 78 0
//spec_const bool sc_ProjectiveShadowsCaster 79 0
//spec_const bool sc_ProjectiveShadowsReceiver 80 0
//spec_const bool sc_RayTracingCasterForceOpaque 81 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 82 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 83 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 84 0
//spec_const bool sc_RenderAlphaToColor 85 0
//spec_const bool sc_SSAOEnabled 86 0
//spec_const bool sc_ScreenTextureHasSwappedViews 87 0
//spec_const bool sc_TAAEnabled 88 0
//spec_const bool sc_VertexBlendingUseNormals 89 0
//spec_const bool sc_VertexBlending 90 0
//spec_const bool sc_Voxelization 91 0
//spec_const int SC_DEVICE_CLASS 92 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 93 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_greyMaskId 94 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 95 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 96 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 97 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 98 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_greyMaskId 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 102 -1
//spec_const int Tweak_N27Layout 103 0
//spec_const int greyMaskIdLayout 104 0
//spec_const int intensityTextureLayout 105 0
//spec_const int patternTextureId01Layout 106 0
//spec_const int patternTextureId02Layout 107 0
//spec_const int sc_AmbientLightMode0 108 0
//spec_const int sc_AmbientLightMode1 109 0
//spec_const int sc_AmbientLightMode2 110 0
//spec_const int sc_AmbientLightMode_Constant 111 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 112 0
//spec_const int sc_AmbientLightMode_FromCamera 113 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 114 0
//spec_const int sc_AmbientLightsCount 115 0
//spec_const int sc_DepthBufferMode 116 0
//spec_const int sc_DirectionalLightsCount 117 0
//spec_const int sc_EnvLightMode 118 0
//spec_const int sc_EnvmapDiffuseLayout 119 0
//spec_const int sc_EnvmapSpecularLayout 120 0
//spec_const int sc_LightEstimationSGCount 121 0
//spec_const int sc_PointLightsCount 122 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 123 0
//spec_const int sc_RayTracingReflectionsLayout 124 0
//spec_const int sc_RayTracingShadowsLayout 125 0
//spec_const int sc_RenderingSpace 126 -1
//spec_const int sc_ScreenTextureLayout 127 0
//spec_const int sc_ShaderCacheConstant 128 0
//spec_const int sc_SkinBonesCount 129 0
//spec_const int sc_StereoRenderingMode 130 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 131 0
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
constant bool SC_USE_UV_MIN_MAX_Tweak_N27 [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N27_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N27) ? SC_USE_UV_MIN_MAX_Tweak_N27 : false;
constant bool SC_USE_UV_MIN_MAX_greyMaskId [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_greyMaskId_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_greyMaskId) ? SC_USE_UV_MIN_MAX_greyMaskId : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_patternTextureId01 [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_patternTextureId01_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_patternTextureId01) ? SC_USE_UV_MIN_MAX_patternTextureId01 : false;
constant bool SC_USE_UV_MIN_MAX_patternTextureId02 [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_patternTextureId02_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_patternTextureId02) ? SC_USE_UV_MIN_MAX_patternTextureId02 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N27 [[function_constant(41)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N27_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N27) ? SC_USE_UV_TRANSFORM_Tweak_N27 : false;
constant bool SC_USE_UV_TRANSFORM_greyMaskId [[function_constant(42)]];
constant bool SC_USE_UV_TRANSFORM_greyMaskId_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_greyMaskId) ? SC_USE_UV_TRANSFORM_greyMaskId : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_patternTextureId01 [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_patternTextureId01_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_patternTextureId01) ? SC_USE_UV_TRANSFORM_patternTextureId01 : false;
constant bool SC_USE_UV_TRANSFORM_patternTextureId02 [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_patternTextureId02_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_patternTextureId02) ? SC_USE_UV_TRANSFORM_patternTextureId02 : false;
constant bool Tweak_N27HasSwappedViews [[function_constant(46)]];
constant bool Tweak_N27HasSwappedViews_tmp = is_function_constant_defined(Tweak_N27HasSwappedViews) ? Tweak_N27HasSwappedViews : false;
constant bool UseViewSpaceDepthVariant [[function_constant(47)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool greyMaskIdHasSwappedViews [[function_constant(48)]];
constant bool greyMaskIdHasSwappedViews_tmp = is_function_constant_defined(greyMaskIdHasSwappedViews) ? greyMaskIdHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(49)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool patternTextureId01HasSwappedViews [[function_constant(50)]];
constant bool patternTextureId01HasSwappedViews_tmp = is_function_constant_defined(patternTextureId01HasSwappedViews) ? patternTextureId01HasSwappedViews : false;
constant bool patternTextureId02HasSwappedViews [[function_constant(51)]];
constant bool patternTextureId02HasSwappedViews_tmp = is_function_constant_defined(patternTextureId02HasSwappedViews) ? patternTextureId02HasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(52)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(53)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(54)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(55)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(56)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(57)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(58)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(59)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(60)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(61)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(62)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(63)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(64)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(65)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(66)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(67)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(68)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(69)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(70)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(71)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(72)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(73)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(74)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(75)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(76)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(77)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(78)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(79)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(80)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(81)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(82)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(83)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(84)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(85)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(86)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(87)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(88)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(89)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(90)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(91)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int SC_DEVICE_CLASS [[function_constant(92)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 [[function_constant(93)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N27_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N27) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N27 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_greyMaskId [[function_constant(94)]];
constant int SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_greyMaskId) ? SC_SOFTWARE_WRAP_MODE_U_greyMaskId : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(95)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 [[function_constant(96)]];
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01) ? SC_SOFTWARE_WRAP_MODE_U_patternTextureId01 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 [[function_constant(97)]];
constant int SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02) ? SC_SOFTWARE_WRAP_MODE_U_patternTextureId02 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 [[function_constant(98)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N27_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N27) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N27 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_greyMaskId [[function_constant(99)]];
constant int SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_greyMaskId) ? SC_SOFTWARE_WRAP_MODE_V_greyMaskId : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_patternTextureId01) ? SC_SOFTWARE_WRAP_MODE_V_patternTextureId01 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_patternTextureId02) ? SC_SOFTWARE_WRAP_MODE_V_patternTextureId02 : -1;
constant int Tweak_N27Layout [[function_constant(103)]];
constant int Tweak_N27Layout_tmp = is_function_constant_defined(Tweak_N27Layout) ? Tweak_N27Layout : 0;
constant int greyMaskIdLayout [[function_constant(104)]];
constant int greyMaskIdLayout_tmp = is_function_constant_defined(greyMaskIdLayout) ? greyMaskIdLayout : 0;
constant int intensityTextureLayout [[function_constant(105)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int patternTextureId01Layout [[function_constant(106)]];
constant int patternTextureId01Layout_tmp = is_function_constant_defined(patternTextureId01Layout) ? patternTextureId01Layout : 0;
constant int patternTextureId02Layout [[function_constant(107)]];
constant int patternTextureId02Layout_tmp = is_function_constant_defined(patternTextureId02Layout) ? patternTextureId02Layout : 0;
constant int sc_AmbientLightMode0 [[function_constant(108)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(109)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(110)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(111)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(112)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(113)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(114)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(115)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(116)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(117)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(118)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(119)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(120)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(121)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(122)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(123)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(124)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(125)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(126)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(127)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(128)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(129)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(130)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(131)]];
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
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
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
texture2d<float> sc_EnvmapDiffuse [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(10)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(19)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(20)]];
texture2d<float> sc_RayTracingRayDirection [[id(21)]];
texture2d<float> sc_RayTracingReflections [[id(22)]];
texture2d<float> sc_RayTracingShadows [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
sampler Tweak_N27SmpSC [[id(28)]];
sampler greyMaskIdSmpSC [[id(29)]];
sampler intensityTextureSmpSC [[id(30)]];
sampler patternTextureId01SmpSC [[id(31)]];
sampler patternTextureId02SmpSC [[id(32)]];
sampler sc_EnvmapDiffuseSmpSC [[id(33)]];
sampler sc_EnvmapSpecularSmpSC [[id(34)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(36)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(37)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(38)]];
sampler sc_RayTracingReflectionsSmpSC [[id(39)]];
sampler sc_RayTracingShadowsSmpSC [[id(40)]];
sampler sc_SSAOTextureSmpSC [[id(41)]];
sampler sc_ScreenTextureSmpSC [[id(42)]];
sampler sc_ShadowTextureSmpSC [[id(43)]];
constant userUniformsObj* UserUniforms [[id(45)]];
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
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
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
texture2d<float> sc_EnvmapDiffuse [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(10)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(19)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(20)]];
texture2d<float> sc_RayTracingRayDirection [[id(21)]];
texture2d<float> sc_RayTracingReflections [[id(22)]];
texture2d<float> sc_RayTracingShadows [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
sampler Tweak_N27SmpSC [[id(28)]];
sampler greyMaskIdSmpSC [[id(29)]];
sampler intensityTextureSmpSC [[id(30)]];
sampler patternTextureId01SmpSC [[id(31)]];
sampler patternTextureId02SmpSC [[id(32)]];
sampler sc_EnvmapDiffuseSmpSC [[id(33)]];
sampler sc_EnvmapSpecularSmpSC [[id(34)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(36)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(37)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(38)]];
sampler sc_RayTracingReflectionsSmpSC [[id(39)]];
sampler sc_RayTracingShadowsSmpSC [[id(40)]];
sampler sc_SSAOTextureSmpSC [[id(41)]];
sampler sc_ScreenTextureSmpSC [[id(42)]];
sampler sc_ShadowTextureSmpSC [[id(43)]];
constant userUniformsObj* UserUniforms [[id(45)]];
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
float4 Result_N184=float4(0.0);
float param_1=0.0;
float4 param_2=float4(0.0);
float4 param_3=float4(0.0);
ssGlobals param_5=Globals;
float l9_1=0.0;
float l9_2=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
float l9_9=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
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
float l9_17=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_16=l9_17;
l9_12=l9_16;
float4 l9_18;
if ((l9_12*1.0)!=0.0)
{
float l9_19=0.0;
float l9_20=(*sc_set0.UserUniforms).rimExpId02;
l9_19=l9_20;
float l9_21=0.0;
float l9_22=(*sc_set0.UserUniforms).rimIntId02;
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
float l9_35=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_34=l9_35;
l9_30=l9_34;
float4 l9_36;
if ((l9_30*1.0)!=0.0)
{
float4 l9_37=float4(0.0);
float4 l9_38=(*sc_set0.UserUniforms).patternColorId02;
l9_37=l9_38;
float4 l9_39=float4(0.0);
float l9_40=0.0;
float4 l9_41=float4(0.0);
float4 l9_42=float4(0.0);
ssGlobals l9_43=l9_33;
float l9_44=0.0;
float l9_45=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_44=l9_45;
l9_40=l9_44;
float4 l9_46;
if ((l9_40*1.0)!=0.0)
{
float2 l9_47=float2(0.0);
l9_47=l9_43.Surface_UVCoord0;
float2 l9_48=float2(0.0);
float2 l9_49=(*sc_set0.UserUniforms).patternScaleId02;
l9_48=l9_49;
float2 l9_50=float2(0.0);
l9_50=((l9_47-(*sc_set0.UserUniforms).Port_Center_N282)*l9_48)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_51=float2(0.0);
float2 l9_52=(*sc_set0.UserUniforms).patternOffsetId02;
l9_51=l9_52;
float2 l9_53=float2(0.0);
l9_53=l9_50+l9_51;
float l9_54=0.0;
float l9_55=(*sc_set0.UserUniforms).patternRotateId02;
l9_54=l9_55;
float2 l9_56=float2(0.0);
float2 l9_57=l9_53;
float l9_58=l9_54;
float2 l9_59=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_60=sin(radians(l9_58));
float l9_61=cos(radians(l9_58));
float2 l9_62=l9_57-l9_59;
l9_62=float2(dot(float2(l9_61,l9_60),l9_62),dot(float2(-l9_60,l9_61),l9_62))+l9_59;
l9_56=l9_62;
float4 l9_63=float4(0.0);
int l9_64;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_70=patternTextureId02Layout_tmp;
int l9_71=l9_69;
float2 l9_72=l9_56;
bool l9_73=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_74=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_75=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_76=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_77=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_78=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_79=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_147=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_146.xy,bias(l9_140));
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
float2 l9_152=(*sc_set0.UserUniforms).patternScaleId02;
l9_151=l9_152;
float2 l9_153=float2(0.0);
l9_153=((l9_150-(*sc_set0.UserUniforms).Port_Center_N282)*l9_151)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_154=float2(0.0);
float2 l9_155=(*sc_set0.UserUniforms).patternOffsetId02;
l9_154=l9_155;
float2 l9_156=float2(0.0);
l9_156=l9_153+l9_154;
float l9_157=0.0;
float l9_158=(*sc_set0.UserUniforms).patternRotateId02;
l9_157=l9_158;
float2 l9_159=float2(0.0);
float2 l9_160=l9_156;
float l9_161=l9_157;
float2 l9_162=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_163=sin(radians(l9_161));
float l9_164=cos(radians(l9_161));
float2 l9_165=l9_160-l9_162;
l9_165=float2(dot(float2(l9_164,l9_163),l9_165),dot(float2(-l9_163,l9_164),l9_165))+l9_162;
l9_159=l9_165;
float4 l9_166=float4(0.0);
int l9_167;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_173=patternTextureId02Layout_tmp;
int l9_174=l9_172;
float2 l9_175=l9_159;
bool l9_176=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_177=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_178=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_179=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_180=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_181=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_182=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_250=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_249.xy,bias(l9_243));
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
float4 l9_258=(*sc_set0.UserUniforms).colorId02;
l9_257=l9_258;
float4 l9_259=float4(0.0);
float l9_260=0.0;
float4 l9_261=float4(0.0);
float4 l9_262=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_263=l9_33;
float l9_264=0.0;
float l9_265=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_356=step(l9_355,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_357=0.0;
l9_357=step(l9_355,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_363=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_364=l9_15;
float l9_365=0.0;
float l9_366=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_457=step(l9_456,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_458=0.0;
l9_458=step(l9_456,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_462=(*sc_set0.UserUniforms).colorId02;
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
float l9_479=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_478=l9_479;
l9_474=l9_478;
float4 l9_480;
if ((l9_474*1.0)!=0.0)
{
float4 l9_481=float4(0.0);
float4 l9_482=(*sc_set0.UserUniforms).patternColorId02;
l9_481=l9_482;
float4 l9_483=float4(0.0);
float l9_484=0.0;
float4 l9_485=float4(0.0);
float4 l9_486=float4(0.0);
ssGlobals l9_487=l9_477;
float l9_488=0.0;
float l9_489=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_488=l9_489;
l9_484=l9_488;
float4 l9_490;
if ((l9_484*1.0)!=0.0)
{
float2 l9_491=float2(0.0);
l9_491=l9_487.Surface_UVCoord0;
float2 l9_492=float2(0.0);
float2 l9_493=(*sc_set0.UserUniforms).patternScaleId02;
l9_492=l9_493;
float2 l9_494=float2(0.0);
l9_494=((l9_491-(*sc_set0.UserUniforms).Port_Center_N282)*l9_492)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_495=float2(0.0);
float2 l9_496=(*sc_set0.UserUniforms).patternOffsetId02;
l9_495=l9_496;
float2 l9_497=float2(0.0);
l9_497=l9_494+l9_495;
float l9_498=0.0;
float l9_499=(*sc_set0.UserUniforms).patternRotateId02;
l9_498=l9_499;
float2 l9_500=float2(0.0);
float2 l9_501=l9_497;
float l9_502=l9_498;
float2 l9_503=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_504=sin(radians(l9_502));
float l9_505=cos(radians(l9_502));
float2 l9_506=l9_501-l9_503;
l9_506=float2(dot(float2(l9_505,l9_504),l9_506),dot(float2(-l9_504,l9_505),l9_506))+l9_503;
l9_500=l9_506;
float4 l9_507=float4(0.0);
int l9_508;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_514=patternTextureId02Layout_tmp;
int l9_515=l9_513;
float2 l9_516=l9_500;
bool l9_517=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_518=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_519=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_520=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_521=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_522=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_523=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_591=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_590.xy,bias(l9_584));
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
float2 l9_596=(*sc_set0.UserUniforms).patternScaleId02;
l9_595=l9_596;
float2 l9_597=float2(0.0);
l9_597=((l9_594-(*sc_set0.UserUniforms).Port_Center_N282)*l9_595)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_598=float2(0.0);
float2 l9_599=(*sc_set0.UserUniforms).patternOffsetId02;
l9_598=l9_599;
float2 l9_600=float2(0.0);
l9_600=l9_597+l9_598;
float l9_601=0.0;
float l9_602=(*sc_set0.UserUniforms).patternRotateId02;
l9_601=l9_602;
float2 l9_603=float2(0.0);
float2 l9_604=l9_600;
float l9_605=l9_601;
float2 l9_606=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_607=sin(radians(l9_605));
float l9_608=cos(radians(l9_605));
float2 l9_609=l9_604-l9_606;
l9_609=float2(dot(float2(l9_608,l9_607),l9_609),dot(float2(-l9_607,l9_608),l9_609))+l9_606;
l9_603=l9_609;
float4 l9_610=float4(0.0);
int l9_611;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_617=patternTextureId02Layout_tmp;
int l9_618=l9_616;
float2 l9_619=l9_603;
bool l9_620=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_621=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_622=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_623=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_624=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_625=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_626=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_694=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_693.xy,bias(l9_687));
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
float4 l9_702=(*sc_set0.UserUniforms).colorId02;
l9_701=l9_702;
float4 l9_703=float4(0.0);
float l9_704=0.0;
float4 l9_705=float4(0.0);
float4 l9_706=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_707=l9_477;
float l9_708=0.0;
float l9_709=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_800=step(l9_799,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_801=0.0;
l9_801=step(l9_799,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_807=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_808=l9_15;
float l9_809=0.0;
float l9_810=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_901=step(l9_900,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_902=0.0;
l9_902=step(l9_900,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_906=(*sc_set0.UserUniforms).colorId02;
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
float l9_916=(*sc_set0.UserUniforms).metallicId02;
l9_915=l9_916;
float l9_917=0.0;
float l9_918=(*sc_set0.UserUniforms).rougnessId02;
l9_917=l9_918;
float4 l9_919=float4(0.0);
float3 l9_920=l9_11.xyz;
float l9_921=(*sc_set0.UserUniforms).Port_Opacity_N313;
float3 l9_922=(*sc_set0.UserUniforms).Port_Emissive_N313;
float l9_923=l9_915;
float l9_924=l9_917;
float3 l9_925=(*sc_set0.UserUniforms).Port_AO_N313;
float3 l9_926=(*sc_set0.UserUniforms).Port_SpecularAO_N313;
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
float l9_949=float((*sc_set0.UserUniforms).rimOnOffId02!=0);
l9_948=l9_949;
l9_944=l9_948;
float4 l9_950;
if ((l9_944*1.0)!=0.0)
{
float l9_951=0.0;
float l9_952=(*sc_set0.UserUniforms).rimExpId02;
l9_951=l9_952;
float l9_953=0.0;
float l9_954=(*sc_set0.UserUniforms).rimIntId02;
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
float l9_967=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_966=l9_967;
l9_962=l9_966;
float4 l9_968;
if ((l9_962*1.0)!=0.0)
{
float4 l9_969=float4(0.0);
float4 l9_970=(*sc_set0.UserUniforms).patternColorId02;
l9_969=l9_970;
float4 l9_971=float4(0.0);
float l9_972=0.0;
float4 l9_973=float4(0.0);
float4 l9_974=float4(0.0);
ssGlobals l9_975=l9_965;
float l9_976=0.0;
float l9_977=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_976=l9_977;
l9_972=l9_976;
float4 l9_978;
if ((l9_972*1.0)!=0.0)
{
float2 l9_979=float2(0.0);
l9_979=l9_975.Surface_UVCoord0;
float2 l9_980=float2(0.0);
float2 l9_981=(*sc_set0.UserUniforms).patternScaleId02;
l9_980=l9_981;
float2 l9_982=float2(0.0);
l9_982=((l9_979-(*sc_set0.UserUniforms).Port_Center_N282)*l9_980)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_983=float2(0.0);
float2 l9_984=(*sc_set0.UserUniforms).patternOffsetId02;
l9_983=l9_984;
float2 l9_985=float2(0.0);
l9_985=l9_982+l9_983;
float l9_986=0.0;
float l9_987=(*sc_set0.UserUniforms).patternRotateId02;
l9_986=l9_987;
float2 l9_988=float2(0.0);
float2 l9_989=l9_985;
float l9_990=l9_986;
float2 l9_991=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_992=sin(radians(l9_990));
float l9_993=cos(radians(l9_990));
float2 l9_994=l9_989-l9_991;
l9_994=float2(dot(float2(l9_993,l9_992),l9_994),dot(float2(-l9_992,l9_993),l9_994))+l9_991;
l9_988=l9_994;
float4 l9_995=float4(0.0);
int l9_996;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_1002=patternTextureId02Layout_tmp;
int l9_1003=l9_1001;
float2 l9_1004=l9_988;
bool l9_1005=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_1006=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_1007=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_1008=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_1009=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_1010=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_1011=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_1079=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_1078.xy,bias(l9_1072));
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
float2 l9_1084=(*sc_set0.UserUniforms).patternScaleId02;
l9_1083=l9_1084;
float2 l9_1085=float2(0.0);
l9_1085=((l9_1082-(*sc_set0.UserUniforms).Port_Center_N282)*l9_1083)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_1086=float2(0.0);
float2 l9_1087=(*sc_set0.UserUniforms).patternOffsetId02;
l9_1086=l9_1087;
float2 l9_1088=float2(0.0);
l9_1088=l9_1085+l9_1086;
float l9_1089=0.0;
float l9_1090=(*sc_set0.UserUniforms).patternRotateId02;
l9_1089=l9_1090;
float2 l9_1091=float2(0.0);
float2 l9_1092=l9_1088;
float l9_1093=l9_1089;
float2 l9_1094=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_1095=sin(radians(l9_1093));
float l9_1096=cos(radians(l9_1093));
float2 l9_1097=l9_1092-l9_1094;
l9_1097=float2(dot(float2(l9_1096,l9_1095),l9_1097),dot(float2(-l9_1095,l9_1096),l9_1097))+l9_1094;
l9_1091=l9_1097;
float4 l9_1098=float4(0.0);
int l9_1099;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_1105=patternTextureId02Layout_tmp;
int l9_1106=l9_1104;
float2 l9_1107=l9_1091;
bool l9_1108=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_1109=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_1110=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_1111=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_1112=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_1113=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_1114=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_1182=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_1181.xy,bias(l9_1175));
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
float4 l9_1190=(*sc_set0.UserUniforms).colorId02;
l9_1189=l9_1190;
float4 l9_1191=float4(0.0);
float l9_1192=0.0;
float4 l9_1193=float4(0.0);
float4 l9_1194=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_1195=l9_965;
float l9_1196=0.0;
float l9_1197=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_1288=step(l9_1287,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_1289=0.0;
l9_1289=step(l9_1287,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_1295=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_1296=l9_947;
float l9_1297=0.0;
float l9_1298=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_1389=step(l9_1388,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_1390=0.0;
l9_1390=step(l9_1388,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_1394=(*sc_set0.UserUniforms).colorId02;
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
float l9_1411=float((*sc_set0.UserUniforms).patternOnOffId02!=0);
l9_1410=l9_1411;
l9_1406=l9_1410;
float4 l9_1412;
if ((l9_1406*1.0)!=0.0)
{
float4 l9_1413=float4(0.0);
float4 l9_1414=(*sc_set0.UserUniforms).patternColorId02;
l9_1413=l9_1414;
float4 l9_1415=float4(0.0);
float l9_1416=0.0;
float4 l9_1417=float4(0.0);
float4 l9_1418=float4(0.0);
ssGlobals l9_1419=l9_1409;
float l9_1420=0.0;
float l9_1421=float((*sc_set0.UserUniforms).pngPatternId02!=0);
l9_1420=l9_1421;
l9_1416=l9_1420;
float4 l9_1422;
if ((l9_1416*1.0)!=0.0)
{
float2 l9_1423=float2(0.0);
l9_1423=l9_1419.Surface_UVCoord0;
float2 l9_1424=float2(0.0);
float2 l9_1425=(*sc_set0.UserUniforms).patternScaleId02;
l9_1424=l9_1425;
float2 l9_1426=float2(0.0);
l9_1426=((l9_1423-(*sc_set0.UserUniforms).Port_Center_N282)*l9_1424)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_1427=float2(0.0);
float2 l9_1428=(*sc_set0.UserUniforms).patternOffsetId02;
l9_1427=l9_1428;
float2 l9_1429=float2(0.0);
l9_1429=l9_1426+l9_1427;
float l9_1430=0.0;
float l9_1431=(*sc_set0.UserUniforms).patternRotateId02;
l9_1430=l9_1431;
float2 l9_1432=float2(0.0);
float2 l9_1433=l9_1429;
float l9_1434=l9_1430;
float2 l9_1435=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_1436=sin(radians(l9_1434));
float l9_1437=cos(radians(l9_1434));
float2 l9_1438=l9_1433-l9_1435;
l9_1438=float2(dot(float2(l9_1437,l9_1436),l9_1438),dot(float2(-l9_1436,l9_1437),l9_1438))+l9_1435;
l9_1432=l9_1438;
float4 l9_1439=float4(0.0);
int l9_1440;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_1446=patternTextureId02Layout_tmp;
int l9_1447=l9_1445;
float2 l9_1448=l9_1432;
bool l9_1449=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_1450=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_1451=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_1452=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_1453=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_1454=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_1455=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_1523=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_1522.xy,bias(l9_1516));
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
float2 l9_1528=(*sc_set0.UserUniforms).patternScaleId02;
l9_1527=l9_1528;
float2 l9_1529=float2(0.0);
l9_1529=((l9_1526-(*sc_set0.UserUniforms).Port_Center_N282)*l9_1527)+(*sc_set0.UserUniforms).Port_Center_N282;
float2 l9_1530=float2(0.0);
float2 l9_1531=(*sc_set0.UserUniforms).patternOffsetId02;
l9_1530=l9_1531;
float2 l9_1532=float2(0.0);
l9_1532=l9_1529+l9_1530;
float l9_1533=0.0;
float l9_1534=(*sc_set0.UserUniforms).patternRotateId02;
l9_1533=l9_1534;
float2 l9_1535=float2(0.0);
float2 l9_1536=l9_1532;
float l9_1537=l9_1533;
float2 l9_1538=(*sc_set0.UserUniforms).Port_Center_N286;
float l9_1539=sin(radians(l9_1537));
float l9_1540=cos(radians(l9_1537));
float2 l9_1541=l9_1536-l9_1538;
l9_1541=float2(dot(float2(l9_1540,l9_1539),l9_1541),dot(float2(-l9_1539,l9_1540),l9_1541))+l9_1538;
l9_1535=l9_1541;
float4 l9_1542=float4(0.0);
int l9_1543;
if ((int(patternTextureId02HasSwappedViews_tmp)!=0))
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
int l9_1549=patternTextureId02Layout_tmp;
int l9_1550=l9_1548;
float2 l9_1551=l9_1535;
bool l9_1552=(int(SC_USE_UV_TRANSFORM_patternTextureId02_tmp)!=0);
float3x3 l9_1553=(*sc_set0.UserUniforms).patternTextureId02Transform;
int2 l9_1554=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId02_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId02_tmp);
bool l9_1555=(int(SC_USE_UV_MIN_MAX_patternTextureId02_tmp)!=0);
float4 l9_1556=(*sc_set0.UserUniforms).patternTextureId02UvMinMax;
bool l9_1557=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId02_tmp)!=0);
float4 l9_1558=(*sc_set0.UserUniforms).patternTextureId02BorderColor;
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
float4 l9_1626=sc_set0.patternTextureId02.sample(sc_set0.patternTextureId02SmpSC,l9_1625.xy,bias(l9_1619));
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
float4 l9_1634=(*sc_set0.UserUniforms).colorId02;
l9_1633=l9_1634;
float4 l9_1635=float4(0.0);
float l9_1636=0.0;
float4 l9_1637=float4(0.0);
float4 l9_1638=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_1639=l9_1409;
float l9_1640=0.0;
float l9_1641=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_1732=step(l9_1731,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_1733=0.0;
l9_1733=step(l9_1731,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_1739=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_1740=l9_947;
float l9_1741=0.0;
float l9_1742=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_1833=step(l9_1832,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_1834=0.0;
l9_1834=step(l9_1832,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float4 l9_1838=(*sc_set0.UserUniforms).colorId02;
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
float4 l9_1850=(*sc_set0.UserUniforms).Port_Default_N338;
ssGlobals l9_1851=param_5;
float l9_1852=0.0;
float l9_1853=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
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
l9_1944=step(l9_1943,(*sc_set0.UserUniforms).Port_Input1_N038);
float l9_1945=0.0;
l9_1945=step(l9_1943,(*sc_set0.UserUniforms).Port_Input1_N035);
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
float l9_1954=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
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
float l9_1962=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_1961=l9_1962;
l9_1957=l9_1961;
float4 l9_1963;
if ((l9_1957*1.0)!=0.0)
{
float l9_1964=0.0;
float l9_1965=(*sc_set0.UserUniforms).rimExpId01;
l9_1964=l9_1965;
float l9_1966=0.0;
float l9_1967=(*sc_set0.UserUniforms).rimIntId01;
l9_1966=l9_1967;
float l9_1968=0.0;
float l9_1969=l9_1964;
float l9_1970=l9_1966;
ssGlobals l9_1971=l9_1960;
float l9_1972=abs(dot(-l9_1971.ViewDirWS,l9_1971.VertexNormal_WorldSpace));
float l9_1973=1.0-pow(1.0-l9_1972,l9_1969);
l9_1973=fast::max(l9_1973,0.0);
l9_1973*=l9_1970;
l9_1968=l9_1973;
float4 l9_1974=float4(0.0);
float l9_1975=0.0;
float4 l9_1976=float4(0.0);
float4 l9_1977=float4(0.0);
ssGlobals l9_1978=l9_1960;
float l9_1979=0.0;
float l9_1980=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_1979=l9_1980;
l9_1975=l9_1979;
float4 l9_1981;
if ((l9_1975*1.0)!=0.0)
{
float4 l9_1982=float4(0.0);
float4 l9_1983=(*sc_set0.UserUniforms).patternColorId01;
l9_1982=l9_1983;
float4 l9_1984=float4(0.0);
float l9_1985=0.0;
float4 l9_1986=float4(0.0);
float4 l9_1987=float4(0.0);
ssGlobals l9_1988=l9_1978;
float l9_1989=0.0;
float l9_1990=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_1989=l9_1990;
l9_1985=l9_1989;
float4 l9_1991;
if ((l9_1985*1.0)!=0.0)
{
float2 l9_1992=float2(0.0);
l9_1992=l9_1988.Surface_UVCoord0;
float2 l9_1993=float2(0.0);
float2 l9_1994=(*sc_set0.UserUniforms).patternScaleId01;
l9_1993=l9_1994;
float2 l9_1995=float2(0.0);
l9_1995=((l9_1992-(*sc_set0.UserUniforms).Port_Center_N122)*l9_1993)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_1996=float2(0.0);
float2 l9_1997=(*sc_set0.UserUniforms).patternOffsetId01;
l9_1996=l9_1997;
float2 l9_1998=float2(0.0);
l9_1998=l9_1995+l9_1996;
float l9_1999=0.0;
float l9_2000=(*sc_set0.UserUniforms).patternRotateId01;
l9_1999=l9_2000;
float2 l9_2001=float2(0.0);
float2 l9_2002=l9_1998;
float l9_2003=l9_1999;
float2 l9_2004=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_2005=sin(radians(l9_2003));
float l9_2006=cos(radians(l9_2003));
float2 l9_2007=l9_2002-l9_2004;
l9_2007=float2(dot(float2(l9_2006,l9_2005),l9_2007),dot(float2(-l9_2005,l9_2006),l9_2007))+l9_2004;
l9_2001=l9_2007;
float4 l9_2008=float4(0.0);
int l9_2009;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_2010=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2010=0;
}
else
{
l9_2010=in.varStereoViewID;
}
int l9_2011=l9_2010;
l9_2009=1-l9_2011;
}
else
{
int l9_2012=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2012=0;
}
else
{
l9_2012=in.varStereoViewID;
}
int l9_2013=l9_2012;
l9_2009=l9_2013;
}
int l9_2014=l9_2009;
int l9_2015=patternTextureId01Layout_tmp;
int l9_2016=l9_2014;
float2 l9_2017=l9_2001;
bool l9_2018=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_2019=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_2020=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_2021=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_2022=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_2023=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_2024=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_2025=0.0;
bool l9_2026=l9_2023&&(!l9_2021);
float l9_2027=1.0;
float l9_2028=l9_2017.x;
int l9_2029=l9_2020.x;
if (l9_2029==1)
{
l9_2028=fract(l9_2028);
}
else
{
if (l9_2029==2)
{
float l9_2030=fract(l9_2028);
float l9_2031=l9_2028-l9_2030;
float l9_2032=step(0.25,fract(l9_2031*0.5));
l9_2028=mix(l9_2030,1.0-l9_2030,fast::clamp(l9_2032,0.0,1.0));
}
}
l9_2017.x=l9_2028;
float l9_2033=l9_2017.y;
int l9_2034=l9_2020.y;
if (l9_2034==1)
{
l9_2033=fract(l9_2033);
}
else
{
if (l9_2034==2)
{
float l9_2035=fract(l9_2033);
float l9_2036=l9_2033-l9_2035;
float l9_2037=step(0.25,fract(l9_2036*0.5));
l9_2033=mix(l9_2035,1.0-l9_2035,fast::clamp(l9_2037,0.0,1.0));
}
}
l9_2017.y=l9_2033;
if (l9_2021)
{
bool l9_2038=l9_2023;
bool l9_2039;
if (l9_2038)
{
l9_2039=l9_2020.x==3;
}
else
{
l9_2039=l9_2038;
}
float l9_2040=l9_2017.x;
float l9_2041=l9_2022.x;
float l9_2042=l9_2022.z;
bool l9_2043=l9_2039;
float l9_2044=l9_2027;
float l9_2045=fast::clamp(l9_2040,l9_2041,l9_2042);
float l9_2046=step(abs(l9_2040-l9_2045),9.9999997e-06);
l9_2044*=(l9_2046+((1.0-float(l9_2043))*(1.0-l9_2046)));
l9_2040=l9_2045;
l9_2017.x=l9_2040;
l9_2027=l9_2044;
bool l9_2047=l9_2023;
bool l9_2048;
if (l9_2047)
{
l9_2048=l9_2020.y==3;
}
else
{
l9_2048=l9_2047;
}
float l9_2049=l9_2017.y;
float l9_2050=l9_2022.y;
float l9_2051=l9_2022.w;
bool l9_2052=l9_2048;
float l9_2053=l9_2027;
float l9_2054=fast::clamp(l9_2049,l9_2050,l9_2051);
float l9_2055=step(abs(l9_2049-l9_2054),9.9999997e-06);
l9_2053*=(l9_2055+((1.0-float(l9_2052))*(1.0-l9_2055)));
l9_2049=l9_2054;
l9_2017.y=l9_2049;
l9_2027=l9_2053;
}
float2 l9_2056=l9_2017;
bool l9_2057=l9_2018;
float3x3 l9_2058=l9_2019;
if (l9_2057)
{
l9_2056=float2((l9_2058*float3(l9_2056,1.0)).xy);
}
float2 l9_2059=l9_2056;
l9_2017=l9_2059;
float l9_2060=l9_2017.x;
int l9_2061=l9_2020.x;
bool l9_2062=l9_2026;
float l9_2063=l9_2027;
if ((l9_2061==0)||(l9_2061==3))
{
float l9_2064=l9_2060;
float l9_2065=0.0;
float l9_2066=1.0;
bool l9_2067=l9_2062;
float l9_2068=l9_2063;
float l9_2069=fast::clamp(l9_2064,l9_2065,l9_2066);
float l9_2070=step(abs(l9_2064-l9_2069),9.9999997e-06);
l9_2068*=(l9_2070+((1.0-float(l9_2067))*(1.0-l9_2070)));
l9_2064=l9_2069;
l9_2060=l9_2064;
l9_2063=l9_2068;
}
l9_2017.x=l9_2060;
l9_2027=l9_2063;
float l9_2071=l9_2017.y;
int l9_2072=l9_2020.y;
bool l9_2073=l9_2026;
float l9_2074=l9_2027;
if ((l9_2072==0)||(l9_2072==3))
{
float l9_2075=l9_2071;
float l9_2076=0.0;
float l9_2077=1.0;
bool l9_2078=l9_2073;
float l9_2079=l9_2074;
float l9_2080=fast::clamp(l9_2075,l9_2076,l9_2077);
float l9_2081=step(abs(l9_2075-l9_2080),9.9999997e-06);
l9_2079*=(l9_2081+((1.0-float(l9_2078))*(1.0-l9_2081)));
l9_2075=l9_2080;
l9_2071=l9_2075;
l9_2074=l9_2079;
}
l9_2017.y=l9_2071;
l9_2027=l9_2074;
float2 l9_2082=l9_2017;
int l9_2083=l9_2015;
int l9_2084=l9_2016;
float l9_2085=l9_2025;
float2 l9_2086=l9_2082;
int l9_2087=l9_2083;
int l9_2088=l9_2084;
float3 l9_2089=float3(0.0);
if (l9_2087==0)
{
l9_2089=float3(l9_2086,0.0);
}
else
{
if (l9_2087==1)
{
l9_2089=float3(l9_2086.x,(l9_2086.y*0.5)+(0.5-(float(l9_2088)*0.5)),0.0);
}
else
{
l9_2089=float3(l9_2086,float(l9_2088));
}
}
float3 l9_2090=l9_2089;
float3 l9_2091=l9_2090;
float4 l9_2092=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_2091.xy,bias(l9_2085));
float4 l9_2093=l9_2092;
if (l9_2023)
{
l9_2093=mix(l9_2024,l9_2093,float4(l9_2027));
}
float4 l9_2094=l9_2093;
l9_2008=l9_2094;
l9_1986=l9_2008;
l9_1991=l9_1986;
}
else
{
float2 l9_2095=float2(0.0);
l9_2095=l9_1988.Surface_UVCoord0;
float2 l9_2096=float2(0.0);
float2 l9_2097=(*sc_set0.UserUniforms).patternScaleId01;
l9_2096=l9_2097;
float2 l9_2098=float2(0.0);
l9_2098=((l9_2095-(*sc_set0.UserUniforms).Port_Center_N122)*l9_2096)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_2099=float2(0.0);
float2 l9_2100=(*sc_set0.UserUniforms).patternOffsetId01;
l9_2099=l9_2100;
float2 l9_2101=float2(0.0);
l9_2101=l9_2098+l9_2099;
float l9_2102=0.0;
float l9_2103=(*sc_set0.UserUniforms).patternRotateId01;
l9_2102=l9_2103;
float2 l9_2104=float2(0.0);
float2 l9_2105=l9_2101;
float l9_2106=l9_2102;
float2 l9_2107=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_2108=sin(radians(l9_2106));
float l9_2109=cos(radians(l9_2106));
float2 l9_2110=l9_2105-l9_2107;
l9_2110=float2(dot(float2(l9_2109,l9_2108),l9_2110),dot(float2(-l9_2108,l9_2109),l9_2110))+l9_2107;
l9_2104=l9_2110;
float4 l9_2111=float4(0.0);
int l9_2112;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_2113=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2113=0;
}
else
{
l9_2113=in.varStereoViewID;
}
int l9_2114=l9_2113;
l9_2112=1-l9_2114;
}
else
{
int l9_2115=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2115=0;
}
else
{
l9_2115=in.varStereoViewID;
}
int l9_2116=l9_2115;
l9_2112=l9_2116;
}
int l9_2117=l9_2112;
int l9_2118=patternTextureId01Layout_tmp;
int l9_2119=l9_2117;
float2 l9_2120=l9_2104;
bool l9_2121=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_2122=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_2123=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_2124=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_2125=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_2126=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_2127=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_2128=0.0;
bool l9_2129=l9_2126&&(!l9_2124);
float l9_2130=1.0;
float l9_2131=l9_2120.x;
int l9_2132=l9_2123.x;
if (l9_2132==1)
{
l9_2131=fract(l9_2131);
}
else
{
if (l9_2132==2)
{
float l9_2133=fract(l9_2131);
float l9_2134=l9_2131-l9_2133;
float l9_2135=step(0.25,fract(l9_2134*0.5));
l9_2131=mix(l9_2133,1.0-l9_2133,fast::clamp(l9_2135,0.0,1.0));
}
}
l9_2120.x=l9_2131;
float l9_2136=l9_2120.y;
int l9_2137=l9_2123.y;
if (l9_2137==1)
{
l9_2136=fract(l9_2136);
}
else
{
if (l9_2137==2)
{
float l9_2138=fract(l9_2136);
float l9_2139=l9_2136-l9_2138;
float l9_2140=step(0.25,fract(l9_2139*0.5));
l9_2136=mix(l9_2138,1.0-l9_2138,fast::clamp(l9_2140,0.0,1.0));
}
}
l9_2120.y=l9_2136;
if (l9_2124)
{
bool l9_2141=l9_2126;
bool l9_2142;
if (l9_2141)
{
l9_2142=l9_2123.x==3;
}
else
{
l9_2142=l9_2141;
}
float l9_2143=l9_2120.x;
float l9_2144=l9_2125.x;
float l9_2145=l9_2125.z;
bool l9_2146=l9_2142;
float l9_2147=l9_2130;
float l9_2148=fast::clamp(l9_2143,l9_2144,l9_2145);
float l9_2149=step(abs(l9_2143-l9_2148),9.9999997e-06);
l9_2147*=(l9_2149+((1.0-float(l9_2146))*(1.0-l9_2149)));
l9_2143=l9_2148;
l9_2120.x=l9_2143;
l9_2130=l9_2147;
bool l9_2150=l9_2126;
bool l9_2151;
if (l9_2150)
{
l9_2151=l9_2123.y==3;
}
else
{
l9_2151=l9_2150;
}
float l9_2152=l9_2120.y;
float l9_2153=l9_2125.y;
float l9_2154=l9_2125.w;
bool l9_2155=l9_2151;
float l9_2156=l9_2130;
float l9_2157=fast::clamp(l9_2152,l9_2153,l9_2154);
float l9_2158=step(abs(l9_2152-l9_2157),9.9999997e-06);
l9_2156*=(l9_2158+((1.0-float(l9_2155))*(1.0-l9_2158)));
l9_2152=l9_2157;
l9_2120.y=l9_2152;
l9_2130=l9_2156;
}
float2 l9_2159=l9_2120;
bool l9_2160=l9_2121;
float3x3 l9_2161=l9_2122;
if (l9_2160)
{
l9_2159=float2((l9_2161*float3(l9_2159,1.0)).xy);
}
float2 l9_2162=l9_2159;
l9_2120=l9_2162;
float l9_2163=l9_2120.x;
int l9_2164=l9_2123.x;
bool l9_2165=l9_2129;
float l9_2166=l9_2130;
if ((l9_2164==0)||(l9_2164==3))
{
float l9_2167=l9_2163;
float l9_2168=0.0;
float l9_2169=1.0;
bool l9_2170=l9_2165;
float l9_2171=l9_2166;
float l9_2172=fast::clamp(l9_2167,l9_2168,l9_2169);
float l9_2173=step(abs(l9_2167-l9_2172),9.9999997e-06);
l9_2171*=(l9_2173+((1.0-float(l9_2170))*(1.0-l9_2173)));
l9_2167=l9_2172;
l9_2163=l9_2167;
l9_2166=l9_2171;
}
l9_2120.x=l9_2163;
l9_2130=l9_2166;
float l9_2174=l9_2120.y;
int l9_2175=l9_2123.y;
bool l9_2176=l9_2129;
float l9_2177=l9_2130;
if ((l9_2175==0)||(l9_2175==3))
{
float l9_2178=l9_2174;
float l9_2179=0.0;
float l9_2180=1.0;
bool l9_2181=l9_2176;
float l9_2182=l9_2177;
float l9_2183=fast::clamp(l9_2178,l9_2179,l9_2180);
float l9_2184=step(abs(l9_2178-l9_2183),9.9999997e-06);
l9_2182*=(l9_2184+((1.0-float(l9_2181))*(1.0-l9_2184)));
l9_2178=l9_2183;
l9_2174=l9_2178;
l9_2177=l9_2182;
}
l9_2120.y=l9_2174;
l9_2130=l9_2177;
float2 l9_2185=l9_2120;
int l9_2186=l9_2118;
int l9_2187=l9_2119;
float l9_2188=l9_2128;
float2 l9_2189=l9_2185;
int l9_2190=l9_2186;
int l9_2191=l9_2187;
float3 l9_2192=float3(0.0);
if (l9_2190==0)
{
l9_2192=float3(l9_2189,0.0);
}
else
{
if (l9_2190==1)
{
l9_2192=float3(l9_2189.x,(l9_2189.y*0.5)+(0.5-(float(l9_2191)*0.5)),0.0);
}
else
{
l9_2192=float3(l9_2189,float(l9_2191));
}
}
float3 l9_2193=l9_2192;
float3 l9_2194=l9_2193;
float4 l9_2195=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_2194.xy,bias(l9_2188));
float4 l9_2196=l9_2195;
if (l9_2126)
{
l9_2196=mix(l9_2127,l9_2196,float4(l9_2130));
}
float4 l9_2197=l9_2196;
l9_2111=l9_2197;
float l9_2198=0.0;
float3 l9_2199=l9_2111.xyz;
float l9_2200=l9_2199.x;
l9_2198=l9_2200;
l9_1987=float4(l9_2198);
l9_1991=l9_1987;
}
l9_1984=l9_1991;
float4 l9_2201=float4(0.0);
l9_2201=l9_1982*l9_1984;
l9_1976=l9_2201;
l9_1981=l9_1976;
}
else
{
float4 l9_2202=float4(0.0);
float4 l9_2203=(*sc_set0.UserUniforms).colorId01;
l9_2202=l9_2203;
float2 l9_2204=float2(0.0);
l9_2204=l9_1978.Surface_UVCoord0;
float4 l9_2205=float4(0.0);
int l9_2206;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
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
int l9_2212=greyMaskIdLayout_tmp;
int l9_2213=l9_2211;
float2 l9_2214=l9_2204;
bool l9_2215=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2216=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2217=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2218=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2219=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2220=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2221=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
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
float4 l9_2289=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2288.xy,bias(l9_2282));
float4 l9_2290=l9_2289;
if (l9_2220)
{
l9_2290=mix(l9_2221,l9_2290,float4(l9_2224));
}
float4 l9_2291=l9_2290;
l9_2205=l9_2291;
float l9_2292=0.0;
l9_2292=l9_2205.x;
float l9_2293=0.0;
l9_2293=step(l9_2292,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_2294=float4(0.0);
l9_2294=l9_2202*float4(l9_2293);
l9_1977=l9_2294;
l9_1981=l9_1977;
}
l9_1974=l9_1981;
float2 l9_2295=float2(0.0);
l9_2295=l9_1960.Surface_UVCoord0;
float4 l9_2296=float4(0.0);
int l9_2297;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2298=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2298=0;
}
else
{
l9_2298=in.varStereoViewID;
}
int l9_2299=l9_2298;
l9_2297=1-l9_2299;
}
else
{
int l9_2300=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2300=0;
}
else
{
l9_2300=in.varStereoViewID;
}
int l9_2301=l9_2300;
l9_2297=l9_2301;
}
int l9_2302=l9_2297;
int l9_2303=greyMaskIdLayout_tmp;
int l9_2304=l9_2302;
float2 l9_2305=l9_2295;
bool l9_2306=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2307=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2308=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2309=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2310=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2311=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2312=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2313=0.0;
bool l9_2314=l9_2311&&(!l9_2309);
float l9_2315=1.0;
float l9_2316=l9_2305.x;
int l9_2317=l9_2308.x;
if (l9_2317==1)
{
l9_2316=fract(l9_2316);
}
else
{
if (l9_2317==2)
{
float l9_2318=fract(l9_2316);
float l9_2319=l9_2316-l9_2318;
float l9_2320=step(0.25,fract(l9_2319*0.5));
l9_2316=mix(l9_2318,1.0-l9_2318,fast::clamp(l9_2320,0.0,1.0));
}
}
l9_2305.x=l9_2316;
float l9_2321=l9_2305.y;
int l9_2322=l9_2308.y;
if (l9_2322==1)
{
l9_2321=fract(l9_2321);
}
else
{
if (l9_2322==2)
{
float l9_2323=fract(l9_2321);
float l9_2324=l9_2321-l9_2323;
float l9_2325=step(0.25,fract(l9_2324*0.5));
l9_2321=mix(l9_2323,1.0-l9_2323,fast::clamp(l9_2325,0.0,1.0));
}
}
l9_2305.y=l9_2321;
if (l9_2309)
{
bool l9_2326=l9_2311;
bool l9_2327;
if (l9_2326)
{
l9_2327=l9_2308.x==3;
}
else
{
l9_2327=l9_2326;
}
float l9_2328=l9_2305.x;
float l9_2329=l9_2310.x;
float l9_2330=l9_2310.z;
bool l9_2331=l9_2327;
float l9_2332=l9_2315;
float l9_2333=fast::clamp(l9_2328,l9_2329,l9_2330);
float l9_2334=step(abs(l9_2328-l9_2333),9.9999997e-06);
l9_2332*=(l9_2334+((1.0-float(l9_2331))*(1.0-l9_2334)));
l9_2328=l9_2333;
l9_2305.x=l9_2328;
l9_2315=l9_2332;
bool l9_2335=l9_2311;
bool l9_2336;
if (l9_2335)
{
l9_2336=l9_2308.y==3;
}
else
{
l9_2336=l9_2335;
}
float l9_2337=l9_2305.y;
float l9_2338=l9_2310.y;
float l9_2339=l9_2310.w;
bool l9_2340=l9_2336;
float l9_2341=l9_2315;
float l9_2342=fast::clamp(l9_2337,l9_2338,l9_2339);
float l9_2343=step(abs(l9_2337-l9_2342),9.9999997e-06);
l9_2341*=(l9_2343+((1.0-float(l9_2340))*(1.0-l9_2343)));
l9_2337=l9_2342;
l9_2305.y=l9_2337;
l9_2315=l9_2341;
}
float2 l9_2344=l9_2305;
bool l9_2345=l9_2306;
float3x3 l9_2346=l9_2307;
if (l9_2345)
{
l9_2344=float2((l9_2346*float3(l9_2344,1.0)).xy);
}
float2 l9_2347=l9_2344;
l9_2305=l9_2347;
float l9_2348=l9_2305.x;
int l9_2349=l9_2308.x;
bool l9_2350=l9_2314;
float l9_2351=l9_2315;
if ((l9_2349==0)||(l9_2349==3))
{
float l9_2352=l9_2348;
float l9_2353=0.0;
float l9_2354=1.0;
bool l9_2355=l9_2350;
float l9_2356=l9_2351;
float l9_2357=fast::clamp(l9_2352,l9_2353,l9_2354);
float l9_2358=step(abs(l9_2352-l9_2357),9.9999997e-06);
l9_2356*=(l9_2358+((1.0-float(l9_2355))*(1.0-l9_2358)));
l9_2352=l9_2357;
l9_2348=l9_2352;
l9_2351=l9_2356;
}
l9_2305.x=l9_2348;
l9_2315=l9_2351;
float l9_2359=l9_2305.y;
int l9_2360=l9_2308.y;
bool l9_2361=l9_2314;
float l9_2362=l9_2315;
if ((l9_2360==0)||(l9_2360==3))
{
float l9_2363=l9_2359;
float l9_2364=0.0;
float l9_2365=1.0;
bool l9_2366=l9_2361;
float l9_2367=l9_2362;
float l9_2368=fast::clamp(l9_2363,l9_2364,l9_2365);
float l9_2369=step(abs(l9_2363-l9_2368),9.9999997e-06);
l9_2367*=(l9_2369+((1.0-float(l9_2366))*(1.0-l9_2369)));
l9_2363=l9_2368;
l9_2359=l9_2363;
l9_2362=l9_2367;
}
l9_2305.y=l9_2359;
l9_2315=l9_2362;
float2 l9_2370=l9_2305;
int l9_2371=l9_2303;
int l9_2372=l9_2304;
float l9_2373=l9_2313;
float2 l9_2374=l9_2370;
int l9_2375=l9_2371;
int l9_2376=l9_2372;
float3 l9_2377=float3(0.0);
if (l9_2375==0)
{
l9_2377=float3(l9_2374,0.0);
}
else
{
if (l9_2375==1)
{
l9_2377=float3(l9_2374.x,(l9_2374.y*0.5)+(0.5-(float(l9_2376)*0.5)),0.0);
}
else
{
l9_2377=float3(l9_2374,float(l9_2376));
}
}
float3 l9_2378=l9_2377;
float3 l9_2379=l9_2378;
float4 l9_2380=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2379.xy,bias(l9_2373));
float4 l9_2381=l9_2380;
if (l9_2311)
{
l9_2381=mix(l9_2312,l9_2381,float4(l9_2315));
}
float4 l9_2382=l9_2381;
l9_2296=l9_2382;
float l9_2383=0.0;
l9_2383=l9_2296.x;
float l9_2384=0.0;
l9_2384=step(l9_2383,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_2385=float4(0.0);
l9_2385=l9_1974*float4(l9_2384);
float4 l9_2386=float4(0.0);
float4 l9_2387=(*sc_set0.UserUniforms).colorId01;
l9_2386=l9_2387;
float4 l9_2388=float4(0.0);
l9_2388=l9_2386*float4(l9_2384);
float4 l9_2389=float4(0.0);
float4 l9_2390=l9_2385;
float4 l9_2391=l9_2388;
float4 l9_2392=l9_2390;
float4 l9_2393=l9_2391;
float3 l9_2394=l9_2392.xyz*l9_2392.w;
l9_2392=float4(l9_2394.x,l9_2394.y,l9_2394.z,l9_2392.w);
float4 l9_2395=l9_2392+(l9_2393*(1.0-l9_2392.w));
l9_2389=l9_2395;
float4 l9_2396=float4(0.0);
l9_2396=float4(l9_1968)*l9_2389;
float4 l9_2397=float4(0.0);
l9_2397=l9_2396+l9_2389;
l9_1958=l9_2397;
l9_1963=l9_1958;
}
else
{
float4 l9_2398=float4(0.0);
float l9_2399=0.0;
float4 l9_2400=float4(0.0);
float4 l9_2401=float4(0.0);
ssGlobals l9_2402=l9_1960;
float l9_2403=0.0;
float l9_2404=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_2403=l9_2404;
l9_2399=l9_2403;
float4 l9_2405;
if ((l9_2399*1.0)!=0.0)
{
float4 l9_2406=float4(0.0);
float4 l9_2407=(*sc_set0.UserUniforms).patternColorId01;
l9_2406=l9_2407;
float4 l9_2408=float4(0.0);
float l9_2409=0.0;
float4 l9_2410=float4(0.0);
float4 l9_2411=float4(0.0);
ssGlobals l9_2412=l9_2402;
float l9_2413=0.0;
float l9_2414=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_2413=l9_2414;
l9_2409=l9_2413;
float4 l9_2415;
if ((l9_2409*1.0)!=0.0)
{
float2 l9_2416=float2(0.0);
l9_2416=l9_2412.Surface_UVCoord0;
float2 l9_2417=float2(0.0);
float2 l9_2418=(*sc_set0.UserUniforms).patternScaleId01;
l9_2417=l9_2418;
float2 l9_2419=float2(0.0);
l9_2419=((l9_2416-(*sc_set0.UserUniforms).Port_Center_N122)*l9_2417)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_2420=float2(0.0);
float2 l9_2421=(*sc_set0.UserUniforms).patternOffsetId01;
l9_2420=l9_2421;
float2 l9_2422=float2(0.0);
l9_2422=l9_2419+l9_2420;
float l9_2423=0.0;
float l9_2424=(*sc_set0.UserUniforms).patternRotateId01;
l9_2423=l9_2424;
float2 l9_2425=float2(0.0);
float2 l9_2426=l9_2422;
float l9_2427=l9_2423;
float2 l9_2428=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_2429=sin(radians(l9_2427));
float l9_2430=cos(radians(l9_2427));
float2 l9_2431=l9_2426-l9_2428;
l9_2431=float2(dot(float2(l9_2430,l9_2429),l9_2431),dot(float2(-l9_2429,l9_2430),l9_2431))+l9_2428;
l9_2425=l9_2431;
float4 l9_2432=float4(0.0);
int l9_2433;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_2434=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2434=0;
}
else
{
l9_2434=in.varStereoViewID;
}
int l9_2435=l9_2434;
l9_2433=1-l9_2435;
}
else
{
int l9_2436=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2436=0;
}
else
{
l9_2436=in.varStereoViewID;
}
int l9_2437=l9_2436;
l9_2433=l9_2437;
}
int l9_2438=l9_2433;
int l9_2439=patternTextureId01Layout_tmp;
int l9_2440=l9_2438;
float2 l9_2441=l9_2425;
bool l9_2442=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_2443=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_2444=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_2445=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_2446=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_2447=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_2448=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_2449=0.0;
bool l9_2450=l9_2447&&(!l9_2445);
float l9_2451=1.0;
float l9_2452=l9_2441.x;
int l9_2453=l9_2444.x;
if (l9_2453==1)
{
l9_2452=fract(l9_2452);
}
else
{
if (l9_2453==2)
{
float l9_2454=fract(l9_2452);
float l9_2455=l9_2452-l9_2454;
float l9_2456=step(0.25,fract(l9_2455*0.5));
l9_2452=mix(l9_2454,1.0-l9_2454,fast::clamp(l9_2456,0.0,1.0));
}
}
l9_2441.x=l9_2452;
float l9_2457=l9_2441.y;
int l9_2458=l9_2444.y;
if (l9_2458==1)
{
l9_2457=fract(l9_2457);
}
else
{
if (l9_2458==2)
{
float l9_2459=fract(l9_2457);
float l9_2460=l9_2457-l9_2459;
float l9_2461=step(0.25,fract(l9_2460*0.5));
l9_2457=mix(l9_2459,1.0-l9_2459,fast::clamp(l9_2461,0.0,1.0));
}
}
l9_2441.y=l9_2457;
if (l9_2445)
{
bool l9_2462=l9_2447;
bool l9_2463;
if (l9_2462)
{
l9_2463=l9_2444.x==3;
}
else
{
l9_2463=l9_2462;
}
float l9_2464=l9_2441.x;
float l9_2465=l9_2446.x;
float l9_2466=l9_2446.z;
bool l9_2467=l9_2463;
float l9_2468=l9_2451;
float l9_2469=fast::clamp(l9_2464,l9_2465,l9_2466);
float l9_2470=step(abs(l9_2464-l9_2469),9.9999997e-06);
l9_2468*=(l9_2470+((1.0-float(l9_2467))*(1.0-l9_2470)));
l9_2464=l9_2469;
l9_2441.x=l9_2464;
l9_2451=l9_2468;
bool l9_2471=l9_2447;
bool l9_2472;
if (l9_2471)
{
l9_2472=l9_2444.y==3;
}
else
{
l9_2472=l9_2471;
}
float l9_2473=l9_2441.y;
float l9_2474=l9_2446.y;
float l9_2475=l9_2446.w;
bool l9_2476=l9_2472;
float l9_2477=l9_2451;
float l9_2478=fast::clamp(l9_2473,l9_2474,l9_2475);
float l9_2479=step(abs(l9_2473-l9_2478),9.9999997e-06);
l9_2477*=(l9_2479+((1.0-float(l9_2476))*(1.0-l9_2479)));
l9_2473=l9_2478;
l9_2441.y=l9_2473;
l9_2451=l9_2477;
}
float2 l9_2480=l9_2441;
bool l9_2481=l9_2442;
float3x3 l9_2482=l9_2443;
if (l9_2481)
{
l9_2480=float2((l9_2482*float3(l9_2480,1.0)).xy);
}
float2 l9_2483=l9_2480;
l9_2441=l9_2483;
float l9_2484=l9_2441.x;
int l9_2485=l9_2444.x;
bool l9_2486=l9_2450;
float l9_2487=l9_2451;
if ((l9_2485==0)||(l9_2485==3))
{
float l9_2488=l9_2484;
float l9_2489=0.0;
float l9_2490=1.0;
bool l9_2491=l9_2486;
float l9_2492=l9_2487;
float l9_2493=fast::clamp(l9_2488,l9_2489,l9_2490);
float l9_2494=step(abs(l9_2488-l9_2493),9.9999997e-06);
l9_2492*=(l9_2494+((1.0-float(l9_2491))*(1.0-l9_2494)));
l9_2488=l9_2493;
l9_2484=l9_2488;
l9_2487=l9_2492;
}
l9_2441.x=l9_2484;
l9_2451=l9_2487;
float l9_2495=l9_2441.y;
int l9_2496=l9_2444.y;
bool l9_2497=l9_2450;
float l9_2498=l9_2451;
if ((l9_2496==0)||(l9_2496==3))
{
float l9_2499=l9_2495;
float l9_2500=0.0;
float l9_2501=1.0;
bool l9_2502=l9_2497;
float l9_2503=l9_2498;
float l9_2504=fast::clamp(l9_2499,l9_2500,l9_2501);
float l9_2505=step(abs(l9_2499-l9_2504),9.9999997e-06);
l9_2503*=(l9_2505+((1.0-float(l9_2502))*(1.0-l9_2505)));
l9_2499=l9_2504;
l9_2495=l9_2499;
l9_2498=l9_2503;
}
l9_2441.y=l9_2495;
l9_2451=l9_2498;
float2 l9_2506=l9_2441;
int l9_2507=l9_2439;
int l9_2508=l9_2440;
float l9_2509=l9_2449;
float2 l9_2510=l9_2506;
int l9_2511=l9_2507;
int l9_2512=l9_2508;
float3 l9_2513=float3(0.0);
if (l9_2511==0)
{
l9_2513=float3(l9_2510,0.0);
}
else
{
if (l9_2511==1)
{
l9_2513=float3(l9_2510.x,(l9_2510.y*0.5)+(0.5-(float(l9_2512)*0.5)),0.0);
}
else
{
l9_2513=float3(l9_2510,float(l9_2512));
}
}
float3 l9_2514=l9_2513;
float3 l9_2515=l9_2514;
float4 l9_2516=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_2515.xy,bias(l9_2509));
float4 l9_2517=l9_2516;
if (l9_2447)
{
l9_2517=mix(l9_2448,l9_2517,float4(l9_2451));
}
float4 l9_2518=l9_2517;
l9_2432=l9_2518;
l9_2410=l9_2432;
l9_2415=l9_2410;
}
else
{
float2 l9_2519=float2(0.0);
l9_2519=l9_2412.Surface_UVCoord0;
float2 l9_2520=float2(0.0);
float2 l9_2521=(*sc_set0.UserUniforms).patternScaleId01;
l9_2520=l9_2521;
float2 l9_2522=float2(0.0);
l9_2522=((l9_2519-(*sc_set0.UserUniforms).Port_Center_N122)*l9_2520)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_2523=float2(0.0);
float2 l9_2524=(*sc_set0.UserUniforms).patternOffsetId01;
l9_2523=l9_2524;
float2 l9_2525=float2(0.0);
l9_2525=l9_2522+l9_2523;
float l9_2526=0.0;
float l9_2527=(*sc_set0.UserUniforms).patternRotateId01;
l9_2526=l9_2527;
float2 l9_2528=float2(0.0);
float2 l9_2529=l9_2525;
float l9_2530=l9_2526;
float2 l9_2531=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_2532=sin(radians(l9_2530));
float l9_2533=cos(radians(l9_2530));
float2 l9_2534=l9_2529-l9_2531;
l9_2534=float2(dot(float2(l9_2533,l9_2532),l9_2534),dot(float2(-l9_2532,l9_2533),l9_2534))+l9_2531;
l9_2528=l9_2534;
float4 l9_2535=float4(0.0);
int l9_2536;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_2537=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2537=0;
}
else
{
l9_2537=in.varStereoViewID;
}
int l9_2538=l9_2537;
l9_2536=1-l9_2538;
}
else
{
int l9_2539=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2539=0;
}
else
{
l9_2539=in.varStereoViewID;
}
int l9_2540=l9_2539;
l9_2536=l9_2540;
}
int l9_2541=l9_2536;
int l9_2542=patternTextureId01Layout_tmp;
int l9_2543=l9_2541;
float2 l9_2544=l9_2528;
bool l9_2545=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_2546=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_2547=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_2548=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_2549=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_2550=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_2551=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_2552=0.0;
bool l9_2553=l9_2550&&(!l9_2548);
float l9_2554=1.0;
float l9_2555=l9_2544.x;
int l9_2556=l9_2547.x;
if (l9_2556==1)
{
l9_2555=fract(l9_2555);
}
else
{
if (l9_2556==2)
{
float l9_2557=fract(l9_2555);
float l9_2558=l9_2555-l9_2557;
float l9_2559=step(0.25,fract(l9_2558*0.5));
l9_2555=mix(l9_2557,1.0-l9_2557,fast::clamp(l9_2559,0.0,1.0));
}
}
l9_2544.x=l9_2555;
float l9_2560=l9_2544.y;
int l9_2561=l9_2547.y;
if (l9_2561==1)
{
l9_2560=fract(l9_2560);
}
else
{
if (l9_2561==2)
{
float l9_2562=fract(l9_2560);
float l9_2563=l9_2560-l9_2562;
float l9_2564=step(0.25,fract(l9_2563*0.5));
l9_2560=mix(l9_2562,1.0-l9_2562,fast::clamp(l9_2564,0.0,1.0));
}
}
l9_2544.y=l9_2560;
if (l9_2548)
{
bool l9_2565=l9_2550;
bool l9_2566;
if (l9_2565)
{
l9_2566=l9_2547.x==3;
}
else
{
l9_2566=l9_2565;
}
float l9_2567=l9_2544.x;
float l9_2568=l9_2549.x;
float l9_2569=l9_2549.z;
bool l9_2570=l9_2566;
float l9_2571=l9_2554;
float l9_2572=fast::clamp(l9_2567,l9_2568,l9_2569);
float l9_2573=step(abs(l9_2567-l9_2572),9.9999997e-06);
l9_2571*=(l9_2573+((1.0-float(l9_2570))*(1.0-l9_2573)));
l9_2567=l9_2572;
l9_2544.x=l9_2567;
l9_2554=l9_2571;
bool l9_2574=l9_2550;
bool l9_2575;
if (l9_2574)
{
l9_2575=l9_2547.y==3;
}
else
{
l9_2575=l9_2574;
}
float l9_2576=l9_2544.y;
float l9_2577=l9_2549.y;
float l9_2578=l9_2549.w;
bool l9_2579=l9_2575;
float l9_2580=l9_2554;
float l9_2581=fast::clamp(l9_2576,l9_2577,l9_2578);
float l9_2582=step(abs(l9_2576-l9_2581),9.9999997e-06);
l9_2580*=(l9_2582+((1.0-float(l9_2579))*(1.0-l9_2582)));
l9_2576=l9_2581;
l9_2544.y=l9_2576;
l9_2554=l9_2580;
}
float2 l9_2583=l9_2544;
bool l9_2584=l9_2545;
float3x3 l9_2585=l9_2546;
if (l9_2584)
{
l9_2583=float2((l9_2585*float3(l9_2583,1.0)).xy);
}
float2 l9_2586=l9_2583;
l9_2544=l9_2586;
float l9_2587=l9_2544.x;
int l9_2588=l9_2547.x;
bool l9_2589=l9_2553;
float l9_2590=l9_2554;
if ((l9_2588==0)||(l9_2588==3))
{
float l9_2591=l9_2587;
float l9_2592=0.0;
float l9_2593=1.0;
bool l9_2594=l9_2589;
float l9_2595=l9_2590;
float l9_2596=fast::clamp(l9_2591,l9_2592,l9_2593);
float l9_2597=step(abs(l9_2591-l9_2596),9.9999997e-06);
l9_2595*=(l9_2597+((1.0-float(l9_2594))*(1.0-l9_2597)));
l9_2591=l9_2596;
l9_2587=l9_2591;
l9_2590=l9_2595;
}
l9_2544.x=l9_2587;
l9_2554=l9_2590;
float l9_2598=l9_2544.y;
int l9_2599=l9_2547.y;
bool l9_2600=l9_2553;
float l9_2601=l9_2554;
if ((l9_2599==0)||(l9_2599==3))
{
float l9_2602=l9_2598;
float l9_2603=0.0;
float l9_2604=1.0;
bool l9_2605=l9_2600;
float l9_2606=l9_2601;
float l9_2607=fast::clamp(l9_2602,l9_2603,l9_2604);
float l9_2608=step(abs(l9_2602-l9_2607),9.9999997e-06);
l9_2606*=(l9_2608+((1.0-float(l9_2605))*(1.0-l9_2608)));
l9_2602=l9_2607;
l9_2598=l9_2602;
l9_2601=l9_2606;
}
l9_2544.y=l9_2598;
l9_2554=l9_2601;
float2 l9_2609=l9_2544;
int l9_2610=l9_2542;
int l9_2611=l9_2543;
float l9_2612=l9_2552;
float2 l9_2613=l9_2609;
int l9_2614=l9_2610;
int l9_2615=l9_2611;
float3 l9_2616=float3(0.0);
if (l9_2614==0)
{
l9_2616=float3(l9_2613,0.0);
}
else
{
if (l9_2614==1)
{
l9_2616=float3(l9_2613.x,(l9_2613.y*0.5)+(0.5-(float(l9_2615)*0.5)),0.0);
}
else
{
l9_2616=float3(l9_2613,float(l9_2615));
}
}
float3 l9_2617=l9_2616;
float3 l9_2618=l9_2617;
float4 l9_2619=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_2618.xy,bias(l9_2612));
float4 l9_2620=l9_2619;
if (l9_2550)
{
l9_2620=mix(l9_2551,l9_2620,float4(l9_2554));
}
float4 l9_2621=l9_2620;
l9_2535=l9_2621;
float l9_2622=0.0;
float3 l9_2623=l9_2535.xyz;
float l9_2624=l9_2623.x;
l9_2622=l9_2624;
l9_2411=float4(l9_2622);
l9_2415=l9_2411;
}
l9_2408=l9_2415;
float4 l9_2625=float4(0.0);
l9_2625=l9_2406*l9_2408;
l9_2400=l9_2625;
l9_2405=l9_2400;
}
else
{
float4 l9_2626=float4(0.0);
float4 l9_2627=(*sc_set0.UserUniforms).colorId01;
l9_2626=l9_2627;
float2 l9_2628=float2(0.0);
l9_2628=l9_2402.Surface_UVCoord0;
float4 l9_2629=float4(0.0);
int l9_2630;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2631=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2631=0;
}
else
{
l9_2631=in.varStereoViewID;
}
int l9_2632=l9_2631;
l9_2630=1-l9_2632;
}
else
{
int l9_2633=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2633=0;
}
else
{
l9_2633=in.varStereoViewID;
}
int l9_2634=l9_2633;
l9_2630=l9_2634;
}
int l9_2635=l9_2630;
int l9_2636=greyMaskIdLayout_tmp;
int l9_2637=l9_2635;
float2 l9_2638=l9_2628;
bool l9_2639=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2640=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2641=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2642=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2643=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2644=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2645=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2646=0.0;
bool l9_2647=l9_2644&&(!l9_2642);
float l9_2648=1.0;
float l9_2649=l9_2638.x;
int l9_2650=l9_2641.x;
if (l9_2650==1)
{
l9_2649=fract(l9_2649);
}
else
{
if (l9_2650==2)
{
float l9_2651=fract(l9_2649);
float l9_2652=l9_2649-l9_2651;
float l9_2653=step(0.25,fract(l9_2652*0.5));
l9_2649=mix(l9_2651,1.0-l9_2651,fast::clamp(l9_2653,0.0,1.0));
}
}
l9_2638.x=l9_2649;
float l9_2654=l9_2638.y;
int l9_2655=l9_2641.y;
if (l9_2655==1)
{
l9_2654=fract(l9_2654);
}
else
{
if (l9_2655==2)
{
float l9_2656=fract(l9_2654);
float l9_2657=l9_2654-l9_2656;
float l9_2658=step(0.25,fract(l9_2657*0.5));
l9_2654=mix(l9_2656,1.0-l9_2656,fast::clamp(l9_2658,0.0,1.0));
}
}
l9_2638.y=l9_2654;
if (l9_2642)
{
bool l9_2659=l9_2644;
bool l9_2660;
if (l9_2659)
{
l9_2660=l9_2641.x==3;
}
else
{
l9_2660=l9_2659;
}
float l9_2661=l9_2638.x;
float l9_2662=l9_2643.x;
float l9_2663=l9_2643.z;
bool l9_2664=l9_2660;
float l9_2665=l9_2648;
float l9_2666=fast::clamp(l9_2661,l9_2662,l9_2663);
float l9_2667=step(abs(l9_2661-l9_2666),9.9999997e-06);
l9_2665*=(l9_2667+((1.0-float(l9_2664))*(1.0-l9_2667)));
l9_2661=l9_2666;
l9_2638.x=l9_2661;
l9_2648=l9_2665;
bool l9_2668=l9_2644;
bool l9_2669;
if (l9_2668)
{
l9_2669=l9_2641.y==3;
}
else
{
l9_2669=l9_2668;
}
float l9_2670=l9_2638.y;
float l9_2671=l9_2643.y;
float l9_2672=l9_2643.w;
bool l9_2673=l9_2669;
float l9_2674=l9_2648;
float l9_2675=fast::clamp(l9_2670,l9_2671,l9_2672);
float l9_2676=step(abs(l9_2670-l9_2675),9.9999997e-06);
l9_2674*=(l9_2676+((1.0-float(l9_2673))*(1.0-l9_2676)));
l9_2670=l9_2675;
l9_2638.y=l9_2670;
l9_2648=l9_2674;
}
float2 l9_2677=l9_2638;
bool l9_2678=l9_2639;
float3x3 l9_2679=l9_2640;
if (l9_2678)
{
l9_2677=float2((l9_2679*float3(l9_2677,1.0)).xy);
}
float2 l9_2680=l9_2677;
l9_2638=l9_2680;
float l9_2681=l9_2638.x;
int l9_2682=l9_2641.x;
bool l9_2683=l9_2647;
float l9_2684=l9_2648;
if ((l9_2682==0)||(l9_2682==3))
{
float l9_2685=l9_2681;
float l9_2686=0.0;
float l9_2687=1.0;
bool l9_2688=l9_2683;
float l9_2689=l9_2684;
float l9_2690=fast::clamp(l9_2685,l9_2686,l9_2687);
float l9_2691=step(abs(l9_2685-l9_2690),9.9999997e-06);
l9_2689*=(l9_2691+((1.0-float(l9_2688))*(1.0-l9_2691)));
l9_2685=l9_2690;
l9_2681=l9_2685;
l9_2684=l9_2689;
}
l9_2638.x=l9_2681;
l9_2648=l9_2684;
float l9_2692=l9_2638.y;
int l9_2693=l9_2641.y;
bool l9_2694=l9_2647;
float l9_2695=l9_2648;
if ((l9_2693==0)||(l9_2693==3))
{
float l9_2696=l9_2692;
float l9_2697=0.0;
float l9_2698=1.0;
bool l9_2699=l9_2694;
float l9_2700=l9_2695;
float l9_2701=fast::clamp(l9_2696,l9_2697,l9_2698);
float l9_2702=step(abs(l9_2696-l9_2701),9.9999997e-06);
l9_2700*=(l9_2702+((1.0-float(l9_2699))*(1.0-l9_2702)));
l9_2696=l9_2701;
l9_2692=l9_2696;
l9_2695=l9_2700;
}
l9_2638.y=l9_2692;
l9_2648=l9_2695;
float2 l9_2703=l9_2638;
int l9_2704=l9_2636;
int l9_2705=l9_2637;
float l9_2706=l9_2646;
float2 l9_2707=l9_2703;
int l9_2708=l9_2704;
int l9_2709=l9_2705;
float3 l9_2710=float3(0.0);
if (l9_2708==0)
{
l9_2710=float3(l9_2707,0.0);
}
else
{
if (l9_2708==1)
{
l9_2710=float3(l9_2707.x,(l9_2707.y*0.5)+(0.5-(float(l9_2709)*0.5)),0.0);
}
else
{
l9_2710=float3(l9_2707,float(l9_2709));
}
}
float3 l9_2711=l9_2710;
float3 l9_2712=l9_2711;
float4 l9_2713=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2712.xy,bias(l9_2706));
float4 l9_2714=l9_2713;
if (l9_2644)
{
l9_2714=mix(l9_2645,l9_2714,float4(l9_2648));
}
float4 l9_2715=l9_2714;
l9_2629=l9_2715;
float l9_2716=0.0;
l9_2716=l9_2629.x;
float l9_2717=0.0;
l9_2717=step(l9_2716,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_2718=float4(0.0);
l9_2718=l9_2626*float4(l9_2717);
l9_2401=l9_2718;
l9_2405=l9_2401;
}
l9_2398=l9_2405;
float2 l9_2719=float2(0.0);
l9_2719=l9_1960.Surface_UVCoord0;
float4 l9_2720=float4(0.0);
int l9_2721;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_2722=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2722=0;
}
else
{
l9_2722=in.varStereoViewID;
}
int l9_2723=l9_2722;
l9_2721=1-l9_2723;
}
else
{
int l9_2724=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2724=0;
}
else
{
l9_2724=in.varStereoViewID;
}
int l9_2725=l9_2724;
l9_2721=l9_2725;
}
int l9_2726=l9_2721;
int l9_2727=greyMaskIdLayout_tmp;
int l9_2728=l9_2726;
float2 l9_2729=l9_2719;
bool l9_2730=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_2731=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_2732=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_2733=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_2734=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_2735=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_2736=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_2737=0.0;
bool l9_2738=l9_2735&&(!l9_2733);
float l9_2739=1.0;
float l9_2740=l9_2729.x;
int l9_2741=l9_2732.x;
if (l9_2741==1)
{
l9_2740=fract(l9_2740);
}
else
{
if (l9_2741==2)
{
float l9_2742=fract(l9_2740);
float l9_2743=l9_2740-l9_2742;
float l9_2744=step(0.25,fract(l9_2743*0.5));
l9_2740=mix(l9_2742,1.0-l9_2742,fast::clamp(l9_2744,0.0,1.0));
}
}
l9_2729.x=l9_2740;
float l9_2745=l9_2729.y;
int l9_2746=l9_2732.y;
if (l9_2746==1)
{
l9_2745=fract(l9_2745);
}
else
{
if (l9_2746==2)
{
float l9_2747=fract(l9_2745);
float l9_2748=l9_2745-l9_2747;
float l9_2749=step(0.25,fract(l9_2748*0.5));
l9_2745=mix(l9_2747,1.0-l9_2747,fast::clamp(l9_2749,0.0,1.0));
}
}
l9_2729.y=l9_2745;
if (l9_2733)
{
bool l9_2750=l9_2735;
bool l9_2751;
if (l9_2750)
{
l9_2751=l9_2732.x==3;
}
else
{
l9_2751=l9_2750;
}
float l9_2752=l9_2729.x;
float l9_2753=l9_2734.x;
float l9_2754=l9_2734.z;
bool l9_2755=l9_2751;
float l9_2756=l9_2739;
float l9_2757=fast::clamp(l9_2752,l9_2753,l9_2754);
float l9_2758=step(abs(l9_2752-l9_2757),9.9999997e-06);
l9_2756*=(l9_2758+((1.0-float(l9_2755))*(1.0-l9_2758)));
l9_2752=l9_2757;
l9_2729.x=l9_2752;
l9_2739=l9_2756;
bool l9_2759=l9_2735;
bool l9_2760;
if (l9_2759)
{
l9_2760=l9_2732.y==3;
}
else
{
l9_2760=l9_2759;
}
float l9_2761=l9_2729.y;
float l9_2762=l9_2734.y;
float l9_2763=l9_2734.w;
bool l9_2764=l9_2760;
float l9_2765=l9_2739;
float l9_2766=fast::clamp(l9_2761,l9_2762,l9_2763);
float l9_2767=step(abs(l9_2761-l9_2766),9.9999997e-06);
l9_2765*=(l9_2767+((1.0-float(l9_2764))*(1.0-l9_2767)));
l9_2761=l9_2766;
l9_2729.y=l9_2761;
l9_2739=l9_2765;
}
float2 l9_2768=l9_2729;
bool l9_2769=l9_2730;
float3x3 l9_2770=l9_2731;
if (l9_2769)
{
l9_2768=float2((l9_2770*float3(l9_2768,1.0)).xy);
}
float2 l9_2771=l9_2768;
l9_2729=l9_2771;
float l9_2772=l9_2729.x;
int l9_2773=l9_2732.x;
bool l9_2774=l9_2738;
float l9_2775=l9_2739;
if ((l9_2773==0)||(l9_2773==3))
{
float l9_2776=l9_2772;
float l9_2777=0.0;
float l9_2778=1.0;
bool l9_2779=l9_2774;
float l9_2780=l9_2775;
float l9_2781=fast::clamp(l9_2776,l9_2777,l9_2778);
float l9_2782=step(abs(l9_2776-l9_2781),9.9999997e-06);
l9_2780*=(l9_2782+((1.0-float(l9_2779))*(1.0-l9_2782)));
l9_2776=l9_2781;
l9_2772=l9_2776;
l9_2775=l9_2780;
}
l9_2729.x=l9_2772;
l9_2739=l9_2775;
float l9_2783=l9_2729.y;
int l9_2784=l9_2732.y;
bool l9_2785=l9_2738;
float l9_2786=l9_2739;
if ((l9_2784==0)||(l9_2784==3))
{
float l9_2787=l9_2783;
float l9_2788=0.0;
float l9_2789=1.0;
bool l9_2790=l9_2785;
float l9_2791=l9_2786;
float l9_2792=fast::clamp(l9_2787,l9_2788,l9_2789);
float l9_2793=step(abs(l9_2787-l9_2792),9.9999997e-06);
l9_2791*=(l9_2793+((1.0-float(l9_2790))*(1.0-l9_2793)));
l9_2787=l9_2792;
l9_2783=l9_2787;
l9_2786=l9_2791;
}
l9_2729.y=l9_2783;
l9_2739=l9_2786;
float2 l9_2794=l9_2729;
int l9_2795=l9_2727;
int l9_2796=l9_2728;
float l9_2797=l9_2737;
float2 l9_2798=l9_2794;
int l9_2799=l9_2795;
int l9_2800=l9_2796;
float3 l9_2801=float3(0.0);
if (l9_2799==0)
{
l9_2801=float3(l9_2798,0.0);
}
else
{
if (l9_2799==1)
{
l9_2801=float3(l9_2798.x,(l9_2798.y*0.5)+(0.5-(float(l9_2800)*0.5)),0.0);
}
else
{
l9_2801=float3(l9_2798,float(l9_2800));
}
}
float3 l9_2802=l9_2801;
float3 l9_2803=l9_2802;
float4 l9_2804=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_2803.xy,bias(l9_2797));
float4 l9_2805=l9_2804;
if (l9_2735)
{
l9_2805=mix(l9_2736,l9_2805,float4(l9_2739));
}
float4 l9_2806=l9_2805;
l9_2720=l9_2806;
float l9_2807=0.0;
l9_2807=l9_2720.x;
float l9_2808=0.0;
l9_2808=step(l9_2807,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_2809=float4(0.0);
l9_2809=l9_2398*float4(l9_2808);
float4 l9_2810=float4(0.0);
float4 l9_2811=(*sc_set0.UserUniforms).colorId01;
l9_2810=l9_2811;
float4 l9_2812=float4(0.0);
l9_2812=l9_2810*float4(l9_2808);
float4 l9_2813=float4(0.0);
float4 l9_2814=l9_2809;
float4 l9_2815=l9_2812;
float4 l9_2816=l9_2814;
float4 l9_2817=l9_2815;
float3 l9_2818=l9_2816.xyz*l9_2816.w;
l9_2816=float4(l9_2818.x,l9_2818.y,l9_2818.z,l9_2816.w);
float4 l9_2819=l9_2816+(l9_2817*(1.0-l9_2816.w));
l9_2813=l9_2819;
l9_1959=l9_2813;
l9_1963=l9_1959;
}
l9_1956=l9_1963;
float l9_2820=0.0;
float l9_2821=(*sc_set0.UserUniforms).metallicId01;
l9_2820=l9_2821;
float l9_2822=0.0;
float l9_2823=(*sc_set0.UserUniforms).rougnessId01;
l9_2822=l9_2823;
float4 l9_2824=float4(0.0);
float3 l9_2825=l9_1956.xyz;
float l9_2826=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_2827=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_2828=l9_2820;
float l9_2829=l9_2822;
float3 l9_2830=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_2831=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_2832=l9_1952;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_2832.BumpedNormal=l9_2832.VertexNormal_WorldSpace;
}
float l9_2833=l9_2826;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_2833<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2834=gl_FragCoord;
float2 l9_2835=floor(mod(l9_2834.xy,float2(4.0)));
float l9_2836=(mod(dot(l9_2835,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_2833<l9_2836)
{
discard_fragment();
}
}
l9_2825=fast::max(l9_2825,float3(0.0));
float4 l9_2837;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_2837=float4(l9_2825,l9_2826);
}
else
{
l9_2828=fast::clamp(l9_2828,0.0,1.0);
l9_2829=fast::clamp(l9_2829,0.0,1.0);
float3 l9_2838=l9_2825;
float l9_2839=l9_2826;
float3 l9_2840=l9_2832.BumpedNormal;
float3 l9_2841=l9_2832.PositionWS;
float3 l9_2842=l9_2832.ViewDirWS;
float3 l9_2843=l9_2827;
float l9_2844=l9_2828;
float l9_2845=l9_2829;
float3 l9_2846=l9_2830;
float3 l9_2847=l9_2831;
l9_2837=ngsCalculateLighting(l9_2838,l9_2839,l9_2840,l9_2841,l9_2842,l9_2843,l9_2844,l9_2845,l9_2846,l9_2847,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_2837=fast::max(l9_2837,float4(0.0));
l9_2824=l9_2837;
l9_1950=l9_2824;
l9_1955=l9_1950;
}
else
{
float4 l9_2848=float4(0.0);
float l9_2849=0.0;
float4 l9_2850=float4(0.0);
float4 l9_2851=float4(0.0);
ssGlobals l9_2852=l9_1952;
float l9_2853=0.0;
float l9_2854=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_2853=l9_2854;
l9_2849=l9_2853;
float4 l9_2855;
if ((l9_2849*1.0)!=0.0)
{
float l9_2856=0.0;
float l9_2857=(*sc_set0.UserUniforms).rimExpId01;
l9_2856=l9_2857;
float l9_2858=0.0;
float l9_2859=(*sc_set0.UserUniforms).rimIntId01;
l9_2858=l9_2859;
float l9_2860=0.0;
float l9_2861=l9_2856;
float l9_2862=l9_2858;
ssGlobals l9_2863=l9_2852;
float l9_2864=abs(dot(-l9_2863.ViewDirWS,l9_2863.VertexNormal_WorldSpace));
float l9_2865=1.0-pow(1.0-l9_2864,l9_2861);
l9_2865=fast::max(l9_2865,0.0);
l9_2865*=l9_2862;
l9_2860=l9_2865;
float4 l9_2866=float4(0.0);
float l9_2867=0.0;
float4 l9_2868=float4(0.0);
float4 l9_2869=float4(0.0);
ssGlobals l9_2870=l9_2852;
float l9_2871=0.0;
float l9_2872=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_2871=l9_2872;
l9_2867=l9_2871;
float4 l9_2873;
if ((l9_2867*1.0)!=0.0)
{
float4 l9_2874=float4(0.0);
float4 l9_2875=(*sc_set0.UserUniforms).patternColorId01;
l9_2874=l9_2875;
float4 l9_2876=float4(0.0);
float l9_2877=0.0;
float4 l9_2878=float4(0.0);
float4 l9_2879=float4(0.0);
ssGlobals l9_2880=l9_2870;
float l9_2881=0.0;
float l9_2882=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_2881=l9_2882;
l9_2877=l9_2881;
float4 l9_2883;
if ((l9_2877*1.0)!=0.0)
{
float2 l9_2884=float2(0.0);
l9_2884=l9_2880.Surface_UVCoord0;
float2 l9_2885=float2(0.0);
float2 l9_2886=(*sc_set0.UserUniforms).patternScaleId01;
l9_2885=l9_2886;
float2 l9_2887=float2(0.0);
l9_2887=((l9_2884-(*sc_set0.UserUniforms).Port_Center_N122)*l9_2885)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_2888=float2(0.0);
float2 l9_2889=(*sc_set0.UserUniforms).patternOffsetId01;
l9_2888=l9_2889;
float2 l9_2890=float2(0.0);
l9_2890=l9_2887+l9_2888;
float l9_2891=0.0;
float l9_2892=(*sc_set0.UserUniforms).patternRotateId01;
l9_2891=l9_2892;
float2 l9_2893=float2(0.0);
float2 l9_2894=l9_2890;
float l9_2895=l9_2891;
float2 l9_2896=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_2897=sin(radians(l9_2895));
float l9_2898=cos(radians(l9_2895));
float2 l9_2899=l9_2894-l9_2896;
l9_2899=float2(dot(float2(l9_2898,l9_2897),l9_2899),dot(float2(-l9_2897,l9_2898),l9_2899))+l9_2896;
l9_2893=l9_2899;
float4 l9_2900=float4(0.0);
int l9_2901;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_2902=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2902=0;
}
else
{
l9_2902=in.varStereoViewID;
}
int l9_2903=l9_2902;
l9_2901=1-l9_2903;
}
else
{
int l9_2904=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2904=0;
}
else
{
l9_2904=in.varStereoViewID;
}
int l9_2905=l9_2904;
l9_2901=l9_2905;
}
int l9_2906=l9_2901;
int l9_2907=patternTextureId01Layout_tmp;
int l9_2908=l9_2906;
float2 l9_2909=l9_2893;
bool l9_2910=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_2911=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_2912=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_2913=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_2914=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_2915=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_2916=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_2917=0.0;
bool l9_2918=l9_2915&&(!l9_2913);
float l9_2919=1.0;
float l9_2920=l9_2909.x;
int l9_2921=l9_2912.x;
if (l9_2921==1)
{
l9_2920=fract(l9_2920);
}
else
{
if (l9_2921==2)
{
float l9_2922=fract(l9_2920);
float l9_2923=l9_2920-l9_2922;
float l9_2924=step(0.25,fract(l9_2923*0.5));
l9_2920=mix(l9_2922,1.0-l9_2922,fast::clamp(l9_2924,0.0,1.0));
}
}
l9_2909.x=l9_2920;
float l9_2925=l9_2909.y;
int l9_2926=l9_2912.y;
if (l9_2926==1)
{
l9_2925=fract(l9_2925);
}
else
{
if (l9_2926==2)
{
float l9_2927=fract(l9_2925);
float l9_2928=l9_2925-l9_2927;
float l9_2929=step(0.25,fract(l9_2928*0.5));
l9_2925=mix(l9_2927,1.0-l9_2927,fast::clamp(l9_2929,0.0,1.0));
}
}
l9_2909.y=l9_2925;
if (l9_2913)
{
bool l9_2930=l9_2915;
bool l9_2931;
if (l9_2930)
{
l9_2931=l9_2912.x==3;
}
else
{
l9_2931=l9_2930;
}
float l9_2932=l9_2909.x;
float l9_2933=l9_2914.x;
float l9_2934=l9_2914.z;
bool l9_2935=l9_2931;
float l9_2936=l9_2919;
float l9_2937=fast::clamp(l9_2932,l9_2933,l9_2934);
float l9_2938=step(abs(l9_2932-l9_2937),9.9999997e-06);
l9_2936*=(l9_2938+((1.0-float(l9_2935))*(1.0-l9_2938)));
l9_2932=l9_2937;
l9_2909.x=l9_2932;
l9_2919=l9_2936;
bool l9_2939=l9_2915;
bool l9_2940;
if (l9_2939)
{
l9_2940=l9_2912.y==3;
}
else
{
l9_2940=l9_2939;
}
float l9_2941=l9_2909.y;
float l9_2942=l9_2914.y;
float l9_2943=l9_2914.w;
bool l9_2944=l9_2940;
float l9_2945=l9_2919;
float l9_2946=fast::clamp(l9_2941,l9_2942,l9_2943);
float l9_2947=step(abs(l9_2941-l9_2946),9.9999997e-06);
l9_2945*=(l9_2947+((1.0-float(l9_2944))*(1.0-l9_2947)));
l9_2941=l9_2946;
l9_2909.y=l9_2941;
l9_2919=l9_2945;
}
float2 l9_2948=l9_2909;
bool l9_2949=l9_2910;
float3x3 l9_2950=l9_2911;
if (l9_2949)
{
l9_2948=float2((l9_2950*float3(l9_2948,1.0)).xy);
}
float2 l9_2951=l9_2948;
l9_2909=l9_2951;
float l9_2952=l9_2909.x;
int l9_2953=l9_2912.x;
bool l9_2954=l9_2918;
float l9_2955=l9_2919;
if ((l9_2953==0)||(l9_2953==3))
{
float l9_2956=l9_2952;
float l9_2957=0.0;
float l9_2958=1.0;
bool l9_2959=l9_2954;
float l9_2960=l9_2955;
float l9_2961=fast::clamp(l9_2956,l9_2957,l9_2958);
float l9_2962=step(abs(l9_2956-l9_2961),9.9999997e-06);
l9_2960*=(l9_2962+((1.0-float(l9_2959))*(1.0-l9_2962)));
l9_2956=l9_2961;
l9_2952=l9_2956;
l9_2955=l9_2960;
}
l9_2909.x=l9_2952;
l9_2919=l9_2955;
float l9_2963=l9_2909.y;
int l9_2964=l9_2912.y;
bool l9_2965=l9_2918;
float l9_2966=l9_2919;
if ((l9_2964==0)||(l9_2964==3))
{
float l9_2967=l9_2963;
float l9_2968=0.0;
float l9_2969=1.0;
bool l9_2970=l9_2965;
float l9_2971=l9_2966;
float l9_2972=fast::clamp(l9_2967,l9_2968,l9_2969);
float l9_2973=step(abs(l9_2967-l9_2972),9.9999997e-06);
l9_2971*=(l9_2973+((1.0-float(l9_2970))*(1.0-l9_2973)));
l9_2967=l9_2972;
l9_2963=l9_2967;
l9_2966=l9_2971;
}
l9_2909.y=l9_2963;
l9_2919=l9_2966;
float2 l9_2974=l9_2909;
int l9_2975=l9_2907;
int l9_2976=l9_2908;
float l9_2977=l9_2917;
float2 l9_2978=l9_2974;
int l9_2979=l9_2975;
int l9_2980=l9_2976;
float3 l9_2981=float3(0.0);
if (l9_2979==0)
{
l9_2981=float3(l9_2978,0.0);
}
else
{
if (l9_2979==1)
{
l9_2981=float3(l9_2978.x,(l9_2978.y*0.5)+(0.5-(float(l9_2980)*0.5)),0.0);
}
else
{
l9_2981=float3(l9_2978,float(l9_2980));
}
}
float3 l9_2982=l9_2981;
float3 l9_2983=l9_2982;
float4 l9_2984=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_2983.xy,bias(l9_2977));
float4 l9_2985=l9_2984;
if (l9_2915)
{
l9_2985=mix(l9_2916,l9_2985,float4(l9_2919));
}
float4 l9_2986=l9_2985;
l9_2900=l9_2986;
l9_2878=l9_2900;
l9_2883=l9_2878;
}
else
{
float2 l9_2987=float2(0.0);
l9_2987=l9_2880.Surface_UVCoord0;
float2 l9_2988=float2(0.0);
float2 l9_2989=(*sc_set0.UserUniforms).patternScaleId01;
l9_2988=l9_2989;
float2 l9_2990=float2(0.0);
l9_2990=((l9_2987-(*sc_set0.UserUniforms).Port_Center_N122)*l9_2988)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_2991=float2(0.0);
float2 l9_2992=(*sc_set0.UserUniforms).patternOffsetId01;
l9_2991=l9_2992;
float2 l9_2993=float2(0.0);
l9_2993=l9_2990+l9_2991;
float l9_2994=0.0;
float l9_2995=(*sc_set0.UserUniforms).patternRotateId01;
l9_2994=l9_2995;
float2 l9_2996=float2(0.0);
float2 l9_2997=l9_2993;
float l9_2998=l9_2994;
float2 l9_2999=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3000=sin(radians(l9_2998));
float l9_3001=cos(radians(l9_2998));
float2 l9_3002=l9_2997-l9_2999;
l9_3002=float2(dot(float2(l9_3001,l9_3000),l9_3002),dot(float2(-l9_3000,l9_3001),l9_3002))+l9_2999;
l9_2996=l9_3002;
float4 l9_3003=float4(0.0);
int l9_3004;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3005=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3005=0;
}
else
{
l9_3005=in.varStereoViewID;
}
int l9_3006=l9_3005;
l9_3004=1-l9_3006;
}
else
{
int l9_3007=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3007=0;
}
else
{
l9_3007=in.varStereoViewID;
}
int l9_3008=l9_3007;
l9_3004=l9_3008;
}
int l9_3009=l9_3004;
int l9_3010=patternTextureId01Layout_tmp;
int l9_3011=l9_3009;
float2 l9_3012=l9_2996;
bool l9_3013=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3014=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3015=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3016=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3017=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3018=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3019=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3020=0.0;
bool l9_3021=l9_3018&&(!l9_3016);
float l9_3022=1.0;
float l9_3023=l9_3012.x;
int l9_3024=l9_3015.x;
if (l9_3024==1)
{
l9_3023=fract(l9_3023);
}
else
{
if (l9_3024==2)
{
float l9_3025=fract(l9_3023);
float l9_3026=l9_3023-l9_3025;
float l9_3027=step(0.25,fract(l9_3026*0.5));
l9_3023=mix(l9_3025,1.0-l9_3025,fast::clamp(l9_3027,0.0,1.0));
}
}
l9_3012.x=l9_3023;
float l9_3028=l9_3012.y;
int l9_3029=l9_3015.y;
if (l9_3029==1)
{
l9_3028=fract(l9_3028);
}
else
{
if (l9_3029==2)
{
float l9_3030=fract(l9_3028);
float l9_3031=l9_3028-l9_3030;
float l9_3032=step(0.25,fract(l9_3031*0.5));
l9_3028=mix(l9_3030,1.0-l9_3030,fast::clamp(l9_3032,0.0,1.0));
}
}
l9_3012.y=l9_3028;
if (l9_3016)
{
bool l9_3033=l9_3018;
bool l9_3034;
if (l9_3033)
{
l9_3034=l9_3015.x==3;
}
else
{
l9_3034=l9_3033;
}
float l9_3035=l9_3012.x;
float l9_3036=l9_3017.x;
float l9_3037=l9_3017.z;
bool l9_3038=l9_3034;
float l9_3039=l9_3022;
float l9_3040=fast::clamp(l9_3035,l9_3036,l9_3037);
float l9_3041=step(abs(l9_3035-l9_3040),9.9999997e-06);
l9_3039*=(l9_3041+((1.0-float(l9_3038))*(1.0-l9_3041)));
l9_3035=l9_3040;
l9_3012.x=l9_3035;
l9_3022=l9_3039;
bool l9_3042=l9_3018;
bool l9_3043;
if (l9_3042)
{
l9_3043=l9_3015.y==3;
}
else
{
l9_3043=l9_3042;
}
float l9_3044=l9_3012.y;
float l9_3045=l9_3017.y;
float l9_3046=l9_3017.w;
bool l9_3047=l9_3043;
float l9_3048=l9_3022;
float l9_3049=fast::clamp(l9_3044,l9_3045,l9_3046);
float l9_3050=step(abs(l9_3044-l9_3049),9.9999997e-06);
l9_3048*=(l9_3050+((1.0-float(l9_3047))*(1.0-l9_3050)));
l9_3044=l9_3049;
l9_3012.y=l9_3044;
l9_3022=l9_3048;
}
float2 l9_3051=l9_3012;
bool l9_3052=l9_3013;
float3x3 l9_3053=l9_3014;
if (l9_3052)
{
l9_3051=float2((l9_3053*float3(l9_3051,1.0)).xy);
}
float2 l9_3054=l9_3051;
l9_3012=l9_3054;
float l9_3055=l9_3012.x;
int l9_3056=l9_3015.x;
bool l9_3057=l9_3021;
float l9_3058=l9_3022;
if ((l9_3056==0)||(l9_3056==3))
{
float l9_3059=l9_3055;
float l9_3060=0.0;
float l9_3061=1.0;
bool l9_3062=l9_3057;
float l9_3063=l9_3058;
float l9_3064=fast::clamp(l9_3059,l9_3060,l9_3061);
float l9_3065=step(abs(l9_3059-l9_3064),9.9999997e-06);
l9_3063*=(l9_3065+((1.0-float(l9_3062))*(1.0-l9_3065)));
l9_3059=l9_3064;
l9_3055=l9_3059;
l9_3058=l9_3063;
}
l9_3012.x=l9_3055;
l9_3022=l9_3058;
float l9_3066=l9_3012.y;
int l9_3067=l9_3015.y;
bool l9_3068=l9_3021;
float l9_3069=l9_3022;
if ((l9_3067==0)||(l9_3067==3))
{
float l9_3070=l9_3066;
float l9_3071=0.0;
float l9_3072=1.0;
bool l9_3073=l9_3068;
float l9_3074=l9_3069;
float l9_3075=fast::clamp(l9_3070,l9_3071,l9_3072);
float l9_3076=step(abs(l9_3070-l9_3075),9.9999997e-06);
l9_3074*=(l9_3076+((1.0-float(l9_3073))*(1.0-l9_3076)));
l9_3070=l9_3075;
l9_3066=l9_3070;
l9_3069=l9_3074;
}
l9_3012.y=l9_3066;
l9_3022=l9_3069;
float2 l9_3077=l9_3012;
int l9_3078=l9_3010;
int l9_3079=l9_3011;
float l9_3080=l9_3020;
float2 l9_3081=l9_3077;
int l9_3082=l9_3078;
int l9_3083=l9_3079;
float3 l9_3084=float3(0.0);
if (l9_3082==0)
{
l9_3084=float3(l9_3081,0.0);
}
else
{
if (l9_3082==1)
{
l9_3084=float3(l9_3081.x,(l9_3081.y*0.5)+(0.5-(float(l9_3083)*0.5)),0.0);
}
else
{
l9_3084=float3(l9_3081,float(l9_3083));
}
}
float3 l9_3085=l9_3084;
float3 l9_3086=l9_3085;
float4 l9_3087=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_3086.xy,bias(l9_3080));
float4 l9_3088=l9_3087;
if (l9_3018)
{
l9_3088=mix(l9_3019,l9_3088,float4(l9_3022));
}
float4 l9_3089=l9_3088;
l9_3003=l9_3089;
float l9_3090=0.0;
float3 l9_3091=l9_3003.xyz;
float l9_3092=l9_3091.x;
l9_3090=l9_3092;
l9_2879=float4(l9_3090);
l9_2883=l9_2879;
}
l9_2876=l9_2883;
float4 l9_3093=float4(0.0);
l9_3093=l9_2874*l9_2876;
l9_2868=l9_3093;
l9_2873=l9_2868;
}
else
{
float4 l9_3094=float4(0.0);
float4 l9_3095=(*sc_set0.UserUniforms).colorId01;
l9_3094=l9_3095;
float2 l9_3096=float2(0.0);
l9_3096=l9_2870.Surface_UVCoord0;
float4 l9_3097=float4(0.0);
int l9_3098;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3099=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3099=0;
}
else
{
l9_3099=in.varStereoViewID;
}
int l9_3100=l9_3099;
l9_3098=1-l9_3100;
}
else
{
int l9_3101=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3101=0;
}
else
{
l9_3101=in.varStereoViewID;
}
int l9_3102=l9_3101;
l9_3098=l9_3102;
}
int l9_3103=l9_3098;
int l9_3104=greyMaskIdLayout_tmp;
int l9_3105=l9_3103;
float2 l9_3106=l9_3096;
bool l9_3107=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3108=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3109=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3110=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3111=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3112=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3113=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3114=0.0;
bool l9_3115=l9_3112&&(!l9_3110);
float l9_3116=1.0;
float l9_3117=l9_3106.x;
int l9_3118=l9_3109.x;
if (l9_3118==1)
{
l9_3117=fract(l9_3117);
}
else
{
if (l9_3118==2)
{
float l9_3119=fract(l9_3117);
float l9_3120=l9_3117-l9_3119;
float l9_3121=step(0.25,fract(l9_3120*0.5));
l9_3117=mix(l9_3119,1.0-l9_3119,fast::clamp(l9_3121,0.0,1.0));
}
}
l9_3106.x=l9_3117;
float l9_3122=l9_3106.y;
int l9_3123=l9_3109.y;
if (l9_3123==1)
{
l9_3122=fract(l9_3122);
}
else
{
if (l9_3123==2)
{
float l9_3124=fract(l9_3122);
float l9_3125=l9_3122-l9_3124;
float l9_3126=step(0.25,fract(l9_3125*0.5));
l9_3122=mix(l9_3124,1.0-l9_3124,fast::clamp(l9_3126,0.0,1.0));
}
}
l9_3106.y=l9_3122;
if (l9_3110)
{
bool l9_3127=l9_3112;
bool l9_3128;
if (l9_3127)
{
l9_3128=l9_3109.x==3;
}
else
{
l9_3128=l9_3127;
}
float l9_3129=l9_3106.x;
float l9_3130=l9_3111.x;
float l9_3131=l9_3111.z;
bool l9_3132=l9_3128;
float l9_3133=l9_3116;
float l9_3134=fast::clamp(l9_3129,l9_3130,l9_3131);
float l9_3135=step(abs(l9_3129-l9_3134),9.9999997e-06);
l9_3133*=(l9_3135+((1.0-float(l9_3132))*(1.0-l9_3135)));
l9_3129=l9_3134;
l9_3106.x=l9_3129;
l9_3116=l9_3133;
bool l9_3136=l9_3112;
bool l9_3137;
if (l9_3136)
{
l9_3137=l9_3109.y==3;
}
else
{
l9_3137=l9_3136;
}
float l9_3138=l9_3106.y;
float l9_3139=l9_3111.y;
float l9_3140=l9_3111.w;
bool l9_3141=l9_3137;
float l9_3142=l9_3116;
float l9_3143=fast::clamp(l9_3138,l9_3139,l9_3140);
float l9_3144=step(abs(l9_3138-l9_3143),9.9999997e-06);
l9_3142*=(l9_3144+((1.0-float(l9_3141))*(1.0-l9_3144)));
l9_3138=l9_3143;
l9_3106.y=l9_3138;
l9_3116=l9_3142;
}
float2 l9_3145=l9_3106;
bool l9_3146=l9_3107;
float3x3 l9_3147=l9_3108;
if (l9_3146)
{
l9_3145=float2((l9_3147*float3(l9_3145,1.0)).xy);
}
float2 l9_3148=l9_3145;
l9_3106=l9_3148;
float l9_3149=l9_3106.x;
int l9_3150=l9_3109.x;
bool l9_3151=l9_3115;
float l9_3152=l9_3116;
if ((l9_3150==0)||(l9_3150==3))
{
float l9_3153=l9_3149;
float l9_3154=0.0;
float l9_3155=1.0;
bool l9_3156=l9_3151;
float l9_3157=l9_3152;
float l9_3158=fast::clamp(l9_3153,l9_3154,l9_3155);
float l9_3159=step(abs(l9_3153-l9_3158),9.9999997e-06);
l9_3157*=(l9_3159+((1.0-float(l9_3156))*(1.0-l9_3159)));
l9_3153=l9_3158;
l9_3149=l9_3153;
l9_3152=l9_3157;
}
l9_3106.x=l9_3149;
l9_3116=l9_3152;
float l9_3160=l9_3106.y;
int l9_3161=l9_3109.y;
bool l9_3162=l9_3115;
float l9_3163=l9_3116;
if ((l9_3161==0)||(l9_3161==3))
{
float l9_3164=l9_3160;
float l9_3165=0.0;
float l9_3166=1.0;
bool l9_3167=l9_3162;
float l9_3168=l9_3163;
float l9_3169=fast::clamp(l9_3164,l9_3165,l9_3166);
float l9_3170=step(abs(l9_3164-l9_3169),9.9999997e-06);
l9_3168*=(l9_3170+((1.0-float(l9_3167))*(1.0-l9_3170)));
l9_3164=l9_3169;
l9_3160=l9_3164;
l9_3163=l9_3168;
}
l9_3106.y=l9_3160;
l9_3116=l9_3163;
float2 l9_3171=l9_3106;
int l9_3172=l9_3104;
int l9_3173=l9_3105;
float l9_3174=l9_3114;
float2 l9_3175=l9_3171;
int l9_3176=l9_3172;
int l9_3177=l9_3173;
float3 l9_3178=float3(0.0);
if (l9_3176==0)
{
l9_3178=float3(l9_3175,0.0);
}
else
{
if (l9_3176==1)
{
l9_3178=float3(l9_3175.x,(l9_3175.y*0.5)+(0.5-(float(l9_3177)*0.5)),0.0);
}
else
{
l9_3178=float3(l9_3175,float(l9_3177));
}
}
float3 l9_3179=l9_3178;
float3 l9_3180=l9_3179;
float4 l9_3181=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3180.xy,bias(l9_3174));
float4 l9_3182=l9_3181;
if (l9_3112)
{
l9_3182=mix(l9_3113,l9_3182,float4(l9_3116));
}
float4 l9_3183=l9_3182;
l9_3097=l9_3183;
float l9_3184=0.0;
l9_3184=l9_3097.x;
float l9_3185=0.0;
l9_3185=step(l9_3184,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_3186=float4(0.0);
l9_3186=l9_3094*float4(l9_3185);
l9_2869=l9_3186;
l9_2873=l9_2869;
}
l9_2866=l9_2873;
float2 l9_3187=float2(0.0);
l9_3187=l9_2852.Surface_UVCoord0;
float4 l9_3188=float4(0.0);
int l9_3189;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3190=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3190=0;
}
else
{
l9_3190=in.varStereoViewID;
}
int l9_3191=l9_3190;
l9_3189=1-l9_3191;
}
else
{
int l9_3192=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3192=0;
}
else
{
l9_3192=in.varStereoViewID;
}
int l9_3193=l9_3192;
l9_3189=l9_3193;
}
int l9_3194=l9_3189;
int l9_3195=greyMaskIdLayout_tmp;
int l9_3196=l9_3194;
float2 l9_3197=l9_3187;
bool l9_3198=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3199=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3200=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3201=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3202=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3203=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3204=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3205=0.0;
bool l9_3206=l9_3203&&(!l9_3201);
float l9_3207=1.0;
float l9_3208=l9_3197.x;
int l9_3209=l9_3200.x;
if (l9_3209==1)
{
l9_3208=fract(l9_3208);
}
else
{
if (l9_3209==2)
{
float l9_3210=fract(l9_3208);
float l9_3211=l9_3208-l9_3210;
float l9_3212=step(0.25,fract(l9_3211*0.5));
l9_3208=mix(l9_3210,1.0-l9_3210,fast::clamp(l9_3212,0.0,1.0));
}
}
l9_3197.x=l9_3208;
float l9_3213=l9_3197.y;
int l9_3214=l9_3200.y;
if (l9_3214==1)
{
l9_3213=fract(l9_3213);
}
else
{
if (l9_3214==2)
{
float l9_3215=fract(l9_3213);
float l9_3216=l9_3213-l9_3215;
float l9_3217=step(0.25,fract(l9_3216*0.5));
l9_3213=mix(l9_3215,1.0-l9_3215,fast::clamp(l9_3217,0.0,1.0));
}
}
l9_3197.y=l9_3213;
if (l9_3201)
{
bool l9_3218=l9_3203;
bool l9_3219;
if (l9_3218)
{
l9_3219=l9_3200.x==3;
}
else
{
l9_3219=l9_3218;
}
float l9_3220=l9_3197.x;
float l9_3221=l9_3202.x;
float l9_3222=l9_3202.z;
bool l9_3223=l9_3219;
float l9_3224=l9_3207;
float l9_3225=fast::clamp(l9_3220,l9_3221,l9_3222);
float l9_3226=step(abs(l9_3220-l9_3225),9.9999997e-06);
l9_3224*=(l9_3226+((1.0-float(l9_3223))*(1.0-l9_3226)));
l9_3220=l9_3225;
l9_3197.x=l9_3220;
l9_3207=l9_3224;
bool l9_3227=l9_3203;
bool l9_3228;
if (l9_3227)
{
l9_3228=l9_3200.y==3;
}
else
{
l9_3228=l9_3227;
}
float l9_3229=l9_3197.y;
float l9_3230=l9_3202.y;
float l9_3231=l9_3202.w;
bool l9_3232=l9_3228;
float l9_3233=l9_3207;
float l9_3234=fast::clamp(l9_3229,l9_3230,l9_3231);
float l9_3235=step(abs(l9_3229-l9_3234),9.9999997e-06);
l9_3233*=(l9_3235+((1.0-float(l9_3232))*(1.0-l9_3235)));
l9_3229=l9_3234;
l9_3197.y=l9_3229;
l9_3207=l9_3233;
}
float2 l9_3236=l9_3197;
bool l9_3237=l9_3198;
float3x3 l9_3238=l9_3199;
if (l9_3237)
{
l9_3236=float2((l9_3238*float3(l9_3236,1.0)).xy);
}
float2 l9_3239=l9_3236;
l9_3197=l9_3239;
float l9_3240=l9_3197.x;
int l9_3241=l9_3200.x;
bool l9_3242=l9_3206;
float l9_3243=l9_3207;
if ((l9_3241==0)||(l9_3241==3))
{
float l9_3244=l9_3240;
float l9_3245=0.0;
float l9_3246=1.0;
bool l9_3247=l9_3242;
float l9_3248=l9_3243;
float l9_3249=fast::clamp(l9_3244,l9_3245,l9_3246);
float l9_3250=step(abs(l9_3244-l9_3249),9.9999997e-06);
l9_3248*=(l9_3250+((1.0-float(l9_3247))*(1.0-l9_3250)));
l9_3244=l9_3249;
l9_3240=l9_3244;
l9_3243=l9_3248;
}
l9_3197.x=l9_3240;
l9_3207=l9_3243;
float l9_3251=l9_3197.y;
int l9_3252=l9_3200.y;
bool l9_3253=l9_3206;
float l9_3254=l9_3207;
if ((l9_3252==0)||(l9_3252==3))
{
float l9_3255=l9_3251;
float l9_3256=0.0;
float l9_3257=1.0;
bool l9_3258=l9_3253;
float l9_3259=l9_3254;
float l9_3260=fast::clamp(l9_3255,l9_3256,l9_3257);
float l9_3261=step(abs(l9_3255-l9_3260),9.9999997e-06);
l9_3259*=(l9_3261+((1.0-float(l9_3258))*(1.0-l9_3261)));
l9_3255=l9_3260;
l9_3251=l9_3255;
l9_3254=l9_3259;
}
l9_3197.y=l9_3251;
l9_3207=l9_3254;
float2 l9_3262=l9_3197;
int l9_3263=l9_3195;
int l9_3264=l9_3196;
float l9_3265=l9_3205;
float2 l9_3266=l9_3262;
int l9_3267=l9_3263;
int l9_3268=l9_3264;
float3 l9_3269=float3(0.0);
if (l9_3267==0)
{
l9_3269=float3(l9_3266,0.0);
}
else
{
if (l9_3267==1)
{
l9_3269=float3(l9_3266.x,(l9_3266.y*0.5)+(0.5-(float(l9_3268)*0.5)),0.0);
}
else
{
l9_3269=float3(l9_3266,float(l9_3268));
}
}
float3 l9_3270=l9_3269;
float3 l9_3271=l9_3270;
float4 l9_3272=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3271.xy,bias(l9_3265));
float4 l9_3273=l9_3272;
if (l9_3203)
{
l9_3273=mix(l9_3204,l9_3273,float4(l9_3207));
}
float4 l9_3274=l9_3273;
l9_3188=l9_3274;
float l9_3275=0.0;
l9_3275=l9_3188.x;
float l9_3276=0.0;
l9_3276=step(l9_3275,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_3277=float4(0.0);
l9_3277=l9_2866*float4(l9_3276);
float4 l9_3278=float4(0.0);
float4 l9_3279=(*sc_set0.UserUniforms).colorId01;
l9_3278=l9_3279;
float4 l9_3280=float4(0.0);
l9_3280=l9_3278*float4(l9_3276);
float4 l9_3281=float4(0.0);
float4 l9_3282=l9_3277;
float4 l9_3283=l9_3280;
float4 l9_3284=l9_3282;
float4 l9_3285=l9_3283;
float3 l9_3286=l9_3284.xyz*l9_3284.w;
l9_3284=float4(l9_3286.x,l9_3286.y,l9_3286.z,l9_3284.w);
float4 l9_3287=l9_3284+(l9_3285*(1.0-l9_3284.w));
l9_3281=l9_3287;
float4 l9_3288=float4(0.0);
l9_3288=float4(l9_2860)*l9_3281;
float4 l9_3289=float4(0.0);
l9_3289=l9_3288+l9_3281;
l9_2850=l9_3289;
l9_2855=l9_2850;
}
else
{
float4 l9_3290=float4(0.0);
float l9_3291=0.0;
float4 l9_3292=float4(0.0);
float4 l9_3293=float4(0.0);
ssGlobals l9_3294=l9_2852;
float l9_3295=0.0;
float l9_3296=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_3295=l9_3296;
l9_3291=l9_3295;
float4 l9_3297;
if ((l9_3291*1.0)!=0.0)
{
float4 l9_3298=float4(0.0);
float4 l9_3299=(*sc_set0.UserUniforms).patternColorId01;
l9_3298=l9_3299;
float4 l9_3300=float4(0.0);
float l9_3301=0.0;
float4 l9_3302=float4(0.0);
float4 l9_3303=float4(0.0);
ssGlobals l9_3304=l9_3294;
float l9_3305=0.0;
float l9_3306=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_3305=l9_3306;
l9_3301=l9_3305;
float4 l9_3307;
if ((l9_3301*1.0)!=0.0)
{
float2 l9_3308=float2(0.0);
l9_3308=l9_3304.Surface_UVCoord0;
float2 l9_3309=float2(0.0);
float2 l9_3310=(*sc_set0.UserUniforms).patternScaleId01;
l9_3309=l9_3310;
float2 l9_3311=float2(0.0);
l9_3311=((l9_3308-(*sc_set0.UserUniforms).Port_Center_N122)*l9_3309)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_3312=float2(0.0);
float2 l9_3313=(*sc_set0.UserUniforms).patternOffsetId01;
l9_3312=l9_3313;
float2 l9_3314=float2(0.0);
l9_3314=l9_3311+l9_3312;
float l9_3315=0.0;
float l9_3316=(*sc_set0.UserUniforms).patternRotateId01;
l9_3315=l9_3316;
float2 l9_3317=float2(0.0);
float2 l9_3318=l9_3314;
float l9_3319=l9_3315;
float2 l9_3320=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3321=sin(radians(l9_3319));
float l9_3322=cos(radians(l9_3319));
float2 l9_3323=l9_3318-l9_3320;
l9_3323=float2(dot(float2(l9_3322,l9_3321),l9_3323),dot(float2(-l9_3321,l9_3322),l9_3323))+l9_3320;
l9_3317=l9_3323;
float4 l9_3324=float4(0.0);
int l9_3325;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3326=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3326=0;
}
else
{
l9_3326=in.varStereoViewID;
}
int l9_3327=l9_3326;
l9_3325=1-l9_3327;
}
else
{
int l9_3328=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3328=0;
}
else
{
l9_3328=in.varStereoViewID;
}
int l9_3329=l9_3328;
l9_3325=l9_3329;
}
int l9_3330=l9_3325;
int l9_3331=patternTextureId01Layout_tmp;
int l9_3332=l9_3330;
float2 l9_3333=l9_3317;
bool l9_3334=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3335=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3336=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3337=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3338=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3339=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3340=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3341=0.0;
bool l9_3342=l9_3339&&(!l9_3337);
float l9_3343=1.0;
float l9_3344=l9_3333.x;
int l9_3345=l9_3336.x;
if (l9_3345==1)
{
l9_3344=fract(l9_3344);
}
else
{
if (l9_3345==2)
{
float l9_3346=fract(l9_3344);
float l9_3347=l9_3344-l9_3346;
float l9_3348=step(0.25,fract(l9_3347*0.5));
l9_3344=mix(l9_3346,1.0-l9_3346,fast::clamp(l9_3348,0.0,1.0));
}
}
l9_3333.x=l9_3344;
float l9_3349=l9_3333.y;
int l9_3350=l9_3336.y;
if (l9_3350==1)
{
l9_3349=fract(l9_3349);
}
else
{
if (l9_3350==2)
{
float l9_3351=fract(l9_3349);
float l9_3352=l9_3349-l9_3351;
float l9_3353=step(0.25,fract(l9_3352*0.5));
l9_3349=mix(l9_3351,1.0-l9_3351,fast::clamp(l9_3353,0.0,1.0));
}
}
l9_3333.y=l9_3349;
if (l9_3337)
{
bool l9_3354=l9_3339;
bool l9_3355;
if (l9_3354)
{
l9_3355=l9_3336.x==3;
}
else
{
l9_3355=l9_3354;
}
float l9_3356=l9_3333.x;
float l9_3357=l9_3338.x;
float l9_3358=l9_3338.z;
bool l9_3359=l9_3355;
float l9_3360=l9_3343;
float l9_3361=fast::clamp(l9_3356,l9_3357,l9_3358);
float l9_3362=step(abs(l9_3356-l9_3361),9.9999997e-06);
l9_3360*=(l9_3362+((1.0-float(l9_3359))*(1.0-l9_3362)));
l9_3356=l9_3361;
l9_3333.x=l9_3356;
l9_3343=l9_3360;
bool l9_3363=l9_3339;
bool l9_3364;
if (l9_3363)
{
l9_3364=l9_3336.y==3;
}
else
{
l9_3364=l9_3363;
}
float l9_3365=l9_3333.y;
float l9_3366=l9_3338.y;
float l9_3367=l9_3338.w;
bool l9_3368=l9_3364;
float l9_3369=l9_3343;
float l9_3370=fast::clamp(l9_3365,l9_3366,l9_3367);
float l9_3371=step(abs(l9_3365-l9_3370),9.9999997e-06);
l9_3369*=(l9_3371+((1.0-float(l9_3368))*(1.0-l9_3371)));
l9_3365=l9_3370;
l9_3333.y=l9_3365;
l9_3343=l9_3369;
}
float2 l9_3372=l9_3333;
bool l9_3373=l9_3334;
float3x3 l9_3374=l9_3335;
if (l9_3373)
{
l9_3372=float2((l9_3374*float3(l9_3372,1.0)).xy);
}
float2 l9_3375=l9_3372;
l9_3333=l9_3375;
float l9_3376=l9_3333.x;
int l9_3377=l9_3336.x;
bool l9_3378=l9_3342;
float l9_3379=l9_3343;
if ((l9_3377==0)||(l9_3377==3))
{
float l9_3380=l9_3376;
float l9_3381=0.0;
float l9_3382=1.0;
bool l9_3383=l9_3378;
float l9_3384=l9_3379;
float l9_3385=fast::clamp(l9_3380,l9_3381,l9_3382);
float l9_3386=step(abs(l9_3380-l9_3385),9.9999997e-06);
l9_3384*=(l9_3386+((1.0-float(l9_3383))*(1.0-l9_3386)));
l9_3380=l9_3385;
l9_3376=l9_3380;
l9_3379=l9_3384;
}
l9_3333.x=l9_3376;
l9_3343=l9_3379;
float l9_3387=l9_3333.y;
int l9_3388=l9_3336.y;
bool l9_3389=l9_3342;
float l9_3390=l9_3343;
if ((l9_3388==0)||(l9_3388==3))
{
float l9_3391=l9_3387;
float l9_3392=0.0;
float l9_3393=1.0;
bool l9_3394=l9_3389;
float l9_3395=l9_3390;
float l9_3396=fast::clamp(l9_3391,l9_3392,l9_3393);
float l9_3397=step(abs(l9_3391-l9_3396),9.9999997e-06);
l9_3395*=(l9_3397+((1.0-float(l9_3394))*(1.0-l9_3397)));
l9_3391=l9_3396;
l9_3387=l9_3391;
l9_3390=l9_3395;
}
l9_3333.y=l9_3387;
l9_3343=l9_3390;
float2 l9_3398=l9_3333;
int l9_3399=l9_3331;
int l9_3400=l9_3332;
float l9_3401=l9_3341;
float2 l9_3402=l9_3398;
int l9_3403=l9_3399;
int l9_3404=l9_3400;
float3 l9_3405=float3(0.0);
if (l9_3403==0)
{
l9_3405=float3(l9_3402,0.0);
}
else
{
if (l9_3403==1)
{
l9_3405=float3(l9_3402.x,(l9_3402.y*0.5)+(0.5-(float(l9_3404)*0.5)),0.0);
}
else
{
l9_3405=float3(l9_3402,float(l9_3404));
}
}
float3 l9_3406=l9_3405;
float3 l9_3407=l9_3406;
float4 l9_3408=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_3407.xy,bias(l9_3401));
float4 l9_3409=l9_3408;
if (l9_3339)
{
l9_3409=mix(l9_3340,l9_3409,float4(l9_3343));
}
float4 l9_3410=l9_3409;
l9_3324=l9_3410;
l9_3302=l9_3324;
l9_3307=l9_3302;
}
else
{
float2 l9_3411=float2(0.0);
l9_3411=l9_3304.Surface_UVCoord0;
float2 l9_3412=float2(0.0);
float2 l9_3413=(*sc_set0.UserUniforms).patternScaleId01;
l9_3412=l9_3413;
float2 l9_3414=float2(0.0);
l9_3414=((l9_3411-(*sc_set0.UserUniforms).Port_Center_N122)*l9_3412)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_3415=float2(0.0);
float2 l9_3416=(*sc_set0.UserUniforms).patternOffsetId01;
l9_3415=l9_3416;
float2 l9_3417=float2(0.0);
l9_3417=l9_3414+l9_3415;
float l9_3418=0.0;
float l9_3419=(*sc_set0.UserUniforms).patternRotateId01;
l9_3418=l9_3419;
float2 l9_3420=float2(0.0);
float2 l9_3421=l9_3417;
float l9_3422=l9_3418;
float2 l9_3423=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3424=sin(radians(l9_3422));
float l9_3425=cos(radians(l9_3422));
float2 l9_3426=l9_3421-l9_3423;
l9_3426=float2(dot(float2(l9_3425,l9_3424),l9_3426),dot(float2(-l9_3424,l9_3425),l9_3426))+l9_3423;
l9_3420=l9_3426;
float4 l9_3427=float4(0.0);
int l9_3428;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3429=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3429=0;
}
else
{
l9_3429=in.varStereoViewID;
}
int l9_3430=l9_3429;
l9_3428=1-l9_3430;
}
else
{
int l9_3431=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3431=0;
}
else
{
l9_3431=in.varStereoViewID;
}
int l9_3432=l9_3431;
l9_3428=l9_3432;
}
int l9_3433=l9_3428;
int l9_3434=patternTextureId01Layout_tmp;
int l9_3435=l9_3433;
float2 l9_3436=l9_3420;
bool l9_3437=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3438=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3439=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3440=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3441=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3442=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3443=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3444=0.0;
bool l9_3445=l9_3442&&(!l9_3440);
float l9_3446=1.0;
float l9_3447=l9_3436.x;
int l9_3448=l9_3439.x;
if (l9_3448==1)
{
l9_3447=fract(l9_3447);
}
else
{
if (l9_3448==2)
{
float l9_3449=fract(l9_3447);
float l9_3450=l9_3447-l9_3449;
float l9_3451=step(0.25,fract(l9_3450*0.5));
l9_3447=mix(l9_3449,1.0-l9_3449,fast::clamp(l9_3451,0.0,1.0));
}
}
l9_3436.x=l9_3447;
float l9_3452=l9_3436.y;
int l9_3453=l9_3439.y;
if (l9_3453==1)
{
l9_3452=fract(l9_3452);
}
else
{
if (l9_3453==2)
{
float l9_3454=fract(l9_3452);
float l9_3455=l9_3452-l9_3454;
float l9_3456=step(0.25,fract(l9_3455*0.5));
l9_3452=mix(l9_3454,1.0-l9_3454,fast::clamp(l9_3456,0.0,1.0));
}
}
l9_3436.y=l9_3452;
if (l9_3440)
{
bool l9_3457=l9_3442;
bool l9_3458;
if (l9_3457)
{
l9_3458=l9_3439.x==3;
}
else
{
l9_3458=l9_3457;
}
float l9_3459=l9_3436.x;
float l9_3460=l9_3441.x;
float l9_3461=l9_3441.z;
bool l9_3462=l9_3458;
float l9_3463=l9_3446;
float l9_3464=fast::clamp(l9_3459,l9_3460,l9_3461);
float l9_3465=step(abs(l9_3459-l9_3464),9.9999997e-06);
l9_3463*=(l9_3465+((1.0-float(l9_3462))*(1.0-l9_3465)));
l9_3459=l9_3464;
l9_3436.x=l9_3459;
l9_3446=l9_3463;
bool l9_3466=l9_3442;
bool l9_3467;
if (l9_3466)
{
l9_3467=l9_3439.y==3;
}
else
{
l9_3467=l9_3466;
}
float l9_3468=l9_3436.y;
float l9_3469=l9_3441.y;
float l9_3470=l9_3441.w;
bool l9_3471=l9_3467;
float l9_3472=l9_3446;
float l9_3473=fast::clamp(l9_3468,l9_3469,l9_3470);
float l9_3474=step(abs(l9_3468-l9_3473),9.9999997e-06);
l9_3472*=(l9_3474+((1.0-float(l9_3471))*(1.0-l9_3474)));
l9_3468=l9_3473;
l9_3436.y=l9_3468;
l9_3446=l9_3472;
}
float2 l9_3475=l9_3436;
bool l9_3476=l9_3437;
float3x3 l9_3477=l9_3438;
if (l9_3476)
{
l9_3475=float2((l9_3477*float3(l9_3475,1.0)).xy);
}
float2 l9_3478=l9_3475;
l9_3436=l9_3478;
float l9_3479=l9_3436.x;
int l9_3480=l9_3439.x;
bool l9_3481=l9_3445;
float l9_3482=l9_3446;
if ((l9_3480==0)||(l9_3480==3))
{
float l9_3483=l9_3479;
float l9_3484=0.0;
float l9_3485=1.0;
bool l9_3486=l9_3481;
float l9_3487=l9_3482;
float l9_3488=fast::clamp(l9_3483,l9_3484,l9_3485);
float l9_3489=step(abs(l9_3483-l9_3488),9.9999997e-06);
l9_3487*=(l9_3489+((1.0-float(l9_3486))*(1.0-l9_3489)));
l9_3483=l9_3488;
l9_3479=l9_3483;
l9_3482=l9_3487;
}
l9_3436.x=l9_3479;
l9_3446=l9_3482;
float l9_3490=l9_3436.y;
int l9_3491=l9_3439.y;
bool l9_3492=l9_3445;
float l9_3493=l9_3446;
if ((l9_3491==0)||(l9_3491==3))
{
float l9_3494=l9_3490;
float l9_3495=0.0;
float l9_3496=1.0;
bool l9_3497=l9_3492;
float l9_3498=l9_3493;
float l9_3499=fast::clamp(l9_3494,l9_3495,l9_3496);
float l9_3500=step(abs(l9_3494-l9_3499),9.9999997e-06);
l9_3498*=(l9_3500+((1.0-float(l9_3497))*(1.0-l9_3500)));
l9_3494=l9_3499;
l9_3490=l9_3494;
l9_3493=l9_3498;
}
l9_3436.y=l9_3490;
l9_3446=l9_3493;
float2 l9_3501=l9_3436;
int l9_3502=l9_3434;
int l9_3503=l9_3435;
float l9_3504=l9_3444;
float2 l9_3505=l9_3501;
int l9_3506=l9_3502;
int l9_3507=l9_3503;
float3 l9_3508=float3(0.0);
if (l9_3506==0)
{
l9_3508=float3(l9_3505,0.0);
}
else
{
if (l9_3506==1)
{
l9_3508=float3(l9_3505.x,(l9_3505.y*0.5)+(0.5-(float(l9_3507)*0.5)),0.0);
}
else
{
l9_3508=float3(l9_3505,float(l9_3507));
}
}
float3 l9_3509=l9_3508;
float3 l9_3510=l9_3509;
float4 l9_3511=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_3510.xy,bias(l9_3504));
float4 l9_3512=l9_3511;
if (l9_3442)
{
l9_3512=mix(l9_3443,l9_3512,float4(l9_3446));
}
float4 l9_3513=l9_3512;
l9_3427=l9_3513;
float l9_3514=0.0;
float3 l9_3515=l9_3427.xyz;
float l9_3516=l9_3515.x;
l9_3514=l9_3516;
l9_3303=float4(l9_3514);
l9_3307=l9_3303;
}
l9_3300=l9_3307;
float4 l9_3517=float4(0.0);
l9_3517=l9_3298*l9_3300;
l9_3292=l9_3517;
l9_3297=l9_3292;
}
else
{
float4 l9_3518=float4(0.0);
float4 l9_3519=(*sc_set0.UserUniforms).colorId01;
l9_3518=l9_3519;
float2 l9_3520=float2(0.0);
l9_3520=l9_3294.Surface_UVCoord0;
float4 l9_3521=float4(0.0);
int l9_3522;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3523=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3523=0;
}
else
{
l9_3523=in.varStereoViewID;
}
int l9_3524=l9_3523;
l9_3522=1-l9_3524;
}
else
{
int l9_3525=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3525=0;
}
else
{
l9_3525=in.varStereoViewID;
}
int l9_3526=l9_3525;
l9_3522=l9_3526;
}
int l9_3527=l9_3522;
int l9_3528=greyMaskIdLayout_tmp;
int l9_3529=l9_3527;
float2 l9_3530=l9_3520;
bool l9_3531=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3532=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3533=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3534=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3535=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3536=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3537=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3538=0.0;
bool l9_3539=l9_3536&&(!l9_3534);
float l9_3540=1.0;
float l9_3541=l9_3530.x;
int l9_3542=l9_3533.x;
if (l9_3542==1)
{
l9_3541=fract(l9_3541);
}
else
{
if (l9_3542==2)
{
float l9_3543=fract(l9_3541);
float l9_3544=l9_3541-l9_3543;
float l9_3545=step(0.25,fract(l9_3544*0.5));
l9_3541=mix(l9_3543,1.0-l9_3543,fast::clamp(l9_3545,0.0,1.0));
}
}
l9_3530.x=l9_3541;
float l9_3546=l9_3530.y;
int l9_3547=l9_3533.y;
if (l9_3547==1)
{
l9_3546=fract(l9_3546);
}
else
{
if (l9_3547==2)
{
float l9_3548=fract(l9_3546);
float l9_3549=l9_3546-l9_3548;
float l9_3550=step(0.25,fract(l9_3549*0.5));
l9_3546=mix(l9_3548,1.0-l9_3548,fast::clamp(l9_3550,0.0,1.0));
}
}
l9_3530.y=l9_3546;
if (l9_3534)
{
bool l9_3551=l9_3536;
bool l9_3552;
if (l9_3551)
{
l9_3552=l9_3533.x==3;
}
else
{
l9_3552=l9_3551;
}
float l9_3553=l9_3530.x;
float l9_3554=l9_3535.x;
float l9_3555=l9_3535.z;
bool l9_3556=l9_3552;
float l9_3557=l9_3540;
float l9_3558=fast::clamp(l9_3553,l9_3554,l9_3555);
float l9_3559=step(abs(l9_3553-l9_3558),9.9999997e-06);
l9_3557*=(l9_3559+((1.0-float(l9_3556))*(1.0-l9_3559)));
l9_3553=l9_3558;
l9_3530.x=l9_3553;
l9_3540=l9_3557;
bool l9_3560=l9_3536;
bool l9_3561;
if (l9_3560)
{
l9_3561=l9_3533.y==3;
}
else
{
l9_3561=l9_3560;
}
float l9_3562=l9_3530.y;
float l9_3563=l9_3535.y;
float l9_3564=l9_3535.w;
bool l9_3565=l9_3561;
float l9_3566=l9_3540;
float l9_3567=fast::clamp(l9_3562,l9_3563,l9_3564);
float l9_3568=step(abs(l9_3562-l9_3567),9.9999997e-06);
l9_3566*=(l9_3568+((1.0-float(l9_3565))*(1.0-l9_3568)));
l9_3562=l9_3567;
l9_3530.y=l9_3562;
l9_3540=l9_3566;
}
float2 l9_3569=l9_3530;
bool l9_3570=l9_3531;
float3x3 l9_3571=l9_3532;
if (l9_3570)
{
l9_3569=float2((l9_3571*float3(l9_3569,1.0)).xy);
}
float2 l9_3572=l9_3569;
l9_3530=l9_3572;
float l9_3573=l9_3530.x;
int l9_3574=l9_3533.x;
bool l9_3575=l9_3539;
float l9_3576=l9_3540;
if ((l9_3574==0)||(l9_3574==3))
{
float l9_3577=l9_3573;
float l9_3578=0.0;
float l9_3579=1.0;
bool l9_3580=l9_3575;
float l9_3581=l9_3576;
float l9_3582=fast::clamp(l9_3577,l9_3578,l9_3579);
float l9_3583=step(abs(l9_3577-l9_3582),9.9999997e-06);
l9_3581*=(l9_3583+((1.0-float(l9_3580))*(1.0-l9_3583)));
l9_3577=l9_3582;
l9_3573=l9_3577;
l9_3576=l9_3581;
}
l9_3530.x=l9_3573;
l9_3540=l9_3576;
float l9_3584=l9_3530.y;
int l9_3585=l9_3533.y;
bool l9_3586=l9_3539;
float l9_3587=l9_3540;
if ((l9_3585==0)||(l9_3585==3))
{
float l9_3588=l9_3584;
float l9_3589=0.0;
float l9_3590=1.0;
bool l9_3591=l9_3586;
float l9_3592=l9_3587;
float l9_3593=fast::clamp(l9_3588,l9_3589,l9_3590);
float l9_3594=step(abs(l9_3588-l9_3593),9.9999997e-06);
l9_3592*=(l9_3594+((1.0-float(l9_3591))*(1.0-l9_3594)));
l9_3588=l9_3593;
l9_3584=l9_3588;
l9_3587=l9_3592;
}
l9_3530.y=l9_3584;
l9_3540=l9_3587;
float2 l9_3595=l9_3530;
int l9_3596=l9_3528;
int l9_3597=l9_3529;
float l9_3598=l9_3538;
float2 l9_3599=l9_3595;
int l9_3600=l9_3596;
int l9_3601=l9_3597;
float3 l9_3602=float3(0.0);
if (l9_3600==0)
{
l9_3602=float3(l9_3599,0.0);
}
else
{
if (l9_3600==1)
{
l9_3602=float3(l9_3599.x,(l9_3599.y*0.5)+(0.5-(float(l9_3601)*0.5)),0.0);
}
else
{
l9_3602=float3(l9_3599,float(l9_3601));
}
}
float3 l9_3603=l9_3602;
float3 l9_3604=l9_3603;
float4 l9_3605=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3604.xy,bias(l9_3598));
float4 l9_3606=l9_3605;
if (l9_3536)
{
l9_3606=mix(l9_3537,l9_3606,float4(l9_3540));
}
float4 l9_3607=l9_3606;
l9_3521=l9_3607;
float l9_3608=0.0;
l9_3608=l9_3521.x;
float l9_3609=0.0;
l9_3609=step(l9_3608,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_3610=float4(0.0);
l9_3610=l9_3518*float4(l9_3609);
l9_3293=l9_3610;
l9_3297=l9_3293;
}
l9_3290=l9_3297;
float2 l9_3611=float2(0.0);
l9_3611=l9_2852.Surface_UVCoord0;
float4 l9_3612=float4(0.0);
int l9_3613;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3614=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3614=0;
}
else
{
l9_3614=in.varStereoViewID;
}
int l9_3615=l9_3614;
l9_3613=1-l9_3615;
}
else
{
int l9_3616=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3616=0;
}
else
{
l9_3616=in.varStereoViewID;
}
int l9_3617=l9_3616;
l9_3613=l9_3617;
}
int l9_3618=l9_3613;
int l9_3619=greyMaskIdLayout_tmp;
int l9_3620=l9_3618;
float2 l9_3621=l9_3611;
bool l9_3622=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3623=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3624=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3625=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3626=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3627=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3628=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3629=0.0;
bool l9_3630=l9_3627&&(!l9_3625);
float l9_3631=1.0;
float l9_3632=l9_3621.x;
int l9_3633=l9_3624.x;
if (l9_3633==1)
{
l9_3632=fract(l9_3632);
}
else
{
if (l9_3633==2)
{
float l9_3634=fract(l9_3632);
float l9_3635=l9_3632-l9_3634;
float l9_3636=step(0.25,fract(l9_3635*0.5));
l9_3632=mix(l9_3634,1.0-l9_3634,fast::clamp(l9_3636,0.0,1.0));
}
}
l9_3621.x=l9_3632;
float l9_3637=l9_3621.y;
int l9_3638=l9_3624.y;
if (l9_3638==1)
{
l9_3637=fract(l9_3637);
}
else
{
if (l9_3638==2)
{
float l9_3639=fract(l9_3637);
float l9_3640=l9_3637-l9_3639;
float l9_3641=step(0.25,fract(l9_3640*0.5));
l9_3637=mix(l9_3639,1.0-l9_3639,fast::clamp(l9_3641,0.0,1.0));
}
}
l9_3621.y=l9_3637;
if (l9_3625)
{
bool l9_3642=l9_3627;
bool l9_3643;
if (l9_3642)
{
l9_3643=l9_3624.x==3;
}
else
{
l9_3643=l9_3642;
}
float l9_3644=l9_3621.x;
float l9_3645=l9_3626.x;
float l9_3646=l9_3626.z;
bool l9_3647=l9_3643;
float l9_3648=l9_3631;
float l9_3649=fast::clamp(l9_3644,l9_3645,l9_3646);
float l9_3650=step(abs(l9_3644-l9_3649),9.9999997e-06);
l9_3648*=(l9_3650+((1.0-float(l9_3647))*(1.0-l9_3650)));
l9_3644=l9_3649;
l9_3621.x=l9_3644;
l9_3631=l9_3648;
bool l9_3651=l9_3627;
bool l9_3652;
if (l9_3651)
{
l9_3652=l9_3624.y==3;
}
else
{
l9_3652=l9_3651;
}
float l9_3653=l9_3621.y;
float l9_3654=l9_3626.y;
float l9_3655=l9_3626.w;
bool l9_3656=l9_3652;
float l9_3657=l9_3631;
float l9_3658=fast::clamp(l9_3653,l9_3654,l9_3655);
float l9_3659=step(abs(l9_3653-l9_3658),9.9999997e-06);
l9_3657*=(l9_3659+((1.0-float(l9_3656))*(1.0-l9_3659)));
l9_3653=l9_3658;
l9_3621.y=l9_3653;
l9_3631=l9_3657;
}
float2 l9_3660=l9_3621;
bool l9_3661=l9_3622;
float3x3 l9_3662=l9_3623;
if (l9_3661)
{
l9_3660=float2((l9_3662*float3(l9_3660,1.0)).xy);
}
float2 l9_3663=l9_3660;
l9_3621=l9_3663;
float l9_3664=l9_3621.x;
int l9_3665=l9_3624.x;
bool l9_3666=l9_3630;
float l9_3667=l9_3631;
if ((l9_3665==0)||(l9_3665==3))
{
float l9_3668=l9_3664;
float l9_3669=0.0;
float l9_3670=1.0;
bool l9_3671=l9_3666;
float l9_3672=l9_3667;
float l9_3673=fast::clamp(l9_3668,l9_3669,l9_3670);
float l9_3674=step(abs(l9_3668-l9_3673),9.9999997e-06);
l9_3672*=(l9_3674+((1.0-float(l9_3671))*(1.0-l9_3674)));
l9_3668=l9_3673;
l9_3664=l9_3668;
l9_3667=l9_3672;
}
l9_3621.x=l9_3664;
l9_3631=l9_3667;
float l9_3675=l9_3621.y;
int l9_3676=l9_3624.y;
bool l9_3677=l9_3630;
float l9_3678=l9_3631;
if ((l9_3676==0)||(l9_3676==3))
{
float l9_3679=l9_3675;
float l9_3680=0.0;
float l9_3681=1.0;
bool l9_3682=l9_3677;
float l9_3683=l9_3678;
float l9_3684=fast::clamp(l9_3679,l9_3680,l9_3681);
float l9_3685=step(abs(l9_3679-l9_3684),9.9999997e-06);
l9_3683*=(l9_3685+((1.0-float(l9_3682))*(1.0-l9_3685)));
l9_3679=l9_3684;
l9_3675=l9_3679;
l9_3678=l9_3683;
}
l9_3621.y=l9_3675;
l9_3631=l9_3678;
float2 l9_3686=l9_3621;
int l9_3687=l9_3619;
int l9_3688=l9_3620;
float l9_3689=l9_3629;
float2 l9_3690=l9_3686;
int l9_3691=l9_3687;
int l9_3692=l9_3688;
float3 l9_3693=float3(0.0);
if (l9_3691==0)
{
l9_3693=float3(l9_3690,0.0);
}
else
{
if (l9_3691==1)
{
l9_3693=float3(l9_3690.x,(l9_3690.y*0.5)+(0.5-(float(l9_3692)*0.5)),0.0);
}
else
{
l9_3693=float3(l9_3690,float(l9_3692));
}
}
float3 l9_3694=l9_3693;
float3 l9_3695=l9_3694;
float4 l9_3696=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3695.xy,bias(l9_3689));
float4 l9_3697=l9_3696;
if (l9_3627)
{
l9_3697=mix(l9_3628,l9_3697,float4(l9_3631));
}
float4 l9_3698=l9_3697;
l9_3612=l9_3698;
float l9_3699=0.0;
l9_3699=l9_3612.x;
float l9_3700=0.0;
l9_3700=step(l9_3699,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_3701=float4(0.0);
l9_3701=l9_3290*float4(l9_3700);
float4 l9_3702=float4(0.0);
float4 l9_3703=(*sc_set0.UserUniforms).colorId01;
l9_3702=l9_3703;
float4 l9_3704=float4(0.0);
l9_3704=l9_3702*float4(l9_3700);
float4 l9_3705=float4(0.0);
float4 l9_3706=l9_3701;
float4 l9_3707=l9_3704;
float4 l9_3708=l9_3706;
float4 l9_3709=l9_3707;
float3 l9_3710=l9_3708.xyz*l9_3708.w;
l9_3708=float4(l9_3710.x,l9_3710.y,l9_3710.z,l9_3708.w);
float4 l9_3711=l9_3708+(l9_3709*(1.0-l9_3708.w));
l9_3705=l9_3711;
l9_2851=l9_3705;
l9_2855=l9_2851;
}
l9_2848=l9_2855;
l9_1951=l9_2848;
l9_1955=l9_1951;
}
l9_1948=l9_1955;
float2 l9_3712=float2(0.0);
l9_3712=param_5.Surface_UVCoord0;
float4 l9_3713=float4(0.0);
int l9_3714;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_3715=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3715=0;
}
else
{
l9_3715=in.varStereoViewID;
}
int l9_3716=l9_3715;
l9_3714=1-l9_3716;
}
else
{
int l9_3717=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3717=0;
}
else
{
l9_3717=in.varStereoViewID;
}
int l9_3718=l9_3717;
l9_3714=l9_3718;
}
int l9_3719=l9_3714;
int l9_3720=greyMaskIdLayout_tmp;
int l9_3721=l9_3719;
float2 l9_3722=l9_3712;
bool l9_3723=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_3724=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_3725=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_3726=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_3727=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_3728=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_3729=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_3730=0.0;
bool l9_3731=l9_3728&&(!l9_3726);
float l9_3732=1.0;
float l9_3733=l9_3722.x;
int l9_3734=l9_3725.x;
if (l9_3734==1)
{
l9_3733=fract(l9_3733);
}
else
{
if (l9_3734==2)
{
float l9_3735=fract(l9_3733);
float l9_3736=l9_3733-l9_3735;
float l9_3737=step(0.25,fract(l9_3736*0.5));
l9_3733=mix(l9_3735,1.0-l9_3735,fast::clamp(l9_3737,0.0,1.0));
}
}
l9_3722.x=l9_3733;
float l9_3738=l9_3722.y;
int l9_3739=l9_3725.y;
if (l9_3739==1)
{
l9_3738=fract(l9_3738);
}
else
{
if (l9_3739==2)
{
float l9_3740=fract(l9_3738);
float l9_3741=l9_3738-l9_3740;
float l9_3742=step(0.25,fract(l9_3741*0.5));
l9_3738=mix(l9_3740,1.0-l9_3740,fast::clamp(l9_3742,0.0,1.0));
}
}
l9_3722.y=l9_3738;
if (l9_3726)
{
bool l9_3743=l9_3728;
bool l9_3744;
if (l9_3743)
{
l9_3744=l9_3725.x==3;
}
else
{
l9_3744=l9_3743;
}
float l9_3745=l9_3722.x;
float l9_3746=l9_3727.x;
float l9_3747=l9_3727.z;
bool l9_3748=l9_3744;
float l9_3749=l9_3732;
float l9_3750=fast::clamp(l9_3745,l9_3746,l9_3747);
float l9_3751=step(abs(l9_3745-l9_3750),9.9999997e-06);
l9_3749*=(l9_3751+((1.0-float(l9_3748))*(1.0-l9_3751)));
l9_3745=l9_3750;
l9_3722.x=l9_3745;
l9_3732=l9_3749;
bool l9_3752=l9_3728;
bool l9_3753;
if (l9_3752)
{
l9_3753=l9_3725.y==3;
}
else
{
l9_3753=l9_3752;
}
float l9_3754=l9_3722.y;
float l9_3755=l9_3727.y;
float l9_3756=l9_3727.w;
bool l9_3757=l9_3753;
float l9_3758=l9_3732;
float l9_3759=fast::clamp(l9_3754,l9_3755,l9_3756);
float l9_3760=step(abs(l9_3754-l9_3759),9.9999997e-06);
l9_3758*=(l9_3760+((1.0-float(l9_3757))*(1.0-l9_3760)));
l9_3754=l9_3759;
l9_3722.y=l9_3754;
l9_3732=l9_3758;
}
float2 l9_3761=l9_3722;
bool l9_3762=l9_3723;
float3x3 l9_3763=l9_3724;
if (l9_3762)
{
l9_3761=float2((l9_3763*float3(l9_3761,1.0)).xy);
}
float2 l9_3764=l9_3761;
l9_3722=l9_3764;
float l9_3765=l9_3722.x;
int l9_3766=l9_3725.x;
bool l9_3767=l9_3731;
float l9_3768=l9_3732;
if ((l9_3766==0)||(l9_3766==3))
{
float l9_3769=l9_3765;
float l9_3770=0.0;
float l9_3771=1.0;
bool l9_3772=l9_3767;
float l9_3773=l9_3768;
float l9_3774=fast::clamp(l9_3769,l9_3770,l9_3771);
float l9_3775=step(abs(l9_3769-l9_3774),9.9999997e-06);
l9_3773*=(l9_3775+((1.0-float(l9_3772))*(1.0-l9_3775)));
l9_3769=l9_3774;
l9_3765=l9_3769;
l9_3768=l9_3773;
}
l9_3722.x=l9_3765;
l9_3732=l9_3768;
float l9_3776=l9_3722.y;
int l9_3777=l9_3725.y;
bool l9_3778=l9_3731;
float l9_3779=l9_3732;
if ((l9_3777==0)||(l9_3777==3))
{
float l9_3780=l9_3776;
float l9_3781=0.0;
float l9_3782=1.0;
bool l9_3783=l9_3778;
float l9_3784=l9_3779;
float l9_3785=fast::clamp(l9_3780,l9_3781,l9_3782);
float l9_3786=step(abs(l9_3780-l9_3785),9.9999997e-06);
l9_3784*=(l9_3786+((1.0-float(l9_3783))*(1.0-l9_3786)));
l9_3780=l9_3785;
l9_3776=l9_3780;
l9_3779=l9_3784;
}
l9_3722.y=l9_3776;
l9_3732=l9_3779;
float2 l9_3787=l9_3722;
int l9_3788=l9_3720;
int l9_3789=l9_3721;
float l9_3790=l9_3730;
float2 l9_3791=l9_3787;
int l9_3792=l9_3788;
int l9_3793=l9_3789;
float3 l9_3794=float3(0.0);
if (l9_3792==0)
{
l9_3794=float3(l9_3791,0.0);
}
else
{
if (l9_3792==1)
{
l9_3794=float3(l9_3791.x,(l9_3791.y*0.5)+(0.5-(float(l9_3793)*0.5)),0.0);
}
else
{
l9_3794=float3(l9_3791,float(l9_3793));
}
}
float3 l9_3795=l9_3794;
float3 l9_3796=l9_3795;
float4 l9_3797=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_3796.xy,bias(l9_3790));
float4 l9_3798=l9_3797;
if (l9_3728)
{
l9_3798=mix(l9_3729,l9_3798,float4(l9_3732));
}
float4 l9_3799=l9_3798;
l9_3713=l9_3799;
float l9_3800=0.0;
l9_3800=l9_3713.x;
float l9_3801=0.0;
l9_3801=step(l9_3800,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_3802=float4(0.0);
l9_3802=l9_1948*float4(l9_3801);
float4 l9_3803=float4(0.0);
float4 l9_3804=l9_1947;
float4 l9_3805=l9_3802;
float4 l9_3806=l9_3804;
float4 l9_3807=l9_3805;
float3 l9_3808=l9_3806.xyz*l9_3806.w;
l9_3806=float4(l9_3808.x,l9_3808.y,l9_3808.z,l9_3806.w);
float4 l9_3809=l9_3806+(l9_3807*(1.0-l9_3806.w));
l9_3803=l9_3809;
param_2=l9_3803;
param_4=param_2;
}
else
{
float4 l9_3810=float4(0.0);
float l9_3811=0.0;
float4 l9_3812=float4(0.0);
float4 l9_3813=float4(0.0);
ssGlobals l9_3814=param_5;
float l9_3815=0.0;
float l9_3816=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_3815=l9_3816;
l9_3811=l9_3815;
float4 l9_3817;
if ((l9_3811*1.0)!=0.0)
{
float4 l9_3818=float4(0.0);
float l9_3819=0.0;
float4 l9_3820=float4(0.0);
float4 l9_3821=float4(0.0);
ssGlobals l9_3822=l9_3814;
float l9_3823=0.0;
float l9_3824=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_3823=l9_3824;
l9_3819=l9_3823;
float4 l9_3825;
if ((l9_3819*1.0)!=0.0)
{
float l9_3826=0.0;
float l9_3827=(*sc_set0.UserUniforms).rimExpId01;
l9_3826=l9_3827;
float l9_3828=0.0;
float l9_3829=(*sc_set0.UserUniforms).rimIntId01;
l9_3828=l9_3829;
float l9_3830=0.0;
float l9_3831=l9_3826;
float l9_3832=l9_3828;
ssGlobals l9_3833=l9_3822;
float l9_3834=abs(dot(-l9_3833.ViewDirWS,l9_3833.VertexNormal_WorldSpace));
float l9_3835=1.0-pow(1.0-l9_3834,l9_3831);
l9_3835=fast::max(l9_3835,0.0);
l9_3835*=l9_3832;
l9_3830=l9_3835;
float4 l9_3836=float4(0.0);
float l9_3837=0.0;
float4 l9_3838=float4(0.0);
float4 l9_3839=float4(0.0);
ssGlobals l9_3840=l9_3822;
float l9_3841=0.0;
float l9_3842=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_3841=l9_3842;
l9_3837=l9_3841;
float4 l9_3843;
if ((l9_3837*1.0)!=0.0)
{
float4 l9_3844=float4(0.0);
float4 l9_3845=(*sc_set0.UserUniforms).patternColorId01;
l9_3844=l9_3845;
float4 l9_3846=float4(0.0);
float l9_3847=0.0;
float4 l9_3848=float4(0.0);
float4 l9_3849=float4(0.0);
ssGlobals l9_3850=l9_3840;
float l9_3851=0.0;
float l9_3852=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_3851=l9_3852;
l9_3847=l9_3851;
float4 l9_3853;
if ((l9_3847*1.0)!=0.0)
{
float2 l9_3854=float2(0.0);
l9_3854=l9_3850.Surface_UVCoord0;
float2 l9_3855=float2(0.0);
float2 l9_3856=(*sc_set0.UserUniforms).patternScaleId01;
l9_3855=l9_3856;
float2 l9_3857=float2(0.0);
l9_3857=((l9_3854-(*sc_set0.UserUniforms).Port_Center_N122)*l9_3855)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_3858=float2(0.0);
float2 l9_3859=(*sc_set0.UserUniforms).patternOffsetId01;
l9_3858=l9_3859;
float2 l9_3860=float2(0.0);
l9_3860=l9_3857+l9_3858;
float l9_3861=0.0;
float l9_3862=(*sc_set0.UserUniforms).patternRotateId01;
l9_3861=l9_3862;
float2 l9_3863=float2(0.0);
float2 l9_3864=l9_3860;
float l9_3865=l9_3861;
float2 l9_3866=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3867=sin(radians(l9_3865));
float l9_3868=cos(radians(l9_3865));
float2 l9_3869=l9_3864-l9_3866;
l9_3869=float2(dot(float2(l9_3868,l9_3867),l9_3869),dot(float2(-l9_3867,l9_3868),l9_3869))+l9_3866;
l9_3863=l9_3869;
float4 l9_3870=float4(0.0);
int l9_3871;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3872=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3872=0;
}
else
{
l9_3872=in.varStereoViewID;
}
int l9_3873=l9_3872;
l9_3871=1-l9_3873;
}
else
{
int l9_3874=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3874=0;
}
else
{
l9_3874=in.varStereoViewID;
}
int l9_3875=l9_3874;
l9_3871=l9_3875;
}
int l9_3876=l9_3871;
int l9_3877=patternTextureId01Layout_tmp;
int l9_3878=l9_3876;
float2 l9_3879=l9_3863;
bool l9_3880=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3881=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3882=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3883=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3884=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3885=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3886=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3887=0.0;
bool l9_3888=l9_3885&&(!l9_3883);
float l9_3889=1.0;
float l9_3890=l9_3879.x;
int l9_3891=l9_3882.x;
if (l9_3891==1)
{
l9_3890=fract(l9_3890);
}
else
{
if (l9_3891==2)
{
float l9_3892=fract(l9_3890);
float l9_3893=l9_3890-l9_3892;
float l9_3894=step(0.25,fract(l9_3893*0.5));
l9_3890=mix(l9_3892,1.0-l9_3892,fast::clamp(l9_3894,0.0,1.0));
}
}
l9_3879.x=l9_3890;
float l9_3895=l9_3879.y;
int l9_3896=l9_3882.y;
if (l9_3896==1)
{
l9_3895=fract(l9_3895);
}
else
{
if (l9_3896==2)
{
float l9_3897=fract(l9_3895);
float l9_3898=l9_3895-l9_3897;
float l9_3899=step(0.25,fract(l9_3898*0.5));
l9_3895=mix(l9_3897,1.0-l9_3897,fast::clamp(l9_3899,0.0,1.0));
}
}
l9_3879.y=l9_3895;
if (l9_3883)
{
bool l9_3900=l9_3885;
bool l9_3901;
if (l9_3900)
{
l9_3901=l9_3882.x==3;
}
else
{
l9_3901=l9_3900;
}
float l9_3902=l9_3879.x;
float l9_3903=l9_3884.x;
float l9_3904=l9_3884.z;
bool l9_3905=l9_3901;
float l9_3906=l9_3889;
float l9_3907=fast::clamp(l9_3902,l9_3903,l9_3904);
float l9_3908=step(abs(l9_3902-l9_3907),9.9999997e-06);
l9_3906*=(l9_3908+((1.0-float(l9_3905))*(1.0-l9_3908)));
l9_3902=l9_3907;
l9_3879.x=l9_3902;
l9_3889=l9_3906;
bool l9_3909=l9_3885;
bool l9_3910;
if (l9_3909)
{
l9_3910=l9_3882.y==3;
}
else
{
l9_3910=l9_3909;
}
float l9_3911=l9_3879.y;
float l9_3912=l9_3884.y;
float l9_3913=l9_3884.w;
bool l9_3914=l9_3910;
float l9_3915=l9_3889;
float l9_3916=fast::clamp(l9_3911,l9_3912,l9_3913);
float l9_3917=step(abs(l9_3911-l9_3916),9.9999997e-06);
l9_3915*=(l9_3917+((1.0-float(l9_3914))*(1.0-l9_3917)));
l9_3911=l9_3916;
l9_3879.y=l9_3911;
l9_3889=l9_3915;
}
float2 l9_3918=l9_3879;
bool l9_3919=l9_3880;
float3x3 l9_3920=l9_3881;
if (l9_3919)
{
l9_3918=float2((l9_3920*float3(l9_3918,1.0)).xy);
}
float2 l9_3921=l9_3918;
l9_3879=l9_3921;
float l9_3922=l9_3879.x;
int l9_3923=l9_3882.x;
bool l9_3924=l9_3888;
float l9_3925=l9_3889;
if ((l9_3923==0)||(l9_3923==3))
{
float l9_3926=l9_3922;
float l9_3927=0.0;
float l9_3928=1.0;
bool l9_3929=l9_3924;
float l9_3930=l9_3925;
float l9_3931=fast::clamp(l9_3926,l9_3927,l9_3928);
float l9_3932=step(abs(l9_3926-l9_3931),9.9999997e-06);
l9_3930*=(l9_3932+((1.0-float(l9_3929))*(1.0-l9_3932)));
l9_3926=l9_3931;
l9_3922=l9_3926;
l9_3925=l9_3930;
}
l9_3879.x=l9_3922;
l9_3889=l9_3925;
float l9_3933=l9_3879.y;
int l9_3934=l9_3882.y;
bool l9_3935=l9_3888;
float l9_3936=l9_3889;
if ((l9_3934==0)||(l9_3934==3))
{
float l9_3937=l9_3933;
float l9_3938=0.0;
float l9_3939=1.0;
bool l9_3940=l9_3935;
float l9_3941=l9_3936;
float l9_3942=fast::clamp(l9_3937,l9_3938,l9_3939);
float l9_3943=step(abs(l9_3937-l9_3942),9.9999997e-06);
l9_3941*=(l9_3943+((1.0-float(l9_3940))*(1.0-l9_3943)));
l9_3937=l9_3942;
l9_3933=l9_3937;
l9_3936=l9_3941;
}
l9_3879.y=l9_3933;
l9_3889=l9_3936;
float2 l9_3944=l9_3879;
int l9_3945=l9_3877;
int l9_3946=l9_3878;
float l9_3947=l9_3887;
float2 l9_3948=l9_3944;
int l9_3949=l9_3945;
int l9_3950=l9_3946;
float3 l9_3951=float3(0.0);
if (l9_3949==0)
{
l9_3951=float3(l9_3948,0.0);
}
else
{
if (l9_3949==1)
{
l9_3951=float3(l9_3948.x,(l9_3948.y*0.5)+(0.5-(float(l9_3950)*0.5)),0.0);
}
else
{
l9_3951=float3(l9_3948,float(l9_3950));
}
}
float3 l9_3952=l9_3951;
float3 l9_3953=l9_3952;
float4 l9_3954=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_3953.xy,bias(l9_3947));
float4 l9_3955=l9_3954;
if (l9_3885)
{
l9_3955=mix(l9_3886,l9_3955,float4(l9_3889));
}
float4 l9_3956=l9_3955;
l9_3870=l9_3956;
l9_3848=l9_3870;
l9_3853=l9_3848;
}
else
{
float2 l9_3957=float2(0.0);
l9_3957=l9_3850.Surface_UVCoord0;
float2 l9_3958=float2(0.0);
float2 l9_3959=(*sc_set0.UserUniforms).patternScaleId01;
l9_3958=l9_3959;
float2 l9_3960=float2(0.0);
l9_3960=((l9_3957-(*sc_set0.UserUniforms).Port_Center_N122)*l9_3958)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_3961=float2(0.0);
float2 l9_3962=(*sc_set0.UserUniforms).patternOffsetId01;
l9_3961=l9_3962;
float2 l9_3963=float2(0.0);
l9_3963=l9_3960+l9_3961;
float l9_3964=0.0;
float l9_3965=(*sc_set0.UserUniforms).patternRotateId01;
l9_3964=l9_3965;
float2 l9_3966=float2(0.0);
float2 l9_3967=l9_3963;
float l9_3968=l9_3964;
float2 l9_3969=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_3970=sin(radians(l9_3968));
float l9_3971=cos(radians(l9_3968));
float2 l9_3972=l9_3967-l9_3969;
l9_3972=float2(dot(float2(l9_3971,l9_3970),l9_3972),dot(float2(-l9_3970,l9_3971),l9_3972))+l9_3969;
l9_3966=l9_3972;
float4 l9_3973=float4(0.0);
int l9_3974;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_3975=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3975=0;
}
else
{
l9_3975=in.varStereoViewID;
}
int l9_3976=l9_3975;
l9_3974=1-l9_3976;
}
else
{
int l9_3977=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3977=0;
}
else
{
l9_3977=in.varStereoViewID;
}
int l9_3978=l9_3977;
l9_3974=l9_3978;
}
int l9_3979=l9_3974;
int l9_3980=patternTextureId01Layout_tmp;
int l9_3981=l9_3979;
float2 l9_3982=l9_3966;
bool l9_3983=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_3984=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_3985=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_3986=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_3987=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_3988=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_3989=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_3990=0.0;
bool l9_3991=l9_3988&&(!l9_3986);
float l9_3992=1.0;
float l9_3993=l9_3982.x;
int l9_3994=l9_3985.x;
if (l9_3994==1)
{
l9_3993=fract(l9_3993);
}
else
{
if (l9_3994==2)
{
float l9_3995=fract(l9_3993);
float l9_3996=l9_3993-l9_3995;
float l9_3997=step(0.25,fract(l9_3996*0.5));
l9_3993=mix(l9_3995,1.0-l9_3995,fast::clamp(l9_3997,0.0,1.0));
}
}
l9_3982.x=l9_3993;
float l9_3998=l9_3982.y;
int l9_3999=l9_3985.y;
if (l9_3999==1)
{
l9_3998=fract(l9_3998);
}
else
{
if (l9_3999==2)
{
float l9_4000=fract(l9_3998);
float l9_4001=l9_3998-l9_4000;
float l9_4002=step(0.25,fract(l9_4001*0.5));
l9_3998=mix(l9_4000,1.0-l9_4000,fast::clamp(l9_4002,0.0,1.0));
}
}
l9_3982.y=l9_3998;
if (l9_3986)
{
bool l9_4003=l9_3988;
bool l9_4004;
if (l9_4003)
{
l9_4004=l9_3985.x==3;
}
else
{
l9_4004=l9_4003;
}
float l9_4005=l9_3982.x;
float l9_4006=l9_3987.x;
float l9_4007=l9_3987.z;
bool l9_4008=l9_4004;
float l9_4009=l9_3992;
float l9_4010=fast::clamp(l9_4005,l9_4006,l9_4007);
float l9_4011=step(abs(l9_4005-l9_4010),9.9999997e-06);
l9_4009*=(l9_4011+((1.0-float(l9_4008))*(1.0-l9_4011)));
l9_4005=l9_4010;
l9_3982.x=l9_4005;
l9_3992=l9_4009;
bool l9_4012=l9_3988;
bool l9_4013;
if (l9_4012)
{
l9_4013=l9_3985.y==3;
}
else
{
l9_4013=l9_4012;
}
float l9_4014=l9_3982.y;
float l9_4015=l9_3987.y;
float l9_4016=l9_3987.w;
bool l9_4017=l9_4013;
float l9_4018=l9_3992;
float l9_4019=fast::clamp(l9_4014,l9_4015,l9_4016);
float l9_4020=step(abs(l9_4014-l9_4019),9.9999997e-06);
l9_4018*=(l9_4020+((1.0-float(l9_4017))*(1.0-l9_4020)));
l9_4014=l9_4019;
l9_3982.y=l9_4014;
l9_3992=l9_4018;
}
float2 l9_4021=l9_3982;
bool l9_4022=l9_3983;
float3x3 l9_4023=l9_3984;
if (l9_4022)
{
l9_4021=float2((l9_4023*float3(l9_4021,1.0)).xy);
}
float2 l9_4024=l9_4021;
l9_3982=l9_4024;
float l9_4025=l9_3982.x;
int l9_4026=l9_3985.x;
bool l9_4027=l9_3991;
float l9_4028=l9_3992;
if ((l9_4026==0)||(l9_4026==3))
{
float l9_4029=l9_4025;
float l9_4030=0.0;
float l9_4031=1.0;
bool l9_4032=l9_4027;
float l9_4033=l9_4028;
float l9_4034=fast::clamp(l9_4029,l9_4030,l9_4031);
float l9_4035=step(abs(l9_4029-l9_4034),9.9999997e-06);
l9_4033*=(l9_4035+((1.0-float(l9_4032))*(1.0-l9_4035)));
l9_4029=l9_4034;
l9_4025=l9_4029;
l9_4028=l9_4033;
}
l9_3982.x=l9_4025;
l9_3992=l9_4028;
float l9_4036=l9_3982.y;
int l9_4037=l9_3985.y;
bool l9_4038=l9_3991;
float l9_4039=l9_3992;
if ((l9_4037==0)||(l9_4037==3))
{
float l9_4040=l9_4036;
float l9_4041=0.0;
float l9_4042=1.0;
bool l9_4043=l9_4038;
float l9_4044=l9_4039;
float l9_4045=fast::clamp(l9_4040,l9_4041,l9_4042);
float l9_4046=step(abs(l9_4040-l9_4045),9.9999997e-06);
l9_4044*=(l9_4046+((1.0-float(l9_4043))*(1.0-l9_4046)));
l9_4040=l9_4045;
l9_4036=l9_4040;
l9_4039=l9_4044;
}
l9_3982.y=l9_4036;
l9_3992=l9_4039;
float2 l9_4047=l9_3982;
int l9_4048=l9_3980;
int l9_4049=l9_3981;
float l9_4050=l9_3990;
float2 l9_4051=l9_4047;
int l9_4052=l9_4048;
int l9_4053=l9_4049;
float3 l9_4054=float3(0.0);
if (l9_4052==0)
{
l9_4054=float3(l9_4051,0.0);
}
else
{
if (l9_4052==1)
{
l9_4054=float3(l9_4051.x,(l9_4051.y*0.5)+(0.5-(float(l9_4053)*0.5)),0.0);
}
else
{
l9_4054=float3(l9_4051,float(l9_4053));
}
}
float3 l9_4055=l9_4054;
float3 l9_4056=l9_4055;
float4 l9_4057=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4056.xy,bias(l9_4050));
float4 l9_4058=l9_4057;
if (l9_3988)
{
l9_4058=mix(l9_3989,l9_4058,float4(l9_3992));
}
float4 l9_4059=l9_4058;
l9_3973=l9_4059;
float l9_4060=0.0;
float3 l9_4061=l9_3973.xyz;
float l9_4062=l9_4061.x;
l9_4060=l9_4062;
l9_3849=float4(l9_4060);
l9_3853=l9_3849;
}
l9_3846=l9_3853;
float4 l9_4063=float4(0.0);
l9_4063=l9_3844*l9_3846;
l9_3838=l9_4063;
l9_3843=l9_3838;
}
else
{
float4 l9_4064=float4(0.0);
float4 l9_4065=(*sc_set0.UserUniforms).colorId01;
l9_4064=l9_4065;
float2 l9_4066=float2(0.0);
l9_4066=l9_3840.Surface_UVCoord0;
float4 l9_4067=float4(0.0);
int l9_4068;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4069=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4069=0;
}
else
{
l9_4069=in.varStereoViewID;
}
int l9_4070=l9_4069;
l9_4068=1-l9_4070;
}
else
{
int l9_4071=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4071=0;
}
else
{
l9_4071=in.varStereoViewID;
}
int l9_4072=l9_4071;
l9_4068=l9_4072;
}
int l9_4073=l9_4068;
int l9_4074=greyMaskIdLayout_tmp;
int l9_4075=l9_4073;
float2 l9_4076=l9_4066;
bool l9_4077=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4078=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4079=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4080=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4081=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4082=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4083=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4084=0.0;
bool l9_4085=l9_4082&&(!l9_4080);
float l9_4086=1.0;
float l9_4087=l9_4076.x;
int l9_4088=l9_4079.x;
if (l9_4088==1)
{
l9_4087=fract(l9_4087);
}
else
{
if (l9_4088==2)
{
float l9_4089=fract(l9_4087);
float l9_4090=l9_4087-l9_4089;
float l9_4091=step(0.25,fract(l9_4090*0.5));
l9_4087=mix(l9_4089,1.0-l9_4089,fast::clamp(l9_4091,0.0,1.0));
}
}
l9_4076.x=l9_4087;
float l9_4092=l9_4076.y;
int l9_4093=l9_4079.y;
if (l9_4093==1)
{
l9_4092=fract(l9_4092);
}
else
{
if (l9_4093==2)
{
float l9_4094=fract(l9_4092);
float l9_4095=l9_4092-l9_4094;
float l9_4096=step(0.25,fract(l9_4095*0.5));
l9_4092=mix(l9_4094,1.0-l9_4094,fast::clamp(l9_4096,0.0,1.0));
}
}
l9_4076.y=l9_4092;
if (l9_4080)
{
bool l9_4097=l9_4082;
bool l9_4098;
if (l9_4097)
{
l9_4098=l9_4079.x==3;
}
else
{
l9_4098=l9_4097;
}
float l9_4099=l9_4076.x;
float l9_4100=l9_4081.x;
float l9_4101=l9_4081.z;
bool l9_4102=l9_4098;
float l9_4103=l9_4086;
float l9_4104=fast::clamp(l9_4099,l9_4100,l9_4101);
float l9_4105=step(abs(l9_4099-l9_4104),9.9999997e-06);
l9_4103*=(l9_4105+((1.0-float(l9_4102))*(1.0-l9_4105)));
l9_4099=l9_4104;
l9_4076.x=l9_4099;
l9_4086=l9_4103;
bool l9_4106=l9_4082;
bool l9_4107;
if (l9_4106)
{
l9_4107=l9_4079.y==3;
}
else
{
l9_4107=l9_4106;
}
float l9_4108=l9_4076.y;
float l9_4109=l9_4081.y;
float l9_4110=l9_4081.w;
bool l9_4111=l9_4107;
float l9_4112=l9_4086;
float l9_4113=fast::clamp(l9_4108,l9_4109,l9_4110);
float l9_4114=step(abs(l9_4108-l9_4113),9.9999997e-06);
l9_4112*=(l9_4114+((1.0-float(l9_4111))*(1.0-l9_4114)));
l9_4108=l9_4113;
l9_4076.y=l9_4108;
l9_4086=l9_4112;
}
float2 l9_4115=l9_4076;
bool l9_4116=l9_4077;
float3x3 l9_4117=l9_4078;
if (l9_4116)
{
l9_4115=float2((l9_4117*float3(l9_4115,1.0)).xy);
}
float2 l9_4118=l9_4115;
l9_4076=l9_4118;
float l9_4119=l9_4076.x;
int l9_4120=l9_4079.x;
bool l9_4121=l9_4085;
float l9_4122=l9_4086;
if ((l9_4120==0)||(l9_4120==3))
{
float l9_4123=l9_4119;
float l9_4124=0.0;
float l9_4125=1.0;
bool l9_4126=l9_4121;
float l9_4127=l9_4122;
float l9_4128=fast::clamp(l9_4123,l9_4124,l9_4125);
float l9_4129=step(abs(l9_4123-l9_4128),9.9999997e-06);
l9_4127*=(l9_4129+((1.0-float(l9_4126))*(1.0-l9_4129)));
l9_4123=l9_4128;
l9_4119=l9_4123;
l9_4122=l9_4127;
}
l9_4076.x=l9_4119;
l9_4086=l9_4122;
float l9_4130=l9_4076.y;
int l9_4131=l9_4079.y;
bool l9_4132=l9_4085;
float l9_4133=l9_4086;
if ((l9_4131==0)||(l9_4131==3))
{
float l9_4134=l9_4130;
float l9_4135=0.0;
float l9_4136=1.0;
bool l9_4137=l9_4132;
float l9_4138=l9_4133;
float l9_4139=fast::clamp(l9_4134,l9_4135,l9_4136);
float l9_4140=step(abs(l9_4134-l9_4139),9.9999997e-06);
l9_4138*=(l9_4140+((1.0-float(l9_4137))*(1.0-l9_4140)));
l9_4134=l9_4139;
l9_4130=l9_4134;
l9_4133=l9_4138;
}
l9_4076.y=l9_4130;
l9_4086=l9_4133;
float2 l9_4141=l9_4076;
int l9_4142=l9_4074;
int l9_4143=l9_4075;
float l9_4144=l9_4084;
float2 l9_4145=l9_4141;
int l9_4146=l9_4142;
int l9_4147=l9_4143;
float3 l9_4148=float3(0.0);
if (l9_4146==0)
{
l9_4148=float3(l9_4145,0.0);
}
else
{
if (l9_4146==1)
{
l9_4148=float3(l9_4145.x,(l9_4145.y*0.5)+(0.5-(float(l9_4147)*0.5)),0.0);
}
else
{
l9_4148=float3(l9_4145,float(l9_4147));
}
}
float3 l9_4149=l9_4148;
float3 l9_4150=l9_4149;
float4 l9_4151=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4150.xy,bias(l9_4144));
float4 l9_4152=l9_4151;
if (l9_4082)
{
l9_4152=mix(l9_4083,l9_4152,float4(l9_4086));
}
float4 l9_4153=l9_4152;
l9_4067=l9_4153;
float l9_4154=0.0;
l9_4154=l9_4067.x;
float l9_4155=0.0;
l9_4155=step(l9_4154,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4156=float4(0.0);
l9_4156=l9_4064*float4(l9_4155);
l9_3839=l9_4156;
l9_3843=l9_3839;
}
l9_3836=l9_3843;
float2 l9_4157=float2(0.0);
l9_4157=l9_3822.Surface_UVCoord0;
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
l9_4247=l9_3836*float4(l9_4246);
float4 l9_4248=float4(0.0);
float4 l9_4249=(*sc_set0.UserUniforms).colorId01;
l9_4248=l9_4249;
float4 l9_4250=float4(0.0);
l9_4250=l9_4248*float4(l9_4246);
float4 l9_4251=float4(0.0);
float4 l9_4252=l9_4247;
float4 l9_4253=l9_4250;
float4 l9_4254=l9_4252;
float4 l9_4255=l9_4253;
float3 l9_4256=l9_4254.xyz*l9_4254.w;
l9_4254=float4(l9_4256.x,l9_4256.y,l9_4256.z,l9_4254.w);
float4 l9_4257=l9_4254+(l9_4255*(1.0-l9_4254.w));
l9_4251=l9_4257;
float4 l9_4258=float4(0.0);
l9_4258=float4(l9_3830)*l9_4251;
float4 l9_4259=float4(0.0);
l9_4259=l9_4258+l9_4251;
l9_3820=l9_4259;
l9_3825=l9_3820;
}
else
{
float4 l9_4260=float4(0.0);
float l9_4261=0.0;
float4 l9_4262=float4(0.0);
float4 l9_4263=float4(0.0);
ssGlobals l9_4264=l9_3822;
float l9_4265=0.0;
float l9_4266=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_4265=l9_4266;
l9_4261=l9_4265;
float4 l9_4267;
if ((l9_4261*1.0)!=0.0)
{
float4 l9_4268=float4(0.0);
float4 l9_4269=(*sc_set0.UserUniforms).patternColorId01;
l9_4268=l9_4269;
float4 l9_4270=float4(0.0);
float l9_4271=0.0;
float4 l9_4272=float4(0.0);
float4 l9_4273=float4(0.0);
ssGlobals l9_4274=l9_4264;
float l9_4275=0.0;
float l9_4276=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_4275=l9_4276;
l9_4271=l9_4275;
float4 l9_4277;
if ((l9_4271*1.0)!=0.0)
{
float2 l9_4278=float2(0.0);
l9_4278=l9_4274.Surface_UVCoord0;
float2 l9_4279=float2(0.0);
float2 l9_4280=(*sc_set0.UserUniforms).patternScaleId01;
l9_4279=l9_4280;
float2 l9_4281=float2(0.0);
l9_4281=((l9_4278-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4279)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4282=float2(0.0);
float2 l9_4283=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4282=l9_4283;
float2 l9_4284=float2(0.0);
l9_4284=l9_4281+l9_4282;
float l9_4285=0.0;
float l9_4286=(*sc_set0.UserUniforms).patternRotateId01;
l9_4285=l9_4286;
float2 l9_4287=float2(0.0);
float2 l9_4288=l9_4284;
float l9_4289=l9_4285;
float2 l9_4290=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4291=sin(radians(l9_4289));
float l9_4292=cos(radians(l9_4289));
float2 l9_4293=l9_4288-l9_4290;
l9_4293=float2(dot(float2(l9_4292,l9_4291),l9_4293),dot(float2(-l9_4291,l9_4292),l9_4293))+l9_4290;
l9_4287=l9_4293;
float4 l9_4294=float4(0.0);
int l9_4295;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4296=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4296=0;
}
else
{
l9_4296=in.varStereoViewID;
}
int l9_4297=l9_4296;
l9_4295=1-l9_4297;
}
else
{
int l9_4298=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4298=0;
}
else
{
l9_4298=in.varStereoViewID;
}
int l9_4299=l9_4298;
l9_4295=l9_4299;
}
int l9_4300=l9_4295;
int l9_4301=patternTextureId01Layout_tmp;
int l9_4302=l9_4300;
float2 l9_4303=l9_4287;
bool l9_4304=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4305=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4306=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4307=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4308=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4309=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4310=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4311=0.0;
bool l9_4312=l9_4309&&(!l9_4307);
float l9_4313=1.0;
float l9_4314=l9_4303.x;
int l9_4315=l9_4306.x;
if (l9_4315==1)
{
l9_4314=fract(l9_4314);
}
else
{
if (l9_4315==2)
{
float l9_4316=fract(l9_4314);
float l9_4317=l9_4314-l9_4316;
float l9_4318=step(0.25,fract(l9_4317*0.5));
l9_4314=mix(l9_4316,1.0-l9_4316,fast::clamp(l9_4318,0.0,1.0));
}
}
l9_4303.x=l9_4314;
float l9_4319=l9_4303.y;
int l9_4320=l9_4306.y;
if (l9_4320==1)
{
l9_4319=fract(l9_4319);
}
else
{
if (l9_4320==2)
{
float l9_4321=fract(l9_4319);
float l9_4322=l9_4319-l9_4321;
float l9_4323=step(0.25,fract(l9_4322*0.5));
l9_4319=mix(l9_4321,1.0-l9_4321,fast::clamp(l9_4323,0.0,1.0));
}
}
l9_4303.y=l9_4319;
if (l9_4307)
{
bool l9_4324=l9_4309;
bool l9_4325;
if (l9_4324)
{
l9_4325=l9_4306.x==3;
}
else
{
l9_4325=l9_4324;
}
float l9_4326=l9_4303.x;
float l9_4327=l9_4308.x;
float l9_4328=l9_4308.z;
bool l9_4329=l9_4325;
float l9_4330=l9_4313;
float l9_4331=fast::clamp(l9_4326,l9_4327,l9_4328);
float l9_4332=step(abs(l9_4326-l9_4331),9.9999997e-06);
l9_4330*=(l9_4332+((1.0-float(l9_4329))*(1.0-l9_4332)));
l9_4326=l9_4331;
l9_4303.x=l9_4326;
l9_4313=l9_4330;
bool l9_4333=l9_4309;
bool l9_4334;
if (l9_4333)
{
l9_4334=l9_4306.y==3;
}
else
{
l9_4334=l9_4333;
}
float l9_4335=l9_4303.y;
float l9_4336=l9_4308.y;
float l9_4337=l9_4308.w;
bool l9_4338=l9_4334;
float l9_4339=l9_4313;
float l9_4340=fast::clamp(l9_4335,l9_4336,l9_4337);
float l9_4341=step(abs(l9_4335-l9_4340),9.9999997e-06);
l9_4339*=(l9_4341+((1.0-float(l9_4338))*(1.0-l9_4341)));
l9_4335=l9_4340;
l9_4303.y=l9_4335;
l9_4313=l9_4339;
}
float2 l9_4342=l9_4303;
bool l9_4343=l9_4304;
float3x3 l9_4344=l9_4305;
if (l9_4343)
{
l9_4342=float2((l9_4344*float3(l9_4342,1.0)).xy);
}
float2 l9_4345=l9_4342;
l9_4303=l9_4345;
float l9_4346=l9_4303.x;
int l9_4347=l9_4306.x;
bool l9_4348=l9_4312;
float l9_4349=l9_4313;
if ((l9_4347==0)||(l9_4347==3))
{
float l9_4350=l9_4346;
float l9_4351=0.0;
float l9_4352=1.0;
bool l9_4353=l9_4348;
float l9_4354=l9_4349;
float l9_4355=fast::clamp(l9_4350,l9_4351,l9_4352);
float l9_4356=step(abs(l9_4350-l9_4355),9.9999997e-06);
l9_4354*=(l9_4356+((1.0-float(l9_4353))*(1.0-l9_4356)));
l9_4350=l9_4355;
l9_4346=l9_4350;
l9_4349=l9_4354;
}
l9_4303.x=l9_4346;
l9_4313=l9_4349;
float l9_4357=l9_4303.y;
int l9_4358=l9_4306.y;
bool l9_4359=l9_4312;
float l9_4360=l9_4313;
if ((l9_4358==0)||(l9_4358==3))
{
float l9_4361=l9_4357;
float l9_4362=0.0;
float l9_4363=1.0;
bool l9_4364=l9_4359;
float l9_4365=l9_4360;
float l9_4366=fast::clamp(l9_4361,l9_4362,l9_4363);
float l9_4367=step(abs(l9_4361-l9_4366),9.9999997e-06);
l9_4365*=(l9_4367+((1.0-float(l9_4364))*(1.0-l9_4367)));
l9_4361=l9_4366;
l9_4357=l9_4361;
l9_4360=l9_4365;
}
l9_4303.y=l9_4357;
l9_4313=l9_4360;
float2 l9_4368=l9_4303;
int l9_4369=l9_4301;
int l9_4370=l9_4302;
float l9_4371=l9_4311;
float2 l9_4372=l9_4368;
int l9_4373=l9_4369;
int l9_4374=l9_4370;
float3 l9_4375=float3(0.0);
if (l9_4373==0)
{
l9_4375=float3(l9_4372,0.0);
}
else
{
if (l9_4373==1)
{
l9_4375=float3(l9_4372.x,(l9_4372.y*0.5)+(0.5-(float(l9_4374)*0.5)),0.0);
}
else
{
l9_4375=float3(l9_4372,float(l9_4374));
}
}
float3 l9_4376=l9_4375;
float3 l9_4377=l9_4376;
float4 l9_4378=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4377.xy,bias(l9_4371));
float4 l9_4379=l9_4378;
if (l9_4309)
{
l9_4379=mix(l9_4310,l9_4379,float4(l9_4313));
}
float4 l9_4380=l9_4379;
l9_4294=l9_4380;
l9_4272=l9_4294;
l9_4277=l9_4272;
}
else
{
float2 l9_4381=float2(0.0);
l9_4381=l9_4274.Surface_UVCoord0;
float2 l9_4382=float2(0.0);
float2 l9_4383=(*sc_set0.UserUniforms).patternScaleId01;
l9_4382=l9_4383;
float2 l9_4384=float2(0.0);
l9_4384=((l9_4381-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4382)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4385=float2(0.0);
float2 l9_4386=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4385=l9_4386;
float2 l9_4387=float2(0.0);
l9_4387=l9_4384+l9_4385;
float l9_4388=0.0;
float l9_4389=(*sc_set0.UserUniforms).patternRotateId01;
l9_4388=l9_4389;
float2 l9_4390=float2(0.0);
float2 l9_4391=l9_4387;
float l9_4392=l9_4388;
float2 l9_4393=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4394=sin(radians(l9_4392));
float l9_4395=cos(radians(l9_4392));
float2 l9_4396=l9_4391-l9_4393;
l9_4396=float2(dot(float2(l9_4395,l9_4394),l9_4396),dot(float2(-l9_4394,l9_4395),l9_4396))+l9_4393;
l9_4390=l9_4396;
float4 l9_4397=float4(0.0);
int l9_4398;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4399=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4399=0;
}
else
{
l9_4399=in.varStereoViewID;
}
int l9_4400=l9_4399;
l9_4398=1-l9_4400;
}
else
{
int l9_4401=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4401=0;
}
else
{
l9_4401=in.varStereoViewID;
}
int l9_4402=l9_4401;
l9_4398=l9_4402;
}
int l9_4403=l9_4398;
int l9_4404=patternTextureId01Layout_tmp;
int l9_4405=l9_4403;
float2 l9_4406=l9_4390;
bool l9_4407=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4408=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4409=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4410=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4411=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4412=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4413=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4414=0.0;
bool l9_4415=l9_4412&&(!l9_4410);
float l9_4416=1.0;
float l9_4417=l9_4406.x;
int l9_4418=l9_4409.x;
if (l9_4418==1)
{
l9_4417=fract(l9_4417);
}
else
{
if (l9_4418==2)
{
float l9_4419=fract(l9_4417);
float l9_4420=l9_4417-l9_4419;
float l9_4421=step(0.25,fract(l9_4420*0.5));
l9_4417=mix(l9_4419,1.0-l9_4419,fast::clamp(l9_4421,0.0,1.0));
}
}
l9_4406.x=l9_4417;
float l9_4422=l9_4406.y;
int l9_4423=l9_4409.y;
if (l9_4423==1)
{
l9_4422=fract(l9_4422);
}
else
{
if (l9_4423==2)
{
float l9_4424=fract(l9_4422);
float l9_4425=l9_4422-l9_4424;
float l9_4426=step(0.25,fract(l9_4425*0.5));
l9_4422=mix(l9_4424,1.0-l9_4424,fast::clamp(l9_4426,0.0,1.0));
}
}
l9_4406.y=l9_4422;
if (l9_4410)
{
bool l9_4427=l9_4412;
bool l9_4428;
if (l9_4427)
{
l9_4428=l9_4409.x==3;
}
else
{
l9_4428=l9_4427;
}
float l9_4429=l9_4406.x;
float l9_4430=l9_4411.x;
float l9_4431=l9_4411.z;
bool l9_4432=l9_4428;
float l9_4433=l9_4416;
float l9_4434=fast::clamp(l9_4429,l9_4430,l9_4431);
float l9_4435=step(abs(l9_4429-l9_4434),9.9999997e-06);
l9_4433*=(l9_4435+((1.0-float(l9_4432))*(1.0-l9_4435)));
l9_4429=l9_4434;
l9_4406.x=l9_4429;
l9_4416=l9_4433;
bool l9_4436=l9_4412;
bool l9_4437;
if (l9_4436)
{
l9_4437=l9_4409.y==3;
}
else
{
l9_4437=l9_4436;
}
float l9_4438=l9_4406.y;
float l9_4439=l9_4411.y;
float l9_4440=l9_4411.w;
bool l9_4441=l9_4437;
float l9_4442=l9_4416;
float l9_4443=fast::clamp(l9_4438,l9_4439,l9_4440);
float l9_4444=step(abs(l9_4438-l9_4443),9.9999997e-06);
l9_4442*=(l9_4444+((1.0-float(l9_4441))*(1.0-l9_4444)));
l9_4438=l9_4443;
l9_4406.y=l9_4438;
l9_4416=l9_4442;
}
float2 l9_4445=l9_4406;
bool l9_4446=l9_4407;
float3x3 l9_4447=l9_4408;
if (l9_4446)
{
l9_4445=float2((l9_4447*float3(l9_4445,1.0)).xy);
}
float2 l9_4448=l9_4445;
l9_4406=l9_4448;
float l9_4449=l9_4406.x;
int l9_4450=l9_4409.x;
bool l9_4451=l9_4415;
float l9_4452=l9_4416;
if ((l9_4450==0)||(l9_4450==3))
{
float l9_4453=l9_4449;
float l9_4454=0.0;
float l9_4455=1.0;
bool l9_4456=l9_4451;
float l9_4457=l9_4452;
float l9_4458=fast::clamp(l9_4453,l9_4454,l9_4455);
float l9_4459=step(abs(l9_4453-l9_4458),9.9999997e-06);
l9_4457*=(l9_4459+((1.0-float(l9_4456))*(1.0-l9_4459)));
l9_4453=l9_4458;
l9_4449=l9_4453;
l9_4452=l9_4457;
}
l9_4406.x=l9_4449;
l9_4416=l9_4452;
float l9_4460=l9_4406.y;
int l9_4461=l9_4409.y;
bool l9_4462=l9_4415;
float l9_4463=l9_4416;
if ((l9_4461==0)||(l9_4461==3))
{
float l9_4464=l9_4460;
float l9_4465=0.0;
float l9_4466=1.0;
bool l9_4467=l9_4462;
float l9_4468=l9_4463;
float l9_4469=fast::clamp(l9_4464,l9_4465,l9_4466);
float l9_4470=step(abs(l9_4464-l9_4469),9.9999997e-06);
l9_4468*=(l9_4470+((1.0-float(l9_4467))*(1.0-l9_4470)));
l9_4464=l9_4469;
l9_4460=l9_4464;
l9_4463=l9_4468;
}
l9_4406.y=l9_4460;
l9_4416=l9_4463;
float2 l9_4471=l9_4406;
int l9_4472=l9_4404;
int l9_4473=l9_4405;
float l9_4474=l9_4414;
float2 l9_4475=l9_4471;
int l9_4476=l9_4472;
int l9_4477=l9_4473;
float3 l9_4478=float3(0.0);
if (l9_4476==0)
{
l9_4478=float3(l9_4475,0.0);
}
else
{
if (l9_4476==1)
{
l9_4478=float3(l9_4475.x,(l9_4475.y*0.5)+(0.5-(float(l9_4477)*0.5)),0.0);
}
else
{
l9_4478=float3(l9_4475,float(l9_4477));
}
}
float3 l9_4479=l9_4478;
float3 l9_4480=l9_4479;
float4 l9_4481=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4480.xy,bias(l9_4474));
float4 l9_4482=l9_4481;
if (l9_4412)
{
l9_4482=mix(l9_4413,l9_4482,float4(l9_4416));
}
float4 l9_4483=l9_4482;
l9_4397=l9_4483;
float l9_4484=0.0;
float3 l9_4485=l9_4397.xyz;
float l9_4486=l9_4485.x;
l9_4484=l9_4486;
l9_4273=float4(l9_4484);
l9_4277=l9_4273;
}
l9_4270=l9_4277;
float4 l9_4487=float4(0.0);
l9_4487=l9_4268*l9_4270;
l9_4262=l9_4487;
l9_4267=l9_4262;
}
else
{
float4 l9_4488=float4(0.0);
float4 l9_4489=(*sc_set0.UserUniforms).colorId01;
l9_4488=l9_4489;
float2 l9_4490=float2(0.0);
l9_4490=l9_4264.Surface_UVCoord0;
float4 l9_4491=float4(0.0);
int l9_4492;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4493=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4493=0;
}
else
{
l9_4493=in.varStereoViewID;
}
int l9_4494=l9_4493;
l9_4492=1-l9_4494;
}
else
{
int l9_4495=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4495=0;
}
else
{
l9_4495=in.varStereoViewID;
}
int l9_4496=l9_4495;
l9_4492=l9_4496;
}
int l9_4497=l9_4492;
int l9_4498=greyMaskIdLayout_tmp;
int l9_4499=l9_4497;
float2 l9_4500=l9_4490;
bool l9_4501=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4502=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4503=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4504=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4505=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4506=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4507=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4508=0.0;
bool l9_4509=l9_4506&&(!l9_4504);
float l9_4510=1.0;
float l9_4511=l9_4500.x;
int l9_4512=l9_4503.x;
if (l9_4512==1)
{
l9_4511=fract(l9_4511);
}
else
{
if (l9_4512==2)
{
float l9_4513=fract(l9_4511);
float l9_4514=l9_4511-l9_4513;
float l9_4515=step(0.25,fract(l9_4514*0.5));
l9_4511=mix(l9_4513,1.0-l9_4513,fast::clamp(l9_4515,0.0,1.0));
}
}
l9_4500.x=l9_4511;
float l9_4516=l9_4500.y;
int l9_4517=l9_4503.y;
if (l9_4517==1)
{
l9_4516=fract(l9_4516);
}
else
{
if (l9_4517==2)
{
float l9_4518=fract(l9_4516);
float l9_4519=l9_4516-l9_4518;
float l9_4520=step(0.25,fract(l9_4519*0.5));
l9_4516=mix(l9_4518,1.0-l9_4518,fast::clamp(l9_4520,0.0,1.0));
}
}
l9_4500.y=l9_4516;
if (l9_4504)
{
bool l9_4521=l9_4506;
bool l9_4522;
if (l9_4521)
{
l9_4522=l9_4503.x==3;
}
else
{
l9_4522=l9_4521;
}
float l9_4523=l9_4500.x;
float l9_4524=l9_4505.x;
float l9_4525=l9_4505.z;
bool l9_4526=l9_4522;
float l9_4527=l9_4510;
float l9_4528=fast::clamp(l9_4523,l9_4524,l9_4525);
float l9_4529=step(abs(l9_4523-l9_4528),9.9999997e-06);
l9_4527*=(l9_4529+((1.0-float(l9_4526))*(1.0-l9_4529)));
l9_4523=l9_4528;
l9_4500.x=l9_4523;
l9_4510=l9_4527;
bool l9_4530=l9_4506;
bool l9_4531;
if (l9_4530)
{
l9_4531=l9_4503.y==3;
}
else
{
l9_4531=l9_4530;
}
float l9_4532=l9_4500.y;
float l9_4533=l9_4505.y;
float l9_4534=l9_4505.w;
bool l9_4535=l9_4531;
float l9_4536=l9_4510;
float l9_4537=fast::clamp(l9_4532,l9_4533,l9_4534);
float l9_4538=step(abs(l9_4532-l9_4537),9.9999997e-06);
l9_4536*=(l9_4538+((1.0-float(l9_4535))*(1.0-l9_4538)));
l9_4532=l9_4537;
l9_4500.y=l9_4532;
l9_4510=l9_4536;
}
float2 l9_4539=l9_4500;
bool l9_4540=l9_4501;
float3x3 l9_4541=l9_4502;
if (l9_4540)
{
l9_4539=float2((l9_4541*float3(l9_4539,1.0)).xy);
}
float2 l9_4542=l9_4539;
l9_4500=l9_4542;
float l9_4543=l9_4500.x;
int l9_4544=l9_4503.x;
bool l9_4545=l9_4509;
float l9_4546=l9_4510;
if ((l9_4544==0)||(l9_4544==3))
{
float l9_4547=l9_4543;
float l9_4548=0.0;
float l9_4549=1.0;
bool l9_4550=l9_4545;
float l9_4551=l9_4546;
float l9_4552=fast::clamp(l9_4547,l9_4548,l9_4549);
float l9_4553=step(abs(l9_4547-l9_4552),9.9999997e-06);
l9_4551*=(l9_4553+((1.0-float(l9_4550))*(1.0-l9_4553)));
l9_4547=l9_4552;
l9_4543=l9_4547;
l9_4546=l9_4551;
}
l9_4500.x=l9_4543;
l9_4510=l9_4546;
float l9_4554=l9_4500.y;
int l9_4555=l9_4503.y;
bool l9_4556=l9_4509;
float l9_4557=l9_4510;
if ((l9_4555==0)||(l9_4555==3))
{
float l9_4558=l9_4554;
float l9_4559=0.0;
float l9_4560=1.0;
bool l9_4561=l9_4556;
float l9_4562=l9_4557;
float l9_4563=fast::clamp(l9_4558,l9_4559,l9_4560);
float l9_4564=step(abs(l9_4558-l9_4563),9.9999997e-06);
l9_4562*=(l9_4564+((1.0-float(l9_4561))*(1.0-l9_4564)));
l9_4558=l9_4563;
l9_4554=l9_4558;
l9_4557=l9_4562;
}
l9_4500.y=l9_4554;
l9_4510=l9_4557;
float2 l9_4565=l9_4500;
int l9_4566=l9_4498;
int l9_4567=l9_4499;
float l9_4568=l9_4508;
float2 l9_4569=l9_4565;
int l9_4570=l9_4566;
int l9_4571=l9_4567;
float3 l9_4572=float3(0.0);
if (l9_4570==0)
{
l9_4572=float3(l9_4569,0.0);
}
else
{
if (l9_4570==1)
{
l9_4572=float3(l9_4569.x,(l9_4569.y*0.5)+(0.5-(float(l9_4571)*0.5)),0.0);
}
else
{
l9_4572=float3(l9_4569,float(l9_4571));
}
}
float3 l9_4573=l9_4572;
float3 l9_4574=l9_4573;
float4 l9_4575=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_4574.xy,bias(l9_4568));
float4 l9_4576=l9_4575;
if (l9_4506)
{
l9_4576=mix(l9_4507,l9_4576,float4(l9_4510));
}
float4 l9_4577=l9_4576;
l9_4491=l9_4577;
float l9_4578=0.0;
l9_4578=l9_4491.x;
float l9_4579=0.0;
l9_4579=step(l9_4578,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_4580=float4(0.0);
l9_4580=l9_4488*float4(l9_4579);
l9_4263=l9_4580;
l9_4267=l9_4263;
}
l9_4260=l9_4267;
float2 l9_4581=float2(0.0);
l9_4581=l9_3822.Surface_UVCoord0;
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
l9_4671=l9_4260*float4(l9_4670);
float4 l9_4672=float4(0.0);
float4 l9_4673=(*sc_set0.UserUniforms).colorId01;
l9_4672=l9_4673;
float4 l9_4674=float4(0.0);
l9_4674=l9_4672*float4(l9_4670);
float4 l9_4675=float4(0.0);
float4 l9_4676=l9_4671;
float4 l9_4677=l9_4674;
float4 l9_4678=l9_4676;
float4 l9_4679=l9_4677;
float3 l9_4680=l9_4678.xyz*l9_4678.w;
l9_4678=float4(l9_4680.x,l9_4680.y,l9_4680.z,l9_4678.w);
float4 l9_4681=l9_4678+(l9_4679*(1.0-l9_4678.w));
l9_4675=l9_4681;
l9_3821=l9_4675;
l9_3825=l9_3821;
}
l9_3818=l9_3825;
float l9_4682=0.0;
float l9_4683=(*sc_set0.UserUniforms).metallicId01;
l9_4682=l9_4683;
float l9_4684=0.0;
float l9_4685=(*sc_set0.UserUniforms).rougnessId01;
l9_4684=l9_4685;
float4 l9_4686=float4(0.0);
float3 l9_4687=l9_3818.xyz;
float l9_4688=(*sc_set0.UserUniforms).Port_Opacity_N152;
float3 l9_4689=(*sc_set0.UserUniforms).Port_Emissive_N152;
float l9_4690=l9_4682;
float l9_4691=l9_4684;
float3 l9_4692=(*sc_set0.UserUniforms).Port_AO_N152;
float3 l9_4693=(*sc_set0.UserUniforms).Port_SpecularAO_N152;
ssGlobals l9_4694=l9_3814;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_4694.BumpedNormal=l9_4694.VertexNormal_WorldSpace;
}
float l9_4695=l9_4688;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_4695<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_4696=gl_FragCoord;
float2 l9_4697=floor(mod(l9_4696.xy,float2(4.0)));
float l9_4698=(mod(dot(l9_4697,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_4695<l9_4698)
{
discard_fragment();
}
}
l9_4687=fast::max(l9_4687,float3(0.0));
float4 l9_4699;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_4699=float4(l9_4687,l9_4688);
}
else
{
l9_4690=fast::clamp(l9_4690,0.0,1.0);
l9_4691=fast::clamp(l9_4691,0.0,1.0);
float3 l9_4700=l9_4687;
float l9_4701=l9_4688;
float3 l9_4702=l9_4694.BumpedNormal;
float3 l9_4703=l9_4694.PositionWS;
float3 l9_4704=l9_4694.ViewDirWS;
float3 l9_4705=l9_4689;
float l9_4706=l9_4690;
float l9_4707=l9_4691;
float3 l9_4708=l9_4692;
float3 l9_4709=l9_4693;
l9_4699=ngsCalculateLighting(l9_4700,l9_4701,l9_4702,l9_4703,l9_4704,l9_4705,l9_4706,l9_4707,l9_4708,l9_4709,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
l9_4699=fast::max(l9_4699,float4(0.0));
l9_4686=l9_4699;
l9_3812=l9_4686;
l9_3817=l9_3812;
}
else
{
float4 l9_4710=float4(0.0);
float l9_4711=0.0;
float4 l9_4712=float4(0.0);
float4 l9_4713=float4(0.0);
ssGlobals l9_4714=l9_3814;
float l9_4715=0.0;
float l9_4716=float((*sc_set0.UserUniforms).rimOnOffId01!=0);
l9_4715=l9_4716;
l9_4711=l9_4715;
float4 l9_4717;
if ((l9_4711*1.0)!=0.0)
{
float l9_4718=0.0;
float l9_4719=(*sc_set0.UserUniforms).rimExpId01;
l9_4718=l9_4719;
float l9_4720=0.0;
float l9_4721=(*sc_set0.UserUniforms).rimIntId01;
l9_4720=l9_4721;
float l9_4722=0.0;
float l9_4723=l9_4718;
float l9_4724=l9_4720;
ssGlobals l9_4725=l9_4714;
float l9_4726=abs(dot(-l9_4725.ViewDirWS,l9_4725.VertexNormal_WorldSpace));
float l9_4727=1.0-pow(1.0-l9_4726,l9_4723);
l9_4727=fast::max(l9_4727,0.0);
l9_4727*=l9_4724;
l9_4722=l9_4727;
float4 l9_4728=float4(0.0);
float l9_4729=0.0;
float4 l9_4730=float4(0.0);
float4 l9_4731=float4(0.0);
ssGlobals l9_4732=l9_4714;
float l9_4733=0.0;
float l9_4734=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_4733=l9_4734;
l9_4729=l9_4733;
float4 l9_4735;
if ((l9_4729*1.0)!=0.0)
{
float4 l9_4736=float4(0.0);
float4 l9_4737=(*sc_set0.UserUniforms).patternColorId01;
l9_4736=l9_4737;
float4 l9_4738=float4(0.0);
float l9_4739=0.0;
float4 l9_4740=float4(0.0);
float4 l9_4741=float4(0.0);
ssGlobals l9_4742=l9_4732;
float l9_4743=0.0;
float l9_4744=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_4743=l9_4744;
l9_4739=l9_4743;
float4 l9_4745;
if ((l9_4739*1.0)!=0.0)
{
float2 l9_4746=float2(0.0);
l9_4746=l9_4742.Surface_UVCoord0;
float2 l9_4747=float2(0.0);
float2 l9_4748=(*sc_set0.UserUniforms).patternScaleId01;
l9_4747=l9_4748;
float2 l9_4749=float2(0.0);
l9_4749=((l9_4746-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4747)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4750=float2(0.0);
float2 l9_4751=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4750=l9_4751;
float2 l9_4752=float2(0.0);
l9_4752=l9_4749+l9_4750;
float l9_4753=0.0;
float l9_4754=(*sc_set0.UserUniforms).patternRotateId01;
l9_4753=l9_4754;
float2 l9_4755=float2(0.0);
float2 l9_4756=l9_4752;
float l9_4757=l9_4753;
float2 l9_4758=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4759=sin(radians(l9_4757));
float l9_4760=cos(radians(l9_4757));
float2 l9_4761=l9_4756-l9_4758;
l9_4761=float2(dot(float2(l9_4760,l9_4759),l9_4761),dot(float2(-l9_4759,l9_4760),l9_4761))+l9_4758;
l9_4755=l9_4761;
float4 l9_4762=float4(0.0);
int l9_4763;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4764=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4764=0;
}
else
{
l9_4764=in.varStereoViewID;
}
int l9_4765=l9_4764;
l9_4763=1-l9_4765;
}
else
{
int l9_4766=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4766=0;
}
else
{
l9_4766=in.varStereoViewID;
}
int l9_4767=l9_4766;
l9_4763=l9_4767;
}
int l9_4768=l9_4763;
int l9_4769=patternTextureId01Layout_tmp;
int l9_4770=l9_4768;
float2 l9_4771=l9_4755;
bool l9_4772=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4773=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4774=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4775=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4776=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4777=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4778=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4779=0.0;
bool l9_4780=l9_4777&&(!l9_4775);
float l9_4781=1.0;
float l9_4782=l9_4771.x;
int l9_4783=l9_4774.x;
if (l9_4783==1)
{
l9_4782=fract(l9_4782);
}
else
{
if (l9_4783==2)
{
float l9_4784=fract(l9_4782);
float l9_4785=l9_4782-l9_4784;
float l9_4786=step(0.25,fract(l9_4785*0.5));
l9_4782=mix(l9_4784,1.0-l9_4784,fast::clamp(l9_4786,0.0,1.0));
}
}
l9_4771.x=l9_4782;
float l9_4787=l9_4771.y;
int l9_4788=l9_4774.y;
if (l9_4788==1)
{
l9_4787=fract(l9_4787);
}
else
{
if (l9_4788==2)
{
float l9_4789=fract(l9_4787);
float l9_4790=l9_4787-l9_4789;
float l9_4791=step(0.25,fract(l9_4790*0.5));
l9_4787=mix(l9_4789,1.0-l9_4789,fast::clamp(l9_4791,0.0,1.0));
}
}
l9_4771.y=l9_4787;
if (l9_4775)
{
bool l9_4792=l9_4777;
bool l9_4793;
if (l9_4792)
{
l9_4793=l9_4774.x==3;
}
else
{
l9_4793=l9_4792;
}
float l9_4794=l9_4771.x;
float l9_4795=l9_4776.x;
float l9_4796=l9_4776.z;
bool l9_4797=l9_4793;
float l9_4798=l9_4781;
float l9_4799=fast::clamp(l9_4794,l9_4795,l9_4796);
float l9_4800=step(abs(l9_4794-l9_4799),9.9999997e-06);
l9_4798*=(l9_4800+((1.0-float(l9_4797))*(1.0-l9_4800)));
l9_4794=l9_4799;
l9_4771.x=l9_4794;
l9_4781=l9_4798;
bool l9_4801=l9_4777;
bool l9_4802;
if (l9_4801)
{
l9_4802=l9_4774.y==3;
}
else
{
l9_4802=l9_4801;
}
float l9_4803=l9_4771.y;
float l9_4804=l9_4776.y;
float l9_4805=l9_4776.w;
bool l9_4806=l9_4802;
float l9_4807=l9_4781;
float l9_4808=fast::clamp(l9_4803,l9_4804,l9_4805);
float l9_4809=step(abs(l9_4803-l9_4808),9.9999997e-06);
l9_4807*=(l9_4809+((1.0-float(l9_4806))*(1.0-l9_4809)));
l9_4803=l9_4808;
l9_4771.y=l9_4803;
l9_4781=l9_4807;
}
float2 l9_4810=l9_4771;
bool l9_4811=l9_4772;
float3x3 l9_4812=l9_4773;
if (l9_4811)
{
l9_4810=float2((l9_4812*float3(l9_4810,1.0)).xy);
}
float2 l9_4813=l9_4810;
l9_4771=l9_4813;
float l9_4814=l9_4771.x;
int l9_4815=l9_4774.x;
bool l9_4816=l9_4780;
float l9_4817=l9_4781;
if ((l9_4815==0)||(l9_4815==3))
{
float l9_4818=l9_4814;
float l9_4819=0.0;
float l9_4820=1.0;
bool l9_4821=l9_4816;
float l9_4822=l9_4817;
float l9_4823=fast::clamp(l9_4818,l9_4819,l9_4820);
float l9_4824=step(abs(l9_4818-l9_4823),9.9999997e-06);
l9_4822*=(l9_4824+((1.0-float(l9_4821))*(1.0-l9_4824)));
l9_4818=l9_4823;
l9_4814=l9_4818;
l9_4817=l9_4822;
}
l9_4771.x=l9_4814;
l9_4781=l9_4817;
float l9_4825=l9_4771.y;
int l9_4826=l9_4774.y;
bool l9_4827=l9_4780;
float l9_4828=l9_4781;
if ((l9_4826==0)||(l9_4826==3))
{
float l9_4829=l9_4825;
float l9_4830=0.0;
float l9_4831=1.0;
bool l9_4832=l9_4827;
float l9_4833=l9_4828;
float l9_4834=fast::clamp(l9_4829,l9_4830,l9_4831);
float l9_4835=step(abs(l9_4829-l9_4834),9.9999997e-06);
l9_4833*=(l9_4835+((1.0-float(l9_4832))*(1.0-l9_4835)));
l9_4829=l9_4834;
l9_4825=l9_4829;
l9_4828=l9_4833;
}
l9_4771.y=l9_4825;
l9_4781=l9_4828;
float2 l9_4836=l9_4771;
int l9_4837=l9_4769;
int l9_4838=l9_4770;
float l9_4839=l9_4779;
float2 l9_4840=l9_4836;
int l9_4841=l9_4837;
int l9_4842=l9_4838;
float3 l9_4843=float3(0.0);
if (l9_4841==0)
{
l9_4843=float3(l9_4840,0.0);
}
else
{
if (l9_4841==1)
{
l9_4843=float3(l9_4840.x,(l9_4840.y*0.5)+(0.5-(float(l9_4842)*0.5)),0.0);
}
else
{
l9_4843=float3(l9_4840,float(l9_4842));
}
}
float3 l9_4844=l9_4843;
float3 l9_4845=l9_4844;
float4 l9_4846=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4845.xy,bias(l9_4839));
float4 l9_4847=l9_4846;
if (l9_4777)
{
l9_4847=mix(l9_4778,l9_4847,float4(l9_4781));
}
float4 l9_4848=l9_4847;
l9_4762=l9_4848;
l9_4740=l9_4762;
l9_4745=l9_4740;
}
else
{
float2 l9_4849=float2(0.0);
l9_4849=l9_4742.Surface_UVCoord0;
float2 l9_4850=float2(0.0);
float2 l9_4851=(*sc_set0.UserUniforms).patternScaleId01;
l9_4850=l9_4851;
float2 l9_4852=float2(0.0);
l9_4852=((l9_4849-(*sc_set0.UserUniforms).Port_Center_N122)*l9_4850)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_4853=float2(0.0);
float2 l9_4854=(*sc_set0.UserUniforms).patternOffsetId01;
l9_4853=l9_4854;
float2 l9_4855=float2(0.0);
l9_4855=l9_4852+l9_4853;
float l9_4856=0.0;
float l9_4857=(*sc_set0.UserUniforms).patternRotateId01;
l9_4856=l9_4857;
float2 l9_4858=float2(0.0);
float2 l9_4859=l9_4855;
float l9_4860=l9_4856;
float2 l9_4861=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_4862=sin(radians(l9_4860));
float l9_4863=cos(radians(l9_4860));
float2 l9_4864=l9_4859-l9_4861;
l9_4864=float2(dot(float2(l9_4863,l9_4862),l9_4864),dot(float2(-l9_4862,l9_4863),l9_4864))+l9_4861;
l9_4858=l9_4864;
float4 l9_4865=float4(0.0);
int l9_4866;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_4867=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4867=0;
}
else
{
l9_4867=in.varStereoViewID;
}
int l9_4868=l9_4867;
l9_4866=1-l9_4868;
}
else
{
int l9_4869=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4869=0;
}
else
{
l9_4869=in.varStereoViewID;
}
int l9_4870=l9_4869;
l9_4866=l9_4870;
}
int l9_4871=l9_4866;
int l9_4872=patternTextureId01Layout_tmp;
int l9_4873=l9_4871;
float2 l9_4874=l9_4858;
bool l9_4875=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_4876=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_4877=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_4878=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_4879=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_4880=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_4881=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_4882=0.0;
bool l9_4883=l9_4880&&(!l9_4878);
float l9_4884=1.0;
float l9_4885=l9_4874.x;
int l9_4886=l9_4877.x;
if (l9_4886==1)
{
l9_4885=fract(l9_4885);
}
else
{
if (l9_4886==2)
{
float l9_4887=fract(l9_4885);
float l9_4888=l9_4885-l9_4887;
float l9_4889=step(0.25,fract(l9_4888*0.5));
l9_4885=mix(l9_4887,1.0-l9_4887,fast::clamp(l9_4889,0.0,1.0));
}
}
l9_4874.x=l9_4885;
float l9_4890=l9_4874.y;
int l9_4891=l9_4877.y;
if (l9_4891==1)
{
l9_4890=fract(l9_4890);
}
else
{
if (l9_4891==2)
{
float l9_4892=fract(l9_4890);
float l9_4893=l9_4890-l9_4892;
float l9_4894=step(0.25,fract(l9_4893*0.5));
l9_4890=mix(l9_4892,1.0-l9_4892,fast::clamp(l9_4894,0.0,1.0));
}
}
l9_4874.y=l9_4890;
if (l9_4878)
{
bool l9_4895=l9_4880;
bool l9_4896;
if (l9_4895)
{
l9_4896=l9_4877.x==3;
}
else
{
l9_4896=l9_4895;
}
float l9_4897=l9_4874.x;
float l9_4898=l9_4879.x;
float l9_4899=l9_4879.z;
bool l9_4900=l9_4896;
float l9_4901=l9_4884;
float l9_4902=fast::clamp(l9_4897,l9_4898,l9_4899);
float l9_4903=step(abs(l9_4897-l9_4902),9.9999997e-06);
l9_4901*=(l9_4903+((1.0-float(l9_4900))*(1.0-l9_4903)));
l9_4897=l9_4902;
l9_4874.x=l9_4897;
l9_4884=l9_4901;
bool l9_4904=l9_4880;
bool l9_4905;
if (l9_4904)
{
l9_4905=l9_4877.y==3;
}
else
{
l9_4905=l9_4904;
}
float l9_4906=l9_4874.y;
float l9_4907=l9_4879.y;
float l9_4908=l9_4879.w;
bool l9_4909=l9_4905;
float l9_4910=l9_4884;
float l9_4911=fast::clamp(l9_4906,l9_4907,l9_4908);
float l9_4912=step(abs(l9_4906-l9_4911),9.9999997e-06);
l9_4910*=(l9_4912+((1.0-float(l9_4909))*(1.0-l9_4912)));
l9_4906=l9_4911;
l9_4874.y=l9_4906;
l9_4884=l9_4910;
}
float2 l9_4913=l9_4874;
bool l9_4914=l9_4875;
float3x3 l9_4915=l9_4876;
if (l9_4914)
{
l9_4913=float2((l9_4915*float3(l9_4913,1.0)).xy);
}
float2 l9_4916=l9_4913;
l9_4874=l9_4916;
float l9_4917=l9_4874.x;
int l9_4918=l9_4877.x;
bool l9_4919=l9_4883;
float l9_4920=l9_4884;
if ((l9_4918==0)||(l9_4918==3))
{
float l9_4921=l9_4917;
float l9_4922=0.0;
float l9_4923=1.0;
bool l9_4924=l9_4919;
float l9_4925=l9_4920;
float l9_4926=fast::clamp(l9_4921,l9_4922,l9_4923);
float l9_4927=step(abs(l9_4921-l9_4926),9.9999997e-06);
l9_4925*=(l9_4927+((1.0-float(l9_4924))*(1.0-l9_4927)));
l9_4921=l9_4926;
l9_4917=l9_4921;
l9_4920=l9_4925;
}
l9_4874.x=l9_4917;
l9_4884=l9_4920;
float l9_4928=l9_4874.y;
int l9_4929=l9_4877.y;
bool l9_4930=l9_4883;
float l9_4931=l9_4884;
if ((l9_4929==0)||(l9_4929==3))
{
float l9_4932=l9_4928;
float l9_4933=0.0;
float l9_4934=1.0;
bool l9_4935=l9_4930;
float l9_4936=l9_4931;
float l9_4937=fast::clamp(l9_4932,l9_4933,l9_4934);
float l9_4938=step(abs(l9_4932-l9_4937),9.9999997e-06);
l9_4936*=(l9_4938+((1.0-float(l9_4935))*(1.0-l9_4938)));
l9_4932=l9_4937;
l9_4928=l9_4932;
l9_4931=l9_4936;
}
l9_4874.y=l9_4928;
l9_4884=l9_4931;
float2 l9_4939=l9_4874;
int l9_4940=l9_4872;
int l9_4941=l9_4873;
float l9_4942=l9_4882;
float2 l9_4943=l9_4939;
int l9_4944=l9_4940;
int l9_4945=l9_4941;
float3 l9_4946=float3(0.0);
if (l9_4944==0)
{
l9_4946=float3(l9_4943,0.0);
}
else
{
if (l9_4944==1)
{
l9_4946=float3(l9_4943.x,(l9_4943.y*0.5)+(0.5-(float(l9_4945)*0.5)),0.0);
}
else
{
l9_4946=float3(l9_4943,float(l9_4945));
}
}
float3 l9_4947=l9_4946;
float3 l9_4948=l9_4947;
float4 l9_4949=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_4948.xy,bias(l9_4942));
float4 l9_4950=l9_4949;
if (l9_4880)
{
l9_4950=mix(l9_4881,l9_4950,float4(l9_4884));
}
float4 l9_4951=l9_4950;
l9_4865=l9_4951;
float l9_4952=0.0;
float3 l9_4953=l9_4865.xyz;
float l9_4954=l9_4953.x;
l9_4952=l9_4954;
l9_4741=float4(l9_4952);
l9_4745=l9_4741;
}
l9_4738=l9_4745;
float4 l9_4955=float4(0.0);
l9_4955=l9_4736*l9_4738;
l9_4730=l9_4955;
l9_4735=l9_4730;
}
else
{
float4 l9_4956=float4(0.0);
float4 l9_4957=(*sc_set0.UserUniforms).colorId01;
l9_4956=l9_4957;
float2 l9_4958=float2(0.0);
l9_4958=l9_4732.Surface_UVCoord0;
float4 l9_4959=float4(0.0);
int l9_4960;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_4961=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4961=0;
}
else
{
l9_4961=in.varStereoViewID;
}
int l9_4962=l9_4961;
l9_4960=1-l9_4962;
}
else
{
int l9_4963=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4963=0;
}
else
{
l9_4963=in.varStereoViewID;
}
int l9_4964=l9_4963;
l9_4960=l9_4964;
}
int l9_4965=l9_4960;
int l9_4966=greyMaskIdLayout_tmp;
int l9_4967=l9_4965;
float2 l9_4968=l9_4958;
bool l9_4969=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_4970=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_4971=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_4972=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_4973=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_4974=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_4975=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_4976=0.0;
bool l9_4977=l9_4974&&(!l9_4972);
float l9_4978=1.0;
float l9_4979=l9_4968.x;
int l9_4980=l9_4971.x;
if (l9_4980==1)
{
l9_4979=fract(l9_4979);
}
else
{
if (l9_4980==2)
{
float l9_4981=fract(l9_4979);
float l9_4982=l9_4979-l9_4981;
float l9_4983=step(0.25,fract(l9_4982*0.5));
l9_4979=mix(l9_4981,1.0-l9_4981,fast::clamp(l9_4983,0.0,1.0));
}
}
l9_4968.x=l9_4979;
float l9_4984=l9_4968.y;
int l9_4985=l9_4971.y;
if (l9_4985==1)
{
l9_4984=fract(l9_4984);
}
else
{
if (l9_4985==2)
{
float l9_4986=fract(l9_4984);
float l9_4987=l9_4984-l9_4986;
float l9_4988=step(0.25,fract(l9_4987*0.5));
l9_4984=mix(l9_4986,1.0-l9_4986,fast::clamp(l9_4988,0.0,1.0));
}
}
l9_4968.y=l9_4984;
if (l9_4972)
{
bool l9_4989=l9_4974;
bool l9_4990;
if (l9_4989)
{
l9_4990=l9_4971.x==3;
}
else
{
l9_4990=l9_4989;
}
float l9_4991=l9_4968.x;
float l9_4992=l9_4973.x;
float l9_4993=l9_4973.z;
bool l9_4994=l9_4990;
float l9_4995=l9_4978;
float l9_4996=fast::clamp(l9_4991,l9_4992,l9_4993);
float l9_4997=step(abs(l9_4991-l9_4996),9.9999997e-06);
l9_4995*=(l9_4997+((1.0-float(l9_4994))*(1.0-l9_4997)));
l9_4991=l9_4996;
l9_4968.x=l9_4991;
l9_4978=l9_4995;
bool l9_4998=l9_4974;
bool l9_4999;
if (l9_4998)
{
l9_4999=l9_4971.y==3;
}
else
{
l9_4999=l9_4998;
}
float l9_5000=l9_4968.y;
float l9_5001=l9_4973.y;
float l9_5002=l9_4973.w;
bool l9_5003=l9_4999;
float l9_5004=l9_4978;
float l9_5005=fast::clamp(l9_5000,l9_5001,l9_5002);
float l9_5006=step(abs(l9_5000-l9_5005),9.9999997e-06);
l9_5004*=(l9_5006+((1.0-float(l9_5003))*(1.0-l9_5006)));
l9_5000=l9_5005;
l9_4968.y=l9_5000;
l9_4978=l9_5004;
}
float2 l9_5007=l9_4968;
bool l9_5008=l9_4969;
float3x3 l9_5009=l9_4970;
if (l9_5008)
{
l9_5007=float2((l9_5009*float3(l9_5007,1.0)).xy);
}
float2 l9_5010=l9_5007;
l9_4968=l9_5010;
float l9_5011=l9_4968.x;
int l9_5012=l9_4971.x;
bool l9_5013=l9_4977;
float l9_5014=l9_4978;
if ((l9_5012==0)||(l9_5012==3))
{
float l9_5015=l9_5011;
float l9_5016=0.0;
float l9_5017=1.0;
bool l9_5018=l9_5013;
float l9_5019=l9_5014;
float l9_5020=fast::clamp(l9_5015,l9_5016,l9_5017);
float l9_5021=step(abs(l9_5015-l9_5020),9.9999997e-06);
l9_5019*=(l9_5021+((1.0-float(l9_5018))*(1.0-l9_5021)));
l9_5015=l9_5020;
l9_5011=l9_5015;
l9_5014=l9_5019;
}
l9_4968.x=l9_5011;
l9_4978=l9_5014;
float l9_5022=l9_4968.y;
int l9_5023=l9_4971.y;
bool l9_5024=l9_4977;
float l9_5025=l9_4978;
if ((l9_5023==0)||(l9_5023==3))
{
float l9_5026=l9_5022;
float l9_5027=0.0;
float l9_5028=1.0;
bool l9_5029=l9_5024;
float l9_5030=l9_5025;
float l9_5031=fast::clamp(l9_5026,l9_5027,l9_5028);
float l9_5032=step(abs(l9_5026-l9_5031),9.9999997e-06);
l9_5030*=(l9_5032+((1.0-float(l9_5029))*(1.0-l9_5032)));
l9_5026=l9_5031;
l9_5022=l9_5026;
l9_5025=l9_5030;
}
l9_4968.y=l9_5022;
l9_4978=l9_5025;
float2 l9_5033=l9_4968;
int l9_5034=l9_4966;
int l9_5035=l9_4967;
float l9_5036=l9_4976;
float2 l9_5037=l9_5033;
int l9_5038=l9_5034;
int l9_5039=l9_5035;
float3 l9_5040=float3(0.0);
if (l9_5038==0)
{
l9_5040=float3(l9_5037,0.0);
}
else
{
if (l9_5038==1)
{
l9_5040=float3(l9_5037.x,(l9_5037.y*0.5)+(0.5-(float(l9_5039)*0.5)),0.0);
}
else
{
l9_5040=float3(l9_5037,float(l9_5039));
}
}
float3 l9_5041=l9_5040;
float3 l9_5042=l9_5041;
float4 l9_5043=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5042.xy,bias(l9_5036));
float4 l9_5044=l9_5043;
if (l9_4974)
{
l9_5044=mix(l9_4975,l9_5044,float4(l9_4978));
}
float4 l9_5045=l9_5044;
l9_4959=l9_5045;
float l9_5046=0.0;
l9_5046=l9_4959.x;
float l9_5047=0.0;
l9_5047=step(l9_5046,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5048=float4(0.0);
l9_5048=l9_4956*float4(l9_5047);
l9_4731=l9_5048;
l9_4735=l9_4731;
}
l9_4728=l9_4735;
float2 l9_5049=float2(0.0);
l9_5049=l9_4714.Surface_UVCoord0;
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
l9_5139=l9_4728*float4(l9_5138);
float4 l9_5140=float4(0.0);
float4 l9_5141=(*sc_set0.UserUniforms).colorId01;
l9_5140=l9_5141;
float4 l9_5142=float4(0.0);
l9_5142=l9_5140*float4(l9_5138);
float4 l9_5143=float4(0.0);
float4 l9_5144=l9_5139;
float4 l9_5145=l9_5142;
float4 l9_5146=l9_5144;
float4 l9_5147=l9_5145;
float3 l9_5148=l9_5146.xyz*l9_5146.w;
l9_5146=float4(l9_5148.x,l9_5148.y,l9_5148.z,l9_5146.w);
float4 l9_5149=l9_5146+(l9_5147*(1.0-l9_5146.w));
l9_5143=l9_5149;
float4 l9_5150=float4(0.0);
l9_5150=float4(l9_4722)*l9_5143;
float4 l9_5151=float4(0.0);
l9_5151=l9_5150+l9_5143;
l9_4712=l9_5151;
l9_4717=l9_4712;
}
else
{
float4 l9_5152=float4(0.0);
float l9_5153=0.0;
float4 l9_5154=float4(0.0);
float4 l9_5155=float4(0.0);
ssGlobals l9_5156=l9_4714;
float l9_5157=0.0;
float l9_5158=float((*sc_set0.UserUniforms).patternOnOffId01!=0);
l9_5157=l9_5158;
l9_5153=l9_5157;
float4 l9_5159;
if ((l9_5153*1.0)!=0.0)
{
float4 l9_5160=float4(0.0);
float4 l9_5161=(*sc_set0.UserUniforms).patternColorId01;
l9_5160=l9_5161;
float4 l9_5162=float4(0.0);
float l9_5163=0.0;
float4 l9_5164=float4(0.0);
float4 l9_5165=float4(0.0);
ssGlobals l9_5166=l9_5156;
float l9_5167=0.0;
float l9_5168=float((*sc_set0.UserUniforms).pngPatternId01!=0);
l9_5167=l9_5168;
l9_5163=l9_5167;
float4 l9_5169;
if ((l9_5163*1.0)!=0.0)
{
float2 l9_5170=float2(0.0);
l9_5170=l9_5166.Surface_UVCoord0;
float2 l9_5171=float2(0.0);
float2 l9_5172=(*sc_set0.UserUniforms).patternScaleId01;
l9_5171=l9_5172;
float2 l9_5173=float2(0.0);
l9_5173=((l9_5170-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5171)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5174=float2(0.0);
float2 l9_5175=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5174=l9_5175;
float2 l9_5176=float2(0.0);
l9_5176=l9_5173+l9_5174;
float l9_5177=0.0;
float l9_5178=(*sc_set0.UserUniforms).patternRotateId01;
l9_5177=l9_5178;
float2 l9_5179=float2(0.0);
float2 l9_5180=l9_5176;
float l9_5181=l9_5177;
float2 l9_5182=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5183=sin(radians(l9_5181));
float l9_5184=cos(radians(l9_5181));
float2 l9_5185=l9_5180-l9_5182;
l9_5185=float2(dot(float2(l9_5184,l9_5183),l9_5185),dot(float2(-l9_5183,l9_5184),l9_5185))+l9_5182;
l9_5179=l9_5185;
float4 l9_5186=float4(0.0);
int l9_5187;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5188=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5188=0;
}
else
{
l9_5188=in.varStereoViewID;
}
int l9_5189=l9_5188;
l9_5187=1-l9_5189;
}
else
{
int l9_5190=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5190=0;
}
else
{
l9_5190=in.varStereoViewID;
}
int l9_5191=l9_5190;
l9_5187=l9_5191;
}
int l9_5192=l9_5187;
int l9_5193=patternTextureId01Layout_tmp;
int l9_5194=l9_5192;
float2 l9_5195=l9_5179;
bool l9_5196=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5197=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5198=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5199=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5200=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5201=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5202=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5203=0.0;
bool l9_5204=l9_5201&&(!l9_5199);
float l9_5205=1.0;
float l9_5206=l9_5195.x;
int l9_5207=l9_5198.x;
if (l9_5207==1)
{
l9_5206=fract(l9_5206);
}
else
{
if (l9_5207==2)
{
float l9_5208=fract(l9_5206);
float l9_5209=l9_5206-l9_5208;
float l9_5210=step(0.25,fract(l9_5209*0.5));
l9_5206=mix(l9_5208,1.0-l9_5208,fast::clamp(l9_5210,0.0,1.0));
}
}
l9_5195.x=l9_5206;
float l9_5211=l9_5195.y;
int l9_5212=l9_5198.y;
if (l9_5212==1)
{
l9_5211=fract(l9_5211);
}
else
{
if (l9_5212==2)
{
float l9_5213=fract(l9_5211);
float l9_5214=l9_5211-l9_5213;
float l9_5215=step(0.25,fract(l9_5214*0.5));
l9_5211=mix(l9_5213,1.0-l9_5213,fast::clamp(l9_5215,0.0,1.0));
}
}
l9_5195.y=l9_5211;
if (l9_5199)
{
bool l9_5216=l9_5201;
bool l9_5217;
if (l9_5216)
{
l9_5217=l9_5198.x==3;
}
else
{
l9_5217=l9_5216;
}
float l9_5218=l9_5195.x;
float l9_5219=l9_5200.x;
float l9_5220=l9_5200.z;
bool l9_5221=l9_5217;
float l9_5222=l9_5205;
float l9_5223=fast::clamp(l9_5218,l9_5219,l9_5220);
float l9_5224=step(abs(l9_5218-l9_5223),9.9999997e-06);
l9_5222*=(l9_5224+((1.0-float(l9_5221))*(1.0-l9_5224)));
l9_5218=l9_5223;
l9_5195.x=l9_5218;
l9_5205=l9_5222;
bool l9_5225=l9_5201;
bool l9_5226;
if (l9_5225)
{
l9_5226=l9_5198.y==3;
}
else
{
l9_5226=l9_5225;
}
float l9_5227=l9_5195.y;
float l9_5228=l9_5200.y;
float l9_5229=l9_5200.w;
bool l9_5230=l9_5226;
float l9_5231=l9_5205;
float l9_5232=fast::clamp(l9_5227,l9_5228,l9_5229);
float l9_5233=step(abs(l9_5227-l9_5232),9.9999997e-06);
l9_5231*=(l9_5233+((1.0-float(l9_5230))*(1.0-l9_5233)));
l9_5227=l9_5232;
l9_5195.y=l9_5227;
l9_5205=l9_5231;
}
float2 l9_5234=l9_5195;
bool l9_5235=l9_5196;
float3x3 l9_5236=l9_5197;
if (l9_5235)
{
l9_5234=float2((l9_5236*float3(l9_5234,1.0)).xy);
}
float2 l9_5237=l9_5234;
l9_5195=l9_5237;
float l9_5238=l9_5195.x;
int l9_5239=l9_5198.x;
bool l9_5240=l9_5204;
float l9_5241=l9_5205;
if ((l9_5239==0)||(l9_5239==3))
{
float l9_5242=l9_5238;
float l9_5243=0.0;
float l9_5244=1.0;
bool l9_5245=l9_5240;
float l9_5246=l9_5241;
float l9_5247=fast::clamp(l9_5242,l9_5243,l9_5244);
float l9_5248=step(abs(l9_5242-l9_5247),9.9999997e-06);
l9_5246*=(l9_5248+((1.0-float(l9_5245))*(1.0-l9_5248)));
l9_5242=l9_5247;
l9_5238=l9_5242;
l9_5241=l9_5246;
}
l9_5195.x=l9_5238;
l9_5205=l9_5241;
float l9_5249=l9_5195.y;
int l9_5250=l9_5198.y;
bool l9_5251=l9_5204;
float l9_5252=l9_5205;
if ((l9_5250==0)||(l9_5250==3))
{
float l9_5253=l9_5249;
float l9_5254=0.0;
float l9_5255=1.0;
bool l9_5256=l9_5251;
float l9_5257=l9_5252;
float l9_5258=fast::clamp(l9_5253,l9_5254,l9_5255);
float l9_5259=step(abs(l9_5253-l9_5258),9.9999997e-06);
l9_5257*=(l9_5259+((1.0-float(l9_5256))*(1.0-l9_5259)));
l9_5253=l9_5258;
l9_5249=l9_5253;
l9_5252=l9_5257;
}
l9_5195.y=l9_5249;
l9_5205=l9_5252;
float2 l9_5260=l9_5195;
int l9_5261=l9_5193;
int l9_5262=l9_5194;
float l9_5263=l9_5203;
float2 l9_5264=l9_5260;
int l9_5265=l9_5261;
int l9_5266=l9_5262;
float3 l9_5267=float3(0.0);
if (l9_5265==0)
{
l9_5267=float3(l9_5264,0.0);
}
else
{
if (l9_5265==1)
{
l9_5267=float3(l9_5264.x,(l9_5264.y*0.5)+(0.5-(float(l9_5266)*0.5)),0.0);
}
else
{
l9_5267=float3(l9_5264,float(l9_5266));
}
}
float3 l9_5268=l9_5267;
float3 l9_5269=l9_5268;
float4 l9_5270=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5269.xy,bias(l9_5263));
float4 l9_5271=l9_5270;
if (l9_5201)
{
l9_5271=mix(l9_5202,l9_5271,float4(l9_5205));
}
float4 l9_5272=l9_5271;
l9_5186=l9_5272;
l9_5164=l9_5186;
l9_5169=l9_5164;
}
else
{
float2 l9_5273=float2(0.0);
l9_5273=l9_5166.Surface_UVCoord0;
float2 l9_5274=float2(0.0);
float2 l9_5275=(*sc_set0.UserUniforms).patternScaleId01;
l9_5274=l9_5275;
float2 l9_5276=float2(0.0);
l9_5276=((l9_5273-(*sc_set0.UserUniforms).Port_Center_N122)*l9_5274)+(*sc_set0.UserUniforms).Port_Center_N122;
float2 l9_5277=float2(0.0);
float2 l9_5278=(*sc_set0.UserUniforms).patternOffsetId01;
l9_5277=l9_5278;
float2 l9_5279=float2(0.0);
l9_5279=l9_5276+l9_5277;
float l9_5280=0.0;
float l9_5281=(*sc_set0.UserUniforms).patternRotateId01;
l9_5280=l9_5281;
float2 l9_5282=float2(0.0);
float2 l9_5283=l9_5279;
float l9_5284=l9_5280;
float2 l9_5285=(*sc_set0.UserUniforms).Port_Center_N126;
float l9_5286=sin(radians(l9_5284));
float l9_5287=cos(radians(l9_5284));
float2 l9_5288=l9_5283-l9_5285;
l9_5288=float2(dot(float2(l9_5287,l9_5286),l9_5288),dot(float2(-l9_5286,l9_5287),l9_5288))+l9_5285;
l9_5282=l9_5288;
float4 l9_5289=float4(0.0);
int l9_5290;
if ((int(patternTextureId01HasSwappedViews_tmp)!=0))
{
int l9_5291=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5291=0;
}
else
{
l9_5291=in.varStereoViewID;
}
int l9_5292=l9_5291;
l9_5290=1-l9_5292;
}
else
{
int l9_5293=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5293=0;
}
else
{
l9_5293=in.varStereoViewID;
}
int l9_5294=l9_5293;
l9_5290=l9_5294;
}
int l9_5295=l9_5290;
int l9_5296=patternTextureId01Layout_tmp;
int l9_5297=l9_5295;
float2 l9_5298=l9_5282;
bool l9_5299=(int(SC_USE_UV_TRANSFORM_patternTextureId01_tmp)!=0);
float3x3 l9_5300=(*sc_set0.UserUniforms).patternTextureId01Transform;
int2 l9_5301=int2(SC_SOFTWARE_WRAP_MODE_U_patternTextureId01_tmp,SC_SOFTWARE_WRAP_MODE_V_patternTextureId01_tmp);
bool l9_5302=(int(SC_USE_UV_MIN_MAX_patternTextureId01_tmp)!=0);
float4 l9_5303=(*sc_set0.UserUniforms).patternTextureId01UvMinMax;
bool l9_5304=(int(SC_USE_CLAMP_TO_BORDER_patternTextureId01_tmp)!=0);
float4 l9_5305=(*sc_set0.UserUniforms).patternTextureId01BorderColor;
float l9_5306=0.0;
bool l9_5307=l9_5304&&(!l9_5302);
float l9_5308=1.0;
float l9_5309=l9_5298.x;
int l9_5310=l9_5301.x;
if (l9_5310==1)
{
l9_5309=fract(l9_5309);
}
else
{
if (l9_5310==2)
{
float l9_5311=fract(l9_5309);
float l9_5312=l9_5309-l9_5311;
float l9_5313=step(0.25,fract(l9_5312*0.5));
l9_5309=mix(l9_5311,1.0-l9_5311,fast::clamp(l9_5313,0.0,1.0));
}
}
l9_5298.x=l9_5309;
float l9_5314=l9_5298.y;
int l9_5315=l9_5301.y;
if (l9_5315==1)
{
l9_5314=fract(l9_5314);
}
else
{
if (l9_5315==2)
{
float l9_5316=fract(l9_5314);
float l9_5317=l9_5314-l9_5316;
float l9_5318=step(0.25,fract(l9_5317*0.5));
l9_5314=mix(l9_5316,1.0-l9_5316,fast::clamp(l9_5318,0.0,1.0));
}
}
l9_5298.y=l9_5314;
if (l9_5302)
{
bool l9_5319=l9_5304;
bool l9_5320;
if (l9_5319)
{
l9_5320=l9_5301.x==3;
}
else
{
l9_5320=l9_5319;
}
float l9_5321=l9_5298.x;
float l9_5322=l9_5303.x;
float l9_5323=l9_5303.z;
bool l9_5324=l9_5320;
float l9_5325=l9_5308;
float l9_5326=fast::clamp(l9_5321,l9_5322,l9_5323);
float l9_5327=step(abs(l9_5321-l9_5326),9.9999997e-06);
l9_5325*=(l9_5327+((1.0-float(l9_5324))*(1.0-l9_5327)));
l9_5321=l9_5326;
l9_5298.x=l9_5321;
l9_5308=l9_5325;
bool l9_5328=l9_5304;
bool l9_5329;
if (l9_5328)
{
l9_5329=l9_5301.y==3;
}
else
{
l9_5329=l9_5328;
}
float l9_5330=l9_5298.y;
float l9_5331=l9_5303.y;
float l9_5332=l9_5303.w;
bool l9_5333=l9_5329;
float l9_5334=l9_5308;
float l9_5335=fast::clamp(l9_5330,l9_5331,l9_5332);
float l9_5336=step(abs(l9_5330-l9_5335),9.9999997e-06);
l9_5334*=(l9_5336+((1.0-float(l9_5333))*(1.0-l9_5336)));
l9_5330=l9_5335;
l9_5298.y=l9_5330;
l9_5308=l9_5334;
}
float2 l9_5337=l9_5298;
bool l9_5338=l9_5299;
float3x3 l9_5339=l9_5300;
if (l9_5338)
{
l9_5337=float2((l9_5339*float3(l9_5337,1.0)).xy);
}
float2 l9_5340=l9_5337;
l9_5298=l9_5340;
float l9_5341=l9_5298.x;
int l9_5342=l9_5301.x;
bool l9_5343=l9_5307;
float l9_5344=l9_5308;
if ((l9_5342==0)||(l9_5342==3))
{
float l9_5345=l9_5341;
float l9_5346=0.0;
float l9_5347=1.0;
bool l9_5348=l9_5343;
float l9_5349=l9_5344;
float l9_5350=fast::clamp(l9_5345,l9_5346,l9_5347);
float l9_5351=step(abs(l9_5345-l9_5350),9.9999997e-06);
l9_5349*=(l9_5351+((1.0-float(l9_5348))*(1.0-l9_5351)));
l9_5345=l9_5350;
l9_5341=l9_5345;
l9_5344=l9_5349;
}
l9_5298.x=l9_5341;
l9_5308=l9_5344;
float l9_5352=l9_5298.y;
int l9_5353=l9_5301.y;
bool l9_5354=l9_5307;
float l9_5355=l9_5308;
if ((l9_5353==0)||(l9_5353==3))
{
float l9_5356=l9_5352;
float l9_5357=0.0;
float l9_5358=1.0;
bool l9_5359=l9_5354;
float l9_5360=l9_5355;
float l9_5361=fast::clamp(l9_5356,l9_5357,l9_5358);
float l9_5362=step(abs(l9_5356-l9_5361),9.9999997e-06);
l9_5360*=(l9_5362+((1.0-float(l9_5359))*(1.0-l9_5362)));
l9_5356=l9_5361;
l9_5352=l9_5356;
l9_5355=l9_5360;
}
l9_5298.y=l9_5352;
l9_5308=l9_5355;
float2 l9_5363=l9_5298;
int l9_5364=l9_5296;
int l9_5365=l9_5297;
float l9_5366=l9_5306;
float2 l9_5367=l9_5363;
int l9_5368=l9_5364;
int l9_5369=l9_5365;
float3 l9_5370=float3(0.0);
if (l9_5368==0)
{
l9_5370=float3(l9_5367,0.0);
}
else
{
if (l9_5368==1)
{
l9_5370=float3(l9_5367.x,(l9_5367.y*0.5)+(0.5-(float(l9_5369)*0.5)),0.0);
}
else
{
l9_5370=float3(l9_5367,float(l9_5369));
}
}
float3 l9_5371=l9_5370;
float3 l9_5372=l9_5371;
float4 l9_5373=sc_set0.patternTextureId01.sample(sc_set0.patternTextureId01SmpSC,l9_5372.xy,bias(l9_5366));
float4 l9_5374=l9_5373;
if (l9_5304)
{
l9_5374=mix(l9_5305,l9_5374,float4(l9_5308));
}
float4 l9_5375=l9_5374;
l9_5289=l9_5375;
float l9_5376=0.0;
float3 l9_5377=l9_5289.xyz;
float l9_5378=l9_5377.x;
l9_5376=l9_5378;
l9_5165=float4(l9_5376);
l9_5169=l9_5165;
}
l9_5162=l9_5169;
float4 l9_5379=float4(0.0);
l9_5379=l9_5160*l9_5162;
l9_5154=l9_5379;
l9_5159=l9_5154;
}
else
{
float4 l9_5380=float4(0.0);
float4 l9_5381=(*sc_set0.UserUniforms).colorId01;
l9_5380=l9_5381;
float2 l9_5382=float2(0.0);
l9_5382=l9_5156.Surface_UVCoord0;
float4 l9_5383=float4(0.0);
int l9_5384;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5385=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5385=0;
}
else
{
l9_5385=in.varStereoViewID;
}
int l9_5386=l9_5385;
l9_5384=1-l9_5386;
}
else
{
int l9_5387=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5387=0;
}
else
{
l9_5387=in.varStereoViewID;
}
int l9_5388=l9_5387;
l9_5384=l9_5388;
}
int l9_5389=l9_5384;
int l9_5390=greyMaskIdLayout_tmp;
int l9_5391=l9_5389;
float2 l9_5392=l9_5382;
bool l9_5393=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5394=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5395=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5396=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5397=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5398=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5399=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5400=0.0;
bool l9_5401=l9_5398&&(!l9_5396);
float l9_5402=1.0;
float l9_5403=l9_5392.x;
int l9_5404=l9_5395.x;
if (l9_5404==1)
{
l9_5403=fract(l9_5403);
}
else
{
if (l9_5404==2)
{
float l9_5405=fract(l9_5403);
float l9_5406=l9_5403-l9_5405;
float l9_5407=step(0.25,fract(l9_5406*0.5));
l9_5403=mix(l9_5405,1.0-l9_5405,fast::clamp(l9_5407,0.0,1.0));
}
}
l9_5392.x=l9_5403;
float l9_5408=l9_5392.y;
int l9_5409=l9_5395.y;
if (l9_5409==1)
{
l9_5408=fract(l9_5408);
}
else
{
if (l9_5409==2)
{
float l9_5410=fract(l9_5408);
float l9_5411=l9_5408-l9_5410;
float l9_5412=step(0.25,fract(l9_5411*0.5));
l9_5408=mix(l9_5410,1.0-l9_5410,fast::clamp(l9_5412,0.0,1.0));
}
}
l9_5392.y=l9_5408;
if (l9_5396)
{
bool l9_5413=l9_5398;
bool l9_5414;
if (l9_5413)
{
l9_5414=l9_5395.x==3;
}
else
{
l9_5414=l9_5413;
}
float l9_5415=l9_5392.x;
float l9_5416=l9_5397.x;
float l9_5417=l9_5397.z;
bool l9_5418=l9_5414;
float l9_5419=l9_5402;
float l9_5420=fast::clamp(l9_5415,l9_5416,l9_5417);
float l9_5421=step(abs(l9_5415-l9_5420),9.9999997e-06);
l9_5419*=(l9_5421+((1.0-float(l9_5418))*(1.0-l9_5421)));
l9_5415=l9_5420;
l9_5392.x=l9_5415;
l9_5402=l9_5419;
bool l9_5422=l9_5398;
bool l9_5423;
if (l9_5422)
{
l9_5423=l9_5395.y==3;
}
else
{
l9_5423=l9_5422;
}
float l9_5424=l9_5392.y;
float l9_5425=l9_5397.y;
float l9_5426=l9_5397.w;
bool l9_5427=l9_5423;
float l9_5428=l9_5402;
float l9_5429=fast::clamp(l9_5424,l9_5425,l9_5426);
float l9_5430=step(abs(l9_5424-l9_5429),9.9999997e-06);
l9_5428*=(l9_5430+((1.0-float(l9_5427))*(1.0-l9_5430)));
l9_5424=l9_5429;
l9_5392.y=l9_5424;
l9_5402=l9_5428;
}
float2 l9_5431=l9_5392;
bool l9_5432=l9_5393;
float3x3 l9_5433=l9_5394;
if (l9_5432)
{
l9_5431=float2((l9_5433*float3(l9_5431,1.0)).xy);
}
float2 l9_5434=l9_5431;
l9_5392=l9_5434;
float l9_5435=l9_5392.x;
int l9_5436=l9_5395.x;
bool l9_5437=l9_5401;
float l9_5438=l9_5402;
if ((l9_5436==0)||(l9_5436==3))
{
float l9_5439=l9_5435;
float l9_5440=0.0;
float l9_5441=1.0;
bool l9_5442=l9_5437;
float l9_5443=l9_5438;
float l9_5444=fast::clamp(l9_5439,l9_5440,l9_5441);
float l9_5445=step(abs(l9_5439-l9_5444),9.9999997e-06);
l9_5443*=(l9_5445+((1.0-float(l9_5442))*(1.0-l9_5445)));
l9_5439=l9_5444;
l9_5435=l9_5439;
l9_5438=l9_5443;
}
l9_5392.x=l9_5435;
l9_5402=l9_5438;
float l9_5446=l9_5392.y;
int l9_5447=l9_5395.y;
bool l9_5448=l9_5401;
float l9_5449=l9_5402;
if ((l9_5447==0)||(l9_5447==3))
{
float l9_5450=l9_5446;
float l9_5451=0.0;
float l9_5452=1.0;
bool l9_5453=l9_5448;
float l9_5454=l9_5449;
float l9_5455=fast::clamp(l9_5450,l9_5451,l9_5452);
float l9_5456=step(abs(l9_5450-l9_5455),9.9999997e-06);
l9_5454*=(l9_5456+((1.0-float(l9_5453))*(1.0-l9_5456)));
l9_5450=l9_5455;
l9_5446=l9_5450;
l9_5449=l9_5454;
}
l9_5392.y=l9_5446;
l9_5402=l9_5449;
float2 l9_5457=l9_5392;
int l9_5458=l9_5390;
int l9_5459=l9_5391;
float l9_5460=l9_5400;
float2 l9_5461=l9_5457;
int l9_5462=l9_5458;
int l9_5463=l9_5459;
float3 l9_5464=float3(0.0);
if (l9_5462==0)
{
l9_5464=float3(l9_5461,0.0);
}
else
{
if (l9_5462==1)
{
l9_5464=float3(l9_5461.x,(l9_5461.y*0.5)+(0.5-(float(l9_5463)*0.5)),0.0);
}
else
{
l9_5464=float3(l9_5461,float(l9_5463));
}
}
float3 l9_5465=l9_5464;
float3 l9_5466=l9_5465;
float4 l9_5467=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5466.xy,bias(l9_5460));
float4 l9_5468=l9_5467;
if (l9_5398)
{
l9_5468=mix(l9_5399,l9_5468,float4(l9_5402));
}
float4 l9_5469=l9_5468;
l9_5383=l9_5469;
float l9_5470=0.0;
l9_5470=l9_5383.x;
float l9_5471=0.0;
l9_5471=step(l9_5470,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5472=float4(0.0);
l9_5472=l9_5380*float4(l9_5471);
l9_5155=l9_5472;
l9_5159=l9_5155;
}
l9_5152=l9_5159;
float2 l9_5473=float2(0.0);
l9_5473=l9_4714.Surface_UVCoord0;
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
l9_5563=l9_5152*float4(l9_5562);
float4 l9_5564=float4(0.0);
float4 l9_5565=(*sc_set0.UserUniforms).colorId01;
l9_5564=l9_5565;
float4 l9_5566=float4(0.0);
l9_5566=l9_5564*float4(l9_5562);
float4 l9_5567=float4(0.0);
float4 l9_5568=l9_5563;
float4 l9_5569=l9_5566;
float4 l9_5570=l9_5568;
float4 l9_5571=l9_5569;
float3 l9_5572=l9_5570.xyz*l9_5570.w;
l9_5570=float4(l9_5572.x,l9_5572.y,l9_5572.z,l9_5570.w);
float4 l9_5573=l9_5570+(l9_5571*(1.0-l9_5570.w));
l9_5567=l9_5573;
l9_4713=l9_5567;
l9_4717=l9_4713;
}
l9_4710=l9_4717;
l9_3813=l9_4710;
l9_3817=l9_3813;
}
l9_3810=l9_3817;
float2 l9_5574=float2(0.0);
l9_5574=param_5.Surface_UVCoord0;
float4 l9_5575=float4(0.0);
int l9_5576;
if ((int(greyMaskIdHasSwappedViews_tmp)!=0))
{
int l9_5577=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5577=0;
}
else
{
l9_5577=in.varStereoViewID;
}
int l9_5578=l9_5577;
l9_5576=1-l9_5578;
}
else
{
int l9_5579=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5579=0;
}
else
{
l9_5579=in.varStereoViewID;
}
int l9_5580=l9_5579;
l9_5576=l9_5580;
}
int l9_5581=l9_5576;
int l9_5582=greyMaskIdLayout_tmp;
int l9_5583=l9_5581;
float2 l9_5584=l9_5574;
bool l9_5585=(int(SC_USE_UV_TRANSFORM_greyMaskId_tmp)!=0);
float3x3 l9_5586=(*sc_set0.UserUniforms).greyMaskIdTransform;
int2 l9_5587=int2(SC_SOFTWARE_WRAP_MODE_U_greyMaskId_tmp,SC_SOFTWARE_WRAP_MODE_V_greyMaskId_tmp);
bool l9_5588=(int(SC_USE_UV_MIN_MAX_greyMaskId_tmp)!=0);
float4 l9_5589=(*sc_set0.UserUniforms).greyMaskIdUvMinMax;
bool l9_5590=(int(SC_USE_CLAMP_TO_BORDER_greyMaskId_tmp)!=0);
float4 l9_5591=(*sc_set0.UserUniforms).greyMaskIdBorderColor;
float l9_5592=0.0;
bool l9_5593=l9_5590&&(!l9_5588);
float l9_5594=1.0;
float l9_5595=l9_5584.x;
int l9_5596=l9_5587.x;
if (l9_5596==1)
{
l9_5595=fract(l9_5595);
}
else
{
if (l9_5596==2)
{
float l9_5597=fract(l9_5595);
float l9_5598=l9_5595-l9_5597;
float l9_5599=step(0.25,fract(l9_5598*0.5));
l9_5595=mix(l9_5597,1.0-l9_5597,fast::clamp(l9_5599,0.0,1.0));
}
}
l9_5584.x=l9_5595;
float l9_5600=l9_5584.y;
int l9_5601=l9_5587.y;
if (l9_5601==1)
{
l9_5600=fract(l9_5600);
}
else
{
if (l9_5601==2)
{
float l9_5602=fract(l9_5600);
float l9_5603=l9_5600-l9_5602;
float l9_5604=step(0.25,fract(l9_5603*0.5));
l9_5600=mix(l9_5602,1.0-l9_5602,fast::clamp(l9_5604,0.0,1.0));
}
}
l9_5584.y=l9_5600;
if (l9_5588)
{
bool l9_5605=l9_5590;
bool l9_5606;
if (l9_5605)
{
l9_5606=l9_5587.x==3;
}
else
{
l9_5606=l9_5605;
}
float l9_5607=l9_5584.x;
float l9_5608=l9_5589.x;
float l9_5609=l9_5589.z;
bool l9_5610=l9_5606;
float l9_5611=l9_5594;
float l9_5612=fast::clamp(l9_5607,l9_5608,l9_5609);
float l9_5613=step(abs(l9_5607-l9_5612),9.9999997e-06);
l9_5611*=(l9_5613+((1.0-float(l9_5610))*(1.0-l9_5613)));
l9_5607=l9_5612;
l9_5584.x=l9_5607;
l9_5594=l9_5611;
bool l9_5614=l9_5590;
bool l9_5615;
if (l9_5614)
{
l9_5615=l9_5587.y==3;
}
else
{
l9_5615=l9_5614;
}
float l9_5616=l9_5584.y;
float l9_5617=l9_5589.y;
float l9_5618=l9_5589.w;
bool l9_5619=l9_5615;
float l9_5620=l9_5594;
float l9_5621=fast::clamp(l9_5616,l9_5617,l9_5618);
float l9_5622=step(abs(l9_5616-l9_5621),9.9999997e-06);
l9_5620*=(l9_5622+((1.0-float(l9_5619))*(1.0-l9_5622)));
l9_5616=l9_5621;
l9_5584.y=l9_5616;
l9_5594=l9_5620;
}
float2 l9_5623=l9_5584;
bool l9_5624=l9_5585;
float3x3 l9_5625=l9_5586;
if (l9_5624)
{
l9_5623=float2((l9_5625*float3(l9_5623,1.0)).xy);
}
float2 l9_5626=l9_5623;
l9_5584=l9_5626;
float l9_5627=l9_5584.x;
int l9_5628=l9_5587.x;
bool l9_5629=l9_5593;
float l9_5630=l9_5594;
if ((l9_5628==0)||(l9_5628==3))
{
float l9_5631=l9_5627;
float l9_5632=0.0;
float l9_5633=1.0;
bool l9_5634=l9_5629;
float l9_5635=l9_5630;
float l9_5636=fast::clamp(l9_5631,l9_5632,l9_5633);
float l9_5637=step(abs(l9_5631-l9_5636),9.9999997e-06);
l9_5635*=(l9_5637+((1.0-float(l9_5634))*(1.0-l9_5637)));
l9_5631=l9_5636;
l9_5627=l9_5631;
l9_5630=l9_5635;
}
l9_5584.x=l9_5627;
l9_5594=l9_5630;
float l9_5638=l9_5584.y;
int l9_5639=l9_5587.y;
bool l9_5640=l9_5593;
float l9_5641=l9_5594;
if ((l9_5639==0)||(l9_5639==3))
{
float l9_5642=l9_5638;
float l9_5643=0.0;
float l9_5644=1.0;
bool l9_5645=l9_5640;
float l9_5646=l9_5641;
float l9_5647=fast::clamp(l9_5642,l9_5643,l9_5644);
float l9_5648=step(abs(l9_5642-l9_5647),9.9999997e-06);
l9_5646*=(l9_5648+((1.0-float(l9_5645))*(1.0-l9_5648)));
l9_5642=l9_5647;
l9_5638=l9_5642;
l9_5641=l9_5646;
}
l9_5584.y=l9_5638;
l9_5594=l9_5641;
float2 l9_5649=l9_5584;
int l9_5650=l9_5582;
int l9_5651=l9_5583;
float l9_5652=l9_5592;
float2 l9_5653=l9_5649;
int l9_5654=l9_5650;
int l9_5655=l9_5651;
float3 l9_5656=float3(0.0);
if (l9_5654==0)
{
l9_5656=float3(l9_5653,0.0);
}
else
{
if (l9_5654==1)
{
l9_5656=float3(l9_5653.x,(l9_5653.y*0.5)+(0.5-(float(l9_5655)*0.5)),0.0);
}
else
{
l9_5656=float3(l9_5653,float(l9_5655));
}
}
float3 l9_5657=l9_5656;
float3 l9_5658=l9_5657;
float4 l9_5659=sc_set0.greyMaskId.sample(sc_set0.greyMaskIdSmpSC,l9_5658.xy,bias(l9_5652));
float4 l9_5660=l9_5659;
if (l9_5590)
{
l9_5660=mix(l9_5591,l9_5660,float4(l9_5594));
}
float4 l9_5661=l9_5660;
l9_5575=l9_5661;
float l9_5662=0.0;
l9_5662=l9_5575.x;
float l9_5663=0.0;
l9_5663=step(l9_5662,(*sc_set0.UserUniforms).Port_Input1_N034);
float4 l9_5664=float4(0.0);
l9_5664=l9_3810*float4(l9_5663);
param_3=l9_5664;
param_4=param_3;
}
Result_N184=param_4;
float4 Output_N50=float4(0.0);
Output_N50=((Result_N184*Result_N184)*Result_N184)*Result_N184;
float4 Output_N51=float4(0.0);
Output_N51=fast::clamp(Output_N50+float4(0.001),(*sc_set0.UserUniforms).Port_Input1_N051+float4(0.001),(*sc_set0.UserUniforms).Port_Input2_N051+float4(0.001))-float4(0.001);
float4 Output_N52=float4(0.0);
int l9_5665;
if ((int(Tweak_N27HasSwappedViews_tmp)!=0))
{
int l9_5666=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5666=0;
}
else
{
l9_5666=in.varStereoViewID;
}
int l9_5667=l9_5666;
l9_5665=1-l9_5667;
}
else
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
l9_5665=l9_5669;
}
int l9_5670=l9_5665;
int param_6=Tweak_N27Layout_tmp;
int param_7=l9_5670;
float2 param_8=Globals.Surface_UVCoord0;
bool param_9=(int(SC_USE_UV_TRANSFORM_Tweak_N27_tmp)!=0);
float3x3 param_10=(*sc_set0.UserUniforms).Tweak_N27Transform;
int2 param_11=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N27_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N27_tmp);
bool param_12=(int(SC_USE_UV_MIN_MAX_Tweak_N27_tmp)!=0);
float4 param_13=(*sc_set0.UserUniforms).Tweak_N27UvMinMax;
bool param_14=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N27_tmp)!=0);
float4 param_15=(*sc_set0.UserUniforms).Tweak_N27BorderColor;
float param_16=0.0;
bool l9_5671=param_14&&(!param_12);
float l9_5672=1.0;
float l9_5673=param_8.x;
int l9_5674=param_11.x;
if (l9_5674==1)
{
l9_5673=fract(l9_5673);
}
else
{
if (l9_5674==2)
{
float l9_5675=fract(l9_5673);
float l9_5676=l9_5673-l9_5675;
float l9_5677=step(0.25,fract(l9_5676*0.5));
l9_5673=mix(l9_5675,1.0-l9_5675,fast::clamp(l9_5677,0.0,1.0));
}
}
param_8.x=l9_5673;
float l9_5678=param_8.y;
int l9_5679=param_11.y;
if (l9_5679==1)
{
l9_5678=fract(l9_5678);
}
else
{
if (l9_5679==2)
{
float l9_5680=fract(l9_5678);
float l9_5681=l9_5678-l9_5680;
float l9_5682=step(0.25,fract(l9_5681*0.5));
l9_5678=mix(l9_5680,1.0-l9_5680,fast::clamp(l9_5682,0.0,1.0));
}
}
param_8.y=l9_5678;
if (param_12)
{
bool l9_5683=param_14;
bool l9_5684;
if (l9_5683)
{
l9_5684=param_11.x==3;
}
else
{
l9_5684=l9_5683;
}
float l9_5685=param_8.x;
float l9_5686=param_13.x;
float l9_5687=param_13.z;
bool l9_5688=l9_5684;
float l9_5689=l9_5672;
float l9_5690=fast::clamp(l9_5685,l9_5686,l9_5687);
float l9_5691=step(abs(l9_5685-l9_5690),9.9999997e-06);
l9_5689*=(l9_5691+((1.0-float(l9_5688))*(1.0-l9_5691)));
l9_5685=l9_5690;
param_8.x=l9_5685;
l9_5672=l9_5689;
bool l9_5692=param_14;
bool l9_5693;
if (l9_5692)
{
l9_5693=param_11.y==3;
}
else
{
l9_5693=l9_5692;
}
float l9_5694=param_8.y;
float l9_5695=param_13.y;
float l9_5696=param_13.w;
bool l9_5697=l9_5693;
float l9_5698=l9_5672;
float l9_5699=fast::clamp(l9_5694,l9_5695,l9_5696);
float l9_5700=step(abs(l9_5694-l9_5699),9.9999997e-06);
l9_5698*=(l9_5700+((1.0-float(l9_5697))*(1.0-l9_5700)));
l9_5694=l9_5699;
param_8.y=l9_5694;
l9_5672=l9_5698;
}
float2 l9_5701=param_8;
bool l9_5702=param_9;
float3x3 l9_5703=param_10;
if (l9_5702)
{
l9_5701=float2((l9_5703*float3(l9_5701,1.0)).xy);
}
float2 l9_5704=l9_5701;
param_8=l9_5704;
float l9_5705=param_8.x;
int l9_5706=param_11.x;
bool l9_5707=l9_5671;
float l9_5708=l9_5672;
if ((l9_5706==0)||(l9_5706==3))
{
float l9_5709=l9_5705;
float l9_5710=0.0;
float l9_5711=1.0;
bool l9_5712=l9_5707;
float l9_5713=l9_5708;
float l9_5714=fast::clamp(l9_5709,l9_5710,l9_5711);
float l9_5715=step(abs(l9_5709-l9_5714),9.9999997e-06);
l9_5713*=(l9_5715+((1.0-float(l9_5712))*(1.0-l9_5715)));
l9_5709=l9_5714;
l9_5705=l9_5709;
l9_5708=l9_5713;
}
param_8.x=l9_5705;
l9_5672=l9_5708;
float l9_5716=param_8.y;
int l9_5717=param_11.y;
bool l9_5718=l9_5671;
float l9_5719=l9_5672;
if ((l9_5717==0)||(l9_5717==3))
{
float l9_5720=l9_5716;
float l9_5721=0.0;
float l9_5722=1.0;
bool l9_5723=l9_5718;
float l9_5724=l9_5719;
float l9_5725=fast::clamp(l9_5720,l9_5721,l9_5722);
float l9_5726=step(abs(l9_5720-l9_5725),9.9999997e-06);
l9_5724*=(l9_5726+((1.0-float(l9_5723))*(1.0-l9_5726)));
l9_5720=l9_5725;
l9_5716=l9_5720;
l9_5719=l9_5724;
}
param_8.y=l9_5716;
l9_5672=l9_5719;
float2 l9_5727=param_8;
int l9_5728=param_6;
int l9_5729=param_7;
float l9_5730=param_16;
float2 l9_5731=l9_5727;
int l9_5732=l9_5728;
int l9_5733=l9_5729;
float3 l9_5734=float3(0.0);
if (l9_5732==0)
{
l9_5734=float3(l9_5731,0.0);
}
else
{
if (l9_5732==1)
{
l9_5734=float3(l9_5731.x,(l9_5731.y*0.5)+(0.5-(float(l9_5733)*0.5)),0.0);
}
else
{
l9_5734=float3(l9_5731,float(l9_5733));
}
}
float3 l9_5735=l9_5734;
float3 l9_5736=l9_5735;
float4 l9_5737=sc_set0.Tweak_N27.sample(sc_set0.Tweak_N27SmpSC,l9_5736.xy,bias(l9_5730));
float4 l9_5738=l9_5737;
if (param_14)
{
l9_5738=mix(param_15,l9_5738,float4(l9_5672));
}
float4 l9_5739=l9_5738;
Output_N52=l9_5739;
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
Output_N67=mix(Result_N184,Output_N51,Export_N64);
float Output_N68=0.0;
float param_17=(*sc_set0.UserUniforms).Tweak_N47;
Output_N68=param_17;
float4 Output_N69=float4(0.0);
float4 param_18=Output_N67;
float param_19=Output_N68;
float l9_5740=dot(param_18.xyz,float3(0.29899999,0.58700001,0.114));
float4 param_20=float4(mix(float3(l9_5740),param_18.xyz,float3(param_19)),param_18.w);
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
float4 l9_5741=fast::max(param_21,float4(0.0));
float4 param_22=l9_5741;
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
float4 l9_5742=param_23;
float4 l9_5743=l9_5742;
float l9_5744=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_5744=l9_5743.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_5744=fast::clamp(l9_5743.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_5744=fast::clamp(dot(l9_5743.xyz,float3(l9_5743.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_5744=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_5744=(1.0-dot(l9_5743.xyz,float3(0.33333001)))*l9_5743.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_5744=(1.0-fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0))*l9_5743.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_5744=fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0)*l9_5743.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_5744=fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_5744=fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0)*l9_5743.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_5744=dot(l9_5743.xyz,float3(0.33333001))*l9_5743.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_5744=1.0-fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_5744=fast::clamp(dot(l9_5743.xyz,float3(1.0)),0.0,1.0);
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
float l9_5745=l9_5744;
float l9_5746=l9_5745;
float l9_5747=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_5746;
float3 l9_5748=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_5742.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_5749=float4(l9_5748.x,l9_5748.y,l9_5748.z,l9_5747);
param_23=l9_5749;
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
float4 l9_5750=param_23;
float4 l9_5751=float4(0.0);
float4 l9_5752=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_5753=out.sc_FragData0;
l9_5752=l9_5753;
}
else
{
float4 l9_5754=gl_FragCoord;
float2 l9_5755=l9_5754.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_5756=l9_5755;
float2 l9_5757=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_5758=1;
int l9_5759=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5759=0;
}
else
{
l9_5759=in.varStereoViewID;
}
int l9_5760=l9_5759;
int l9_5761=l9_5760;
float3 l9_5762=float3(l9_5756,0.0);
int l9_5763=l9_5758;
int l9_5764=l9_5761;
if (l9_5763==1)
{
l9_5762.y=((2.0*l9_5762.y)+float(l9_5764))-1.0;
}
float2 l9_5765=l9_5762.xy;
l9_5757=l9_5765;
}
else
{
l9_5757=l9_5756;
}
float2 l9_5766=l9_5757;
float2 l9_5767=l9_5766;
float2 l9_5768=l9_5767;
float2 l9_5769=l9_5768;
float l9_5770=0.0;
int l9_5771;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_5772=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5772=0;
}
else
{
l9_5772=in.varStereoViewID;
}
int l9_5773=l9_5772;
l9_5771=1-l9_5773;
}
else
{
int l9_5774=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5774=0;
}
else
{
l9_5774=in.varStereoViewID;
}
int l9_5775=l9_5774;
l9_5771=l9_5775;
}
int l9_5776=l9_5771;
float2 l9_5777=l9_5769;
int l9_5778=sc_ScreenTextureLayout_tmp;
int l9_5779=l9_5776;
float l9_5780=l9_5770;
float2 l9_5781=l9_5777;
int l9_5782=l9_5778;
int l9_5783=l9_5779;
float3 l9_5784=float3(0.0);
if (l9_5782==0)
{
l9_5784=float3(l9_5781,0.0);
}
else
{
if (l9_5782==1)
{
l9_5784=float3(l9_5781.x,(l9_5781.y*0.5)+(0.5-(float(l9_5783)*0.5)),0.0);
}
else
{
l9_5784=float3(l9_5781,float(l9_5783));
}
}
float3 l9_5785=l9_5784;
float3 l9_5786=l9_5785;
float4 l9_5787=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_5786.xy,bias(l9_5780));
float4 l9_5788=l9_5787;
float4 l9_5789=l9_5788;
l9_5752=l9_5789;
}
float4 l9_5790=l9_5752;
float3 l9_5791=l9_5790.xyz;
float3 l9_5792=l9_5791;
float3 l9_5793=l9_5750.xyz;
float3 l9_5794=definedBlend(l9_5792,l9_5793,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_5751=float4(l9_5794.x,l9_5794.y,l9_5794.z,l9_5751.w);
float3 l9_5795=mix(l9_5791,l9_5751.xyz,float3(l9_5750.w));
l9_5751=float4(l9_5795.x,l9_5795.y,l9_5795.z,l9_5751.w);
l9_5751.w=1.0;
float4 l9_5796=l9_5751;
param_23=l9_5796;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_5797=float4(in.varScreenPos.xyz,1.0);
param_23=l9_5797;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_5798=gl_FragCoord;
float l9_5799=fast::clamp(abs(l9_5798.z),0.0,1.0);
float4 l9_5800=float4(l9_5799,1.0-l9_5799,1.0,1.0);
param_23=l9_5800;
}
else
{
float4 l9_5801=param_23;
float4 l9_5802=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_5802=float4(mix(float3(1.0),l9_5801.xyz,float3(l9_5801.w)),l9_5801.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_5803=l9_5801.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_5803=fast::clamp(l9_5803,0.0,1.0);
}
l9_5802=float4(l9_5801.xyz*l9_5803,l9_5803);
}
else
{
l9_5802=l9_5801;
}
}
float4 l9_5804=l9_5802;
param_23=l9_5804;
}
}
}
}
}
float4 l9_5805=param_23;
FinalColor=l9_5805;
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
float4 l9_5806=float4(0.0);
l9_5806=float4(0.0);
float4 l9_5807=l9_5806;
float4 Cost=l9_5807;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_24=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_24,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_25=FinalColor;
float4 l9_5808=param_25;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_5808.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_5808;
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
float4 greyMaskIdSize;
float4 greyMaskIdDims;
float4 greyMaskIdView;
float3x3 greyMaskIdTransform;
float4 greyMaskIdUvMinMax;
float4 greyMaskIdBorderColor;
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
texture2d<float> sc_EnvmapDiffuse [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(10)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(19)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(20)]];
texture2d<float> sc_RayTracingRayDirection [[id(21)]];
texture2d<float> sc_RayTracingReflections [[id(22)]];
texture2d<float> sc_RayTracingShadows [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
sampler Tweak_N27SmpSC [[id(28)]];
sampler greyMaskIdSmpSC [[id(29)]];
sampler intensityTextureSmpSC [[id(30)]];
sampler patternTextureId01SmpSC [[id(31)]];
sampler patternTextureId02SmpSC [[id(32)]];
sampler sc_EnvmapDiffuseSmpSC [[id(33)]];
sampler sc_EnvmapSpecularSmpSC [[id(34)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(36)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(37)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(38)]];
sampler sc_RayTracingReflectionsSmpSC [[id(39)]];
sampler sc_RayTracingShadowsSmpSC [[id(40)]];
sampler sc_SSAOTextureSmpSC [[id(41)]];
sampler sc_ScreenTextureSmpSC [[id(42)]];
sampler sc_ShadowTextureSmpSC [[id(43)]];
constant userUniformsObj* UserUniforms [[id(45)]];
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
float l9_1=float((*sc_set0.UserUniforms).ColorOnOffid02!=0);
l9_0=l9_1;
param=l9_0;
if ((param*1.0)!=0.0)
{
float l9_2=0.0;
ssGlobals l9_3=param_1;
float l9_4=0.0;
float l9_5=float((*sc_set0.UserUniforms).pbrOnOffId02!=0);
l9_4=l9_5;
l9_2=l9_4;
if ((l9_2*1.0)!=0.0)
{
float l9_6=0.0;
float l9_7=(*sc_set0.UserUniforms).rougnessId02;
l9_6=l9_7;
float l9_8=(*sc_set0.UserUniforms).Port_Opacity_N313;
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
float l9_33=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_32=l9_33;
l9_30=l9_32;
if ((l9_30*1.0)!=0.0)
{
float l9_34=0.0;
float l9_35=(*sc_set0.UserUniforms).rougnessId01;
l9_34=l9_35;
float l9_36=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_37=l9_34;
ssGlobals l9_38=l9_31;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_38.BumpedNormal=l9_38.VertexNormal_WorldSpace;
}
float l9_39=l9_36;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_39<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_40=gl_FragCoord;
float2 l9_41=floor(mod(l9_40.xy,float2(4.0)));
float l9_42=(mod(dot(l9_41,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_39<l9_42)
{
discard_fragment();
}
}
float3 l9_43=l9_38.PositionWS;
float3 l9_44=l9_38.BumpedNormal;
float l9_45=l9_37;
float3 l9_46=l9_43;
float3 l9_47=l9_44;
float l9_48=l9_45;
uint l9_49=0u;
uint3 l9_50=uint3(round((l9_46-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_50.x,l9_50.y,l9_50.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_51=l9_47;
float l9_52=dot(abs(l9_51),float3(1.0));
l9_51/=float3(l9_52);
float2 l9_53=float2(fast::clamp(-l9_51.z,0.0,1.0));
float2 l9_54=l9_51.xy+mix(-l9_53,l9_53,step(float2(0.0),l9_51.xy));
uint l9_55=as_type<uint>(half2(l9_54));
uint2 l9_56=uint2(l9_55&65535u,l9_55>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_56.x,l9_56.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_49;
uint l9_57=uint(fast::clamp(l9_48,0.0,1.0)*1000.0);
l9_57 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_57;
}
else
{
}
}
else
{
float l9_58=0.0;
ssGlobals l9_59=param_1;
float l9_60=0.0;
float l9_61=float((*sc_set0.UserUniforms).pbrOnOffId01!=0);
l9_60=l9_61;
l9_58=l9_60;
if ((l9_58*1.0)!=0.0)
{
float l9_62=0.0;
float l9_63=(*sc_set0.UserUniforms).rougnessId01;
l9_62=l9_63;
float l9_64=(*sc_set0.UserUniforms).Port_Opacity_N152;
float l9_65=l9_62;
ssGlobals l9_66=l9_59;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_66.BumpedNormal=l9_66.VertexNormal_WorldSpace;
}
float l9_67=l9_64;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_67<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_68=gl_FragCoord;
float2 l9_69=floor(mod(l9_68.xy,float2(4.0)));
float l9_70=(mod(dot(l9_69,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_67<l9_70)
{
discard_fragment();
}
}
float3 l9_71=l9_66.PositionWS;
float3 l9_72=l9_66.BumpedNormal;
float l9_73=l9_65;
float3 l9_74=l9_71;
float3 l9_75=l9_72;
float l9_76=l9_73;
uint l9_77=0u;
uint3 l9_78=uint3(round((l9_74-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_78.x,l9_78.y,l9_78.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_79=l9_75;
float l9_80=dot(abs(l9_79),float3(1.0));
l9_79/=float3(l9_80);
float2 l9_81=float2(fast::clamp(-l9_79.z,0.0,1.0));
float2 l9_82=l9_79.xy+mix(-l9_81,l9_81,step(float2(0.0),l9_79.xy));
uint l9_83=as_type<uint>(half2(l9_82));
uint2 l9_84=uint2(l9_83&65535u,l9_83>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_84.x,l9_84.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_77;
uint l9_85=uint(fast::clamp(l9_76,0.0,1.0)*1000.0);
l9_85 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_85;
}
else
{
}
}
return out;
}
} // RECEIVER MODE SHADER
