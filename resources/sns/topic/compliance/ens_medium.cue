// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ens_medium & { ... }
#ens_medium: topic.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: SNS_ENCRYPTED_KMS
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

