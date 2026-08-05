// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: bucketpolicy.#Resource & #Your_Systems_3

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#Your_Systems_3: {
	...
}

