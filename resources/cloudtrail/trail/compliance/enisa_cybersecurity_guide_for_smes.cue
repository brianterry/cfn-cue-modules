// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: trail.#Resource & #7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS & #1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

