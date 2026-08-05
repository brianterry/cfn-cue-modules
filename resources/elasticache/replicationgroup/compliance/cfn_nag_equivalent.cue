// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticache/replicationgroup"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: replicationgroup.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: replicationgroup.#Resource & #F25 & #F33

// Guard rule: ELASTICACHE_REPLICATION_GROUP_ENCRYPTION_AT_REST
#F25: {
	Properties: AtRestEncryptionEnabled: true
	...
}

// Guard rule: ELASTICACHE_REPLICATION_GROUP_ENCRYPTION_IN_TRANSIT
#F33: {
	Properties: TransitEncryptionEnabled: true
	...
}

