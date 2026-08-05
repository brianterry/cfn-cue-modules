package configurationseteventdestination

#Properties: {
	ConfigurationSetName: string
	EventDestination?: #EventDestination
	EventDestinationName: string
}

#CloudWatchDestination: {
	DimensionConfigurations?: [...#DimensionConfiguration]
}

#DimensionConfiguration: {
	DefaultDimensionValue: string
	DimensionName: string
	DimensionValueSource: string
}

#EventDestination: {
	CloudWatchDestination?: #CloudWatchDestination
	Enabled?: bool
	KinesisFirehoseDestination?: #KinesisFirehoseDestination
	MatchingEventTypes: [...string]
	PinpointDestination?: #PinpointDestination
	SnsDestination?: #SnsDestination
}

#KinesisFirehoseDestination: {
	DeliveryStreamArn: string
	IamRoleArn: string
}

#PinpointDestination: {
	ApplicationArn?: string
}

#SnsDestination: {
	TopicArn: string
}
