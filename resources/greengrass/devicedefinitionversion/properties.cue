package devicedefinitionversion

#Properties: {
	DeviceDefinitionId: string
	Devices: [...#Device]
}

#Device: {
	CertificateArn: string
	Id: string
	SyncShadow?: bool
	ThingArn: string
}
