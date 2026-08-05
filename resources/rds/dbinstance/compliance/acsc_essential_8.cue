// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: dbinstance.#Resource & #Patch_applications & #Mitigation_strategies_to_recover_data_and_system_availability & #Mitigation_strategies_to_prevent_malware_delivery_and_execution & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_recover_data_and_system_availability_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#Patch_applications: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#Mitigation_strategies_to_recover_data_and_system_availability: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#Mitigation_strategies_to_recover_data_and_system_availability_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

