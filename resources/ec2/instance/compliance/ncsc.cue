// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ncsc & { ... }
#ncsc: instance.#Resource & #ctrl_11__External_interface_protection & #ctrl_11__External_interface_protection_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_11__External_interface_protection: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_11__External_interface_protection_2: {
	Properties: SubnetId: [_, ...]
	...
}

