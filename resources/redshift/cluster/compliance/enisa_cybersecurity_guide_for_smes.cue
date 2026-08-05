// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: cluster.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION & #ctrl_6_SECURE_DEVICES_KEEP_SOFTWARE_PATCHED_AND_UP_TO_DATE

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_6_SECURE_DEVICES_KEEP_SOFTWARE_PATCHED_AND_UP_TO_DATE: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

