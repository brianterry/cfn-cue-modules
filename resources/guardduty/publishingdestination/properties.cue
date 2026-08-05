package publishingdestination

import "strings"

#Properties: {
	DestinationProperties: #CFNDestinationProperties
	// The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.
	DestinationType: string
	// The ID of the GuardDuty detector associated with the publishing destination.
	DetectorId: string & strings.MinRunes(1) & strings.MaxRunes(300)
	Tags?: [...#TagItem]
}

#CFNDestinationProperties: {
	// The ARN of the resource to publish to.
	DestinationArn?: string
	// The ARN of the KMS key to use for encryption.
	KmsKeyArn?: string
}

#TagItem: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
