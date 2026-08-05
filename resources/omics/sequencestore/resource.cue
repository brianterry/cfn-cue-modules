package sequencestore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Omics::SequenceStore
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::SequenceStore"
	Properties: #Properties
}
