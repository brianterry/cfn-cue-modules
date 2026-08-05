package datasetgroup

import "strings"

#Properties: {
	// An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the dataset group.
	DatasetArns?: [...#Arn]
	// A name for the dataset group.
	DatasetGroupName: string & =~"^[a-zA-Z][a-zA-Z0-9_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The domain associated with the dataset group. When you add a dataset to a dataset group, this value and the value specified for the Domain parameter of the CreateDataset operation must match.
	Domain: "RETAIL" | "CUSTOM" | "INVENTORY_PLANNING" | "EC2_CAPACITY" | "WORK_FORCE" | "WEB_TRAFFIC" | "METRICS"
	// The tags of Application Insights application.
	Tags?: [...#Tag]
}

#Arn: string & =~"^[a-zA-Z0-9\\-\\_\\.\\/\\:]+$" & strings.MaxRunes(256)

#MaxResults: int & >=1 & <=100

#NextToken: string & strings.MinRunes(1) & strings.MaxRunes(3000)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
