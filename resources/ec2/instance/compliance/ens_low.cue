// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ens_low & { ... }
#ens_low: instance.#Resource & #Art_25 & #Anexo_II_4_3_2_b

// Guard rule: EBS_OPTIMIZED_INSTANCE
#Art_25: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#Anexo_II_4_3_2_b: {
	// No clauses extracted — manual review needed
	...
}

