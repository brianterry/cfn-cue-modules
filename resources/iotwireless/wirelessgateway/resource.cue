package wirelessgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage wireless gateways, including LoRa gateways.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::WirelessGateway"
	Properties: #Properties
}
