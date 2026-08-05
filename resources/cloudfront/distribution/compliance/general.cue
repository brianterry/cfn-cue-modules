// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/distribution"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: distribution.#Resource & compliance.#general & { ... }
#general: distribution.#Resource & #CLOUDFRONT_CUSTOM_SSL_CERTIFICATE & #CLOUDFRONT_DEFAULT_ROOT_OBJECT_CONFIGURED & #CLOUDFRONT_ORIGIN_FAILOVER_ENABLED & #CLOUDFRONT_SNI_ENABLED

// Guard rule: CLOUDFRONT_CUSTOM_SSL_CERTIFICATE
#CLOUDFRONT_CUSTOM_SSL_CERTIFICATE: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: CLOUDFRONT_DEFAULT_ROOT_OBJECT_CONFIGURED
#CLOUDFRONT_DEFAULT_ROOT_OBJECT_CONFIGURED: {
	Properties: DistributionConfig: DefaultRootObject: _ & !=_|_
	Properties: DistributionConfig: DefaultRootObject: _  // != ""
	...
}

// Guard rule: CLOUDFRONT_ORIGIN_FAILOVER_ENABLED
#CLOUDFRONT_ORIGIN_FAILOVER_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: CLOUDFRONT_SNI_ENABLED
#CLOUDFRONT_SNI_ENABLED: {
	// No clauses extracted — manual review needed
	...
}

