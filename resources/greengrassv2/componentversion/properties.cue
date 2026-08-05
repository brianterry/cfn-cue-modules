package componentversion

#Properties: {
	InlineRecipe?: string
	LambdaFunction?: #LambdaFunctionRecipeSource
	Tags?: {...}
}

#ComponentDependencyRequirement: {
	DependencyType?: "SOFT" | "HARD"
	VersionRequirement?: string
}

#ComponentPlatform: {
	Attributes?: {...}
	Name?: string
}

#FilesystemPath: string

#LambdaAddGroupOwnerBoolean: bool

#LambdaContainerParams: {
	Devices?: [...#LambdaDeviceMount]
	MemorySizeInKB?: int
	MountROSysfs?: bool
	Volumes?: [...#LambdaVolumeMount]
}

#LambdaDeviceMount: {
	AddGroupOwner?: #LambdaAddGroupOwnerBoolean
	Path?: #FilesystemPath
	Permission?: #LambdaFilesystemPermission
}

#LambdaEventSource: {
	Topic?: string
	Type?: "PUB_SUB" | "IOT_CORE"
}

#LambdaExecutionParameters: {
	EnvironmentVariables?: {...}
	EventSources?: [...#LambdaEventSource]
	ExecArgs?: [...string]
	InputPayloadEncodingType?: "json" | "binary"
	LinuxProcessParams?: #LambdaLinuxProcessParams
	MaxIdleTimeInSeconds?: int
	MaxInstancesCount?: int
	MaxQueueSize?: int
	Pinned?: bool
	StatusTimeoutInSeconds?: int
	TimeoutInSeconds?: int
}

#LambdaFilesystemPermission: "ro" | "rw"

#LambdaFunctionRecipeSource: {
	ComponentDependencies?: {...}
	ComponentLambdaParameters?: #LambdaExecutionParameters
	ComponentName?: string
	ComponentPlatforms?: [...#ComponentPlatform]
	ComponentVersion?: string
	LambdaArn?: string & =~"^arn:[^:]*:lambda:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$"
}

#LambdaLinuxProcessParams: {
	ContainerParams?: #LambdaContainerParams
	IsolationMode?: "GreengrassContainer" | "NoContainer"
}

#LambdaVolumeMount: {
	AddGroupOwner?: #LambdaAddGroupOwnerBoolean
	DestinationPath?: #FilesystemPath
	Permission?: #LambdaFilesystemPermission
	SourcePath?: #FilesystemPath
}
