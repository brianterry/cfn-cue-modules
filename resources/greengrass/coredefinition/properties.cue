package coredefinition

#Properties: {
	InitialVersion?: #CoreDefinitionVersion
	Name: string
	Tags?: {...}
}

#Core: {
	CertificateArn: string
	Id: string
	SyncShadow?: bool
	ThingArn: string
}

#CoreDefinitionVersion: {
	Cores: [...#Core]
}
