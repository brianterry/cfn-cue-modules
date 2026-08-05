// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: bucketpolicy.#Resource & #54

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#54: {
	...
}

