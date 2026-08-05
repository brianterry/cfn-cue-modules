package simulation

import "strings"

#Properties: {
	// The maximum running time of the simulation.
	MaximumDuration?: string & strings.MinRunes(2) & strings.MaxRunes(6)
	// The name of the simulation.
	Name: string & =~"[a-zA-Z0-9_\\-]{1,2048}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Role ARN.
	RoleArn: string
	SchemaS3Location?: #S3Location
	SnapshotS3Location?: #S3Location
}

#S3Location: {
	// The Schema S3 bucket name.
	BucketName: string & =~"[a-zA-Z0-9_\\-]{3,63}$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// This is the schema S3 object key, which includes the full path of "folders" from the bucket root to the schema.
	ObjectKey: string & strings.MinRunes(3) & strings.MaxRunes(255)
}
