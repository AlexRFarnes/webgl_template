varying vec2 vUv;
uniform sampler2D oceanTexture;
uniform float time;

void main(){

    vec2 newUV = vUv;

    vec4 oceanView = texture2D(oceanTexture, newUV);

    gl_FragColor = oceanView;
}