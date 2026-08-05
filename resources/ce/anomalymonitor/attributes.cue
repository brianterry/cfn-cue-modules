package anomalymonitor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	MonitorArn: #Arn
	// The date when the monitor was created. 
	CreationDate: string & =~"(\\d{4}-\\d{2}-\\d{2})(T\\d{2}:\\d{2}:\\d{2}Z)?" & strings.MinRunes(0) & strings.MaxRunes(40)
	// The date when the monitor last evaluated for anomalies.
	LastEvaluatedDate: string & =~"(\\d{4}-\\d{2}-\\d{2})(T\\d{2}:\\d{2}:\\d{2}Z)?|(NOT_EVALUATED_YET)" & strings.MinRunes(0) & strings.MaxRunes(40)
	// The date when the monitor was last updated.
	LastUpdatedDate: string & =~"(\\d{4}-\\d{2}-\\d{2})(T\\d{2}:\\d{2}:\\d{2}Z)?" & strings.MinRunes(0) & strings.MaxRunes(40)
	// The value for evaluated dimensions.
	DimensionalValueCount: int & >=0
}
