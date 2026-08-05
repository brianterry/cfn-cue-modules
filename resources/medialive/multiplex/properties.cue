package multiplex

import "strings"

#Properties: {
	// A list of availability zones for the multiplex.
	AvailabilityZones: [...string]
	// A list of the multiplex output destinations.
	Destinations?: [...#MultiplexOutputDestination]
	// Configuration for a multiplex event.
	MultiplexSettings: #MultiplexSettings
	// Name of multiplex.
	Name: string
	// A collection of key-value pairs.
	Tags?: [...#Tags]
}

#MultiplexOutputDestination: {
	// Multiplex MediaConnect output destination settings.
	MultiplexMediaConnectOutputDestinationSettings?: {
		EntitlementArn?: string & strings.MinRunes(1)
	}
}

#MultiplexSettings: {
	// Maximum video buffer delay in milliseconds.
	MaximumVideoBufferDelayMilliseconds?: int & >=800 & <=3000
	// Transport stream bit rate.
	TransportStreamBitrate: int & >=1000000 & <=100000000
	// Transport stream ID.
	TransportStreamId: int & >=0 & <=65535
	// Transport stream reserved bit rate.
	TransportStreamReservedBitrate?: int & >=0 & <=100000000
}

#Tags: {
	Key?: string
	Value?: string
}
