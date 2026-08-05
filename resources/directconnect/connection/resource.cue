package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::Connection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::Connection"
	Properties: #Properties
}
