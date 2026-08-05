package messagetemplateversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// A version for the specified customer-managed message template within the specified knowledge base.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::MessageTemplateVersion"
	Properties: #Properties
}
