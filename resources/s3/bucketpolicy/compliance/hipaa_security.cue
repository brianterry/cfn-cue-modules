// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: bucketpolicy.#Resource & #164_312_a_2_iv

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#164_312_a_2_iv: {
	...
}

