package anomalysubscription

import "strings"

#Properties: {
	// The frequency at which anomaly reports are sent over email.
	Frequency: "DAILY" | "IMMEDIATE" | "WEEKLY"
	// A list of cost anomaly monitors.
	MonitorArnList: [...#Arn]
	// Tags to assign to subscription.
	ResourceTags?: [...#ResourceTag]
	// The name of the subscription.
	SubscriptionName: string & =~"[\\S\\s]*" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The dollar value that triggers a notification if the threshold is exceeded.
	Threshold?: number & >=0
	// An Expression object in JSON String format used to specify the anomalies that you want to generate alerts for.
	ThresholdExpression?: string
}

#ResourceTag: {
	// The key name for the tag.
	Key: string & =~"^(?!aws:).*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Subscriber: {
	Address: string & =~"(^[a-zA-Z0-9.!#$%&'*+=?^_‘{|}~-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$)|(^arn:(aws[a-zA-Z-]*):sns:[a-zA-Z0-9-]+:[0-9]{12}:[a-zA-Z0-9_-]+(\\.fifo)?$)"
	Status?: "CONFIRMED" | "DECLINED"
	Type: "EMAIL" | "SNS"
}
