package inferencescheduler

import "strings"

#Properties: {
	// A period of time (in minutes) by which inference on the data is delayed after the data starts.
	DataDelayOffsetInMinutes?: int & >=0 & <=60
	// Specifies configuration information for the input data for the inference scheduler, including delimiter, format, and dataset location.
	DataInputConfiguration: {
		InferenceInputNameConfiguration?: #InputNameConfiguration
		InputTimeZoneOffset?: string & =~"^(\\+|\\-)[0-9]{2}\\:[0-9]{2}$"
		S3InputConfiguration: #S3InputConfiguration
	}
	// Specifies configuration information for the output results for the inference scheduler, including the S3 location for the output.
	DataOutputConfiguration: {
		KmsKeyId?: string & =~"^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
		S3OutputConfiguration: #S3OutputConfiguration
	}
	// How often data is uploaded to the source S3 bucket for the input data.
	DataUploadFrequency: "PT5M" | "PT10M" | "PT15M" | "PT30M" | "PT1H"
	// The name of the inference scheduler being created.
	InferenceSchedulerName?: string & =~"^[0-9a-zA-Z_-]{1,200}$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// The name of the previously trained ML model being used to create the inference scheduler.
	ModelName: string & =~"^[0-9a-zA-Z_-]{1,200}$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// The Amazon Resource Name (ARN) of a role with permission to access the data source being used for the inference.
	RoleArn: string & =~"arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Provides the identifier of the AWS KMS customer master key (CMK) used to encrypt inference scheduler data by Amazon Lookout for Equipment.
	ServerSideKmsKeyId?: string & =~"^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Any tags associated with the inference scheduler.
	Tags?: [...#Tag]
}

#Bucket: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)

#InputNameConfiguration: {
	// Indicates the delimiter character used between items in the data.
	ComponentTimestampDelimiter?: string & =~"^(\\-|\\_|\\s)?$" & strings.MinRunes(0) & strings.MaxRunes(1)
	// The format of the timestamp, whether Epoch time, or standard, with or without hyphens (-).
	TimestampFormat?: string & =~"^EPOCH|yyyy-MM-dd-HH-mm-ss|yyyyMMddHHmmss$"
}

#Prefix: string & strings.MinRunes(0) & strings.MaxRunes(1024)

#S3InputConfiguration: {
	Bucket: #Bucket
	Prefix?: #Prefix
}

#S3OutputConfiguration: {
	Bucket: #Bucket
	Prefix?: #Prefix
}

#Tag: {
	// The key for the specified tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag.
	Value: string & =~"[\\s\\w+-=\\.:/@]*" & strings.MinRunes(0) & strings.MaxRunes(256)
}
