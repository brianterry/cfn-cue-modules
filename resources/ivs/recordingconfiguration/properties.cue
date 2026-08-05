package recordingconfiguration

import "strings"

#Properties: {
	DestinationConfiguration: #DestinationConfiguration
	// Recording Configuration Name.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// Recording Reconnect Window Seconds. (0 means disabled)
	RecordingReconnectWindowSeconds?: int & >=0 & <=300
	RenditionConfiguration?: #RenditionConfiguration
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
	ThumbnailConfiguration?: #ThumbnailConfiguration
}

#DestinationConfiguration: {
	S3?: #S3DestinationConfiguration
}

#RenditionConfiguration: {
	// Resolution Selection indicates which set of renditions are recorded for a stream.
	RenditionSelection?: "ALL" | "NONE" | "CUSTOM"
	// Renditions indicates which renditions are recorded for a stream.
	Renditions?: [..."FULL_HD" | "HD" | "SD" | "LOWEST_RESOLUTION"]
}

#S3DestinationConfiguration: {
	BucketName: string & =~"^[a-z0-9-.]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ThumbnailConfiguration: {
	// Thumbnail Recording Mode, which determines whether thumbnails are recorded at an interval or are disabled.
	RecordingMode?: "INTERVAL" | "DISABLED"
	// Resolution indicates the desired resolution of recorded thumbnails.
	Resolution?: "FULL_HD" | "HD" | "SD" | "LOWEST_RESOLUTION"
	// Storage indicates the format in which thumbnails are recorded.
	Storage?: [..."SEQUENTIAL" | "LATEST"]
	// Target Interval Seconds defines the interval at which thumbnails are recorded. This field is required if RecordingMode is INTERVAL.
	TargetIntervalSeconds?: int & >=1 & <=60
}
