Shader "My/Lambert/Starter2"
{
    Properties
    {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}

    }
    SubShader
    {
        Tags { "RenderType"="Opaque"}

        CGPROGRAM
        #pragma surface surf MyFunction noambient

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o)
        {
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex);
            o.Albedo = c.rgb;
            o.Alpha = c.a;
        }

        float4 LightingMyFunction(SurfaceOutput s, float3 lightDir, float atten) {
            float result = dot(s.Normal, lightDir);
            result = result * 0.5 + 0.5;

            float4 final;
            final.rgb = result * s.Albedo;
            final.a = s.Alpha;

            return final;
        }

        ENDCG
    }
    FallBack "Diffuse"
}
// 나도 언제쯤 집에 갈 수 있을까
/*
난 진짜 집에 가고 싶은데
*/

