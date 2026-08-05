package healthcheck

import "strings"

#Properties: {
	// A complex type that contains information about the health check.
	HealthCheckConfig: {
		AlarmIdentifier?: #AlarmIdentifier
		ChildHealthChecks?: [...string]
		EnableSNI?: bool
		FailureThreshold?: int & >=1 & <=10
		FullyQualifiedDomainName?: string & strings.MaxRunes(255)
		HealthThreshold?: int & >=0 & <=256
		IPAddress?: string & =~"^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$" & strings.MaxRunes(45)
		InsufficientDataHealthStatus?: "Healthy" | "LastKnownStatus" | "Unhealthy"
		Inverted?: bool
		MeasureLatency?: bool
		Port?: int & >=1 & <=65535
		Regions?: [...string]
		RequestInterval?: int & >=10 & <=30
		ResourcePath?: string & strings.MaxRunes(255)
		RoutingControlArn?: string & strings.MinRunes(1) & strings.MaxRunes(255)
		SearchString?: string & strings.MaxRunes(255)
		Type: "CALCULATED" | "CLOUDWATCH_METRIC" | "HTTP" | "HTTP_STR_MATCH" | "HTTPS" | "HTTPS_STR_MATCH" | "TCP" | "RECOVERY_CONTROL"
	}
	// An array of key-value pairs to apply to this resource.
	HealthCheckTags?: [...#HealthCheckTag]
}

#AlarmIdentifier: {
	// The name of the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// For the CloudWatch alarm that you want Route 53 health checkers to use to determine whether this health check is healthy, the region that the alarm was created in.
	Region: string
}

#HealthCheckTag: {
	// The key name of the tag.
	Key: string & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MaxRunes(256)
}
