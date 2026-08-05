// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/bucket"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: bucket.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: bucket.#Resource & #REL_10 & #REL_9 & #REL_9_2

// Guard rule: S3_BUCKET_DEFAULT_LOCK_ENABLED
#REL_10: {
	Properties: ObjectLockEnabled: _ & !=_|_
	Properties: ObjectLockEnabled: true
	...
}

// Guard rule: S3_BUCKET_REPLICATION_ENABLED
#REL_9: {
	Properties: ReplicationConfiguration: _ & !=_|_
	...
}

// Guard rule: S3_BUCKET_VERSIONING_ENABLED
#REL_9_2: {
	Properties: VersioningConfiguration: _ & !=_|_
	Properties: VersioningConfiguration: Status: "Enabled"
	...
}

