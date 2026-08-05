// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: dbinstance.#Resource & #ctrl_6_SECURE_DEVICES:_KEEP_SOFTWARE_PATCHED_AND_UP_TO_DATE & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION & #ctrl_7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#ctrl_6_SECURE_DEVICES:_KEEP_SOFTWARE_PATCHED_AND_UP_TO_DATE: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

