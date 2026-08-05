// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ens_high & { ... }
#ens_high: topic.#Resource & #Anexo_II_4_1_2_a__b__c

// Guard rule: SNS_ENCRYPTED_KMS
#Anexo_II_4_1_2_a__b__c: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

