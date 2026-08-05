// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: domain.#Resource & #SC_13 & #AC_4 & #SC_7

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#SC_13: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#AC_4: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#SC_7: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

