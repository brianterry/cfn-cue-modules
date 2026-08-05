package application

import "strings"

#Properties: {
	Definition?: #Definition
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	EngineType: #EngineType
	// The ID or the Amazon Resource Name (ARN) of the customer managed KMS Key used for encrypting application-related resources.
	KmsKeyId?: string & strings.MaxRunes(2048)
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	RoleArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]|):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+=,@.-]{0,1023}$"
	Tags?: #TagMap
}

#Definition: {
	S3Location: string & =~"^\\S{1,2000}$"
} | {
	Content: string & strings.MinRunes(1) & strings.MaxRunes(65000)
}

#EngineType: "microfocus" | "bluage"

#TagMap: {...}
