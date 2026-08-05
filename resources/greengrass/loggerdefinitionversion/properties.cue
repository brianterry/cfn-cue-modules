package loggerdefinitionversion

#Properties: {
	LoggerDefinitionId: string
	Loggers: [...#Logger]
}

#Logger: {
	Component: string
	Id: string
	Level: string
	Space?: int
	Type: string
}
