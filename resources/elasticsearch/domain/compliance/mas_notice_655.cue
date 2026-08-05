// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: domain.#Resource & #4_4

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#4_4: {
	Properties: VPCOptions: _ & !=_|_
	...
}

