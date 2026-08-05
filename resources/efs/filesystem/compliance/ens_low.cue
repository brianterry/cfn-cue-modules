// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ens_low & { ... }
#ens_low: filesystem.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: EFS_ENCRYPTED_CHECK
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: Encrypted: true
	...
}

