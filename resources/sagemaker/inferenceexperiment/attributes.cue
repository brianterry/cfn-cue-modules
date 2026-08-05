package inferenceexperiment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the inference experiment.
	Arn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:inference-experiment/[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(256)
	// The timestamp at which you created the inference experiment.
	CreationTime: string
	// The timestamp at which you last modified the inference experiment.
	LastModifiedTime: string
	EndpointMetadata: #EndpointMetadata
	// The status of the inference experiment.
	Status: "Creating" | "Created" | "Updating" | "Starting" | "Stopping" | "Running" | "Completed" | "Cancelled"
}
