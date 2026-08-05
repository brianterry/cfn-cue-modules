package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The 12-digit account ID of the AWS account that owns the domain. This field is used for GetAtt
	Owner: string & =~"[0-9]{12}"
	// The name of the domain. This field is used for GetAtt
	Name: string & =~"^([a-z][a-z0-9\\-]{0,48}[a-z0-9])$" & strings.MinRunes(2) & strings.MaxRunes(50)
	// The ARN of an AWS Key Management Service (AWS KMS) key associated with a domain.
	EncryptionKey: string
	// The ARN of the domain.
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}
