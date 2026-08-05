// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: route.#Resource & #PR_AC_P3

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#PR_AC_P3: {
	// No clauses extracted — manual review needed
	...
}

