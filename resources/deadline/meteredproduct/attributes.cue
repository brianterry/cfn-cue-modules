package meteredproduct

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):deadline:[a-z0-9-]+:[0-9]{12}:license-endpoint/le-[0-9a-z]{32}/metered-product/[0-9a-z]{1,32}-[.0-9a-z]{1,32}"
	Port: int & >=1024 & <=65535
	Family: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Vendor: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
