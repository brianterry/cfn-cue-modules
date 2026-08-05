package transitgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::TransitGateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGateway"
	Properties: #Properties
}
