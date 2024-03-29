Shader "FutureRealities/Crosshair" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB) Gloss (A)", 2D) = "white" {}
}
SubShader {
	Tags { "RenderType"="Overlay" "Queue"="Overlay"}
	LOD 200
	
	ZWrite Off
	ZTest Off
	
CGPROGRAM
#pragma surface surf Lambert

sampler2D _MainTex;
fixed4 _Color;

struct Input {
	float2 uv_MainTex;
};

void surf (Input IN, inout SurfaceOutput o) {
	fixed4 tex = tex2D(_MainTex, IN.uv_MainTex);
	fixed4 c = tex * _Color;
	o.Albedo = c.rgb;
	o.Emission = c.rgb;
	o.Alpha = c.a;
}
ENDCG
} 
FallBack "Self-Illumin/VertexLit"
}
