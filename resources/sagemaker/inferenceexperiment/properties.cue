package inferenceexperiment

import "strings"

#Properties: {
	DataStorageConfig?: #DataStorageConfig
	// The description of the inference experiment.
	Description?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The desired state of the experiment after starting or stopping operation.
	DesiredState?: "Running" | "Completed" | "Cancelled"
	EndpointName: #EndpointName
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
	KmsKey?: string & =~".*" & strings.MaxRunes(2048)
	// An array of ModelVariantConfig objects. Each ModelVariantConfig object in the array describes the infrastructure configuration for the corresponding variant.
	ModelVariants: [...#ModelVariantConfig]
	// The name for the inference experiment.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(120)
	// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to access model artifacts and container images, and manage Amazon SageMaker Inference endpoints for model deployment.
	RoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Schedule?: #InferenceExperimentSchedule
	ShadowModeConfig?: #ShadowModeConfig
	// The error message or client-specified reason from the StopInferenceExperiment API, that explains the status of the inference experiment.
	StatusReason?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The type of the inference experiment that you want to run.
	Type: "ShadowMode"
}

#CaptureContentTypeHeader: {
	// The list of all content type headers that SageMaker will treat as CSV and capture accordingly.
	CsvContentTypes?: [...string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*/[a-zA-Z0-9](-*[a-zA-Z0-9.])*" & strings.MinRunes(1) & strings.MaxRunes(256)]
	// The list of all content type headers that SageMaker will treat as JSON and capture accordingly.
	JsonContentTypes?: [...string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*/[a-zA-Z0-9](-*[a-zA-Z0-9.])*" & strings.MinRunes(1) & strings.MaxRunes(256)]
}

#DataStorageConfig: {
	ContentType?: #CaptureContentTypeHeader
	// The Amazon S3 bucket where the inference request and response data is stored.
	Destination: string & =~"^(https|s3)://([^/])/?(.*)$" & strings.MaxRunes(512)
	// The AWS Key Management Service key that Amazon SageMaker uses to encrypt captured data at rest using Amazon S3 server-side encryption.
	KmsKey?: string & =~".*" & strings.MaxRunes(2048)
}

#EndpointMetadata: {
	// The name of the endpoint configuration.
	EndpointConfigName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MaxRunes(63)
	EndpointName: #EndpointName
	// The status of the endpoint. For possible values of the status of an endpoint.
	EndpointStatus?: "Creating" | "Updating" | "SystemUpdating" | "RollingBack" | "InService" | "OutOfService" | "Deleting" | "Failed"
}

#InferenceExperimentSchedule: {
	// The timestamp at which the inference experiment ended or will end.
	EndTime?: string
	// The timestamp at which the inference experiment started or will start.
	StartTime?: string
}

#ModelInfrastructureConfig: {
	// The type of the inference experiment that you want to run.
	InfrastructureType: "RealTimeInference"
	RealTimeInferenceConfig: #RealTimeInferenceConfig
}

#ModelVariantConfig: {
	InfrastructureConfig: #ModelInfrastructureConfig
	// The name of the Amazon SageMaker Model entity.
	ModelName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MaxRunes(63)
	// The name of the variant.
	VariantName: string & =~"^[a-zA-Z0-9]([\\-a-zA-Z0-9]*[a-zA-Z0-9])?" & strings.MaxRunes(63)
}

#RealTimeInferenceConfig: {
	// The number of instances of the type specified by InstanceType.
	InstanceCount: int
	// The instance type the model is deployed to.
	InstanceType: string
}

#ShadowModeConfig: {
	// List of shadow variant configurations.
	ShadowModelVariants: [...#ShadowModelVariantConfig]
	// The name of the production variant, which takes all the inference requests.
	SourceModelVariantName: string & =~"^[a-zA-Z0-9]([\\-a-zA-Z0-9]*[a-zA-Z0-9])?" & strings.MaxRunes(63)
}

#ShadowModelVariantConfig: {
	// The percentage of inference requests that Amazon SageMaker replicates from the production variant to the shadow variant.
	SamplingPercentage: int & <=100
	// The name of the shadow variant.
	ShadowModelVariantName: string & =~"^[a-zA-Z0-9]([\\-a-zA-Z0-9]*[a-zA-Z0-9])?" & strings.MaxRunes(63)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
}
