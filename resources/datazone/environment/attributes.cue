package environment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS account in which the Amazon DataZone environment is created.
	AwsAccountId: string & =~"^\\d{12}$"
	// The AWS region in which the Amazon DataZone environment is created.
	AwsAccountRegion: string & =~"^[a-z]{2}-[a-z]{4,10}-\\d$"
	// The timestamp of when the environment was created.
	CreatedAt: string
	// The Amazon DataZone user who created the environment.
	CreatedBy: string
	// The identifier of the Amazon DataZone domain in which the environment is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the blueprint with which the Amazon DataZone environment was created.
	EnvironmentBlueprintId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The ID of the environment profile with which the Amazon DataZone environment was created.
	EnvironmentProfileId: string & =~"^[a-zA-Z0-9_-]{0,36}$"
	// The ID of the Amazon DataZone environment.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The ID of the Amazon DataZone project in which the environment is created.
	ProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The provider of the Amazon DataZone environment.
	Provider: string
	// The status of the Amazon DataZone environment.
	Status: #EnvironmentStatus
	// The timestamp of when the environment was updated.
	UpdatedAt: string
}
