package blueprint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::Blueprint Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::Blueprint"
	Properties: #Properties
}
