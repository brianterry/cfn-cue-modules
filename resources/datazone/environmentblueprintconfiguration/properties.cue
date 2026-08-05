package environmentblueprintconfiguration

#Properties: {
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	EnabledRegions: [...string & =~"^[a-z]{2}-?(iso|gov)?-{1}[a-z]*-{1}[0-9]$" & strings.MinRunes(4) & strings.MaxRunes(16)]
	EnvironmentBlueprintIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	EnvironmentRolePermissionBoundary?: string & =~"^arn:aws[^:]*:iam::(aws|\\d{12}):policy/[\\w+=,.@-]*$"
	// Region-agnostic environment blueprint parameters.
	GlobalParameters?: {...}
	ManageAccessRoleArn?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"
	ProvisioningConfigurations?: [...#ProvisioningConfiguration]
	ProvisioningRoleArn?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"
	RegionalParameters?: [...#RegionalParameter]
}

#LakeFormationConfiguration: {
	LocationRegistrationExcludeS3Locations?: [...string & =~"^s3://.+$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
	LocationRegistrationRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"
}

#RegionalParameter: {
	Parameters?: #Parameter
	Region?: string & =~"^[a-z]{2}-?(iso|gov)?-{1}[a-z]*-{1}[0-9]$"
}
