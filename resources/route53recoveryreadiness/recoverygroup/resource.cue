package recoverygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Route53 Recovery Readiness Recovery Group Schema and API specifications.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryReadiness::RecoveryGroup"
	Properties: #Properties
}
