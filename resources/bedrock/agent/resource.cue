package agent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::Agent Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::Agent"
	Properties: #Properties
}
