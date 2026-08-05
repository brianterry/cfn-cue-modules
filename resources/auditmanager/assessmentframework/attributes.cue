package assessmentframework

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the framework.
	Arn: string & =~"^arn:.*:auditmanager:" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The unique identifier for the framework.
	FrameworkId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The framework type, such as a standard framework or a custom framework.
	Type: "Standard" | "Custom"
	// The time when the framework was created.
	CreatedAt: string
	// The time when the framework was most recently updated.
	LastUpdatedAt: string
	// The user or role that created the framework.
	CreatedBy: string & =~"^[a-zA-Z0-9\\s-_()\\[\\]]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The user or role that most recently updated the framework.
	LastUpdatedBy: string & =~"^[a-zA-Z0-9\\s-_()\\[\\]]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}
