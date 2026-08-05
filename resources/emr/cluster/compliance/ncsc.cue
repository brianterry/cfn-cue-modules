// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc & { ... }
#ncsc: cluster.#Resource & #ctrl_10_Identity_and_authentication

// Guard rule: EMR_KERBEROS_ENABLED
#ctrl_10_Identity_and_authentication: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

