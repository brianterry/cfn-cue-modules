package coredefinitionversion

#Properties: {
	CoreDefinitionId: string
	Cores: [...#Core]
}

#Core: {
	CertificateArn: string
	Id: string
	SyncShadow?: bool
	ThingArn: string
}
