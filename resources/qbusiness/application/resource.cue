package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::Application Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::Application"
	Properties: #Properties
}
