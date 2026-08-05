package sequencestore

import "strings"

#Properties: {
	// Location of the access logs.
	AccessLogLocation?: string & =~"^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,800})/)?$"
	// A description for the store.
	Description?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	ETagAlgorithmFamily?: #ETagAlgorithmFamily
	// An S3 location that is used to store files that have failed a direct upload.
	FallbackLocation?: string & =~"^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,1024})/)?$" & strings.MinRunes(0)
	// A name for the store.
	Name: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The tags keys to propagate to the S3 objects associated with read sets in the sequence store.
	PropagatedSetLevelTags?: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]
	// The resource policy that controls S3 access on the store
	S3AccessPolicy?: {...}
	SseConfig?: #SseConfig
	Tags?: #TagMap
}

#ETagAlgorithmFamily: "MD5up" | "SHA256up" | "SHA512up"

#EncryptionType: "KMS"

#SequenceStoreStatus: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "FAILED"

#SseConfig: {
	// An encryption key ARN.
	KeyArn?: string & =~"arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Type: #EncryptionType
}

#TagMap: {...}
