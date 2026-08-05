package workspaceinstance

import "strings"

#Properties: {
	ManagedInstance?: {
		BlockDeviceMappings?: [...#BlockDeviceMapping]
		CapacityReservationSpecification?: #CapacityReservationSpecification
		CpuOptions?: #CpuOptionsRequest
		CreditSpecification?: #CreditSpecificationRequest
		DisableApiStop?: bool
		EbsOptimized?: bool
		EnablePrimaryIpv6?: bool
		EnclaveOptions?: #EnclaveOptionsRequest
		HibernationOptions?: #HibernationOptionsRequest
		IamInstanceProfile?: #IamInstanceProfileSpecification
		ImageId: string & =~"^ami-[0-9a-zA-Z]{1,63}$"
		InstanceType: string & =~"^([a-z0-9-]+)\\.([a-z0-9]+)$"
		Ipv6AddressCount?: int & >=0
		KeyName?: string & strings.MaxRunes(64)
		LicenseSpecifications?: [...#LicenseConfigurationRequest]
		MaintenanceOptions?: #InstanceMaintenanceOptionsRequest
		MetadataOptions?: #InstanceMetadataOptionsRequest
		Monitoring?: #RunInstancesMonitoringEnabled
		NetworkInterfaces?: [...#InstanceNetworkInterfaceSpecification]
		NetworkPerformanceOptions?: #InstanceNetworkPerformanceOptionsRequest
		Placement?: #Placement
		PrivateDnsNameOptions?: #PrivateDnsNameOptionsRequest
		SubnetId?: string & =~"^subnet-[0-9a-zA-Z]{1,63}$"
		TagSpecifications?: [...#TagSpecification]
		UserData?: string & strings.MaxRunes(16000)
	}
	Tags?: [...#Tag]
}

#BlockDeviceMapping: {
	DeviceName?: string & strings.MaxRunes(32)
	Ebs?: #EbsBlockDevice
	NoDevice?: string & strings.MaxRunes(32)
	VirtualName?: string & =~"^ephemeral(0|[1-9][0-9]{0,2})$"
}

#CapacityReservationSpecification: {
	CapacityReservationPreference?: "capacity-reservations-only" | "open" | "none"
	CapacityReservationTarget?: #CapacityReservationTarget
}

#CapacityReservationTarget: {
	CapacityReservationId?: string & strings.MaxRunes(128)
	CapacityReservationResourceGroupArn?: string & =~"^arn:.*"
}

#ConnectionTrackingSpecificationRequest: {
	TcpEstablishedTimeout?: int
	UdpStreamTimeout?: int
	UdpTimeout?: int
}

#CpuOptionsRequest: {
	CoreCount?: int & >=0
	ThreadsPerCore?: int & >=0
}

#CreditSpecificationRequest: {
	CpuCredits?: "standard" | "unlimited"
}

#EC2ManagedInstance: {
	InstanceId?: string
}

#EbsBlockDevice: {
	Encrypted?: bool
	Iops?: int & >=0
	KmsKeyId?: string & strings.MaxRunes(128)
	Throughput?: int & >=0
	VolumeSize?: int & >=0
	VolumeType?: "standard" | "io1" | "io2" | "gp2" | "sc1" | "st1" | "gp3"
}

#EnaSrdSpecificationRequest: {
	EnaSrdEnabled?: bool
	EnaSrdUdpSpecification?: #EnaSrdUdpSpecificationRequest
}

#EnaSrdUdpSpecificationRequest: {
	EnaSrdUdpEnabled?: bool
}

#EnclaveOptionsRequest: {
	Enabled?: bool
}

#HibernationOptionsRequest: {
	Configured?: bool
}

#IamInstanceProfileSpecification: {
	Arn?: string & =~"^arn:.*" & strings.MaxRunes(2048)
	Name?: string & strings.MaxRunes(64)
}

#InstanceIpv6Address: {
	Ipv6Address?: string & strings.MaxRunes(128)
	IsPrimaryIpv6?: bool
}

#InstanceMaintenanceOptionsRequest: {
	AutoRecovery?: "disabled" | "default"
}

#InstanceMetadataOptionsRequest: {
	HttpEndpoint?: "enabled" | "disabled"
	HttpProtocolIpv6?: "enabled" | "disabled"
	HttpPutResponseHopLimit?: int & >=1 & <=64
	HttpTokens?: "optional" | "required"
	InstanceMetadataTags?: "enabled" | "disabled"
}

#InstanceNetworkInterfaceSpecification: {
	Description?: string & =~"^[\\S\\s]*$" & strings.MaxRunes(1000)
	DeviceIndex?: int & >=0
	Groups?: [...string & =~"^sg-[0-9a-zA-Z]{1,63}$"]
	SubnetId?: string & =~"^subnet-[0-9a-zA-Z]{1,63}$"
}

#InstanceNetworkPerformanceOptionsRequest: {
	BandwidthWeighting?: "default" | "vpc-1" | "ebs-1"
}

#Ipv4PrefixSpecificationRequest: {
	Ipv4Prefix?: string & strings.MaxRunes(128)
}

#Ipv6PrefixSpecificationRequest: {
	Ipv6Prefix?: string & strings.MaxRunes(128)
}

#LicenseConfigurationRequest: {
	LicenseConfigurationArn?: string & =~"^arn:.*"
}

#Placement: {
	AvailabilityZone?: string & =~"^[a-z]{2}-[a-z]+-\\d[a-z](-[a-z0-9]+)?$"
	GroupId?: string & =~"^pg-[0-9a-zA-Z]{1,63}$"
	GroupName?: string & strings.MaxRunes(255)
	PartitionNumber?: int
	Tenancy?: "default" | "dedicated" | "host"
}

#PrivateDnsNameOptionsRequest: {
	EnableResourceNameDnsAAAARecord?: bool
	EnableResourceNameDnsARecord?: bool
	HostnameType?: "ip-name" | "resource-name"
}

#PrivateIpAddressSpecification: {
	Primary?: bool
	PrivateIpAddress?: string & strings.MaxRunes(128)
}

#RunInstancesMonitoringEnabled: {
	Enabled?: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MaxRunes(256)
}

#TagSpecification: {
	ResourceType?: "instance" | "volume" | "spot-instances-request" | "network-interface"
	Tags?: [...#Tag]
}
