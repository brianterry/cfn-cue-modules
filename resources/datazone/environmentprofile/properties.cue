package environmentprofile

import "strings"

#Properties: {
	// The AWS account in which the Amazon DataZone environment is created.
	AwsAccountId: string & =~"^\\d{12}$"
	// The AWS region in which this environment profile is created.
	AwsAccountRegion: string & =~"^[a-z]{2}-[a-z]{4,10}-\\d$"
	// The description of this Amazon DataZone environment profile.
	Description?: string & strings.MaxRunes(2048)
	// The ID of the Amazon DataZone domain in which this environment profile is created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the blueprint with which this environment profile is created.
	EnvironmentBlueprintIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The name of this Amazon DataZone environment profile.
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The identifier of the project in which to create the environment profile.
	ProjectIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The user parameters of this Amazon DataZone environment profile.
	UserParameters?: [...#EnvironmentParameter]
}

#EnvironmentParameter: {
	// The name of an environment profile parameter.
	Name?: string
	// The value of an environment profile parameter.
	Value?: string
}
