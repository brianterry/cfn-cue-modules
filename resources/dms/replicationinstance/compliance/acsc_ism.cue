// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: replicationinstance.#Resource & #ctrl_1528

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#ctrl_1528: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

