package datarepositoryassociation

import "strings"

#Properties: {
	// A boolean flag indicating whether an import data repository task to import metadata should run after the data repository association is created. The task runs if this flag is set to true.
	BatchImportMetaDataOnCreate?: bool
	// The path to the Amazon S3 data repository that will be linked to the file system. The path can be an S3 bucket or prefix in the format s3://myBucket/myPrefix/ . This path specifies where in the S3 data repository files will be imported from or exported to.
	DataRepositoryPath: string
	// The globally unique ID of the file system, assigned by Amazon FSx.
	FileSystemId: string
	// This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
	FileSystemPath: string
	// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
	ImportedFileChunkSize?: int
	// The configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. The configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository.
	S3?: #S3
	// A list of Tag values, with a maximum of 50 elements.
	Tags?: [...#Tag]
}

#AutoExportPolicy: {
	Events: #EventTypes
}

#AutoImportPolicy: {
	Events: #EventTypes
}

#S3: {
	AutoExportPolicy?: #AutoExportPolicy
	AutoImportPolicy?: #AutoImportPolicy
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
