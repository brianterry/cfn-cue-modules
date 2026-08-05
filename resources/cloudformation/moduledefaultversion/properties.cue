package moduledefaultversion

#Properties: {
	// The Amazon Resource Name (ARN) of the module version to set as the default version.
	Arn?: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/module/.+/[0-9]{8}$"
	// The name of a module existing in the registry.
	ModuleName?: string & =~"^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::MODULE"
	// The ID of an existing version of the named module to set as the default.
	VersionId?: string & =~"^[0-9]{8}$"
}
