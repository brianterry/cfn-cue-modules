// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudfront/distribution"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: distribution.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: distribution.#Resource & #W10

// Guard rule: CLOUDFRONT_ACCESSLOGS_ENABLED
#W10: {
	Properties: DistributionConfig: Logging: _ & !=_|_
	...
}

