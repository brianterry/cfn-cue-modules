// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: endpointconfig.#Resource & #Annex_I_1_3

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#Annex_I_1_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

