package field

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the field.
	FieldArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The unique identifier of a field.
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// Indicates whether this is a System field (predefined by AWS) or a Custom field (created by your organization). System fields cannot be modified or deleted.
	Namespace: "System" | "Custom"
	// The time at which the field was created.
	CreatedTime: string
	// The time at which the field was created or last modified.
	LastModifiedTime: string
}
