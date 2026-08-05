package applicationinferenceprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// List of model configuration
	Models: [...#InferenceProfileModel]
	InferenceProfileArn: string & =~"^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	InferenceProfileId: string & =~"^[a-zA-Z0-9-:.]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Inference profile identifier. Supports both system-defined inference profile ids, and inference profile ARNs.
	InferenceProfileIdentifier: string & =~"^(arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/)?[a-zA-Z0-9-:.]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Status: #InferenceProfileStatus
	Type: #InferenceProfileType
	// Time Stamp
	CreatedAt: string
	// Time Stamp
	UpdatedAt: string
}
