package channel

import "strings"

#Properties: {
	// Whether the channel is authorized.
	Authorized?: bool
	// Indicates which content-packaging format is used (MPEG-TS or fMP4). If multitrackInputConfiguration is specified and enabled is true, then containerFormat is required and must be set to FRAGMENTED_MP4. Otherwise, containerFormat may be set to TS or FRAGMENTED_MP4. Default: TS.
	ContainerFormat?: "TS" | "FRAGMENTED_MP4"
	// Whether the channel allows insecure ingest.
	InsecureIngest?: bool
	// Channel latency mode.
	LatencyMode?: "NORMAL" | "LOW"
	MultitrackInputConfiguration?: #MultitrackInputConfiguration
	// Channel
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// Optional transcode preset for the channel. This is selectable only for ADVANCED_HD and ADVANCED_SD channel types. For those channel types, the default preset is HIGHER_BANDWIDTH_DELIVERY. For other channel types (BASIC and STANDARD), preset is the empty string ("").
	Preset?: "" | "HIGHER_BANDWIDTH_DELIVERY" | "CONSTRAINED_BANDWIDTH_DELIVERY"
	// Recording Configuration ARN. A value other than an empty string indicates that recording is enabled. Default: "" (recording is disabled).
	RecordingConfigurationArn?: string & =~"^$|arn:aws:ivs:[a-z0-9-]+:[0-9]+:recording-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
	// Channel type, which determines the allowable resolution and bitrate. If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately.
	Type?: "STANDARD" | "BASIC" | "ADVANCED_SD" | "ADVANCED_HD"
}

#MultitrackInputConfiguration: {
	// Indicates whether multitrack input is enabled. Can be set to true only if channel type is STANDARD. Setting enabled to true with any other channel type will cause an exception. If true, then policy, maximumResolution, and containerFormat are required, and containerFormat must be set to FRAGMENTED_MP4. Default: false.
	Enabled?: bool
	// Maximum resolution for multitrack input. Required if enabled is true.
	MaximumResolution?: "SD" | "HD" | "FULL_HD"
	// Indicates whether multitrack input is allowed or required. Required if enabled is true.
	Policy?: "ALLOW" | "REQUIRE"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
