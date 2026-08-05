// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: cluster.#Resource & #ctrl_500_02_b_2

// Guard rule: EMR_KERBEROS_ENABLED
#ctrl_500_02_b_2: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

