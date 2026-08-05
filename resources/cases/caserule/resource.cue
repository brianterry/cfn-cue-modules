package caserule

import "github.com/brianterry/cfn-cue-modules/cfn"

// A case rule. In the Amazon Connect admin website, case rules are known as case field conditions. Case rules are used to define the situations under which fields should have certain effects (such as required).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cases::CaseRule"
	Properties: #Properties
}
