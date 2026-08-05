package resourcedatasync

import "strings"

#Properties: {
	BucketName?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	BucketPrefix?: string & strings.MinRunes(0) & strings.MaxRunes(64)
	BucketRegion?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	KMSKeyArn?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	S3Destination?: #S3Destination
	SyncFormat?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	SyncName: string & strings.MinRunes(1) & strings.MaxRunes(64)
	SyncSource?: #SyncSource
	SyncType?: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#AwsOrganizationsSource: {
	OrganizationSourceType: string & strings.MinRunes(1) & strings.MaxRunes(64)
	OrganizationalUnits?: [...string]
}

#S3Destination: {
	BucketName: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	BucketPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	BucketRegion: string & strings.MinRunes(1) & strings.MaxRunes(64)
	KMSKeyArn?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	SyncFormat: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SyncSource: {
	AwsOrganizationsSource?: #AwsOrganizationsSource
	IncludeFutureRegions?: bool
	SourceRegions: [...string]
	SourceType: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
