package devicefleet

import "strings"

#Properties: {
	// Description for the edge device fleet
	Description?: string & =~"[\\S\\s]+" & strings.MinRunes(0) & strings.MaxRunes(800)
	// The name of the edge device fleet
	DeviceFleetName: string & =~"^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// S3 bucket and an ecryption key id (if available) to store outputs for the fleet
	OutputConfig: #EdgeOutputConfig
	// Role associated with the device fleet
	RoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Associate tags with the resource
	Tags?: [...#Tag]
}

#EdgeOutputConfig: {
	// The KMS key id used for encryption on the S3 bucket
	KmsKeyId?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The Amazon Simple Storage (S3) bucket URI
	S3OutputLocation: string & =~"^s3://([^/]+)/?(.*)$" & strings.MaxRunes(1024)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The key value of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
