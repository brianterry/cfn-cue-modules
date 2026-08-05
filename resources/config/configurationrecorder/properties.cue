package configurationrecorder

#Properties: {
	Name?: string
	RecordingGroup?: #RecordingGroup
	RecordingMode?: #RecordingMode
	RoleARN: string
}

#ExclusionByResourceTypes: {
	ResourceTypes: [...string]
}

#RecordingGroup: {
	AllSupported?: bool
	ExclusionByResourceTypes?: #ExclusionByResourceTypes
	IncludeGlobalResourceTypes?: bool
	RecordingStrategy?: #RecordingStrategy
	ResourceTypes?: [...string]
}

#RecordingMode: {
	RecordingFrequency: string
	RecordingModeOverrides?: [...#RecordingModeOverride]
}

#RecordingModeOverride: {
	Description?: string
	RecordingFrequency: string
	ResourceTypes: [...string]
}

#RecordingStrategy: {
	UseOnly: string
}
