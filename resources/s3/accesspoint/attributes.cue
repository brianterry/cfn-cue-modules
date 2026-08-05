package accesspoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The alias of this Access Point. This alias can be used for compatibility purposes with other AWS services and third-party applications.
	Alias: string & =~"^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
	NetworkOrigin: "Internet" | "VPC"
	// The Amazon Resource Name (ARN) of the specified accesspoint.
	Arn: #Arn
}
