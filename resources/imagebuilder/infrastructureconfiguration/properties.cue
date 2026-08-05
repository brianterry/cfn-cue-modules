package infrastructureconfiguration

import "strings"

#Properties: {
	// The description of the infrastructure configuration.
	Description?: string
	// The instance metadata option settings for the infrastructure configuration.
	InstanceMetadataOptions?: #InstanceMetadataOptions
	// The instance profile of the infrastructure configuration.
	InstanceProfileName: string
	// The instance types of the infrastructure configuration.
	InstanceTypes?: [...string]
	// The EC2 key pair of the infrastructure configuration..
	KeyPair?: string
	// The logging configuration of the infrastructure configuration.
	Logging?: #Logging
	// The name of the infrastructure configuration.
	Name: string
	// The placement option settings for the infrastructure configuration.
	Placement?: #Placement
	// The tags attached to the resource created by Image Builder.
	ResourceTags?: {...}
	// The security group IDs of the infrastructure configuration.
	SecurityGroupIds?: [...string]
	// The SNS Topic Amazon Resource Name (ARN) of the infrastructure configuration.
	SnsTopicArn?: string
	// The subnet ID of the infrastructure configuration.
	SubnetId?: string
	// The tags associated with the component.
	Tags?: {...}
	// The terminate instance on failure configuration of the infrastructure configuration.
	TerminateInstanceOnFailure?: bool
}

#InstanceMetadataOptions: {
	// Limit the number of hops that an instance metadata request can traverse to reach its destination.
	HttpPutResponseHopLimit?: int
	// Indicates whether a signed token header is required for instance metadata retrieval requests. The values affect the response as follows:
	HttpTokens?: "required" | "optional"
}

#Logging: {
	S3Logs?: #S3Logs
}

#Placement: {
	// AvailabilityZone
	AvailabilityZone?: string
	// HostId
	HostId?: string
	// HostResourceGroupArn
	HostResourceGroupArn?: string
	// Tenancy
	Tenancy?: "default" | "dedicated" | "host"
}

#S3Logs: {
	// S3BucketName
	S3BucketName?: string
	// S3KeyPrefix
	S3KeyPrefix?: string
}

#TagMap: {
	// TagKey
	TagKey?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// TagValue
	TagValue?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
