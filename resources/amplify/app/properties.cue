package app

import "strings"

#Properties: {
	AccessToken?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	AutoBranchCreationConfig?: #AutoBranchCreationConfig
	BasicAuthConfig?: #BasicAuthConfig
	BuildSpec?: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(25000)
	CacheConfig?: #CacheConfig
	ComputeRoleArn?: string & =~"(?s).*" & strings.MinRunes(0) & strings.MaxRunes(1000)
	CustomHeaders?: string & =~"(?s).*" & strings.MinRunes(0) & strings.MaxRunes(25000)
	CustomRules?: [...#CustomRule]
	Description?: string & =~"(?s).*" & strings.MaxRunes(1000)
	EnableBranchAutoDeletion?: bool
	EnvironmentVariables?: [...#EnvironmentVariable]
	IAMServiceRole?: string & =~"(?s).*" & strings.MinRunes(1) & strings.MaxRunes(1000)
	JobConfig?: #JobConfig
	Name: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(255)
	OauthToken?: string & =~"(?s).*" & strings.MaxRunes(1000)
	Platform?: "WEB" | "WEB_DYNAMIC" | "WEB_COMPUTE"
	Repository?: string & =~"(?s).*"
	Tags?: [...#Tag]
}

#AutoBranchCreationConfig: {
	AutoBranchCreationPatterns?: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
	BasicAuthConfig?: #BasicAuthConfig
	BuildSpec?: string & strings.MinRunes(1) & strings.MaxRunes(25000)
	EnableAutoBranchCreation?: bool
	EnableAutoBuild?: bool
	EnablePerformanceMode?: bool
	EnablePullRequestPreview?: bool
	EnvironmentVariables?: [...#EnvironmentVariable]
	Framework?: string & =~"(?s).*" & strings.MaxRunes(255)
	PullRequestEnvironmentName?: string & =~"(?s).*" & strings.MaxRunes(20)
	Stage?: "EXPERIMENTAL" | "BETA" | "PULL_REQUEST" | "PRODUCTION" | "DEVELOPMENT"
}

#BasicAuthConfig: {
	EnableBasicAuth?: bool
	Password?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Username?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#CacheConfig: {
	Type?: "AMPLIFY_MANAGED" | "AMPLIFY_MANAGED_NO_COOKIES"
}

#CustomRule: {
	Condition?: string & =~"(?s).*" & strings.MinRunes(0) & strings.MaxRunes(2048)
	Source: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Status?: string & =~".{3,7}" & strings.MinRunes(3) & strings.MaxRunes(7)
	Target: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#EnvironmentVariable: {
	Name: string & =~"(?s).*" & strings.MaxRunes(255)
	Value: string & =~"(?s).*" & strings.MaxRunes(5500)
}

#JobConfig: {
	BuildComputeType: "STANDARD_8GB" | "LARGE_16GB" | "XLARGE_72GB"
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
