package devicedefinition

#Properties: {
	InitialVersion?: #DeviceDefinitionVersion
	Name: string
	Tags?: {...}
}

#Device: {
	CertificateArn: string
	Id: string
	SyncShadow?: bool
	ThingArn: string
}

#DeviceDefinitionVersion: {
	Devices: [...#Device]
}
