package documentclassifier

import "strings"

#Properties: {
	DataAccessRoleArn: string & =~"arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DocumentClassifierName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	InputDataConfig: #DocumentClassifierInputDataConfig
	LanguageCode: "en" | "es" | "fr" | "it" | "de" | "pt"
	Mode?: "MULTI_CLASS" | "MULTI_LABEL"
	ModelKmsKeyId?: #KmsKeyId
	ModelPolicy?: string & =~"[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+" & strings.MinRunes(1) & strings.MaxRunes(20000)
	OutputDataConfig?: #DocumentClassifierOutputDataConfig
	Tags?: [...#Tag]
	VersionName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	VolumeKmsKeyId?: #KmsKeyId
	VpcConfig?: #VpcConfig
}

#AugmentedManifestsListItem: {
	AttributeNames: [...string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*"]
	S3Uri: #S3Uri
	Split?: "TRAIN" | "TEST"
}

#DocumentClassifierDocuments: {
	S3Uri: #S3Uri
	TestS3Uri?: #S3Uri
}

#DocumentClassifierInputDataConfig: {
	AugmentedManifests?: [...#AugmentedManifestsListItem]
	DataFormat?: "COMPREHEND_CSV" | "AUGMENTED_MANIFEST"
	DocumentReaderConfig?: #DocumentReaderConfig
	DocumentType?: "PLAIN_TEXT_DOCUMENT" | "SEMI_STRUCTURED_DOCUMENT"
	Documents?: #DocumentClassifierDocuments
	LabelDelimiter?: string & =~"^[ ~!@#$%^*\\-_+=|\\\\:;\\t>?/]$" & strings.MinRunes(1) & strings.MaxRunes(1)
	S3Uri?: #S3Uri
	TestS3Uri?: #S3Uri
}

#DocumentClassifierOutputDataConfig: {
	KmsKeyId?: #KmsKeyId
	S3Uri?: #S3Uri
}

#DocumentReaderConfig: {
	DocumentReadAction: "TEXTRACT_DETECT_DOCUMENT_TEXT" | "TEXTRACT_ANALYZE_DOCUMENT"
	DocumentReadMode?: "SERVICE_DEFAULT" | "FORCE_DOCUMENT_READ_ACTION"
	FeatureTypes?: [..."TABLES" | "FORMS"]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfig: {
	SecurityGroupIds: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(32)]
	Subnets: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(32)]
}
