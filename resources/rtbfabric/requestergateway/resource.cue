package requestergateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::RequesterGateway Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::RequesterGateway"
	Properties: #Properties
}
