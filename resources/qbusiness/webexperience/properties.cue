package webexperience

import "strings"

#Properties: {
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	BrowserExtensionConfiguration?: #BrowserExtensionConfiguration
	CustomizationConfiguration?: #CustomizationConfiguration
	IdentityProviderConfiguration?: #IdentityProviderConfiguration
	Origins?: [...#Origin]
	RoleArn?: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	SamplePromptsControlMode?: #WebExperienceSamplePromptsControlMode
	Subtitle?: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(500)
	Tags?: [...#Tag]
	Title?: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(500)
	WelcomeMessage?: string & strings.MinRunes(0) & strings.MaxRunes(300)
}

#BrowserExtension: "FIREFOX" | "CHROME"

#BrowserExtensionConfiguration: {
	EnabledBrowserExtensions: [...#BrowserExtension]
}

#CustomizationConfiguration: {
	CustomCSSUrl?: string & =~"^(https?://[a-zA-Z0-9-_.+%/]+\\.css)?$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	FaviconUrl?: string & =~"^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|ico))?$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	FontUrl?: string & =~"^(https?://[a-zA-Z0-9-_.+%/]+\\.(ttf|woff|woff2|otf))?$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	LogoUrl?: string & =~"^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|png))?$" & strings.MinRunes(0) & strings.MaxRunes(1284)
}

#IdentityProviderConfiguration: {
	SamlConfiguration: #SamlProviderConfiguration
} | {
	OpenIDConnectConfiguration: #OpenIDConnectProviderConfiguration
}

#OpenIDConnectProviderConfiguration: {
	SecretsArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	SecretsRole: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
}

#Origin: string & =~"^(http:\\/\\/|https:\\/\\/)[a-zA-Z0-9-_.]+(?::[0-9]{1,5})?$" & strings.MinRunes(1) & strings.MaxRunes(64)

#SamlProviderConfiguration: {
	AuthenticationUrl: string & =~"^https://.*$" & strings.MinRunes(1) & strings.MaxRunes(1284)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WebExperienceSamplePromptsControlMode: "ENABLED" | "DISABLED"

#WebExperienceStatus: "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "PENDING_AUTH_CONFIG"
