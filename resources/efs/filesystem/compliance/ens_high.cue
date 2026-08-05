// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ens_high & { ... }
#ens_high: filesystem.#Resource & #Anexo_II_4_1_2_a__b__c

// Guard rule: EFS_ENCRYPTED_CHECK
#Anexo_II_4_1_2_a__b__c: {
	Properties: Encrypted: true
	...
}

