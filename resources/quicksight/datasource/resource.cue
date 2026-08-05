package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::DataSource Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::DataSource"
	Properties: #Properties
}
