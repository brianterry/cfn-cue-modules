// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: dbinstance.#Resource & #F80 & #F22

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#F80: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#F22: {
	Properties: PubliclyAccessible: false
	...
}

