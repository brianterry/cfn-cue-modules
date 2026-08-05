package documentclassifier

import "github.com/brianterry/cfn-cue-modules/cfn"

// Document Classifier enables training document classifier models.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Comprehend::DocumentClassifier"
	Properties: #Properties
}
