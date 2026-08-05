package document

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SSM::Document resource is an SSM document in AWS Systems Manager that defines the actions that Systems Manager performs, which can be used to set up and run commands on your instances.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::Document"
	Properties: #Properties
}
