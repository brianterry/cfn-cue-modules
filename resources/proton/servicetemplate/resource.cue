package servicetemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Proton::ServiceTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Proton::ServiceTemplate"
	Properties: #Properties
}
