// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: cluster.#Resource & #B2_a Identity Verification_ Authentication_and Authorisation

// Guard rule: EMR_KERBEROS_ENABLED
#B2_a Identity Verification_ Authentication_and Authorisation: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

