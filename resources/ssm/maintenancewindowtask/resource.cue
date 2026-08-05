package maintenancewindowtask

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSM::MaintenanceWindowTask
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::MaintenanceWindowTask"
	Properties: #Properties
}
