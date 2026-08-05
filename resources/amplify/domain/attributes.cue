package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"(?s).*" & strings.MaxRunes(1000)
	DomainStatus: string
	StatusReason: string & strings.MaxRunes(1000)
	CertificateRecord: string & strings.MaxRunes(1000)
	Certificate: #Certificate
	UpdateStatus: string
}
