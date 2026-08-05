package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::Connector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::Connector"
	Properties: #Properties
}
