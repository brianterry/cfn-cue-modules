// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sqs/queue"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: queue.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: queue.#Resource & #W48

// Guard rule: SQS_QUEUE_KMS_MASTER_KEY_ID_RULE
#W48: {
	Type: "AWS::SQS::Queue"
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

