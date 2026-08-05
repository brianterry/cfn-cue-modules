package system

import "strings"

#Properties: {
	// The description of the system.
	Description?: string & strings.MaxRunes(500)
	// The KMS key ID for encrypting system data.
	KmsKeyId?: string & =~"^((arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)))|([a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+))$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The name of the system.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	// Whether the system is enabled to be shared with other members of the Organization. Only applicable if the system owner is a management account or delegated admin.
	SharingEnabled?: bool
	// Tags assigned to the system.
	Tags?: [...#Tag]
}

#Tag: {
	// The tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
