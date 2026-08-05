package branch

import "strings"

#Properties: {
	AppId: string & =~"d[a-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(20)
	Backend?: #Backend
	BasicAuthConfig?: #BasicAuthConfig
	BranchName: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(255)
	BuildSpec?: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(25000)
	ComputeRoleArn?: string & =~"(?s).*" & strings.MinRunes(0) & strings.MaxRunes(1000)
	Description?: string & =~"(?s).*" & strings.MaxRunes(1000)
	EnableAutoBuild?: bool
	EnablePerformanceMode?: bool
	EnablePullRequestPreview?: bool
	EnableSkewProtection?: bool
	EnvironmentVariables?: [...#EnvironmentVariable]
	Framework?: string & =~"(?s).*" & strings.MaxRunes(255)
	PullRequestEnvironmentName?: string & =~"(?s).*" & strings.MaxRunes(20)
	Stage?: "EXPERIMENTAL" | "BETA" | "PULL_REQUEST" | "PRODUCTION" | "DEVELOPMENT"
	Tags?: [...#Tag]
}

#Backend: {
	StackArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#BasicAuthConfig: {
	EnableBasicAuth?: bool
	Password: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Username: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#EnvironmentVariable: {
	Name: string & =~"(?s).*" & strings.MaxRunes(255)
	Value: string & =~"(?s).*" & strings.MaxRunes(5500)
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
