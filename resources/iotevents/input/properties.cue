package input

import "strings"

#Properties: {
	// The definition of the input.
	InputDefinition: #InputDefinition
	// A brief description of the input.
	InputDescription?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The name of the input.
	InputName?: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	// For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
	Tags?: [...#Tag]
}

#Attribute: {
	// An expression that specifies an attribute-value pair in a JSON structure. Use this to specify an attribute from the JSON payload that is made available by the input. Inputs are derived from messages sent to ITE (``BatchPutMessage``). Each such message contains a JSON payload. The attribute (and its paired value) specified here are available for use in the ``condition`` expressions used by detectors.
	// Syntax: ``<field-name>.<field-name>...``
	JsonPath: string & =~"^((`[a-zA-Z0-9_\\- ]+`)|([a-zA-Z0-9_\\-]+))(\\.((`[a-zA-Z0-9_\\- ]+`)|([a-zA-Z0-9_\\-]+)))*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#InputDefinition: {
	// The attributes from the JSON payload that are made available by the input. Inputs are derived from messages sent to the ITE system using ``BatchPutMessage``. Each such message contains a JSON payload, and those attributes (and their paired values) specified here are available for use in the ``condition`` expressions used by detectors that monitor this input.
	Attributes: [...#Attribute]
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
