// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/volume"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: volume.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: volume.#Resource & #W37

// Guard rule: EBS_VOLUME_ENCRYPTION_KEY_RULE
#W37: {
	Type: "AWS::EC2::Volume"
	Properties: KmsKeyId: _ & !=_|_
	...
}

