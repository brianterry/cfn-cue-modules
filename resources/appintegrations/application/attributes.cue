package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the application.
	ApplicationArn: string & =~"^arn:aws[-a-z0-9]*:app-integrations:[-a-z0-9]*:[0-9]{12}:application/[-a-zA-Z0-9]*" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The id of the application.
	Id: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
