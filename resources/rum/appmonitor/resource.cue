package appmonitor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RUM::AppMonitor
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RUM::AppMonitor"
	Properties: #Properties
}
