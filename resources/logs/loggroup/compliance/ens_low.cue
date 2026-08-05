// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#ens_low & { ... }
#ens_low: loggroup.#Resource & #Anexo_II_4_1_2_a__b__c

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#Anexo_II_4_1_2_a__b__c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

