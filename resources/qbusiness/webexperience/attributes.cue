package webexperience

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	DefaultEndpoint: string & =~"^(https?|ftp|file)://([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Status: #WebExperienceStatus
	UpdatedAt: string
	WebExperienceArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	WebExperienceId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]*$" & strings.MinRunes(36) & strings.MaxRunes(36)
}
