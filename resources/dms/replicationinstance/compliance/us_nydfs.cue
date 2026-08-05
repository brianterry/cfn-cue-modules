// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: replicationinstance.#Resource & #500_02_b_2

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#500_02_b_2: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

