// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: replicationinstance.#Resource & #164_308_a_3_i

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#164_308_a_3_i: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

