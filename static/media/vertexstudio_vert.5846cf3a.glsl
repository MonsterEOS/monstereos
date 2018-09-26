uniform sampler2D map;

uniform float rimPower;
uniform float rimIntensity;
uniform vec3 rimColor;

varying vec3 vLightFront;
varying vec3 rim;

#include <common>
#include <uv_pars_vertex>
#include <bsdfs>
#include <lights_pars_begin>
#include <color_pars_vertex>
#include <skinning_pars_vertex>

void main() {

	#include <uv_vertex>
	#include <uv2_vertex>
	#include <color_vertex>

	#include <beginnormal_vertex>
	#include <skinbase_vertex>
	#include <skinnormal_vertex>
	#include <defaultnormal_vertex>

	#include <begin_vertex>
	#include <skinning_vertex>
	#include <project_vertex>

	#include <worldpos_vertex>
	#include <lights_lambert_vertex>

    vec3 rimNormal = normalize(mat3(modelViewMatrix) * normal);
    vec3 rimPosition = (modelViewMatrix * vec4(position, 1.0)).xyz;
    vec3 rimToEye = -normalize(rimPosition);
    float rimDot = 1.0 - max(dot(rimToEye, rimNormal), 0.0);
    rim = vec3(smoothstep(rimPower, 1.0, rimDot)) * rimColor * rimIntensity;

}