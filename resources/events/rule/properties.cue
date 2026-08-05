package rule

#Properties: {
	// The description of the rule.
	Description?: string
	// The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
	EventBusName?: string
	// The event pattern of the rule. For more information, see Events and Event Patterns in the Amazon EventBridge User Guide.
	EventPattern?: string
	// The name of the rule.
	Name?: string
	// The Amazon Resource Name (ARN) of the role that is used for target invocation.
	RoleArn?: string
	// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)". For more information, see Creating an Amazon EventBridge rule that runs on a schedule.
	ScheduleExpression?: string
	// The state of the rule.
	State?: "DISABLED" | "ENABLED" | "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"
	// Any tags assigned to the event rule.
	Tags?: [...#Tag]
	// Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule.
	// Targets are the resources that are invoked when a rule is triggered.
	Targets?: [...#Target]
}

#AppSyncParameters: {
	GraphQLOperation: string
}

#AwsVpcConfiguration: {
	AssignPublicIp?: string
	SecurityGroups?: [...string]
	Subnets: [...string]
}

#BatchArrayProperties: {
	Size?: int
}

#BatchParameters: {
	ArrayProperties?: #BatchArrayProperties
	JobDefinition: string
	JobName: string
	RetryStrategy?: #BatchRetryStrategy
}

#BatchRetryStrategy: {
	Attempts?: int
}

#CapacityProviderStrategyItem: {
	Base?: int
	CapacityProvider: string
	Weight?: int
}

#DeadLetterConfig: {
	Arn?: string
}

#EcsParameters: {
	CapacityProviderStrategy?: [...#CapacityProviderStrategyItem]
	EnableECSManagedTags?: bool
	EnableExecuteCommand?: bool
	Group?: string
	LaunchType?: string
	NetworkConfiguration?: #NetworkConfiguration
	PlacementConstraints?: [...#PlacementConstraint]
	PlacementStrategies?: [...#PlacementStrategy]
	PlatformVersion?: string
	PropagateTags?: string
	ReferenceId?: string
	TagList?: [...#Tag]
	TaskCount?: int
	TaskDefinitionArn: string
}

#HttpParameters: {
	HeaderParameters?: {...}
	PathParameterValues?: [...string]
	QueryStringParameters?: {...}
}

#InputTransformer: {
	InputPathsMap?: {...}
	InputTemplate: string
}

#KinesisParameters: {
	PartitionKeyPath: string
}

#NetworkConfiguration: {
	AwsVpcConfiguration?: #AwsVpcConfiguration
}

#PlacementConstraint: {
	Expression?: string
	Type?: string
}

#PlacementStrategy: {
	Field?: string
	Type?: string
}

#RedshiftDataParameters: {
	Database: string
	DbUser?: string
	SecretManagerArn?: string
	Sql?: string
	Sqls?: [...string]
	StatementName?: string
	WithEvent?: bool
}

#RetryPolicy: {
	MaximumEventAgeInSeconds?: int
	MaximumRetryAttempts?: int
}

#RunCommandParameters: {
	RunCommandTargets: [...#RunCommandTarget]
}

#RunCommandTarget: {
	Key: string
	Values: [...string]
}

#SageMakerPipelineParameter: {
	Name: string
	Value: string
}

#SageMakerPipelineParameters: {
	PipelineParameterList?: [...#SageMakerPipelineParameter]
}

#SqsParameters: {
	MessageGroupId: string
}

#Tag: {
	Key?: string
	Value?: string
}

#Target: {
	AppSyncParameters?: #AppSyncParameters
	Arn: string
	BatchParameters?: #BatchParameters
	DeadLetterConfig?: #DeadLetterConfig
	EcsParameters?: #EcsParameters
	HttpParameters?: #HttpParameters
	Id: string
	Input?: string
	InputPath?: string
	InputTransformer?: #InputTransformer
	KinesisParameters?: #KinesisParameters
	RedshiftDataParameters?: #RedshiftDataParameters
	RetryPolicy?: #RetryPolicy
	RoleArn?: string
	RunCommandParameters?: #RunCommandParameters
	SageMakerPipelineParameters?: #SageMakerPipelineParameters
	SqsParameters?: #SqsParameters
}
