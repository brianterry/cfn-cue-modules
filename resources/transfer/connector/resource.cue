package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::Connector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Connector"
	Properties: #Properties
}
