// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: bucketpolicy.#Resource & #ctrl_500_02_a

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#ctrl_500_02_a: {
	...
}

