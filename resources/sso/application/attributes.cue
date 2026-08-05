package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Application ARN that is returned upon creation of the Identity Center (SSO) Application
	ApplicationArn: string & =~"^arn:aws(-[a-z]{1,5}){0,3}:sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The ARN of the identity store associated with the Identity Center instance
	IdentityStoreArn: string & =~"^arn:aws(-[a-z]{1,5}){0,3}:identitystore::\\d{12}:identitystore/d-[0-9a-f]{10}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
}
