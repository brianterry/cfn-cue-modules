package experimenttrialcomponent

import "strings"

#Properties: {
	// The name of the component as displayed. The name doesn't need to be unique. If DisplayName isn't specified, TrialComponentName is displayed.
	DisplayName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}$" & strings.MinRunes(1) & strings.MaxRunes(120)
	// When the component ended.
	EndTime?: string
	// Metadata properties of the tracking entity, trial, or trial component.
	MetadataProperties?: {
		CommitId?: string & =~".*" & strings.MaxRunes(1024)
		GeneratedBy?: string & =~".*" & strings.MaxRunes(1024)
		ProjectId?: string & =~".*" & strings.MaxRunes(1024)
		Repository?: string & =~".*" & strings.MaxRunes(1024)
	}
	// When the component started.
	StartTime?: string
	// The status of the trial component.
	Status?: {
		Message?: string & =~".*" & strings.MaxRunes(1024)
		PrimaryStatus?: "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"
	}
	// A list of tags to associate with the component.
	Tags?: [...{
		Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
	}]
	// The name of the trial component. The name must be unique in your AWS account and is not case-sensitive.
	TrialComponentName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}$" & strings.MinRunes(1) & strings.MaxRunes(120)
}
