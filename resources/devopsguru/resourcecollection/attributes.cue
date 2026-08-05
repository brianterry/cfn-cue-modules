package resourcecollection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The type of ResourceCollection
	ResourceCollectionType: "AWS_CLOUD_FORMATION" | "AWS_TAGS"
}
