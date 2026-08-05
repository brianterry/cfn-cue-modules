package project

import "strings"

#Properties: {
	ProjectDescription?: #ProjectDescription
	ProjectName: #ProjectName
	// Provisioned ServiceCatalog  Details
	ServiceCatalogProvisionedProductDetails?: {
		ProvisionedProductId?: #ProvisioningArtifactId
		ProvisionedProductStatusMessage?: #ProvisionedProductStatusMessage
	}
	// Input ServiceCatalog Provisioning Details
	ServiceCatalogProvisioningDetails?: {
		PathId?: #PathId
		ProductId: #ProductId
		ProvisioningArtifactId?: #ProvisioningArtifactId
		ProvisioningParameters?: [...#ProvisioningParameter]
	}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// An array of template providers associated with the project.
	TemplateProviderDetails?: [...#TemplateProviderDetail]
}

#CfnStackParameter: {
	// The key of the parameter.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The value of the parameter.
	Value: string & strings.MaxRunes(4096)
}

#CfnStackParameters: [...#CfnStackParameter]

#CfnTemplateProviderDetail: {
	Parameters?: #CfnStackParameters
	// The Amazon Resource Name (ARN) of the IAM role used by the template provider.
	RoleARN?: string & =~"arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The name of the template used for the project.
	TemplateName: string & =~"(?=.{1,32}$)[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MinRunes(1) & strings.MaxRunes(32)
	// The URL of the CloudFormation template.
	TemplateURL: string & =~"(?=.{1,1024}$)(https)://([^/]+)/(.+)" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#PathId: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(100)

#ProductId: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(100)

#ProjectArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:project.*" & strings.MinRunes(1) & strings.MaxRunes(2048)

#ProjectDescription: string & =~".*" & strings.MaxRunes(1024)

#ProjectId: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MaxRunes(20)

#ProjectName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(32)

#ProvisionedProductStatusMessage: string

#ProvisioningArtifactId: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(100)

#ProvisioningParameter: {
	// The parameter key.
	Key: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The parameter value.
	Value: string & =~".*" & strings.MaxRunes(4096)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
}

#TemplateProviderDetail: {
	CfnTemplateProviderDetail?: #CfnTemplateProviderDetail
}
