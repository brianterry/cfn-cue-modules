package generatedtemplate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the generated template.
	GeneratedTemplateId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The status of the template generation.
	Status: "CREATE_PENDING" | "UPDATE_PENDING" | "DELETE_PENDING" | "CREATE_IN_PROGRESS" | "UPDATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "FAILED" | "COMPLETE"
	// The time the generated template was created.
	CreationTime: string
	// The time the generated template was last updated.
	LastUpdatedTime: string
	Progress: #TemplateProgress
	// The number of warnings generated for this template.
	TotalWarnings: int & >=0
}
