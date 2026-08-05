// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: cluster.#Resource & #ctrl_4_1

// Guard rule: EMR_KERBEROS_ENABLED
#ctrl_4_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

