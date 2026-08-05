package remediationconfiguration

#Properties: {
	Automatic?: bool
	ConfigRuleName: string
	ExecutionControls?: #ExecutionControls
	MaximumAutomaticAttempts?: int
	Parameters?: {...}
	ResourceType?: string
	RetryAttemptSeconds?: int
	TargetId: string
	TargetType: string
	TargetVersion?: string
}

#ExecutionControls: {
	SsmControls?: #SsmControls
}

#SsmControls: {
	ConcurrentExecutionRatePercentage?: int
	ErrorPercentage?: int
}
