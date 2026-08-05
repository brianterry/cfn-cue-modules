// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: instance.#Resource & #Your_Systems_3 & #Your_Systems_3_2 & #Your_Systems_3_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#Your_Systems_3: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#Your_Systems_3_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#Your_Systems_3_3: {
	Properties: SubnetId: [_, ...]
	...
}

