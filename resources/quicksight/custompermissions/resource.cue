package custompermissions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::CustomPermissions Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::CustomPermissions"
	Properties: #Properties
}
