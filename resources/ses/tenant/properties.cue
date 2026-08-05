package tenant

import "strings"

#Properties: {
	// The list of resources to associate with the tenant.
	ResourceAssociations?: [...#ResourceAssociation]
	// The tags (keys and values) associated with the tenant.
	Tags?: [...#Tag]
	// The name of the tenant.
	TenantName: string & =~"^[\\w\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#ResourceAssociation: {
	// The ARN of the resource to associate with the tenant
	ResourceArn: string & strings.MinRunes(1)
}

#Tag: {
	// The key of the key-value tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the key-value tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
