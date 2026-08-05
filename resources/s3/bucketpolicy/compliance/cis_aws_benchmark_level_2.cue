// cis-aws-benchmark-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #cis_aws_benchmark_level_2 enforces all cis-aws-benchmark-level-2 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cis_aws_benchmark_level_2 & { ... }
#cis_aws_benchmark_level_2: bucketpolicy.#Resource & #ctrl_2_1_2

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#ctrl_2_1_2: {
	...
}

