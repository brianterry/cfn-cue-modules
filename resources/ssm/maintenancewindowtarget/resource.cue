package maintenancewindowtarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SSM::MaintenanceWindowTarget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::MaintenanceWindowTarget"
	Properties: #Properties
}
