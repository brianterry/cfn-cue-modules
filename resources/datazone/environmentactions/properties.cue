package environmentactions

import "strings"

#Properties: {
	// The description of the Amazon DataZone environment action.
	Description?: string & strings.MaxRunes(2048)
	// The identifier of the Amazon DataZone domain in which the environment would be created.
	DomainIdentifier?: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The identifier of the Amazon DataZone environment in which the action is taking place
	EnvironmentIdentifier?: string & =~"[a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The ID of the Amazon DataZone environment action.
	Identifier?: string & =~"^[a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The name of the environment action.
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The parameters of the environment action.
	Parameters?: #AwsConsoleLinkParameters
}

#AwsConsoleLinkParameters: {
	Uri?: #EnvironmentActionURI
}
