// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: bucketpolicy.#Resource & #P7

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#P7: {
	...
}

