package schedule

import "strings"

#Properties: {
	// The description of the schedule.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the EndDate you specify.
	EndDate?: string
	FlexibleTimeWindow: #FlexibleTimeWindow
	// The name of the schedule group to associate with this schedule. If you omit this, the default schedule group is used.
	GroupName?: string & =~"^[0-9a-zA-Z-_.]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The ARN for a KMS Key that will be used to encrypt customer data.
	KmsKeyArn?: string & =~"^arn:aws[a-z-]*:kms:[a-z0-9\\-]+:\\d{12}:(key|alias)\\/[0-9a-zA-Z-_]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name?: string & =~"^[0-9a-zA-Z-_.]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The scheduling expression.
	ScheduleExpression: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The timezone in which the scheduling expression is evaluated.
	ScheduleExpressionTimezone?: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the StartDate you specify.
	StartDate?: string
	State?: #ScheduleState
	Target: #Target
}

#AwsVpcConfiguration: {
	AssignPublicIp?: #AssignPublicIp
	// Specifies the security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.
	SecurityGroups?: [...string & strings.MinRunes(1) & strings.MaxRunes(1000)]
	// Specifies the subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.
	Subnets: [...string & strings.MinRunes(1) & strings.MaxRunes(1000)]
}

#CapacityProviderStrategyItem: {
	// The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used.
	Base?: number & >=0 & <=100000
	// The short name of the capacity provider.
	CapacityProvider: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.
	Weight?: number & >=0 & <=1000
}

#DeadLetterConfig: {
	// The ARN of the SQS queue specified as the target for the dead-letter queue.
	Arn?: string & =~"^arn:aws[a-z-]*:sqs:[a-z0-9\\-]+:\\d{12}:[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#EcsParameters: {
	// The capacity provider strategy to use for the task.
	CapacityProviderStrategy?: [...#CapacityProviderStrategyItem]
	// Specifies whether to enable Amazon ECS managed tags for the task. For more information, see Tagging Your Amazon ECS Resources in the Amazon Elastic Container Service Developer Guide.
	EnableECSManagedTags?: bool
	// Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task.
	EnableExecuteCommand?: bool
	// Specifies an ECS task group for the task. The maximum length is 255 characters.
	Group?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	LaunchType?: #LaunchType
	NetworkConfiguration?: #NetworkConfiguration
	// An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime).
	PlacementConstraints?: [...#PlacementConstraint]
	// The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
	PlacementStrategy?: [...#PlacementStrategy]
	// Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as 1.1.0.
	PlatformVersion?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	PropagateTags?: #PropagateTags
	// The reference ID to use for the task.
	ReferenceId?: string & strings.MaxRunes(1024)
	// The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. To learn more, see RunTask in the Amazon ECS API Reference.
	Tags?: [...#TagMap]
	// The number of tasks to create based on TaskDefinition. The default is 1.
	TaskCount?: number & >=1 & <=10
	// The ARN of the task definition to use if the event target is an Amazon ECS task.
	TaskDefinitionArn: string & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#EventBridgeParameters: {
	// Free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.
	DetailType: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The source of the event.
	Source: string & =~"^(?=[/\\.\\-_A-Za-z0-9]+)((?!aws\\.).*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#FlexibleTimeWindow: {
	// The maximum time window during which a schedule can be invoked.
	MaximumWindowInMinutes?: number & >=1 & <=1440
	Mode: #FlexibleTimeWindowMode
}

#KinesisParameters: {
	// The custom parameter used as the Kinesis partition key. For more information, see Amazon Kinesis Streams Key Concepts in the Amazon Kinesis Streams Developer Guide.
	PartitionKey: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#NetworkConfiguration: {
	AwsvpcConfiguration?: #AwsVpcConfiguration
}

#PlacementConstraint: {
	// A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. To learn more, see Cluster Query Language in the Amazon Elastic Container Service Developer Guide.
	Expression?: string & strings.MaxRunes(2000)
	Type?: #PlacementConstraintType
}

#PlacementStrategy: {
	// The field to apply the placement strategy against. For the spread placement strategy, valid values are instanceId (or host, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as attribute:ecs.availability-zone. For the binpack placement strategy, valid values are cpu and memory. For the random placement strategy, this field is not used.
	Field?: string & strings.MaxRunes(255)
	Type?: #PlacementStrategyType
}

#RetryPolicy: {
	// The maximum amount of time, in seconds, to continue to make retry attempts.
	MaximumEventAgeInSeconds?: number & >=60 & <=86400
	// The maximum number of retry attempts to make before the request fails. Retry attempts with exponential backoff continue until either the maximum number of attempts is made or until the duration of the MaximumEventAgeInSeconds is reached.
	MaximumRetryAttempts?: number & >=0 & <=185
}

#SageMakerPipelineParameter: {
	// Name of parameter to start execution of a SageMaker Model Building Pipeline.
	Name: string & =~"^[A-Za-z0-9\\-_]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Value of parameter to start execution of a SageMaker Model Building Pipeline.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SageMakerPipelineParameters: {
	// List of Parameter names and values for SageMaker Model Building Pipeline execution.
	PipelineParameterList?: [...#SageMakerPipelineParameter]
}

#SqsParameters: {
	// The FIFO message group ID to use as the target.
	MessageGroupId?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Target: {
	// The Amazon Resource Name (ARN) of the target.
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1600)
	DeadLetterConfig?: #DeadLetterConfig
	EcsParameters?: #EcsParameters
	EventBridgeParameters?: #EventBridgeParameters
	// The text, or well-formed JSON, passed to the target. If you are configuring a templated Lambda, AWS Step Functions, or Amazon EventBridge target, the input must be a well-formed JSON. For all other target types, a JSON is not required. If you do not specify anything for this field, EventBridge Scheduler delivers a default notification to the target.
	Input?: string & strings.MinRunes(1)
	KinesisParameters?: #KinesisParameters
	RetryPolicy?: #RetryPolicy
	// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the schedule is triggered.
	RoleArn: string & =~"^arn:aws[a-z-]*:iam::\\d{12}:role\\/[\\w+=,.@\\/-]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	SageMakerPipelineParameters?: #SageMakerPipelineParameters
	SqsParameters?: #SqsParameters
}
