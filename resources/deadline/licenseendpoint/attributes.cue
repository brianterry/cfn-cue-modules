package licenseendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DnsName: string
	LicenseEndpointId: string & =~"^le-[0-9a-f]{32}$"
	Status: #LicenseEndpointStatus
	StatusMessage: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):deadline:[a-z0-9-]+:[0-9]{12}:license-endpoint/le-[0-9a-z]{32}"
}
