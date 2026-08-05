package vpcencryptioncontrol

import "strings"

#Properties: {
	// Used to enable or disable EIGW exclusion
	EgressOnlyInternetGatewayExclusionInput?: "enable" | "disable"
	// Used to enable or disable EFS exclusion
	ElasticFileSystemExclusionInput?: "enable" | "disable"
	// Used to enable or disable IGW exclusion
	InternetGatewayExclusionInput?: "enable" | "disable"
	// Used to enable or disable Lambda exclusion
	LambdaExclusionInput?: "enable" | "disable"
	// The VPC encryption control mode, either monitor or enforce.
	Mode?: "monitor" | "enforce"
	// Used to enable or disable Nat gateway exclusion
	NatGatewayExclusionInput?: "enable" | "disable"
	// The tags to assign to the VPC encryption control.
	Tags?: [...#Tag]
	// Used to enable or disable VGW exclusion
	VirtualPrivateGatewayExclusionInput?: "enable" | "disable"
	// The VPC on which this VPC encryption control is applied.
	VpcId?: string
	// Used to enable or disable Vpc Lattice exclusion
	VpcLatticeExclusionInput?: "enable" | "disable"
	// Used to enable or disable VPC peering exclusion
	VpcPeeringExclusionInput?: "enable" | "disable"
}

#ResourceExclusions: {
	EgressOnlyInternetGateway?: #VpcEncryptionControlExclusion
	ElasticFileSystem?: #VpcEncryptionControlExclusion
	InternetGateway?: #VpcEncryptionControlExclusion
	Lambda?: #VpcEncryptionControlExclusion
	NatGateway?: #VpcEncryptionControlExclusion
	VirtualPrivateGateway?: #VpcEncryptionControlExclusion
	VpcLattice?: #VpcEncryptionControlExclusion
	VpcPeering?: #VpcEncryptionControlExclusion
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcEncryptionControlExclusion: {
	State?: string
	StateMessage?: string
}
