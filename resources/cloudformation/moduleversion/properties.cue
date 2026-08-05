package moduleversion

#Properties: {
	// The name of the module being registered.

Recommended module naming pattern: company_or_organization::service::type::MODULE.
	ModuleName: string & =~"^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::MODULE"
	// The url to the S3 bucket containing the schema and template fragment for the module you want to register.
	ModulePackage: string
}
