package egressonlyinternetgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::EgressOnlyInternetGateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::EgressOnlyInternetGateway"
	Properties: #Properties
}
