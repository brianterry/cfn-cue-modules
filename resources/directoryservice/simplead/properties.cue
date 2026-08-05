package simplead

import "strings"

#Properties: {
	// The name of the configuration set.
	CreateAlias?: bool
	// Description for the directory.
	Description?: string
	// Whether to enable single sign-on for a Simple Active Directory in AWS.
	EnableSso?: bool
	// The fully qualified domain name for the AWS Managed Simple AD directory.
	Name: string
	// The password for the default administrative user named Admin.
	Password?: string
	// The NetBIOS name for your domain.
	ShortName?: string
	// The size of the directory.
	Size: string
	Tags?: [...#Tag]
	// VPC settings of the Simple AD directory server in AWS.
	VpcSettings: #VpcSettings
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcSettings: {
	// The identifiers of the subnets for the directory servers. The two subnets must be in different Availability Zones. AWS Directory Service specifies a directory server and a DNS server in each of these subnets.
	SubnetIds: [...string]
	// The identifier of the VPC in which to create the directory.
	VpcId: string
}
