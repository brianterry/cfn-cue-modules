package flywheel

import "strings"

#Properties: {
	ActiveModelArn?: string & =~"arn:aws(-[^:]+)?:comprehend:[a-zA-Z0-9-]*:[0-9]{12}:(document-classifier|entity-recognizer)/[a-zA-Z0-9](-*[a-zA-Z0-9])*(/version/[a-zA-Z0-9](-*[a-zA-Z0-9])*)?" & strings.MaxRunes(256)
	DataAccessRoleArn: string & =~"arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DataLakeS3Uri: string & =~"s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?" & strings.MaxRunes(512)
	DataSecurityConfig?: #DataSecurityConfig
	FlywheelName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	ModelType?: "DOCUMENT_CLASSIFIER" | "ENTITY_RECOGNIZER"
	Tags?: [...#Tag]
	TaskConfig?: #TaskConfig
}

#DataSecurityConfig: {
	DataLakeKmsKeyId?: #KmsKeyId
	ModelKmsKeyId?: #KmsKeyId
	VolumeKmsKeyId?: #KmsKeyId
	VpcConfig?: #VpcConfig
}

#DocumentClassificationConfig: {
	Labels?: [...string & strings.MaxRunes(5000)]
	Mode: "MULTI_CLASS" | "MULTI_LABEL"
}

#EntityRecognitionConfig: {
	EntityTypes?: [...#EntityTypesListItem]
}

#EntityTypesListItem: {
	Type: string & =~"^(?![^\\n\\r\\t,]*\\\\n|\\\\r|\\\\t)[^\\n\\r\\t,]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TaskConfig: {
	DocumentClassificationConfig?: #DocumentClassificationConfig
	EntityRecognitionConfig?: #EntityRecognitionConfig
	LanguageCode: "en" | "es" | "fr" | "it" | "de" | "pt"
}

#VpcConfig: {
	SecurityGroupIds: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(32)]
	Subnets: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(32)]
}
