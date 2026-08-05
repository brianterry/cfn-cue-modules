package transformer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a transformer on the log group to transform logs into consistent structured and information rich format.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::Transformer"
	Properties: #Properties
}
