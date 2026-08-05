// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: cluster.#Resource & #ctrl_7_2_1

// Guard rule: EMR_KERBEROS_ENABLED
#ctrl_7_2_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

