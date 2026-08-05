// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: replicationinstance.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

