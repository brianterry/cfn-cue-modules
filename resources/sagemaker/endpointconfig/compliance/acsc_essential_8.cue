// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: endpointconfig.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

