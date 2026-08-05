package lifecyclepolicy

#Properties: {
	CopyTags?: bool
	CreateInterval?: int
	CrossRegionCopyTargets?: [...#CrossRegionCopyTarget]
	DefaultPolicy?: string
	Description?: string
	Exclusions?: #Exclusions
	ExecutionRoleArn?: string
	ExtendDeletion?: bool
	PolicyDetails?: #PolicyDetails
	RetainInterval?: int
	State?: string
	Tags?: [...#Tag]
}

#Action: {
	CrossRegionCopy: [...#CrossRegionCopyAction]
	Name: string
}

#ArchiveRetainRule: {
	RetentionArchiveTier: #RetentionArchiveTier
}

#ArchiveRule: {
	RetainRule: #ArchiveRetainRule
}

#CreateRule: {
	CronExpression?: string
	Interval?: int
	IntervalUnit?: string
	Location?: string
	Scripts?: [...#Script]
	Times?: [...string]
}

#CrossRegionCopyAction: {
	EncryptionConfiguration: #EncryptionConfiguration
	RetainRule?: #CrossRegionCopyRetainRule
	Target: string
}

#CrossRegionCopyDeprecateRule: {
	Interval: int
	IntervalUnit: string
}

#CrossRegionCopyRetainRule: {
	Interval: int
	IntervalUnit: string
}

#CrossRegionCopyRule: {
	CmkArn?: string
	CopyTags?: bool
	DeprecateRule?: #CrossRegionCopyDeprecateRule
	Encrypted: bool
	RetainRule?: #CrossRegionCopyRetainRule
	Target?: string
	TargetRegion?: string
}

#CrossRegionCopyTarget: {
	TargetRegion?: string
}

#DeprecateRule: {
	Count?: int
	Interval?: int
	IntervalUnit?: string
}

#EncryptionConfiguration: {
	CmkArn?: string
	Encrypted: bool
}

#EventParameters: {
	DescriptionRegex?: string
	EventType: string
	SnapshotOwner: [...string]
}

#EventSource: {
	Parameters?: #EventParameters
	Type: string
}

#Exclusions: {
	ExcludeBootVolumes?: bool
	ExcludeTags?: [...#Tag]
	ExcludeVolumeTypes?: [...#VolumeTypeValues]
}

#FastRestoreRule: {
	AvailabilityZoneIds?: [...string]
	AvailabilityZones?: [...string]
	Count?: int
	Interval?: int
	IntervalUnit?: string
}

#Parameters: {
	ExcludeBootVolume?: bool
	ExcludeDataVolumeTags?: [...#Tag]
	NoReboot?: bool
}

#PolicyDetails: {
	Actions?: [...#Action]
	CopyTags?: bool
	CreateInterval?: int
	CrossRegionCopyTargets?: [...#CrossRegionCopyTarget]
	EventSource?: #EventSource
	Exclusions?: #Exclusions
	ExtendDeletion?: bool
	Parameters?: #Parameters
	PolicyLanguage?: string
	PolicyType?: string
	ResourceLocations?: [...string]
	ResourceType?: string
	ResourceTypes?: [...string]
	RetainInterval?: int
	Schedules?: [...#Schedule]
	TargetTags?: [...#Tag]
}

#RetainRule: {
	Count?: int
	Interval?: int
	IntervalUnit?: string
}

#RetentionArchiveTier: {
	Count?: int
	Interval?: int
	IntervalUnit?: string
}

#Schedule: {
	ArchiveRule?: #ArchiveRule
	CopyTags?: bool
	CreateRule?: #CreateRule
	CrossRegionCopyRules?: [...#CrossRegionCopyRule]
	DeprecateRule?: #DeprecateRule
	FastRestoreRule?: #FastRestoreRule
	Name?: string
	RetainRule?: #RetainRule
	ShareRules?: [...#ShareRule]
	TagsToAdd?: [...#Tag]
	VariableTags?: [...#Tag]
}

#Script: {
	ExecuteOperationOnScriptFailure?: bool
	ExecutionHandler?: string
	ExecutionHandlerService?: string
	ExecutionTimeout?: int
	MaximumRetryCount?: int
	Stages?: [...string]
}

#ShareRule: {
	TargetAccounts?: [...string]
	UnshareInterval?: int
	UnshareIntervalUnit?: string
}

#Tag: {
	Key: string
	Value: string
}
