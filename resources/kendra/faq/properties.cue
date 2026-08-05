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

#Description: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#FaqName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#FileFormat: "CSV" | "CSV_WITH_HEADER" | "JSON"

#Id: string & strings.MinRunes(1) & strings.MaxRunes(100)

#IndexId: string & strings.MinRunes(36) & strings.MaxRunes(36)

#LanguageCode: string & =~"[a-zA-Z-]*" & strings.MinRunes(2) & strings.MaxRunes(10)

#RoleArn: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}" & strings.MinRunes(1) & strings.MaxRunes(1284)

#S3BucketName: string & =~"[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]" & strings.MinRunes(3) & strings.MaxRunes(63)

#S3ObjectKey: string & strings.MinRunes(1) & strings.MaxRunes(1024)

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

#TagList: [...#Tag]
