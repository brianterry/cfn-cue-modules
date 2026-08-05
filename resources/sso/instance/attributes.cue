package instance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The SSO Instance ARN that is returned upon creation of the Identity Center (SSO) Instance
	InstanceArn: string & =~"^arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The AWS accountId of the owner of the Identity Center (SSO) Instance
	OwnerAccountId: string & =~"^\\d{12}?$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// The ID of the identity store associated with the created Identity Center (SSO) Instance
	IdentityStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The status of the Identity Center (SSO) Instance, create_in_progress/delete_in_progress/active
	Status: "CREATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "ACTIVE"
}
