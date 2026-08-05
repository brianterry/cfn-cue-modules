package authorizer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an authorizer.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Authorizer"
	Properties: #Properties
}
