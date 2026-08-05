package respondergateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::ResponderGateway Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::ResponderGateway"
	Properties: #Properties
}
