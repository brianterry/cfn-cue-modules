package safetyrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS Route53 Recovery Control basic constructs and validation rules.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryControl::SafetyRule"
	Properties: #Properties
}
