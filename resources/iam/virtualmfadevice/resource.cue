package virtualmfadevice

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::VirtualMFADevice
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::VirtualMFADevice"
	Properties: #Properties
}
