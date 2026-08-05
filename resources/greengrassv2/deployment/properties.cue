package deployment

import "strings"

#Properties: {
	Components?: {...}
	DeploymentName?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DeploymentPolicies?: #DeploymentPolicies
	IotJobConfiguration?: #DeploymentIoTJobConfiguration
	ParentTargetArn?: string & =~"arn:[^:]*:iot:[^:]*:[0-9]+:thinggroup/.+"
	Tags?: {...}
	TargetArn: string & =~"arn:[^:]*:iot:[^:]*:[0-9]+:(thing|thinggroup)/.+"
}

#ComponentConfigurationUpdate: {
	Merge?: string & strings.MinRunes(1) & strings.MaxRunes(10485760)
	Reset?: [...string & strings.MinRunes(0) & strings.MaxRunes(256)]
}

#ComponentDeploymentSpecification: {
	ComponentVersion?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ConfigurationUpdate?: #ComponentConfigurationUpdate
	RunWith?: #ComponentRunWith
}

#ComponentRunWith: {
	PosixUser?: string & strings.MinRunes(1)
	SystemResourceLimits?: #SystemResourceLimits
	WindowsUser?: string & strings.MinRunes(1)
}

#DeploymentComponentUpdatePolicy: {
	Action?: "NOTIFY_COMPONENTS" | "SKIP_NOTIFY_COMPONENTS"
	TimeoutInSeconds?: int & >=1 & <=2147483647
}

#DeploymentConfigurationValidationPolicy: {
	TimeoutInSeconds?: int & >=1 & <=2147483647
}

#DeploymentIoTJobConfiguration: {
	AbortConfig?: #IoTJobAbortConfig
	JobExecutionsRolloutConfig?: #IoTJobExecutionsRolloutConfig
	TimeoutConfig?: #IoTJobTimeoutConfig
}

#DeploymentPolicies: {
	ComponentUpdatePolicy?: #DeploymentComponentUpdatePolicy
	ConfigurationValidationPolicy?: #DeploymentConfigurationValidationPolicy
	FailureHandlingPolicy?: "ROLLBACK" | "DO_NOTHING"
}

#IoTJobAbortConfig: {
	CriteriaList: [...#IoTJobAbortCriteria]
}

#IoTJobAbortCriteria: {
	Action: "CANCEL"
	FailureType: "FAILED" | "REJECTED" | "TIMED_OUT" | "ALL"
	MinNumberOfExecutedThings: int & >=1 & <=2147483647
	ThresholdPercentage: number & >=0 & <=100
}

#IoTJobExecutionsRolloutConfig: {
	ExponentialRate?: #IoTJobExponentialRolloutRate
	MaximumPerMinute?: int & >=1 & <=1000
}

#IoTJobExponentialRolloutRate: {
	BaseRatePerMinute: int & >=1 & <=1000
	IncrementFactor: number & >=1 & <=5
	RateIncreaseCriteria: #IoTJobRateIncreaseCriteria
}

#IoTJobRateIncreaseCriteria: {
	NumberOfNotifiedThings?: #NumberOfThings
} | {
	NumberOfSucceededThings?: #NumberOfThings
}

#IoTJobTimeoutConfig: {
	InProgressTimeoutInMinutes?: int & >=0 & <=2147483647
}

#NumberOfThings: int & >=1 & <=2147483647

#SystemResourceLimits: {
	Cpus?: number & >=0
	Memory?: int & >=0 & <=9223372036854771712
}
