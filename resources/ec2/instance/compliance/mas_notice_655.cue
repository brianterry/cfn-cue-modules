// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: instance.#Resource & #ctrl_4_4 & #ctrl_4_4_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_4_4: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_4_4_2: {
	Properties: SubnetId: [_, ...]
	...
}

