package ingestconfiguration

import "strings"

#Properties: {
	// Ingest Protocol.
	IngestProtocol?: "RTMP" | "RTMPS"
	// Whether ingest configuration allows insecure ingest.
	InsecureIngest?: bool
	// IngestConfiguration
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// Stage ARN. A value other than an empty string indicates that stage is linked to IngestConfiguration. Default: "" (recording is disabled).
	StageArn?: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
	// User defined indentifier for participant associated with IngestConfiguration.
	UserId?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
