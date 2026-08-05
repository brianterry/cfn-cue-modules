// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: replicationinstance.#Resource & #SEC_3_7

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#SEC_3_7: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

