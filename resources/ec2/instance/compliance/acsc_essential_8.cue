// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: instance.#Resource & #Mitigation_strategies_to_prevent_malware_delivery_and_execution & #Restrict_administrative_privileges & #Mitigation_strategies_to_prevent_malware_delivery_and_execution_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#Restrict_administrative_privileges: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#Mitigation_strategies_to_prevent_malware_delivery_and_execution_2: {
	Properties: SubnetId: [_, ...]
	...
}

