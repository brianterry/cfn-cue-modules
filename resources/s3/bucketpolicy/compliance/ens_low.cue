// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/s3/bucketpolicy"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#ens_low & { ... }
#ens_low: bucketpolicy.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#Anexo_II_4_1_2_a;_b;_c: {
	...
}

