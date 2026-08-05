package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::DataSet Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::DataSet"
	Properties: #Properties
}
