package contactflowmoduleversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for ContactFlowModuleVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ContactFlowModuleVersion"
	Properties: #Properties
}
