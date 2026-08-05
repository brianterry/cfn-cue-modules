// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: loadbalancer.#Resource & #PR_DS_P4

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#PR_DS_P4: {
	// No clauses extracted — manual review needed
	...
}

