package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::Connection.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::Connection"
	Properties: #Properties
}
