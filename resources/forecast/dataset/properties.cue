package dataset

import "strings"

#Properties: {
	// Frequency of data collection. This parameter is required for RELATED_TIME_SERIES
	DataFrequency?: string & =~"^Y|M|W|D|H|30min|15min|10min|5min|1min$"
	// A name for the dataset
	DatasetName: string & =~"^[a-zA-Z][a-zA-Z0-9_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The dataset type
	DatasetType: "TARGET_TIME_SERIES" | "RELATED_TIME_SERIES" | "ITEM_METADATA"
	// The domain associated with the dataset
	Domain: "RETAIL" | "CUSTOM" | "INVENTORY_PLANNING" | "EC2_CAPACITY" | "WORK_FORCE" | "WEB_TRAFFIC" | "METRICS"
	EncryptionConfig?: {
		KmsKeyArn?: #KmsKeyArn
		RoleArn?: #RoleArn
	}
	Schema: {
		Attributes?: #Attributes
	}
	Tags?: [...{
		Key: #Key
		Value: #Value
	}]
}
