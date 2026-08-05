package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Kendra DataSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kendra::DataSource"
	Properties: #Properties
}
