package subnetgroup

import "strings"

#Properties: {
	// An optional description of the subnet group.
	Description?: string
	// The name of the subnet group. This value must be unique as it also serves as the subnet group identifier.
	SubnetGroupName: string & =~"[a-z][a-z0-9\\-]*"
	// A list of VPC subnet IDs for the subnet group.
	SubnetIds: [...string]
	// An array of key-value pairs to apply to this subnet group.
	Tags?: [...#Tag]
}

#Tag: {
	// The key for the tag. May not be null.
	Key: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,128}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value. May be null.
	Value: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,256}$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
