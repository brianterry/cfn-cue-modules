package dataset

import "strings"

#Properties: {
	// The description of the dataset.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The Amazon Web Services Supply Chain instance identifier.
	InstanceId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The name of the dataset.
	Name: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(75)
	// The namespace of the dataset.
	Namespace: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	// The partition specification of the dataset.
	PartitionSpec?: {
		Fields: [...#DataLakeDatasetPartitionField]
	}
	// The schema of the dataset.
	Schema?: {
		Fields: [...#DataLakeDatasetSchemaField]
		Name: string & =~"^[A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
		PrimaryKeys?: [...#DataLakeDatasetPrimaryKeyField]
	}
	// The tags for the dataset.
	Tags?: [...#Tag]
}

#DataLakeDatasetPartitionField: {
	// The name of the partition field.
	Name: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The transformation of the partition field.
	Transform: {
		Type: "YEAR" | "MONTH" | "DAY" | "HOUR" | "IDENTITY"
	}
}

#DataLakeDatasetPrimaryKeyField: {
	// The name of the primary key field.
	Name: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#DataLakeDatasetSchemaField: {
	// Indicate if the field is required or not.
	IsRequired: bool
	// The dataset field name.
	Name: string & =~"^[a-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The dataset field type.
	Type: "INT" | "DOUBLE" | "STRING" | "TIMESTAMP" | "LONG"
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
