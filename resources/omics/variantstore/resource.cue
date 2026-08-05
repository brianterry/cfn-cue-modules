package variantstore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::VariantStore Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::VariantStore"
	Properties: #Properties
}
