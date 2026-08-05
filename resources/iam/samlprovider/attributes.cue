package samlprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name (ARN) of the SAML provider
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1600)
	// The unique identifier assigned to the SAML provider
	SamlProviderUUID: string & =~"[A-Z0-9]+" & strings.MinRunes(22) & strings.MaxRunes(64)
}
