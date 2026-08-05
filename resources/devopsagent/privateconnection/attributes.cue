package privateconnection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The status of the Private Connection.
	Status: "ACTIVE" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"
	// The expiry time of the certificate associated with the Private Connection.
	CertificateExpiryTime: string
	// The Amazon Resource Name (ARN) of the Private Connection.
	Arn: string
}
