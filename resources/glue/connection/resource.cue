package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Connection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Connection"
	Properties: #Properties
}
