// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: route.#Resource & #SEC_5_3

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#SEC_5_3: {
	// No clauses extracted — manual review needed
	...
}

