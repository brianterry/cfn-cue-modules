package hooktypeconfig

#Properties: {
	// The configuration data for the extension, in this account and region.
	Configuration?: string & =~"[\\s\\S]+"
	// An alias by which to refer to this extension configuration data.
	ConfigurationAlias?: "default"
	// The Amazon Resource Name (ARN) of the type without version number.
	TypeArn?: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/hook/.+$"
	// The name of the type being registered.
	// We recommend that type names adhere to the following pattern: company_or_organization::service::type.
	TypeName?: string & =~"^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"
}
