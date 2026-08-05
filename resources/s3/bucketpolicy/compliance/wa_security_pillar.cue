// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucketpolicy"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: bucketpolicy.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: bucketpolicy.#Resource & #SEC_9_3

// Guard rule: S3_BUCKET_SSL_REQUESTS_ONLY
#SEC_9_3: {
	...
}

