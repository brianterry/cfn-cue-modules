// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: dbinstance.#Resource & #4_2 & #4_4

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#4_2: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#4_4: {
	Properties: PubliclyAccessible: false
	...
}

