package odbnetwork

import "strings"

#Properties: {
	// The AWS Availability Zone (AZ) where the ODB network is located.
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The AZ ID of the AZ where the ODB network is located.
	AvailabilityZoneId?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The CIDR range of the backup subnet in the ODB network.
	BackupSubnetCidr?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The CIDR range of the client subnet in the ODB network.
	ClientSubnetCidr?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The cross-Region Amazon S3 restore sources for the ODB network.
	CrossRegionS3RestoreSources?: [...string]
	// The domain name to use for the resources in the ODB network.
	CustomDomainName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The DNS prefix to the default DNS domain name. The default DNS domain name is oraclevcn.com.
	DefaultDnsPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Specifies whether to delete associated OCI networking resources along with the ODB network.
	DeleteAssociatedResources?: bool
	// The user-friendly name of the ODB network.
	DisplayName?: string & =~"^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The AWS Key Management Service (KMS) access configuration for the ODB network.
	KmsAccess?: "ENABLED" | "DISABLED"
	// The AWS Key Management Service (KMS) policy document that defines permissions for key usage within the ODB network.
	KmsPolicyDocument?: string
	// Specifies the configuration for Amazon S3 access from the ODB network.
	S3Access?: "ENABLED" | "DISABLED"
	// Specifies the endpoint policy for Amazon S3 access from the ODB network.
	S3PolicyDocument?: string
	// The AWS Security Token Service (STS) access configuration for the ODB network.
	StsAccess?: "ENABLED" | "DISABLED"
	// The AWS Security Token Service (STS) policy document that defines permissions for token service usage within the ODB network.
	StsPolicyDocument?: string
	// Tags to assign to the Odb Network.
	Tags?: [...#Tag]
	// Specifies the configuration for Zero-ETL access from the ODB network.
	ZeroEtlAccess?: "ENABLED" | "DISABLED"
}

#CrossRegionS3RestoreSourcesAccess: {
	// The IPv4 addresses allowed for cross-Region Amazon S3 restore access.
	Ipv4Addresses?: [...string]
	// The AWS-Region for cross-Region Amazon S3 restore access.
	Region?: string
	// The current status of the cross-Region Amazon S3 restore access configuration.
	Status?: #ManagedResourceStatus
}

#ManagedServices: {
	// The access configuration for the cross-Region Amazon S3 database restore source.
	CrossRegionS3RestoreSourcesAccess?: [...#CrossRegionS3RestoreSourcesAccess]
	// The AWS Key Management Service (KMS) access configuration.
	KmsAccess?: {
		DomainName?: string
		Ipv4Addresses?: [...string]
		KmsPolicyDocument?: string
		Status?: #ManagedResourceStatus
	}
	// The managed Amazon S3 backup access configuration.
	ManagedS3BackupAccess?: {
		Ipv4Addresses?: [...string]
		Status?: #ManagedResourceStatus
	}
	// The IPv4 CIDR blocks for the managed services.
	ManagedServicesIpv4Cidrs?: [...string]
	// The Amazon Resource Name (ARN) of the resource gateway.
	ResourceGatewayArn?: string
	// The Amazon S3 access configuration.
	S3Access?: {
		DomainName?: string
		Ipv4Addresses?: [...string]
		S3PolicyDocument?: string
		Status?: #ManagedResourceStatus
	}
	// The Amazon Resource Name (ARN) of the service network.
	ServiceNetworkArn?: string
	// The service network endpoint configuration.
	ServiceNetworkEndpoint?: {
		VpcEndpointId?: string
		VpcEndpointType?: "SERVICENETWORK"
	}
	// The AWS Security Token Service (STS) access configuration.
	StsAccess?: {
		DomainName?: string
		Ipv4Addresses?: [...string]
		Status?: #ManagedResourceStatus
		StsPolicyDocument?: string
	}
	// The Zero-ETL access configuration.
	ZeroEtlAccess?: {
		Cidr?: string
		Status?: #ManagedResourceStatus
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, @, -, and ".
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
