package actionconnector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::ActionConnector Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::ActionConnector"
	Properties: #Properties
}
