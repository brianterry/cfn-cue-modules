package verifiedaccessendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the AWS Verified Access endpoint.
	VerifiedAccessEndpointId: string
	// A DNS name that is generated for the endpoint.
	EndpointDomain: string
	// The creation time.
	CreationTime: string
	// The last updated time.
	LastUpdatedTime: string
	// The endpoint status.
	Status: string
	// Returned if endpoint has a device trust provider attached.
	DeviceValidationDomain: string
	// The ID of the AWS Verified Access instance.
	VerifiedAccessInstanceId: string
}
