package contactflowmodulealias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for ContactFlowModuleAlias
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ContactFlowModuleAlias"
	Properties: #Properties
}
