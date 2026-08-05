package accountalias

import "github.com/brianterry/cfn-cue-modules/cfn"

// An AWS Support App resource that creates, updates, reads, and deletes a customer's account alias.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SupportApp::AccountAlias"
	Properties: #Properties
}
