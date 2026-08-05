package webapp

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Specifies the unique Amazon Resource Name (ARN) for the web app.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
	// A unique identifier for the web app.
	WebAppId: string & =~"^webapp-([0-9a-f]{17})$" & strings.MinRunes(24) & strings.MaxRunes(24)
	IdentityProviderDetails: #IdentityProviderDetails
	VpcEndpointId: string & =~"^vpce-[0-9a-f]{8,17}$" & strings.MinRunes(13) & strings.MaxRunes(22)
}
