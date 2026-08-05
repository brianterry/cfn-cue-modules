package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::DataSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::DataSource"
	Properties: #Properties
}
