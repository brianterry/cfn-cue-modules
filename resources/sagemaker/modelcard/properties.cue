package modelcard

import "strings"

#Properties: {
	Content: #Content
	// The unique name of the model card.
	ModelCardName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MaxRunes(63)
	// The approval status of the model card within your organization. Different organizations might have different criteria for model card review and approval.
	ModelCardStatus: "Draft" | "PendingReview" | "Approved" | "Archived"
	SecurityConfig?: #SecurityConfig
	// Key-value pairs used to manage metadata for model cards.
	Tags?: [...#Tag]
}

#AdditionalInformation: {
	// Caveats and recommendations for people who might use this model in their applications.
	CaveatsAndRecommendations?: string & strings.MaxRunes(2048)
	// customer details.
	CustomDetails?: {...}
	// Any ethical considerations that the author wants to provide.
	EthicalConsiderations?: string & strings.MaxRunes(2048)
}

#AxisNameArray: [...string & strings.MaxRunes(63)]

#AxisNameString: string & strings.MaxRunes(63)

#BarChartMetric: {
	Name: string & =~".{1,255}"
	Notes?: string & strings.MaxRunes(1024)
	Type: "bar_chart"
	Value: [...number]
	XAxisName?: #AxisNameArray
	YAxisName?: #AxisNameString
}

#BusinessDetails: {
	// What business problem does the model solve?
	BusinessProblem?: string & strings.MaxRunes(2048)
	// Business stakeholders.
	BusinessStakeholders?: string & strings.MaxRunes(2048)
	// Line of business.
	LineOfBusiness?: string & strings.MaxRunes(2048)
}

#Container: {
	// Inference environment path. The Amazon EC2 Container Registry (Amazon ECR) path where inference code is stored.
	Image: string & strings.MaxRunes(255)
	// The Amazon S3 path where the model artifacts, which result from model training, are stored.
	ModelDataUrl?: string & strings.MaxRunes(1024)
	// The name of a pre-trained machine learning benchmarked by Amazon SageMaker Inference Recommender model that matches your model.
	NearestModelName?: string
}

#Content: {
	AdditionalInformation?: #AdditionalInformation
	BusinessDetails?: #BusinessDetails
	EvaluationDetails?: #EvaluationDetails
	IntendedUses?: #IntendedUses
	ModelOverview?: #ModelOverview
	ModelPackageDetails?: #ModelPackageDetails
	TrainingDetails?: #TrainingDetails
}

#EvaluationDetail: {
	Datasets?: [...string & strings.MaxRunes(1024)]
	EvaluationJobArn?: string & strings.MaxRunes(256)
	EvaluationObservation?: string & strings.MaxRunes(2096)
	// additional attributes associated with the evaluation results.
	Metadata?: {...}
	MetricGroups?: [...#MetricGroup]
	Name: string & =~".{1,63}"
}

#EvaluationDetails: [...#EvaluationDetail]

#InferenceSpecification: {
	// Contains inference related information which were used to create model package.
	Containers: [...#Container]
}

#IntendedUses: {
	ExplanationsForRiskRating?: string & strings.MaxRunes(2048)
	FactorsAffectingModelEfficiency?: string & strings.MaxRunes(2048)
	// intended use cases.
	IntendedUses?: string & strings.MaxRunes(2048)
	// Why the model was developed?
	PurposeOfModel?: string & strings.MaxRunes(2048)
	RiskRating?: #RiskRating
}

#LinearGraphMetric: {
	Name: string & =~".{1,255}"
	Notes?: string & strings.MaxRunes(1024)
	Type: "linear_graph"
	Value: [...[...number]]
	XAxisName?: #AxisNameString
	YAxisName?: #AxisNameString
}

#MatrixMetric: {
	Name: string & =~".{1,255}"
	Notes?: string & strings.MaxRunes(1024)
	Type: "matrix"
	Value: [...[...number]]
	XAxisName?: #AxisNameArray
	YAxisName?: #AxisNameArray
}

#MetricGroup: {
	MetricData: [...#SimpleMetric | #LinearGraphMetric | #BarChartMetric | #MatrixMetric]
	Name: string & =~".{1,63}"
}

#ModelOverview: {
	// Algorithm used to solve the problem.
	AlgorithmType?: string & strings.MaxRunes(1024)
	// Overview about the inference.
	InferenceEnvironment?: {
		ContainerImage?: [...string & strings.MaxRunes(1024)]
	}
	// Location of the model artifact.
	ModelArtifact?: [...string & strings.MaxRunes(1024)]
	// Creator of model.
	ModelCreator?: string & strings.MaxRunes(1024)
	// description of model.
	ModelDescription?: string & strings.MaxRunes(1024)
	// SageMaker Model Arn or Non SageMaker Model id.
	ModelId?: string & strings.MaxRunes(1024)
	// Name of the model.
	ModelName?: string & strings.MaxRunes(1024)
	// Owner of model.
	ModelOwner?: string & strings.MaxRunes(1024)
	// Version of the model.
	ModelVersion?: number & >=1
	// Problem being solved with the model.
	ProblemType?: string & strings.MaxRunes(1024)
}

#ModelPackageCreator: {
	// The name of the user's profile in Studio
	UserProfileName?: string & strings.MaxRunes(63)
}

#ModelPackageDetails: {
	// A description provided for the model approval
	ApprovalDescription?: string & strings.MaxRunes(1024)
	// Information about the user who created model package.
	CreatedBy?: #ModelPackageCreator
	// The machine learning domain of the model package you specified. Common machine learning domains include computer vision and natural language processing.
	Domain?: string
	// Details about inference jobs that can be run with models based on this model package.
	InferenceSpecification?: #InferenceSpecification
	// Current approval status of model package
	ModelApprovalStatus?: "Approved" | "Rejected" | "PendingManualApproval"
	// The Amazon Resource Name (ARN) of the model package
	ModelPackageArn?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A brief summary of the model package
	ModelPackageDescription?: string & strings.MaxRunes(1024)
	// If the model is a versioned model, the name of the model group that the versioned model belongs to.
	ModelPackageGroupName?: string & strings.MinRunes(1) & strings.MaxRunes(63)
	// Name of the model package
	ModelPackageName?: string & strings.MinRunes(1) & strings.MaxRunes(63)
	// Current status of model package
	ModelPackageStatus?: "Pending" | "InProgress" | "Completed" | "Failed" | "Deleting"
	// Version of the model package
	ModelPackageVersion?: number & >=1
	// A list of algorithms that were used to create a model package.
	SourceAlgorithms?: #SourceAlgorithms
	// The machine learning task you specified that your model package accomplishes. Common machine learning tasks include object detection and image classification.
	Task?: string
}

#ObjectiveFunction: {
	// objective function that training job is optimized for.
	Function?: {
		Condition?: string & strings.MaxRunes(63)
		Facet?: string & strings.MaxRunes(63)
		Function?: "Maximize" | "Minimize"
	}
	Notes?: string & strings.MaxRunes(1024)
}

#RiskRating: "High" | "Medium" | "Low" | "Unknown"

#SecurityConfig: {
	// A Key Management Service key ID to use for encrypting a model card.
	KmsKeyId?: string & =~".*" & strings.MaxRunes(2048)
}

#SimpleMetric: {
	Name: string & =~".{1,255}"
	Notes?: string & strings.MaxRunes(1024)
	Type: "number" | "string" | "boolean"
	Value: number | string & strings.MaxRunes(63) | bool
	XAxisName?: #AxisNameString
	YAxisName?: #AxisNameString
}

#SourceAlgorithm: {
	// The name of an algorithm that was used to create the model package. The algorithm must be either an algorithm resource in your SageMaker account or an algorithm in AWS Marketplace that you are subscribed to.
	AlgorithmName: string & strings.MaxRunes(170)
	// The Amazon S3 path where the model artifacts, which result from model training, are stored.
	ModelDataUrl?: string & strings.MaxRunes(1024)
}

#SourceAlgorithms: [...#SourceAlgorithm]

#Tag: {
	// The tag key. Tag keys must be unique per resource.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MaxRunes(256)
}

#TrainingDetails: {
	ObjectiveFunction?: #ObjectiveFunction
	TrainingJobDetails?: {
		HyperParameters?: [...#TrainingHyperParameter]
		TrainingArn?: string & strings.MaxRunes(1024)
		TrainingDatasets?: [...string & strings.MaxRunes(1024)]
		TrainingEnvironment?: {
			ContainerImage?: [...string & strings.MaxRunes(1024)]
		}
		TrainingMetrics?: [...#TrainingMetric]
		UserProvidedHyperParameters?: [...#TrainingHyperParameter]
		UserProvidedTrainingMetrics?: [...#TrainingMetric]
	}
	TrainingObservations?: string & strings.MaxRunes(1024)
}

#TrainingHyperParameter: {
	Name: string & =~".{1,255}"
	Value: string & =~".{1,255}"
}

#TrainingMetric: {
	Name: string & =~".{1,255}"
	Notes?: string & strings.MaxRunes(1024)
	Value: number
}

#UserContext: {
	// The domain associated with the user.
	DomainId?: string
	// The Amazon Resource Name (ARN) of the user's profile.
	UserProfileArn?: string
	// The name of the user's profile.
	UserProfileName?: string
}
