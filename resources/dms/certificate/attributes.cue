package certificate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The certificate Arn
	CertificateArn: string & =~"arn:(aws|aws-cn|aws-us-gov):dms:[\\w-]+:[0-9]+:cert:[A-Z0-9]+"
}
