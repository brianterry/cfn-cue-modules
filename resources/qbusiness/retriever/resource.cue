package retriever

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::Retriever Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::Retriever"
	Properties: #Properties
}
