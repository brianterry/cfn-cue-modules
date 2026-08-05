package capacitymanagerdataexport

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::CapacityManagerDataExport
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::CapacityManagerDataExport"
	Properties: #Properties
}
