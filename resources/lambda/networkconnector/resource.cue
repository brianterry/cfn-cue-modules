package networkconnector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::NetworkConnector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::NetworkConnector"
	Properties: #Properties
}
