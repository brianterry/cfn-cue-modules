package locationfsxopenzfs

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) for the FSx OpenZFS file system.
	FsxFilesystemArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:file-system/fs-[0-9a-f]+$" & strings.MaxRunes(128)
	Protocol: #Protocol
	// The ARNs of the security groups that are to use to configure the FSx OpenZFS file system.
	SecurityGroupArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/sg-[a-f0-9]+$" & strings.MaxRunes(128)]
	// A subdirectory in the location's path.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MaxRunes(4096)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#MountOptions: {
	// The specific NFS version that you want DataSync to use to mount your NFS share.
	Version?: "AUTOMATIC" | "NFS3" | "NFS4_0" | "NFS4_1"
}

#NFS: {
	MountOptions: #MountOptions
}

#Protocol: {
	NFS?: #NFS
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
