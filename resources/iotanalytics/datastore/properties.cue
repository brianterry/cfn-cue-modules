package datastore

import "strings"

#Properties: {
	DatastoreName?: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	DatastorePartitions?: #DatastorePartitions
	DatastoreStorage?: #DatastoreStorage
	FileFormatConfiguration?: #FileFormatConfiguration
	RetentionPeriod?: #RetentionPeriod
	Tags?: [...#Tag]
}

#Column: {
	Name: string
	Type: string
}

#CustomerManagedS3: {
	Bucket: string & =~"[a-zA-Z0-9.\\-_]*" & strings.MinRunes(3) & strings.MaxRunes(255)
	KeyPrefix?: string & =~"[a-zA-Z0-9!_.*'()/{}:-]*/" & strings.MinRunes(1) & strings.MaxRunes(255)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#CustomerManagedS3Storage: {
	Bucket: string & =~"[a-zA-Z0-9.\\-_]*" & strings.MinRunes(3) & strings.MaxRunes(255)
	KeyPrefix?: string & =~"[a-zA-Z0-9!_.*'()/{}:-]*/" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#DatastorePartition: {
	Partition?: #Partition
	TimestampPartition?: #TimestampPartition
}

#DatastorePartitions: {
	Partitions?: [...#DatastorePartition]
}

#DatastoreStorage: {
	CustomerManagedS3?: #CustomerManagedS3
	IotSiteWiseMultiLayerStorage?: #IotSiteWiseMultiLayerStorage
	ServiceManagedS3?: #ServiceManagedS3
}

#FileFormatConfiguration: {
	JsonConfiguration?: #JsonConfiguration
	ParquetConfiguration?: #ParquetConfiguration
}

#IotSiteWiseMultiLayerStorage: {
	CustomerManagedS3Storage?: #CustomerManagedS3Storage
}

#ParquetConfiguration: {
	SchemaDefinition?: #SchemaDefinition
}

#Partition: {
	AttributeName: string & =~"[a-zA-Z0-9_]+"
}

#RetentionPeriod: {
	NumberOfDays?: int & >=1 & <=2147483647
	Unlimited?: bool
}

#SchemaDefinition: {
	Columns?: [...#Column]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TimestampPartition: {
	AttributeName: string & =~"[a-zA-Z0-9_]+"
	TimestampFormat?: string & =~"[a-zA-Z0-9\\s\\[\\]_,.'/:-]*"
}
