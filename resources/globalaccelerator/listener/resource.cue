package listener

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GlobalAccelerator::Listener
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GlobalAccelerator::Listener"
	Properties: #Properties
}
