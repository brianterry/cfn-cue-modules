// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domainname"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: domainname.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: domainname.#Resource & #W62

// Guard rule: API_GW_DOMAIN_DENY_NON_TLS_TRAFFIC
#W62: {
	Properties: SecurityPolicy: "TLS_1_2"
	...
}

