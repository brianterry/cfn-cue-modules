package telemetrypipelines

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	Pipeline: #TelemetryPipeline
	PipelineIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Status: #TelemetryPipelineStatus
	StatusReason: #TelemetryPipelineStatusReason
}
