package carriergateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Carrier Gateway which describes the Carrier Gateway resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::CarrierGateway"
	Properties: #Properties
}
