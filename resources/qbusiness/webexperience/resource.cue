package webexperience

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::WebExperience Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::WebExperience"
	Properties: #Properties
}
