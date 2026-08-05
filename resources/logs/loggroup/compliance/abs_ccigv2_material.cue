// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: loggroup.#Resource & #section4a_govern_the_cloud_2_standard_workloads & #section4b_design_and_secure_the_cloud_6_standard_workloads & #section4b_design_and_secure_the_cloud_14_material_workloads

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#section4a_govern_the_cloud_2_standard_workloads: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#section4b_design_and_secure_the_cloud_14_material_workloads: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

