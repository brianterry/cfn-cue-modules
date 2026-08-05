package connectordefinitionversion

#Properties: {
	ConnectorDefinitionId: string
	Connectors: [...#Connector]
}

#Connector: {
	ConnectorArn: string
	Id: string
	Parameters?: {...}
}
