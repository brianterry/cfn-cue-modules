package referencestore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::ReferenceStore Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::ReferenceStore"
	Properties: #Properties
}
