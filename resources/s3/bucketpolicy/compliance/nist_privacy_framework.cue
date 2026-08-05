// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: bucketpolicy.#Resource & #CT_DM_P7

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#CT_DM_P7: {
	...
}

