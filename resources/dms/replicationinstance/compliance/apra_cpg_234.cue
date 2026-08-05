// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: replicationinstance.#Resource & #36d

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#36d: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

