// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: loggroup.#Resource & #ctrl_7_SECURE_YOUR_NETWORK_REVIEW_REMOTE_ACCESS_SOLUTIONS & #ctrl_6_SECURE_DEVICES_ENCRYPTION

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#ctrl_7_SECURE_YOUR_NETWORK_REVIEW_REMOTE_ACCESS_SOLUTIONS: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_6_SECURE_DEVICES_ENCRYPTION: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

