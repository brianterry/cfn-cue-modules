package customergateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a customer gateway.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::CustomerGateway"
	Properties: #Properties
}
