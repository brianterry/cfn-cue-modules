// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#ens_medium & { ... }
#ens_medium: loggroup.#Resource & #Anexo_II_4_1_2_a_b_c

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#Anexo_II_4_1_2_a_b_c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

