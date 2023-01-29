uniform float time;
varying vec2 vUv;

void main(){
    vec3 newPosition = position;
    float PI = 3.1415925;

    newPosition.z += 0.05 * sin((newPosition.x + 0.5 + time / 10.) * 2. * PI); 
    
    vUv = uv;
    
    gl_Position = projectionMatrix * modelViewMatrix * vec4(newPosition, 1.);
}