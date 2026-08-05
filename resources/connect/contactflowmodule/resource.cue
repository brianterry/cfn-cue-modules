package contactflowmodule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::ContactFlowModule.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ContactFlowModule"
	Properties: #Properties
}
