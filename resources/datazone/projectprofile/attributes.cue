package projectprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	CreatedBy: string
	DomainId: string & =~"^dzd[_-][a-zA-Z0-9_-]{1,36}$"
	DomainUnitId: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	Identifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	LastUpdatedAt: string
	EnvironmentConfigurations: [...#EnvironmentConfiguration]
}
