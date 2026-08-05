package onlineevaluationconfig

import "strings"

#Properties: {
	// The configuration for clustering analysis of evaluation results.
	ClusteringConfig?: #ClusteringConfig
	// The data source configuration that specifies CloudWatch log groups and service names to monitor.
	DataSourceConfig: #DataSourceConfig
	// The description of the online evaluation configuration.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The Amazon Resource Name (ARN) of the IAM role that grants permissions for evaluation.
	EvaluationExecutionRoleArn: string & =~"^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The list of evaluators to apply during online evaluation.
	Evaluators?: [...#EvaluatorReference]
	// The execution status indicating whether the online evaluation is currently running.
	ExecutionStatus?: #ExecutionStatus
	// The list of insights to enable for failure analysis.
	Insights?: [...#Insight]
	// The name of the online evaluation configuration. Must be unique within your account.
	OnlineEvaluationConfigName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"
	// The evaluation rule that defines sampling configuration, filters, and session detection settings.
	Rule: #Rule
	// A list of tags to assign to the online evaluation configuration.
	Tags?: [...#Tag]
}

#CloudWatchLogsInputConfig: {
	// The list of CloudWatch log group names to monitor for agent traces.
	LogGroupNames: [...string & =~"^[.\\-_/#A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
	// The list of service names to filter traces within the specified log groups.
	ServiceNames: [...string & =~"^[a-zA-Z0-9._-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)]
}

#CloudWatchOutputConfig: {
	// The CloudWatch log group name for evaluation results.
	LogGroupName?: string
}

#ClusteringConfig: {
	// The list of frequencies at which clustering reports are generated.
	Frequencies: [...#ClusteringFrequency]
}

#ClusteringFrequency: "DAILY" | "WEEKLY" | "MONTHLY"

#DataSourceConfig: {
	CloudWatchLogs: #CloudWatchLogsInputConfig
}

#EvaluatorReference: {
	// The unique identifier of the evaluator.
	EvaluatorId: string & =~"^(Builtin\\.[a-zA-Z0-9_-]+|[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10})$"
}

#ExecutionStatus: "ENABLED" | "DISABLED"

#Filter: {
	// The key or field name to filter on within the agent trace data.
	Key: string & =~"^[a-zA-Z0-9._-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The comparison operator to use for filtering.
	Operator: "Equals" | "NotEquals" | "GreaterThan" | "LessThan" | "GreaterThanOrEqual" | "LessThanOrEqual" | "Contains" | "NotContains"
	Value: #FilterValue
}

#FilterValue: {
	// The boolean value for true/false filtering conditions.
	BooleanValue?: bool
	// The numeric value for numerical filtering.
	DoubleValue?: number
	// The string value for text-based filtering.
	StringValue?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#Insight: {
	// The unique identifier of the insight.
	InsightId: string & =~"^[a-zA-Z][a-zA-Z0-9._]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#OnlineEvaluationConfigStatus: "ACTIVE" | "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING"

#OutputConfig: {
	CloudWatchConfig?: #CloudWatchOutputConfig
}

#Rule: {
	// The list of filters that determine which agent traces should be included in the evaluation.
	Filters?: [...#Filter]
	SamplingConfig: #SamplingConfig
	SessionConfig?: #SessionConfig
}

#SamplingConfig: {
	// The percentage of agent traces to sample for evaluation.
	SamplingPercentage: number & >=0.01 & <=100
}

#SessionConfig: {
	// The number of minutes of inactivity after which an agent session is considered complete.
	SessionTimeoutMinutes: int & >=1 & <=1440
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
