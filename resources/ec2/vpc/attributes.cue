package vpc

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CidrBlockAssociations: [...string]
	DefaultNetworkAcl: string
	DefaultSecurityGroup: string
	Ipv6CidrBlocks: [...string]
	VpcId: string
	VpcEncryptionControl: #VpcEncryptionControl
}
