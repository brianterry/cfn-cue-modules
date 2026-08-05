package solution

import "strings"

#Properties: {
	// The ARN of the dataset group that provides the training data.
	DatasetGroupArn: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
	// When your have multiple event types (using an EVENT_TYPE schema field), this parameter specifies which event type (for example, 'click' or 'like') is used for training the model. If you do not provide an eventType, Amazon Personalize will use all interactions for training with equal weight regardless of type.
	EventType?: string & strings.MaxRunes(256)
	// The name for the solution
	Name: string & =~"^[a-zA-Z0-9][a-zA-Z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// Whether to perform automated machine learning (AutoML). The default is false. For this case, you must specify recipeArn.
	PerformAutoML?: bool
	// Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe. The default is false. When performing AutoML, this parameter is always true and you should not set it to false.
	PerformHPO?: bool
	// The ARN of the recipe to use for model training. Only specified when performAutoML is false.
	RecipeArn?: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
	SolutionConfig?: #SolutionConfig
}

#CategoricalHyperParameterRange: {
	// The name of the hyperparameter.
	Name?: string & strings.MaxRunes(256)
	// A list of the categories for the hyperparameter.
	Values?: [...string & strings.MaxRunes(1000)]
}

#ContinuousHyperParameterRange: {
	// The maximum allowable value for the hyperparameter.
	MaxValue?: number & >=-1e+06
	// The minimum allowable value for the hyperparameter.
	MinValue?: number & >=-1e+06
	// The name of the hyperparameter.
	Name?: string & strings.MaxRunes(256)
}

#IntegerHyperParameterRange: {
	// The maximum allowable value for the hyperparameter.
	MaxValue?: int & <=1000000
	// The minimum allowable value for the hyperparameter.
	MinValue?: int & >=-1000000
	// The name of the hyperparameter.
	Name?: string & strings.MaxRunes(256)
}

#SolutionArn: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)

#SolutionConfig: {
	// Lists the hyperparameter names and ranges.
	AlgorithmHyperParameters?: {...}
	// The AutoMLConfig object containing a list of recipes to search when AutoML is performed.
	AutoMLConfig?: {
		MetricName?: string & strings.MaxRunes(256)
		RecipeList?: [...string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)]
	}
	// Only events with a value greater than or equal to this threshold are used for training a model.
	EventValueThreshold?: string & strings.MaxRunes(256)
	// Lists the feature transformation parameters.
	FeatureTransformationParameters?: {...}
	// Describes the properties for hyperparameter optimization (HPO)
	HpoConfig?: {
		AlgorithmHyperParameterRanges?: {
			CategoricalHyperParameterRanges?: [...#CategoricalHyperParameterRange]
			ContinuousHyperParameterRanges?: [...#ContinuousHyperParameterRange]
			IntegerHyperParameterRanges?: [...#IntegerHyperParameterRange]
		}
		HpoObjective?: {
			MetricName?: string & strings.MaxRunes(256)
			MetricRegex?: string & strings.MaxRunes(256)
			Type?: "Maximize" | "Minimize"
		}
		HpoResourceConfig?: {
			MaxNumberOfTrainingJobs?: string & strings.MaxRunes(256)
			MaxParallelTrainingJobs?: string & strings.MaxRunes(256)
		}
	}
}
