package securityprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the security profile.
	SecurityProfileArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/security-profile/[-a-zA-Z0-9]*$"
	// The AWS Region where this resource was last modified.
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	// The timestamp when this resource was last modified.
	LastModifiedTime: number
}
