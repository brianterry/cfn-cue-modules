package environment

import "strings"

#Properties: {
	// The deployment order for the environment.
	DeploymentOrder?: int
	// The description of the Amazon DataZone environment.
	Description?: string & strings.MaxRunes(2048)
	// The identifier of the Amazon DataZone domain in which the environment would be created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The AWS account in which the Amazon DataZone environment is created.
	EnvironmentAccountIdentifier?: string & =~"^\\d{12}$"
	// The AWS region in which the Amazon DataZone environment is created.
	EnvironmentAccountRegion?: string & =~"^[a-z]{2}-[a-z]{4,10}-\\d$"
	// The identifier of the environment blueprint.
	EnvironmentBlueprintIdentifier?: string
	// The identifier of the environment configuration.
	EnvironmentConfigurationId?: string
	// The ID of the environment profile with which the Amazon DataZone environment would be created.
	EnvironmentProfileIdentifier?: string & =~"^[a-zA-Z0-9_-]{0,36}$"
	// Environment role arn for custom aws environment permissions
	EnvironmentRoleArn?: string
	// The glossary terms that can be used in the Amazon DataZone environment.
	GlossaryTerms?: [...string & =~"^[a-zA-Z0-9_-]{1,36}$"]
	// The name of the environment.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The ID of the Amazon DataZone project in which the environment would be created.
	ProjectIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The user parameters of the Amazon DataZone environment.
	UserParameters?: [...#EnvironmentParameter]
}

#EnvironmentParameter: {
	// The name of an environment parameter.
	Name?: string
	// The value of an environment parameter.
	Value?: string
}

#EnvironmentStatus: "ACTIVE" | "CREATING" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED" | "VALIDATION_FAILED" | "SUSPENDED" | "DISABLED" | "EXPIRED" | "DELETED" | "INACCESSIBLE"
