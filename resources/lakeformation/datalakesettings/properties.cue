package datalakesettings

#Properties: {
	Admins?: [...#DataLakePrincipal]
	AllowExternalDataFiltering?: bool
	AllowFullTableExternalDataAccess?: bool
	AuthorizedSessionTagValueList?: [...string]
	CreateDatabaseDefaultPermissions?: [...#PrincipalPermissions]
	CreateTableDefaultPermissions?: [...#PrincipalPermissions]
	ExternalDataFilteringAllowList?: [...#DataLakePrincipal]
	MutationType?: string
	Parameters?: {...}
	ReadOnlyAdmins?: [...#DataLakePrincipal]
	TrustedResourceOwners?: [...string]
}

#DataLakePrincipal: {
	DataLakePrincipalIdentifier: string
}

#PrincipalPermissions: {
	Permissions: [...string]
	Principal: #DataLakePrincipal
}
