package evaluationform

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an evaluation form for the specified CON instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::EvaluationForm"
	Properties: #Properties
}
