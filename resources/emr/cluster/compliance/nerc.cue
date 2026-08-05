// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nerc & { ... }
#nerc: cluster.#Resource & #CIP_004_7_R6_Part_6_1

// Guard rule: EMR_KERBEROS_ENABLED
#CIP_004_7_R6_Part_6_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

