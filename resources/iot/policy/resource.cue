package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::Policy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Policy"
	Properties: #Properties
}
