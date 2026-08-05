// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nerc & { ... }
#nerc: dbinstance.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#CIP_011_3_R1_Part_1_2: {
	Properties: PubliclyAccessible: false
	...
}

