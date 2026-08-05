package pipeline

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the pipeline.
	PipelineArn: string & =~"^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b):osis:.+:pipeline\\/.+$" & strings.MinRunes(46) & strings.MaxRunes(78)
	// A list of endpoints that can be used for ingesting data into a pipeline
	IngestEndpointUrls: [...string]
	// The VPC interface endpoints that have access to the pipeline.
	VpcEndpoints: [...#VpcEndpoint]
	// The VPC endpoint service name for the pipeline.
	VpcEndpointService: string & strings.MinRunes(0) & strings.MaxRunes(128)
}
