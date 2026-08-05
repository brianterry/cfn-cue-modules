// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: domain.#Resource & #CIS_13 & #CIS_9

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#CIS_13: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#CIS_9: {
	Properties: VPCOptions: _ & !=_|_
	...
}

