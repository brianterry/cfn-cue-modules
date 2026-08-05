// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: instance.#Resource & #ctrl_3_14_2e & #ctrl_3_1_3e & #ctrl_3_1_3e_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#ctrl_3_14_2e: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_3_1_3e: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_3_1_3e_2: {
	Properties: SubnetId: [_, ...]
	...
}

