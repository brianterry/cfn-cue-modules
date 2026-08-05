// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: bucketpolicy.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	...
}

