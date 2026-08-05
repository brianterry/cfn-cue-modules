package environmentblueprintconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	EnvironmentBlueprintId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	UpdatedAt: string
}
