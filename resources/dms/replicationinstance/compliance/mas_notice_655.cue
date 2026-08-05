// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: replicationinstance.#Resource & #4_4

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#4_4: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

