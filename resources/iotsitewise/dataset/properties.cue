package dataset

#Properties: {
	// A description about the dataset, and its functionality.
	DatasetDescription?: string
	// The name of the dataset.
	DatasetName: string
	// The data source for the dataset.
	DatasetSource: #DatasetSource
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DatasetSource: {
	// The details of the dataset source associated with the dataset.
	SourceDetail?: #SourceDetail
	// The format of the dataset source associated with the dataset.
	SourceFormat: "KNOWLEDGE_BASE"
	// The type of data source for the dataset.
	SourceType: "KENDRA"
}

#KendraSourceDetail: {
	// The knowledgeBaseArn details for the Kendra dataset source.
	KnowledgeBaseArn: string
	// The roleARN details for the Kendra dataset source.
	RoleArn: string
}

#SourceDetail: {
	// Contains details about the Kendra dataset source.
	Kendra?: #KendraSourceDetail
}

#Tag: {
	Key: string
	Value: string
}
