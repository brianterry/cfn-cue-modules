package loggerdefinition

#Properties: {
	InitialVersion?: #LoggerDefinitionVersion
	Name: string
	Tags?: {...}
}

#Logger: {
	Component: string
	Id: string
	Level: string
	Space?: int
	Type: string
}

#LoggerDefinitionVersion: {
	Loggers: [...#Logger]
}
