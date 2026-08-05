package dataset

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the dataset group to add the dataset to
	DatasetGroupArn: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
	DatasetImportJob?: #DatasetImportJob
	// The type of dataset
	DatasetType: "Interactions" | "Items" | "Users"
	// The name for the dataset
	Name: string & =~"^[a-zA-Z0-9][a-zA-Z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The ARN of the schema to associate with the dataset. The schema defines the dataset fields.
	SchemaArn: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
}

#DatasetImportJob: {
	// The Amazon S3 bucket that contains the training data to import.
	DataSource?: {
		DataLocation?: string & =~"(s3|http|https)://.+" & strings.MaxRunes(256)
	}
	// The ARN of the dataset that receives the imported data
	DatasetArn?: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
	// The ARN of the dataset import job
	DatasetImportJobArn?: string & =~"arn:([a-z\\d-]+):personalize:.*:.*:.+" & strings.MaxRunes(256)
	// The name for the dataset import job.
	JobName?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The ARN of the IAM role that has permissions to read from the Amazon S3 data source.
	RoleArn?: string & =~"arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MaxRunes(256)
}
