package investigationgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::AIOps::InvestigationGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AIOps::InvestigationGroup"
	Properties: #Properties
}
