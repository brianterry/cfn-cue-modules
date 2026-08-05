package agreement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::Agreement
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Agreement"
	Properties: #Properties
}
