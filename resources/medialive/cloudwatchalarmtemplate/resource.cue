package cloudwatchalarmtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::CloudWatchAlarmTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::CloudWatchAlarmTemplate"
	Properties: #Properties
}
