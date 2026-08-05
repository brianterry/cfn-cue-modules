package applicationinferenceprofile

import "strings"

#Properties: {
	// Description of the inference profile
	Description?: string & =~"^([0-9a-zA-Z:.][ _-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	InferenceProfileName: string & =~"^([0-9a-zA-Z][ _-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ModelSource?: #InferenceProfileModelSource
	// List of Tags
	Tags?: [...#Tag]
}

#InferenceProfileModel: {
	// ARN for Foundation Models in Bedrock. These models can be used as base models for model customization jobs
	ModelArn?: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}$"
}

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
