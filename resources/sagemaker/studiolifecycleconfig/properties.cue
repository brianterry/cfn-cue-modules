package studiolifecycleconfig

import "strings"

#Properties: {
	// The App type that the Lifecycle Configuration is attached to.
	StudioLifecycleConfigAppType: "JupyterServer" | "KernelGateway" | "CodeEditor" | "JupyterLab"
	// The content of your Amazon SageMaker Studio Lifecycle Configuration script. This content must be base64 encoded.
	StudioLifecycleConfigContent: string & =~"[\\S\\s]+" & strings.MinRunes(1) & strings.MaxRunes(16384)
	// The name of the Amazon SageMaker Studio Lifecycle Configuration.
	StudioLifecycleConfigName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MinRunes(1) & strings.MaxRunes(63)
	// Tags to be associated with the Lifecycle Configuration. Each tag consists of a key and an optional value. Tag keys must be unique per resource. Tags are searchable using the Search API.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
