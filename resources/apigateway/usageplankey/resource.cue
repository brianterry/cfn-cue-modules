package usageplankey

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::UsagePlanKey`` resource associates an API key with a usage plan. This association determines which users the usage plan is applied to.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::UsagePlanKey"
	Properties: #Properties
}
