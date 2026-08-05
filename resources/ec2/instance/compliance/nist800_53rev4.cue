// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: instance.#Resource & #CA_7_a_b & #AC_4 & #AC_4_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#CA_7_a_b: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#AC_4: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#AC_4_2: {
	Properties: SubnetId: [_, ...]
	...
}

