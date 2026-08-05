package configuration

#Properties: {
	Description?: string
	KafkaVersionsList?: #KafkaVersionsList
	Name: string
	ServerProperties: string
}

#KafkaVersionsList: [...string]

#LatestRevision: {
	CreationTime?: string
	Description?: string
	Revision?: int
}
