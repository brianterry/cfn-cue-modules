package loadbalancertlscertificate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	LoadBalancerTlsCertificateArn: string
	// The validation status of the SSL/TLS certificate.
	Status: string
}
