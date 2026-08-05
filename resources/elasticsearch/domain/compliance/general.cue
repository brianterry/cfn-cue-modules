// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#general & { ... }
#general: domain.#Resource & #ELASTICSEARCH_APPLICATION_LOGGING_ENABLED & #ELASTICSEARCH_AUDIT_LOGGING_ENABLED & #ELASTICSEARCH_DATA_NODE_FAULT_TOLERANCE & #ELASTICSEARCH_HTTPS_REQUIRED & #ELASTICSEARCH_PRIMARY_NODE_FAULT_TOLERANCE

// Guard rule: ELASTICSEARCH_APPLICATION_LOGGING_ENABLED
#ELASTICSEARCH_APPLICATION_LOGGING_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELASTICSEARCH_AUDIT_LOGGING_ENABLED
#ELASTICSEARCH_AUDIT_LOGGING_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELASTICSEARCH_DATA_NODE_FAULT_TOLERANCE
#ELASTICSEARCH_DATA_NODE_FAULT_TOLERANCE: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELASTICSEARCH_HTTPS_REQUIRED
#ELASTICSEARCH_HTTPS_REQUIRED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELASTICSEARCH_PRIMARY_NODE_FAULT_TOLERANCE
#ELASTICSEARCH_PRIMARY_NODE_FAULT_TOLERANCE: {
	// No clauses extracted — manual review needed
	...
}

