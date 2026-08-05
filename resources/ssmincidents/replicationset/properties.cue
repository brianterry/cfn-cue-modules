package replicationset

import "strings"

#Properties: {
	DeletionProtected?: #DeletionProtected
	// The ReplicationSet configuration.
	Regions: #RegionList
	// The tags to apply to the replication set.
	Tags?: [...#Tag]
}

#Arn: string & =~"^arn:aws(-(cn|us-gov|iso(-b)?))?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MaxRunes(1000)

#DeletionProtected: bool

#RegionConfiguration: {
	// The AWS Key Management Service key ID or Key Alias to use to encrypt your replication set.
	SseKmsKeyId: string & strings.MaxRunes(2048)
}

#RegionList: [...#ReplicationRegion]

#RegionName: string & strings.MaxRunes(20)

#ReplicationRegion: {
	RegionConfiguration?: #RegionConfiguration
	RegionName?: #RegionName
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
