// cis-critical-security-controls-v8-ig3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #cis_critical_security_controls_v8_ig3 enforces all cis-critical-security-controls-v8-ig3 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cis_critical_security_controls_v8_ig3 & { ... }
#cis_critical_security_controls_v8_ig3: domain.#Resource & #3_11 & #3_3 & #3_8

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#3_11: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#3_3: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#3_8: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

