package node

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ManagedBlockchain::Node
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ManagedBlockchain::Node"
	Properties: #Properties
}
