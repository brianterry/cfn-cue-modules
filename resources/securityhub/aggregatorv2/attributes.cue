package aggregatorv2

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the AggregatorV2 being created and assigned as the unique identifier
	AggregatorV2Arn: string & =~"arn:aws\\S*:securityhub:\\S*"
	// The aggregation Region of the AggregatorV2
	AggregationRegion: #Region
}
