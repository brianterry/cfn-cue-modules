package verifiedaccessinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the AWS Verified Access instance.
	VerifiedAccessInstanceId: string
	// Time this Verified Access Instance was created.
	CreationTime: string
	// Time this Verified Access Instance was last updated.
	LastUpdatedTime: string
	// Property to represent the name servers assoicated with the domain that AVA manages (say, ['ns1.amazonaws.com', 'ns2.amazonaws.com', 'ns3.amazonaws.com', 'ns4.amazonaws.com']).
	CidrEndpointsCustomSubDomainNameServers: [...#Nameserver]
}
