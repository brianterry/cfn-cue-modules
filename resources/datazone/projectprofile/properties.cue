package projectprofile

import "strings"

#Properties: {
	AllowCustomProjectResourceTags?: bool
	Description?: string & strings.MaxRunes(2048)
	DomainIdentifier?: string & =~"^dzd[_-][a-zA-Z0-9_-]{1,36}$"
	DomainUnitIdentifier?: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ProjectResourceTags?: [...#ResourceTagParameter]
	ProjectResourceTagsDescription?: string & strings.MaxRunes(2048)
	Status?: #Status
	UseDefaultConfigurations?: bool
}

#AwsAccount: {
	AwsAccountId: string & =~"^\\d{12}$"
}

#DeploymentMode: "ON_CREATE" | "ON_DEMAND"

#DesignationConfiguration: {
	DesignationId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(36)
}

#EnvironmentConfiguration: {
	AwsAccount?: #AwsAccount
	AwsRegion: #Region
	ConfigurationParameters?: #EnvironmentConfigurationParametersDetails
	DeploymentMode?: #DeploymentMode
	DeploymentOrder?: number & >=0 & <=16
	Description?: string & strings.MaxRunes(2048)
	EnvironmentBlueprintId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	EnvironmentConfigurationId?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#EnvironmentConfigurationParameter: {
	IsEditable?: bool
	Name?: string & =~"^[a-zA-Z_][a-zA-Z0-9_]*$"
	Value?: string
}

#EnvironmentConfigurationParametersDetails: {
	ParameterOverrides?: [...#EnvironmentConfigurationParameter]
	ResolvedParameters?: [...#EnvironmentConfigurationParameter]
	SsmPath?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ProjectScope: {
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Policy?: string
}

#Region: {
	RegionName: string & =~"^[a-z]{2}-?(iso|gov)?-{1}[a-z]*-{1}[0-9]$" & strings.MinRunes(4) & strings.MaxRunes(16)
}

#ResourceTagParameter: {
	IsValueEditable: bool
	Key: string & =~"^[\\w \\.:/=+@-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[\\w \\.:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Status: "ENABLED" | "DISABLED"
