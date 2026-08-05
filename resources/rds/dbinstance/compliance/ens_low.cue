// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#ens_low & { ... }
#ens_low: dbinstance.#Resource & #Art__20_2 & #Anexo_II_4_1_2_a;_b;_c & #Anexo_II_4_3_2_b & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a;_b;_c_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#Art__20_2: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#Anexo_II_4_3_2_b: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#Anexo_II_4_1_2_a;_b;_c_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

