package verifiedaccesstrustprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Amazon Web Services Verified Access trust provider.
	VerifiedAccessTrustProviderId: string
	// The creation time.
	CreationTime: string
	// The last updated time.
	LastUpdatedTime: string
}
