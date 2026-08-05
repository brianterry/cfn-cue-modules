package dataintegration

import "strings"

#Properties: {
	// The data integration description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The configuration for what files should be pulled from the source.
	FileConfiguration?: #FileConfiguration
	// The KMS key of the data integration.
	KmsKey: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The name of the data integration.
	Name: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The configuration for what data should be pulled from the source.
	ObjectConfiguration?: #ObjectConfiguration
	// The name of the data and how often it should be pulled from the source.
	ScheduleConfig?: #ScheduleConfig
	// The URI of the data source.
	SourceURI: string & =~"^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)" & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The tags (keys and values) associated with the data integration.
	Tags?: [...#Tag]
}

#FileConfiguration: {
	// Restrictions for what files should be pulled from the source.
	Filters?: {...}
	// Identifiers for the source folders to pull all files from recursively.
	Folders: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(200)]
}

#ObjectConfiguration: {...}

#ScheduleConfig: {
	// The start date for objects to import in the first flow run. Epoch or ISO timestamp format is supported.
	FirstExecutionFrom?: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The name of the object to pull from the data source.
	Object?: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// How often the data should be pulled from data source.
	ScheduleExpression: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tag: {
	// A key to identify the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
