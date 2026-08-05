package capability

import "strings"

#Properties: {
	Configuration: #CapabilityConfiguration
	InstructionsDocuments?: [...#S3Location]
	Name: string & strings.MinRunes(1) & strings.MaxRunes(254)
	Tags?: [...#Tag]
	Type: #CapabilityType
}

#EdiConfiguration: {
	CapabilityDirection?: #CapabilityDirection
	InputLocation: #S3Location
	OutputLocation: #S3Location
	TransformerId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Type: #EdiType
}

#S3Location: {
	BucketName?: string & strings.MinRunes(3) & strings.MaxRunes(63)
	Key?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#X12Details: {
	TransactionSet?: #X12TransactionSet
	Version?: #X12Version
}
