package faq

import "strings"

#Properties: {
	// FAQ description
	Description?: #Description
	// FAQ file format
	FileFormat?: #FileFormat
	// Index ID
	IndexId: #IndexId
	LanguageCode?: #LanguageCode
	// FAQ name
	Name: #FaqName
	// FAQ role ARN
	RoleArn: #RoleArn
	// FAQ S3 path
	S3Path: #S3Path
	// Tags for labeling the FAQ
	Tags?: #TagList
}

#S3Path: {
	Bucket: #S3BucketName
	Key: #S3ObjectKey
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
