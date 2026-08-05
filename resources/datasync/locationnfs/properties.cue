package locationnfs

import "strings"

#Properties: {
	MountOptions?: #MountOptions
	OnPremConfig: #OnPremConfig
	// The name of the NFS server. This value is the IP address or DNS name of the NFS server.
	ServerHostname?: string & =~"^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$" & strings.MaxRunes(255)
	// The subdirectory in the NFS file system that is used to read data from the NFS source location or write data to the NFS destination.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MaxRunes(4096)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#MountOptions: {
	// The specific NFS version that you want DataSync to use to mount your NFS share.
	Version?: "AUTOMATIC" | "NFS3" | "NFS4_0" | "NFS4_1"
}

#OnPremConfig: {
	// ARN(s) of the agent(s) to use for an NFS location.
	AgentArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$" & strings.MaxRunes(128)]
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
