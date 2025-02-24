const float WorldAtmosphereMin =  80.0;
const float WorldAtmosphereMax = 800.0;

const float SkyDensityF = SKY_DENSITY * 0.01;
const float phaseAir = phaseIso;

#ifdef DISTANT_HORIZONS
	float SkyFar = max(2000.0, 2.0*dhFarPlane);
#else
	const float SkyFar = 2000.0;
#endif

#ifdef WORLD_SKY_ENABLED
	#if SKY_VOL_FOG_TYPE != VOL_TYPE_NONE
		float AirDensityF = mix(SkyDensityF, max(SkyDensityF, 0.04), skyRainStrength);
	#else
		const float AirDensityF = 0.0;
	#endif

	const float AirDensityRainF = 0.08;
	const vec3 AirScatterColor_rain = _RGBToLinear(vec3(0.922, 0.933, 0.941));
	const vec3 AirExtinctColor_rain = _RGBToLinear(1.0 - vec3(0.576, 0.604, 0.62));

	const float AirAmbientF = 0.08;//mix(0.02, 0.0, skyRainStrength);
	const vec3 AirScatterColor = _RGBToLinear(vec3(0.541, 0.514, 0.482));
	const vec3 AirExtinctColor = _RGBToLinear(1.0 - vec3(0.737, 0.745, 0.769));//mix(0.02, 0.006, skyRainStrength);
#else
	const float AirDensityF = SkyDensityF;
	vec3 AirAmbientF = RGBToLinear(fogColor);

	const vec3 AirScatterColor = vec3(0.07);
	const vec3 AirExtinctColor = vec3(0.02);
#endif


float GetSkyDensity(const in float worldY) {
	// float heightF = 1.0 - smoothstep(WorldAtmosphereMin, WorldAtmosphereMax, worldY);
    // return AirDensityF * (1.0 - smoothstep(WorldAtmosphereMin, WorldAtmosphereMax, worldY));

	float heightF = 1.0 - saturate((worldY - WorldAtmosphereMin) / (WorldAtmosphereMax - WorldAtmosphereMin));
    return AirDensityF * pow5(heightF);
}

float GetSkyPhase(const in float VoL) {
    return DHG(VoL, -0.06, 0.74, 0.26);
}
