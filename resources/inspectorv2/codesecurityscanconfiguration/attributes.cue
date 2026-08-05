package codesecurityscanconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Code Security Scan Configuration ARN
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:owner/(\\d{12}|o-[a-z0-9]{10,32})/codesecurity-configuration/[a-f0-9-]{36}$"
}
