// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: instance.#Resource & #REL_9 & #REL_6 & #REL_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#REL_9: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#REL_6: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#REL_2: {
	Properties: SubnetId: [_, ...]
	...
}

