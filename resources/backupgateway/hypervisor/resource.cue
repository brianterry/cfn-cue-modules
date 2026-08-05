package hypervisor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BackupGateway::Hypervisor Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BackupGateway::Hypervisor"
	Properties: #Properties
}
