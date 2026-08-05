package locationefs

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) for the Amazon EFS Access point that DataSync uses when accessing the EFS file system.
	AccessPointArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:access-point/fsap-[0-9a-f]{8,40}$" & strings.MaxRunes(128)
	Ec2Config: #Ec2Config
	// The Amazon Resource Name (ARN) for the Amazon EFS file system.
	EfsFilesystemArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$" & strings.MaxRunes(128)
	// The Amazon Resource Name (ARN) of the AWS IAM role that the DataSync will assume when mounting the EFS file system.
	FileSystemAccessRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$" & strings.MaxRunes(128)
	// Protocol that is used for encrypting the traffic exchanged between the DataSync Agent and the EFS file system.
	InTransitEncryption?: "NONE" | "TLS1_2"
	// A subdirectory in the location's path. This subdirectory in the EFS file system is used to read data from the EFS source location or write data to the EFS destination.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MaxRunes(4096)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Ec2Config: {
	// The Amazon Resource Names (ARNs) of the security groups that are configured for the Amazon EC2 resource.
	SecurityGroupArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/.*$" & strings.MaxRunes(128)]
	// The ARN of the subnet that DataSync uses to access the target EFS file system.
	SubnetArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:subnet/.*$" & strings.MaxRunes(128)
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
