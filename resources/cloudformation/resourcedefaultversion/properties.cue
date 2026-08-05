package resourcedefaultversion

#Properties: {
	// The name of the type being registered.
	// We recommend that type names adhere to the following pattern: company_or_organization::service::type.
	TypeName?: string & =~"^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"
	// The Amazon Resource Name (ARN) of the type version.
	TypeVersionArn?: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/resource/.+$"
	// The ID of an existing version of the resource to set as the default.
	VersionId?: string & =~"^[A-Za-z0-9-]{1,128}$"
}
