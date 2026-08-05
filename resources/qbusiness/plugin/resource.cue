package plugin

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::Plugin Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::Plugin"
	Properties: #Properties
}
