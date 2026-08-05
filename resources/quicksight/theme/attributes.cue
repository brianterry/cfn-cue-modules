package theme

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The date and time that the theme was created.</p>
	CreatedTime: string
	Version: #ThemeVersion
	// <p>The date and time that the theme was last updated.</p>
	LastUpdatedTime: string
	// <p>The Amazon Resource Name (ARN) of the theme.</p>
	Arn: string
	Type: #ThemeType
}
