package stage

import "strings"

#Properties: {
	AutoParticipantRecordingConfiguration?: #AutoParticipantRecordingConfiguration
	// Stage name
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AutoParticipantRecordingConfiguration: {
	HlsConfiguration?: #HlsConfiguration
	// Types of media to be recorded. Default: AUDIO_VIDEO.
	MediaTypes?: [..."AUDIO_VIDEO" | "AUDIO_ONLY"]
	// If a stage publisher disconnects and then reconnects within the specified interval, the multiple recordings will be considered a single recording and merged together. The default value is 0, which disables merging.
	RecordingReconnectWindowSeconds?: int & >=0 & <=300
	// ARN of the StorageConfiguration resource to use for individual participant recording.
	StorageConfigurationArn: string & =~"^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	ThumbnailConfiguration?: #ThumbnailConfiguration
}

#HlsConfiguration: {
	ParticipantRecordingHlsConfiguration?: #ParticipantRecordingHlsConfiguration
}

#ParticipantRecordingHlsConfiguration: {
	// Defines the target duration for recorded segments generated when recording a stage participant. Segments may have durations longer than the specified value when needed to ensure each segment begins with a keyframe. Default: 6.
	TargetSegmentDurationSeconds?: int & >=2 & <=10
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ThumbnailConfiguration: {
	// An object representing a configuration of thumbnails for recorded video from an individual participant.
	ParticipantThumbnailConfiguration?: {
		RecordingMode?: "INTERVAL" | "DISABLED"
		Storage?: [..."SEQUENTIAL" | "LATEST"]
		TargetIntervalSeconds?: int & >=1 & <=86400
	}
}
