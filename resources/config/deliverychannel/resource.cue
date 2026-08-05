package deliverychannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::DeliveryChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::DeliveryChannel"
	Properties: #Properties
}
