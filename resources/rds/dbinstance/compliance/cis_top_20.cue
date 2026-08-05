// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: dbinstance.#Resource & #CIS_9

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#CIS_9: {
	Properties: PubliclyAccessible: false
	...
}

