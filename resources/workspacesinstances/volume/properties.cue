package volume

import "strings"

#Properties: {
	// The Availability Zone in which to create the volume
	AvailabilityZone: string & =~"^[a-z]{2}-[a-z]+-\\d[a-z](-[a-z0-9]+)?$"
	// Indicates whether the volume should be encrypted
	Encrypted?: bool
	// The number of I/O operations per second (IOPS)
	Iops?: int & >=0
	// The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption
	KmsKeyId?: string & strings.MaxRunes(128)
	// The size of the volume, in GiBs
	SizeInGB?: int & >=0
	// The snapshot from which to create the volume
	SnapshotId?: string & =~"^snap-[0-9a-zA-Z]{1,63}$"
	// The tags passed to EBS volume
	TagSpecifications?: [...#TagSpecification]
	// The throughput to provision for a volume, with a maximum of 1,000 MiB/s
	Throughput?: int & >=0
	// The volume type
	VolumeType?: "standard" | "io1" | "io2" | "gp2" | "sc1" | "st1" | "gp3"
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag
	Value: string & strings.MaxRunes(256)
}

#TagSpecification: {
	ResourceType?: "instance" | "volume" | "spot-instances-request" | "network-interface"
	// The tags to apply to the resource
	Tags?: [...#Tag]
}
