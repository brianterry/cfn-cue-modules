package view

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the view.
	ViewArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/view/[-:$a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The view id of the view.
	ViewId: string & =~"^[a-zA-Z0-9\\_\\-:\\/$]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The view content hash.
	ViewContentSha256: string & =~"^[a-zA-Z0-9]{64}$"
}
