package prompt

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::Prompt
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Prompt"
	Properties: #Properties
}
