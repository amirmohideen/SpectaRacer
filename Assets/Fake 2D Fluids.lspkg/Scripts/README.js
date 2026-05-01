/*

README: 2D_Fluids
=============================================

This asset allows you to create interactive 2d fluid effects. 
It is fully customizable so you can modify it for different simulations, such as fire and smoke effects are provided in the examples.

Asset structure:
    Camera Source - The RT of this camera is used as the source for emitting 2d fluids. Provided examples use the eyes as a source so the Face Mask component is used with a texture for the eye mask.
    BindHeadPos Script - Passes the position of the user's head in the Pivot pos parameters of Solver materials.
    Camera Sim Smoke/Fire - In these cameras the simulation takes place. The asset uses fire and smoke simulation, respectively one camera for each effect. The heart of the simulation is the "Smoke/Fire Solver" material on Screen Image.
    Camera Final Output - This camera contains a Post Effect with "Smoke/Fire Output" material for displaying the result of the simulation. You can use your final camera in your project by placing this Post Effect in it.

Solver material parameters:
    Output - Allows you to visualize some forces for easy tuning.
    Sim_Camera_RT - specify here RT current Camera Sim.
    =============================================
    Source->Source map - the texture of the emission source.
    Source->Black is Alpha - turn on this option if the Source map does not contain an alpha channel.
    Source->Source Intensity - the intensity of the fluids emission.
    Source->Use Noise - this option allows you to use 3D textures for coloring and masking the source. If you do not use this option, make sure that your source map contains the necessary color. In most cases, the noise mask gives more interesting results.
    Source->Noise->3D Texture Noise - Use the 3D textures that you can find in the Lens Studio Asset Library.
    Source->Noise->Scale - texture scale.
    Source->Noise->Flow Speed - noise evolution speed.
    Source->Noise->Color Contrast - contrast of the noise used for color mixing.
    Source->Noise->Alpha Contrast - contrast of the alpha channel.
    Source->Noise->Color 01/02 - colors.
    =============================================
    3D Noise Force->3D Texture - Use the 3D textures that you can find in the Lens Studio Asset Library.
    3D Noise Force->Strength - the strength of the force.
    3D Noise Force->UV Settings->Radial UV - turns on the radial UVs for the force texture.
    3D Noise Force->UV Settings->Radial Pivot Pos - center of radial UV.
    3D Noise Force->UV Settings->Radial Offset Pivot Pos - shift the center of radial UVs.
    3D Noise Force->UV Settings->Scroll Dir - direction of the animation.
    3D Noise Force->UV Settings->Scroll Speed - animation speed.
    3D Noise Force->UV Settings->Scale - texture Scale.
    3D Noise Force->UV Settings->Flow Speed - noise evolution speed.
    =============================================
    Radial force->Strength - the strength of the force.
    Radial force->Pivot Pos - center of force.
    Radial force->Offset Pivot Pos - offset of center of force.
    =============================================
    Direction Force->Direction - the direction of the force.
    Direction Force->Strength - the strength of the force.
    =============================================
    Attenuation - how fast the fluids dissolve.
    Attenuation Exponent - something like edge sharpness or alpha channel contrast.

Output material parameters:
    Input - simulation RT.
    Alpha Gain - alpha channel multiplier.
    Alpha Contrast - alpha channel contrast.
    Hot areas - the brightness multiplier of the densest areas (use this for fire).
    Hot areas contrast - adjust hot areas.
    
*/