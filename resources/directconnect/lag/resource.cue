package lag

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::Lag
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::Lag"
	Properties: #Properties
}
