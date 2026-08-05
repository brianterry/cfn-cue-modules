package experiment

import "strings"

#Properties: {
	// The description of the experiment.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(3072)
	// The name of the experiment as displayed. The name does not need to be unique.
	DisplayName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}$" & strings.MinRunes(1) & strings.MaxRunes(120)
	// The name of the experiment. Must be unique in your AWS account and is not case-sensitive.
	ExperimentName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}$" & strings.MinRunes(1) & strings.MaxRunes(120)
	// A list of tags to associate with the experiment.
	Tags?: [...{
		Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}
