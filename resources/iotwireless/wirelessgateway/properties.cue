package wirelessgateway

import "strings"

#Properties: {
	// Description of Wireless Gateway.
	Description?: string & strings.MaxRunes(2048)
	// The date and time when the most recent uplink was received.
	LastUplinkReceivedAt?: string
	// The combination of Package, Station and Model which represents the version of the LoRaWAN Wireless Gateway.
	LoRaWAN: #LoRaWANGateway
	// Name of Wireless Gateway.
	Name?: string & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the gateway.
	Tags?: [...#Tag]
	// Thing Arn. Passed into Update to associate a Thing with the Wireless Gateway.
	ThingArn?: string
	// Thing Name. If there is a Thing created, this can be returned with a Get call.
	ThingName?: string
}

#LoRaWANGateway: {
	GatewayEui: string & =~"^(([0-9A-Fa-f]{2}-){7}|([0-9A-Fa-f]{2}:){7}|([0-9A-Fa-f]{2}\\s){7}|([0-9A-Fa-f]{2}){7})([0-9A-Fa-f]{2})$"
	RfRegion: string & strings.MaxRunes(64)
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
