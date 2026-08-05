// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/securitygroup"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: securitygroup.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: securitygroup.#Resource & #F1000

// Guard rule: SECURITY_GROUP_MISSING_EGRESS_RULE
#F1000: {
	Type: "AWS::EC2::SecurityGroup"
	Properties: SecurityGroupEgress: _ & !=_|_
	...
}

