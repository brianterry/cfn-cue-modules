package storagevirtualmachine

#Properties: {
	ActiveDirectoryConfiguration?: #ActiveDirectoryConfiguration
	FileSystemId: string
	Name: string
	RootVolumeSecurityStyle?: string
	SvmAdminPassword?: string
	Tags?: [...#Tag]
}

#ActiveDirectoryConfiguration: {
	NetBiosName?: string
	SelfManagedActiveDirectoryConfiguration?: #SelfManagedActiveDirectoryConfiguration
}

#SelfManagedActiveDirectoryConfiguration: {
	DnsIps?: [...string]
	DomainJoinServiceAccountSecret?: string
	DomainName?: string
	FileSystemAdministratorsGroup?: string
	OrganizationalUnitDistinguishedName?: string
	Password?: string
	UserName?: string
}

#Tag: {
	Key: string
	Value: string
}
