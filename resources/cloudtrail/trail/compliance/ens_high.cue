// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ens_high & { ... }
#ens_high: trail.#Resource & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a__b__c & #Anexo_II_4_1_2_a__b__c_2

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#Anexo_II_4_2_6_c: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#Anexo_II_4_1_2_a__b__c: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#Anexo_II_4_1_2_a__b__c_2: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

