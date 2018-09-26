uniform vec3 diffuse;
uniform vec3 emissive;
uniform float opacity;
uniform float hue;
uniform float saturation;

varying vec3 vLightFront;
varying vec3 rim;

#include <common>
#include <color_pars_fragment>
#include <uv_pars_fragment>
#include <map_pars_fragment>
#include <bsdfs>
#include <lights_pars_begin>

vec3 saturationf(vec3 rgb, float adjustment) {
    const vec3 W = vec3(0.2125, 0.7154, 0.0721);
    vec3 intensity = vec3(dot(rgb, W));
    return mix(intensity, rgb, adjustment);
}

vec3 hueShift( vec3 color, float hueAdjust ) {
    const vec3  kRGBToYPrime = vec3 (0.299, 0.587, 0.114);
    const vec3  kRGBToI      = vec3 (0.596, -0.275, -0.321);
    const vec3  kRGBToQ      = vec3 (0.212, -0.523, 0.311);
    const vec3  kYIQToR     = vec3 (1.0, 0.956, 0.621);
    const vec3  kYIQToG     = vec3 (1.0, -0.272, -0.647);
    const vec3  kYIQToB     = vec3 (1.0, -1.107, 1.704);
    float   YPrime  = dot (color, kRGBToYPrime);
    float   I       = dot (color, kRGBToI);
    float   Q       = dot (color, kRGBToQ);
    float   hue     = atan (Q, I);
    float   chroma  = sqrt (I * I + Q * Q);
    hue += hueAdjust;
    Q = chroma * sin (hue);
    I = chroma * cos (hue);
    vec3    yIQ   = vec3 (YPrime, I, Q);
    return vec3( dot (yIQ, kYIQToR), dot (yIQ, kYIQToG), dot (yIQ, kYIQToB) );
}

void main() {

	vec4 diffuseColor = vec4( diffuse, opacity );
	ReflectedLight reflectedLight = ReflectedLight( vec3( 0.0 ), vec3( 0.0 ), vec3( 0.0 ), vec3( 0.0 ) );
	vec3 totalEmissiveRadiance = emissive;

	#include <map_fragment>
	#include <color_fragment>

	diffuseColor.rgb = hueShift(diffuseColor.rgb, hue);
	diffuseColor.rgb = saturationf(diffuseColor.rgb, saturation);

	reflectedLight.indirectDiffuse = getAmbientLightIrradiance( ambientLightColor );
	reflectedLight.indirectDiffuse *= BRDF_Diffuse_Lambert( diffuseColor.rgb );
	reflectedLight.directDiffuse = vLightFront;
	reflectedLight.directDiffuse *= BRDF_Diffuse_Lambert( diffuseColor.rgb );

	vec3 outgoingLight = reflectedLight.directDiffuse + reflectedLight.indirectDiffuse + totalEmissiveRadiance;

	gl_FragColor = vec4( outgoingLight + rim, diffuseColor.a );
    // gl_FragColor = vec4( vUv.x, vUv.x, 1.0, 1.0);
}