// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ens_high & { ... }
#ens_high: instance.#Resource & #Art__25 & #Anexo_II_4_3_2_b

// Guard rule: EBS_OPTIMIZED_INSTANCE
#Art__25: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#Anexo_II_4_3_2_b: {
	// No clauses extracted — manual review needed
	...
}

