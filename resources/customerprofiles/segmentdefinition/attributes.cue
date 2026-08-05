package segmentdefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time of this segment definition got created.
	CreatedAt: string
	// The Amazon Resource Name (ARN) of the segment definition.
	SegmentDefinitionArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The SQL query that defines the segment criteria.
	SegmentType: "CLASSIC" | "ENHANCED"
}
