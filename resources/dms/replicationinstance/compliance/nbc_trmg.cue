// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: replicationinstance.#Resource & #ctrl_3_1_2_c

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#ctrl_3_1_2_c: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

