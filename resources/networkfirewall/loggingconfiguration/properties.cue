package loggingconfiguration

import "strings"

#Properties: {
	EnableMonitoringDashboard?: bool
	FirewallArn: #ResourceArn
	FirewallName?: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	LoggingConfiguration: #LoggingConfiguration
}

#LogDestinationConfig: {
	// A key-value pair to configure the logDestinations.
	LogDestination: {...}
	LogDestinationType: "S3" | "CloudWatchLogs" | "KinesisDataFirehose"
	LogType: "ALERT" | "FLOW" | "TLS"
}

#LoggingConfiguration: {
	LogDestinationConfigs: [...#LogDestinationConfig]
}

#ResourceArn: string & =~"^arn:aws.*$" & strings.MinRunes(1) & strings.MaxRunes(256)
