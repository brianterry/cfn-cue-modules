package configurationmanager

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	LastModifiedAt: string
	ManagerArn: string
	StatusSummaries: [...#StatusSummary]
	ConfigurationDefinitions: [...#ConfigurationDefinition]
}
