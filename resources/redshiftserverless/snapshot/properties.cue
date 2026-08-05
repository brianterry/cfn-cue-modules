package snapshot

import "strings"

#Properties: {
	// The namespace the snapshot is associated with.
	NamespaceName?: string & =~"^(?=^[a-z0-9-]+$).{3,64}$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The retention period of the snapshot.
	RetentionPeriod?: int
	// The name of the snapshot.
	SnapshotName: string & =~"^(?=^[a-z0-9-]+$).{3,64}$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Snapshot: {
	AdminUsername?: string
	KmsKeyId?: string
	NamespaceArn?: string
	NamespaceName?: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	OwnerAccount?: string
	RetentionPeriod?: int
	SnapshotArn?: string
	SnapshotCreateTime?: string
	SnapshotName?: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	Status?: #SnapshotStatus
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
