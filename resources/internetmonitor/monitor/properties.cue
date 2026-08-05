package monitor

import "strings"

#Properties: {
	HealthEventsConfig?: #HealthEventsConfig
	IncludeLinkedAccounts?: bool
	InternetMeasurementsLogDelivery?: #InternetMeasurementsLogDelivery
	LinkedAccountId?: string & =~"^(\\d{12})$" & strings.MinRunes(12) & strings.MaxRunes(12)
	MaxCityNetworksToMonitor?: int & >=1 & <=500000
	MonitorName: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Resources?: [...string & =~"^arn:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)]
	ResourcesToAdd?: [...string & strings.MinRunes(20) & strings.MaxRunes(2048)]
	ResourcesToRemove?: [...string & strings.MinRunes(20) & strings.MaxRunes(2048)]
	Status?: #MonitorConfigState
	Tags?: [...#Tag]
	TrafficPercentageToMonitor?: int & >=1 & <=100
}

#HealthEventsConfig: {
	AvailabilityLocalHealthEventsConfig?: #LocalHealthEventsConfig
	AvailabilityScoreThreshold?: number & >=0 & <=100
	PerformanceLocalHealthEventsConfig?: #LocalHealthEventsConfig
	PerformanceScoreThreshold?: number & >=0 & <=100
}

#InternetMeasurementsLogDelivery: {
	S3Config?: #S3Config
}

#LocalHealthEventsConfig: {
	HealthScoreThreshold?: number & >=0 & <=100
	MinTrafficImpact?: number & >=0 & <=100
	Status?: "ENABLED" | "DISABLED"
}

#MonitorConfigState: "PENDING" | "ACTIVE" | "INACTIVE" | "ERROR"

#MonitorProcessingStatusCode: "OK" | "INACTIVE" | "COLLECTING_DATA" | "INSUFFICIENT_DATA" | "FAULT_SERVICE" | "FAULT_ACCESS_CLOUDWATCH"

#S3Config: {
	BucketName?: string & strings.MinRunes(3)
	BucketPrefix?: string
	LogDeliveryStatus?: "ENABLED" | "DISABLED"
}

#Tag: {
	Key?: string
	Value?: string
}

#iso8601UTC: string & =~"^([0-2]\\d{3})-(0[0-9]|1[0-2])-([0-2]\\d|3[01])T([01]\\d|2[0-4]):([0-5]\\d):([0-6]\\d)((\\.\\d{3})?)Z$"
