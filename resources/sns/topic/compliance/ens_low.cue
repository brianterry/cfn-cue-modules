// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ens_low & { ... }
#ens_low: topic.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: SNS_ENCRYPTED_KMS
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

