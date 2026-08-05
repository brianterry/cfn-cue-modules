package agreement

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique identifier for the agreement.
	AgreementId: string & =~"^a-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// Specifies the unique Amazon Resource Name (ARN) for the agreement.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
}
