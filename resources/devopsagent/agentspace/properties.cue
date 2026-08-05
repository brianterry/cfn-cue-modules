package agentspace

import "strings"

#Properties: {
	// The description of the AgentSpace.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The ARN of the KMS key to use for encryption.
	KmsKeyArn?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The locale for the AgentSpace, which determines the language used in agent responses.
	Locale?: string & =~"^[a-zA-Z]{2,3}(-[a-zA-Z0-9]{2,8})*$" & strings.MinRunes(2) & strings.MaxRunes(35)
	// The name of the AgentSpace.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#IamAuthConfiguration: {
	CreatedAt?: string
	OperatorAppRoleArn: string
	UpdatedAt?: string
}

#IdcAuthConfiguration: {
	CreatedAt?: string
	IdcApplicationArn?: string
	IdcInstanceArn: string
	OperatorAppRoleArn: string
	UpdatedAt?: string
}

#OperatorApp: {
	Iam?: #IamAuthConfiguration
	Idc?: #IdcAuthConfiguration
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
