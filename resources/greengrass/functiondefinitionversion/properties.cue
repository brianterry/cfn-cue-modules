package functiondefinitionversion

#Properties: {
	DefaultConfig?: #DefaultConfig
	FunctionDefinitionId: string
	Functions: [...#Function]
}

#DefaultConfig: {
	Execution: #Execution
}

#Environment: {
	AccessSysfs?: bool
	Execution?: #Execution
	ResourceAccessPolicies?: [...#ResourceAccessPolicy]
	Variables?: {...}
}

#Execution: {
	IsolationMode?: string
	RunAs?: #RunAs
}

#Function: {
	FunctionArn: string
	FunctionConfiguration: #FunctionConfiguration
	Id: string
}

#FunctionConfiguration: {
	EncodingType?: string
	Environment?: #Environment
	ExecArgs?: string
	Executable?: string
	MemorySize?: int
	Pinned?: bool
	Timeout?: int
}

#ResourceAccessPolicy: {
	Permission?: string
	ResourceId: string
}

#RunAs: {
	Gid?: int
	Uid?: int
}
