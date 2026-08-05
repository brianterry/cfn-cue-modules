// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: notebookinstance.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

