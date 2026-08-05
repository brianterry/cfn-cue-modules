// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: instance.#Resource & #11_10_a & #11_10_d & #11_10_d_2 & #11_10_d_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#11_10_a: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#11_10_d: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#11_10_d_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#11_10_d_3: {
	Properties: SubnetId: [_, ...]
	...
}

