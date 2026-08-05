// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: domain.#Resource & #REL_2

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#REL_2: {
	Properties: VPCOptions: _ & !=_|_
	...
}

