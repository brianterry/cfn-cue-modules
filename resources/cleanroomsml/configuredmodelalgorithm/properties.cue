package configuredmodelalgorithm

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(255)
	InferenceContainerConfig?: #InferenceContainerConfig
	KmsKeyArn?: string & =~"^arn:aws[-a-z]*:kms:[-a-z0-9]+:[0-9]{12}:key/.+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(63)
	RoleArn: string & =~"^arn:aws[-a-z]*:iam::[0-9]{12}:role/.+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// An arbitrary set of tags (key-value pairs) for this cleanrooms-ml configured model algorithm.
	Tags?: [...#Tag]
	TrainingContainerConfig?: #ContainerConfig
}

#ContainerConfig: {
	Arguments?: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(256)]
	Entrypoint?: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(256)]
	ImageUri: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	MetricDefinitions?: [...#MetricDefinition]
}

#InferenceContainerConfig: {
	ImageUri: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#MetricDefinition: {
	Name: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Regex: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(500)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
