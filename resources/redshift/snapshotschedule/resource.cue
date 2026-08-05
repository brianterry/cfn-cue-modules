package snapshotschedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a snapshot schedule that lets you set up automatic snapshots of your Amazon Redshift cluster at regular intervals.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::SnapshotSchedule"
	Properties: #Properties
}
