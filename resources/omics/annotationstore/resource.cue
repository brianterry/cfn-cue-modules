package annotationstore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::AnnotationStore Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::AnnotationStore"
	Properties: #Properties
}
