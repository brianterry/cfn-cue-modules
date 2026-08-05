// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: bucketpolicy.#Resource & #Annex_I_1_3

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#Annex_I_1_3: {
	...
}

