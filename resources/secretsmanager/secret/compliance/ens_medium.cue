// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#ens_medium & { ... }
#ens_medium: secret.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: SECRETSMANAGER_USING_CMK
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

