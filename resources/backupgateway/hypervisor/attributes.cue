package hypervisor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	HypervisorArn: string & =~"^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$" & strings.MinRunes(50) & strings.MaxRunes(500)
}
