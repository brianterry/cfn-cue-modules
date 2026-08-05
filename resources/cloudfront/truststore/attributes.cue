package truststore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	Arn: string & =~"^arn:aws:cloudfront::[0-9]{12}:trust-store/[A-Za-z0-9_]+$"
	Status: "PENDING" | "ACTIVE" | "FAILED"
	ETag: string
	LastModifiedTime: string
	NumberOfCaCertificates: int
}
