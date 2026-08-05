package observabilityconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AppRunner::ObservabilityConfiguration resource  is an AWS App Runner resource type that specifies an App Runner observability configuration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppRunner::ObservabilityConfiguration"
	Properties: #Properties
}
