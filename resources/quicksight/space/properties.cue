package space

import "strings"

#Properties: {
	// The ID of the Amazon Web Services account where the space is being created.
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// A description of the space.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The display name of the space.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A list of permissions granted on the space.
	Permissions?: [...#ResourcePermission]
	// A list of QuickSight resources attached to the space.
	Resources?: [...#SpaceResource]
	// The unique identifier for the space.
	SpaceId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// A list of key-value pairs to associate with the space resource.
	Tags?: [...#Tag]
}

#ResourcePermission: {
	// The list of actions granted to the principal.
	Actions: [...string]
	// The ARN of the principal (user or group) receiving the permission.
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#SpaceResource: {
	// The ARN of the QuickSight resource.
	ResourceArn: string
	// The type of QuickSight resource.
	ResourceType: "TOPIC" | "DASHBOARD" | "KNOWLEDGE_BASE" | "ACTION_CONNECTOR" | "DATA_SET"
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
