// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: replicationinstance.#Resource & #8_I

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#8_I: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

