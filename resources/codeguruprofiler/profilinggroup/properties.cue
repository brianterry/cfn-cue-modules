package profilinggroup

import "strings"

#Properties: {
	// The agent permissions attached to this profiling group.
	AgentPermissions?: {
		Principals: [...#IamArn]
	}
	// Configuration for Notification Channels for Anomaly Detection feature in CodeGuru Profiler which enables customers to detect anomalies in the application profile for those methods that represent the highest proportion of CPU time or latency
	AnomalyDetectionNotificationConfiguration?: [...#Channel]
	// The compute platform of the profiling group.
	ComputePlatform?: "Default" | "AWSLambda"
	// The name of the profiling group.
	ProfilingGroupName: string & =~"^[\\w-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The tags associated with a profiling group.
	Tags?: [...#Tag]
}

#Channel: {
	channelId?: #ChannelId
	channelUri: #ChannelUri
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. The allowed characters across services are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. The allowed characters across services are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
