package collection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the collection
	Id: string & strings.MinRunes(3) & strings.MaxRunes(40)
	// The Amazon Resource Name (ARN) of the collection.
	Arn: string
	// The endpoint for the collection.
	CollectionEndpoint: string
	// The OpenSearch Dashboards endpoint for the collection.
	DashboardEndpoint: string
	FipsEndpoints: #FipsEndpoints
	// Key Management Service key used to encrypt the collection.
	KmsKeyArn: string
}
