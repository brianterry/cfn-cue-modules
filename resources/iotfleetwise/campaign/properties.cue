package campaign

import "strings"

#Properties: {
	Action?: #UpdateCampaignAction
	CollectionScheme: #CollectionScheme
	Compression?: #Compression
	DataDestinationConfigs?: [...#DataDestinationConfig]
	DataExtraDimensions?: [...string & =~"^[a-zA-Z0-9_.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)]
	DataPartitions?: [...#DataPartition]
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DiagnosticsMode?: #DiagnosticsMode
	ExpiryTime?: string
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	PostTriggerCollectionDuration?: number & >=0 & <=4.294967295e+09
	Priority?: int & >=0
	SignalCatalogArn: string
	SignalsToCollect?: [...#SignalInformation]
	SignalsToFetch?: [...#SignalFetchInformation]
	SpoolingMode?: #SpoolingMode
	StartTime?: string
	Tags?: [...#Tag]
	TargetArn: string
}

#CampaignStatus: "CREATING" | "WAITING_FOR_APPROVAL" | "RUNNING" | "SUSPENDED"

#CollectionScheme: {
	TimeBasedCollectionScheme: #TimeBasedCollectionScheme
} | {
	ConditionBasedCollectionScheme: #ConditionBasedCollectionScheme
}

#Compression: "OFF" | "SNAPPY"

#ConditionBasedCollectionScheme: {
	ConditionLanguageVersion?: #LanguageVersion
	Expression: #EventExpression
	MinimumTriggerIntervalMs?: number & >=0 & <=4.294967295e+09
	TriggerMode?: #TriggerMode
}

#ConditionBasedSignalFetchConfig: {
	ConditionExpression: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	TriggerMode: #TriggerMode
}

#DataDestinationConfig: {
	S3Config: #S3Config
} | {
	TimestreamConfig: #TimestreamConfig
} | {
	MqttTopicConfig: #MqttTopicConfig
}

#DataFormat: "JSON" | "PARQUET"

#DataPartition: {
	Id: #DataPartitionId
	StorageOptions: #DataPartitionStorageOptions
	UploadOptions?: #DataPartitionUploadOptions
}

#DataPartitionId: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(128)

#DataPartitionStorageOptions: {
	MaximumSize: #StorageMaximumSize
	MinimumTimeToLive: #StorageMinimumTimeToLive
	StorageLocation: #StorageLocation
}

#DataPartitionUploadOptions: {
	ConditionLanguageVersion?: #LanguageVersion
	Expression: #EventExpression
}

#DiagnosticsMode: "OFF" | "SEND_ACTIVE_DTCS"

#EventExpression: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#LanguageVersion: int & >=1

#MqttTopicConfig: {
	ExecutionRoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	MqttTopicArn: string & =~"^arn:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#S3Config: {
	BucketArn: string & =~"^arn:(aws[a-zA-Z0-9-]*):s3:::.+$" & strings.MinRunes(16) & strings.MaxRunes(100)
	DataFormat?: #DataFormat
	Prefix?: string & =~"^[a-zA-Z0-9-_:./!*'()]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	StorageCompressionFormat?: #StorageCompressionFormat
}

#SignalFetchConfig: {
	TimeBased: #TimeBasedSignalFetchConfig
} | {
	ConditionBased: #ConditionBasedSignalFetchConfig
}

#SignalFetchInformation: {
	Actions: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
	ConditionLanguageVersion?: number & >=1 & <=1
	FullyQualifiedName: string & =~"^[a-zA-Z0-9_.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)
	SignalFetchConfig: #SignalFetchConfig
}

#SignalInformation: {
	DataPartitionId?: #DataPartitionId
	MaxSampleCount?: number & >=1 & <=4.294967295e+09
	MinimumSamplingIntervalMs?: number & >=0 & <=4.294967295e+09
	Name: string & =~"^[\\w|*|-]+(\\.[\\w|*|-]+)*$" & strings.MinRunes(1) & strings.MaxRunes(150)
}

#SpoolingMode: "OFF" | "TO_DISK"

#StorageCompressionFormat: "NONE" | "GZIP"

#StorageLocation: string & strings.MinRunes(1) & strings.MaxRunes(4096)

#StorageMaximumSize: {
	Unit: #StorageMaximumSizeUnit
	Value: #StorageMaximumSizeValue
}

#StorageMaximumSizeUnit: "MB" | "GB" | "TB"

#StorageMaximumSizeValue: int & >=1 & <=1073741824

#StorageMinimumTimeToLive: {
	Unit: #StorageMinimumTimeToLiveUnit
	Value: #StorageMinimumTimeToLiveValue
}

#StorageMinimumTimeToLiveUnit: "HOURS" | "DAYS" | "WEEKS"

#StorageMinimumTimeToLiveValue: int & >=1 & <=10000

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TimeBasedCollectionScheme: {
	PeriodMs: number & >=10000 & <=8.64e+07
}

#TimeBasedSignalFetchConfig: {
	ExecutionFrequencyMs: number & >=1
}

#TimePeriod: {
	Unit: #TimeUnit
	Value: number & >=1
}

#TimeUnit: "MILLISECOND" | "SECOND" | "MINUTE" | "HOUR"

#TimestreamConfig: {
	ExecutionRoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	TimestreamTableArn: string & =~"^arn:(aws[a-zA-Z0-9-]*):timestream:[a-zA-Z0-9-]+:[0-9]{12}:database\\/[a-zA-Z0-9_.-]+\\/table\\/[a-zA-Z0-9_.-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#TriggerMode: "ALWAYS" | "RISING_EDGE"

#UpdateCampaignAction: "APPROVE" | "SUSPEND" | "RESUME" | "UPDATE"
