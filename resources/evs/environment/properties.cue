package environment

import "strings"

#Properties: {
	ConnectivityInfo?: {
		PrivateRouteServerPeerings: [...#RouteServerPeering]
	}
	// The name of an EVS environment
	EnvironmentName?: string & =~"^[a-zA-Z0-9_-]{1,100}$"
	// The initial hosts for environment only required upon creation. Modification after creation will have no effect
	Hosts?: [...#HostInfoForCreate]
	// The initial Vlan configuration only required upon creation. Modification after creation will have no effect
	InitialVlans?: {
		EdgeVTep: #InitialVlanInfo
		ExpansionVlan1: #InitialVlanInfo
		ExpansionVlan2: #InitialVlanInfo
		Hcx: #InitialVlanInfo
		HcxNetworkAclId?: #NetworkAclId
		IsHcxPublic?: bool
		NsxUpLink: #InitialVlanInfo
		VMotion: #InitialVlanInfo
		VSan: #InitialVlanInfo
		VTep: #InitialVlanInfo
		VmManagement: #InitialVlanInfo
		VmkManagement: #InitialVlanInfo
	}
	KmsKeyId?: string
	// The license information for an EVS environment
	LicenseInfo?: {
		SolutionKey: string & =~"^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"
		VsanKey: string & =~"^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"
	}
	ServiceAccessSecurityGroups?: {
		SecurityGroups?: [...#SecurityGroupId]
	}
	ServiceAccessSubnetId: string & =~"^subnet-[a-f0-9]{8}([a-f0-9]{9})?$" & strings.MinRunes(15) & strings.MaxRunes(24)
	SiteId?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	TermsAccepted: bool
	VcfHostnames?: {
		CloudBuilder: #HostName
		Nsx: #HostName
		NsxEdge1: #HostName
		NsxEdge2: #HostName
		NsxManager1: #HostName
		NsxManager2: #HostName
		NsxManager3: #HostName
		SddcManager: #HostName
		VCenter: #HostName
	}
	VcfVersion: "VCF-5.2.1" | "VCF-5.2.2" | "SELF_DEPLOYED"
	VpcId: string & =~"^vpc-[a-f0-9]{8}([a-f0-9]{9})?$" & strings.MinRunes(12) & strings.MaxRunes(21)
}

#Check: {
	ImpairedSince?: string
	Result: #CheckResult
	Type: "KEY_REUSE" | "KEY_COVERAGE" | "REACHABILITY" | "VCF_VERSION" | "HOST_COUNT"
}

#HostInfoForCreate: {
	DedicatedHostId?: string & =~"^h-[a-f0-9]{8}([a-f0-9]{9})?$" & strings.MinRunes(1) & strings.MaxRunes(25)
	HostName: #HostName
	InstanceType: "i4i.metal" | "i7i.metal-24xl"
	KeyName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	PlacementGroupId?: string & =~"^pg-[a-f0-9]{8}([a-f0-9]{9})?$" & strings.MinRunes(1) & strings.MaxRunes(25)
}

#InitialVlanInfo: {
	Cidr: string & =~"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/(3[0-2]|[1-2][0-9]|[0-9])$"
}

#Secret: {
	SecretArn?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
