package configurationset

#Properties: {
	DeliveryOptions?: #DeliveryOptions
	Name: string
	ReputationOptions?: #ReputationOptions
	SendingOptions?: #SendingOptions
	Tags?: [...#Tags]
	TrackingOptions?: #TrackingOptions
}

#DeliveryOptions: {
	SendingPoolName?: string
}

#ReputationOptions: {
	ReputationMetricsEnabled?: bool
}

#SendingOptions: {
	SendingEnabled?: bool
}

#Tags: {
	Key?: string
	Value?: string
}

#TrackingOptions: {
	CustomRedirectDomain?: string
}
