package workloadidentity

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BedrockAgentCore::WorkloadIdentity Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::WorkloadIdentity"
	Properties: #Properties
}
