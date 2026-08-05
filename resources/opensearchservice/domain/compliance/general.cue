// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/opensearchservice/domain"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#general & { ... }
#general: domain.#Resource & #OPENSEARCH_ACCESS_CONTROL_ENABLED & #OPENSEARCH_APPLICATION_LOGGING_ENABLED & #OPENSEARCH_AUDIT_LOGGING_ENABLED & #OPENSEARCH_DATA_NODE_FAULT_TOLERANCE & #OPENSEARCH_ENCRYPTED_AT_REST & #OPENSEARCH_HTTPS_REQUIRED & #OPENSEARCH_IN_VPC_ONLY & #OPENSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK

// Guard rule: OPENSEARCH_ACCESS_CONTROL_ENABLED
#OPENSEARCH_ACCESS_CONTROL_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: OPENSEARCH_APPLICATION_LOGGING_ENABLED
#OPENSEARCH_APPLICATION_LOGGING_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: OPENSEARCH_AUDIT_LOGGING_ENABLED
#OPENSEARCH_AUDIT_LOGGING_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: OPENSEARCH_DATA_NODE_FAULT_TOLERANCE
#OPENSEARCH_DATA_NODE_FAULT_TOLERANCE: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: OPENSEARCH_ENCRYPTED_AT_REST
#OPENSEARCH_ENCRYPTED_AT_REST: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: OPENSEARCH_HTTPS_REQUIRED
#OPENSEARCH_HTTPS_REQUIRED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: OPENSEARCH_IN_VPC_ONLY
#OPENSEARCH_IN_VPC_ONLY: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: OPENSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#OPENSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

