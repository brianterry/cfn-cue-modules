package monitor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: #iso8601UTC
	ModifiedAt: #iso8601UTC
	MonitorArn: string & =~"^arn:.*" & strings.MinRunes(20) & strings.MaxRunes(512)
	ProcessingStatus: #MonitorProcessingStatusCode
	ProcessingStatusInfo: string
}
