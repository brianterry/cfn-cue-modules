package template

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the template.</p>
	Arn: string
	// <p>Time when this was created.</p>
	CreatedTime: string
	// <p>Time when this was last updated.</p>
	LastUpdatedTime: string
	Version: #TemplateVersion
}
