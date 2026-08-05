package maintenancewindow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SSM::MaintenanceWindow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::MaintenanceWindow"
	Properties: #Properties
}
