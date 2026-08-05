package storagevirtualmachine

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::FSx::StorageVirtualMachine
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::StorageVirtualMachine"
	Properties: #Properties
}
