package configurationassociation

#Properties: {
	// ID of the Broker that the configuration should be applied to
	Broker: string
	Configuration: #ConfigurationId
}

#ConfigurationId: {
	// ID of the Configuration to apply to a Broker
	Id: string
	// Revision of the Configuration to apply to a Broker
	Revision: int
}
