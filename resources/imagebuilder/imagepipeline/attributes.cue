package imagepipeline

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the image pipeline.
	Arn: string & =~"^arn:[^:]+:imagebuilder:[^:]+:[^:]+:image-pipeline/.+$"
	// The deployment ID of the pipeline, used for resource create/update triggers.
	DeploymentId: string
}
