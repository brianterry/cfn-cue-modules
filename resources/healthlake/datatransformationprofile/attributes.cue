package datatransformationprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the data transformation profile.
	Arn: string & =~"^arn:aws(-[a-z]+)*:healthlake:[a-z0-9-]+:[0-9]{12}:dataTransformationProfile/[a-f0-9]{32}$"
	// The unique, server-generated identifier of the profile (32-character lowercase hexadecimal).
	ProfileId: string & =~"^[a-f0-9]{32}$" & strings.MinRunes(32) & strings.MaxRunes(32)
	// The target format that this profile converts to. Always FHIR_R4.
	TargetFormat: "FHIR_R4"
}
