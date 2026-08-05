// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/broker"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: broker.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: broker.#Resource & #W53

// Guard rule: AMAZON_MQ_BROKER_ENCRYPTION_OPTIONS_RULE
#W53: {
	Properties: EncryptionOptions: _ & !=_|_
	...
}

