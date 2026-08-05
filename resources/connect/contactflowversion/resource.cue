package contactflowversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for ContactFlowVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ContactFlowVersion"
	Properties: #Properties
}
