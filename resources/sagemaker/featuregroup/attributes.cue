package featuregroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A timestamp of FeatureGroup creation time.
	CreationTime: string
	// The status of the feature group.
	FeatureGroupStatus: string
}
