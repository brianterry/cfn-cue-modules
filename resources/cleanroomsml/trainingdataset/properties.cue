package trainingdataset

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(255)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(63)
	RoleArn: string & =~"^arn:aws[-a-z]*:iam::[0-9]{12}:role/.+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// An arbitrary set of tags (key-value pairs) for this cleanrooms-ml training dataset.
	Tags?: [...#Tag]
	TrainingData: [...#Dataset]
}

#ColumnSchema: {
	ColumnName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ColumnTypes: [...#ColumnType]
}

#DataSource: {
	GlueDataSource: #GlueDataSource
}

#Dataset: {
	InputConfig: #DatasetInputConfig
	Type: #DatasetType
}

#DatasetInputConfig: {
	DataSource: #DataSource
	Schema: [...#ColumnSchema]
}

#GlueDataSource: {
	CatalogId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DatabaseName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(128)
	TableName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
