package evaluator

import "strings"

#Properties: {
	// The description of the evaluator.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The configuration for the evaluator.
	EvaluatorConfig: #EvaluatorConfig
	// The name of the evaluator. Must be unique within your account.
	EvaluatorName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"
	// The ARN of the KMS key used to encrypt evaluator data.
	KmsKeyArn?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]+:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The evaluation level that determines the scope of evaluation.
	Level: #EvaluatorLevel
	// A list of tags to assign to the evaluator.
	Tags?: [...#Tag]
}

#BedrockEvaluatorModelConfig: {
	// Additional model-specific request fields.
	AdditionalModelRequestFields?: {...}
	InferenceConfig?: #InferenceConfiguration
	// The identifier of the Amazon Bedrock model to use for evaluation.
	ModelId: string
}

#CategoricalScaleDefinition: {
	// The description that explains what this categorical rating represents.
	Definition: string
	// The label of this categorical rating option.
	Label: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#CodeBasedEvaluatorConfig: {
	LambdaConfig: #LambdaEvaluatorConfig
}

#EvaluatorConfig: {
	CodeBased?: #CodeBasedEvaluatorConfig
	LlmAsAJudge?: #LlmAsAJudgeEvaluatorConfig
}

#EvaluatorLevel: "TOOL_CALL" | "TRACE" | "SESSION"

#EvaluatorModelConfig: {
	BedrockEvaluatorModelConfig: #BedrockEvaluatorModelConfig
}

#EvaluatorStatus: "ACTIVE" | "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING"

#InferenceConfiguration: {
	// The maximum number of tokens to generate in the model response.
	MaxTokens?: int & >=1
	// The temperature value that controls randomness in the model's responses.
	Temperature?: number & >=0 & <=1
	// The top-p sampling parameter that controls the diversity of the model's responses.
	TopP?: number & >=0 & <=1
}

#LambdaEvaluatorConfig: {
	// The ARN of the Lambda function used for evaluation.
	LambdaArn: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:([a-z]{2}(-gov)?-[a-z]+-\\d{1}):(\\d{12}):function:([a-zA-Z0-9-_.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"
	// The timeout in seconds for the Lambda function invocation.
	LambdaTimeoutInSeconds?: int & >=1 & <=300
}

#LlmAsAJudgeEvaluatorConfig: {
	// The evaluation instructions that guide the language model in assessing agent performance.
	Instructions: string
	ModelConfig: #EvaluatorModelConfig
	RatingScale: #RatingScale
}

#NumericalScaleDefinition: {
	// The description that explains what this numerical rating represents.
	Definition: string
	// The label that describes this numerical rating option.
	Label: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The numerical value for this rating scale option.
	Value: number & >=0
}

#RatingScale: {
	Categorical?: [...#CategoricalScaleDefinition]
	Numerical?: [...#NumericalScaleDefinition]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
