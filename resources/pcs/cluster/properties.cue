package cluster

import "strings"

#Properties: {
	// The name that identifies the cluster.
	Name?: string
	// The networking configuration for the cluster's control plane.
	Networking: {
		NetworkType?: "IPV4" | "IPV6"
		SecurityGroupIds?: [...#SecurityGroupId]
		SubnetIds?: [...#SubnetId]
	}
	// The cluster management and job scheduling software associated with the cluster.
	Scheduler: {
		Type: "SLURM"
		Version: string
	}
	// The size of the cluster.
	Size: "SMALL" | "MEDIUM" | "LARGE"
	// Additional options related to the Slurm scheduler.
	SlurmConfiguration?: {
		Accounting?: #Accounting
		AuthKey?: #AuthKey
		CgroupCustomSettings?: [...#CgroupCustomSetting]
		JwtAuth?: #JwtAuth
		ScaleDownIdleTimeInSeconds?: int & >=1
		SlurmCustomSettings?: [...#SlurmCustomSetting]
		SlurmRest?: #SlurmRest
		SlurmdbdCustomSettings?: [...#SlurmdbdCustomSetting]
	}
	// 1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.
	Tags?: string
}

#Accounting: {
	// The default value for all purge settings for `slurmdbd.conf`. For more information, see the [slurmdbd.conf documentation at SchedMD](https://slurm.schedmd.com/slurmdbd.conf.html). The default value is `-1`. A value of `-1` means there is no purge time and records persist as long as the cluster exists.
	DefaultPurgeTimeInDays?: int & >=-1 & <=10000
	// The default value is `NONE`. A value of `STANDARD` means that Slurm accounting is enabled.
	Mode: "STANDARD" | "NONE"
}

#AuthKey: {
	// The Amazon Resource Name (ARN) of the the shared Slurm key.
	SecretArn: string
	// The version of the shared Slurm key.
	SecretVersion: string
}

#CgroupCustomSetting: {
	// The cgroup.conf parameter name.
	ParameterName: string
	// The value for the cgroup.conf parameter.
	ParameterValue: string
}

#Endpoint: {
	// The endpoint's IPv6 address.
	Ipv6Address?: string
	// The endpoint's connection port number.
	Port: string
	// The endpoint's private IP address.
	PrivateIpAddress: string
	// The endpoint's public IP address.
	PublicIpAddress?: string
	// Indicates the type of endpoint running at the specific IP address.
	Type: "SLURMCTLD" | "SLURMDBD" | "SLURMRESTD"
}

#ErrorInfo: {
	// The short-form error code.
	Code?: string
	// The detailed error information.
	Message?: string
}

#JwtAuth: {
	JwtKey?: #JwtKey
}

#JwtKey: {
	// The Amazon Resource Name (ARN) of the JWT key secret.
	SecretArn: string
	// The version of the JWT key secret.
	SecretVersion: string
}

#SlurmCustomSetting: {
	// AWS PCS supports configuration of the following Slurm parameters for clusters: Prolog, Epilog, and SelectTypeParameters.
	ParameterName: string
	// The value for the configured Slurm setting.
	ParameterValue: string
}

#SlurmRest: {
	// The default value is `NONE`. A value of `STANDARD` means that Slurm Rest is enabled.
	Mode: "STANDARD" | "NONE"
}

#SlurmdbdCustomSetting: {
	// The slurmdbd.conf parameter name.
	ParameterName: string
	// The value for the slurmdbd.conf parameter.
	ParameterValue: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
