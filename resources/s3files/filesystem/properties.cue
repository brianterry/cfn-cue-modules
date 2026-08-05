package filesystem

import "strings"

#Properties: {
	AcceptBucketWarning?: bool
	Bucket: string & =~"^(arn:aws[a-zA-Z0-9-]*:s3:::.+)$"
	ClientToken?: string & =~"^(.+)$" & strings.MinRunes(1) & strings.MaxRunes(64)
	KmsKeyId?: string & =~"^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|mrk-[0-9a-f]{32}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(key/mrk-[0-9a-f]{32})|(alias/[a-zA-Z0-9/_-]+))))$" & strings.MaxRunes(2048)
	Prefix?: string & =~"^(|.*/)$" & strings.MaxRunes(1024)
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#ExpirationDataRule: {
	DaysAfterLastAccess: int & >=1 & <=365
}

#ImportDataRule: {
	Prefix: string & =~"^(|.*/)$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	SizeLessThan: int & >=0 & <=52673613135872
	Trigger: "ON_DIRECTORY_FIRST_ACCESS" | "ON_FILE_ACCESS"
}

#SynchronizationConfiguration: {
	ExpirationDataRules: [...#ExpirationDataRule]
	ImportDataRules: [...#ImportDataRule]
	LatestVersionNumber?: int
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
}
