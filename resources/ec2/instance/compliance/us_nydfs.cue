// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: instance.#Resource & #500_02_b_5 & #500_02_a & #500_02_b_2 & #500_02_b_2_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#500_02_b_5: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#500_02_a: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#500_02_b_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#500_02_b_2_2: {
	Properties: SubnetId: [_, ...]
	...
}

