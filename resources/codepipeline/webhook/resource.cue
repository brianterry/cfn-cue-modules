package webhook

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodePipeline::Webhook
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodePipeline::Webhook"
	Properties: #Properties
}
