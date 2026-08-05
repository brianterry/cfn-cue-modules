// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: replicationinstance.#Resource & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

