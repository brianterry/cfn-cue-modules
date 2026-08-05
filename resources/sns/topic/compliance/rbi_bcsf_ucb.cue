// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: topic.#Resource & #Annex_I_1_3

// Guard rule: SNS_ENCRYPTED_KMS
#Annex_I_1_3: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

