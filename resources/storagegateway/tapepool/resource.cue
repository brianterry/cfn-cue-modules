package tapepool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a custom tape pool for archiving virtual tapes with optional retention lock.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::StorageGateway::TapePool"
	Properties: #Properties
}
