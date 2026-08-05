package profile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The profile ARN.
	ProfileArn: string & =~"^arn:aws[-a-z]*:wellarchitected:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:profile/[a-z0-9]+$" & strings.MaxRunes(2084)
	// The profile version.
	ProfileVersion: string & =~"^[A-Za-z0-9.\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	// The owner of the profile.
	Owner: string
	// The date and time the profile was created.
	CreatedAt: string
	// The date and time the profile was last updated.
	UpdatedAt: string
}
