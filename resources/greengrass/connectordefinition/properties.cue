package connectordefinition

#Properties: {
	InitialVersion?: #ConnectorDefinitionVersion
	Name: string
	Tags?: {...}
}

#Connector: {
	ConnectorArn: string
	Id: string
	Parameters?: {...}
}

#ConnectorDefinitionVersion: {
	Connectors: [...#Connector]
}
