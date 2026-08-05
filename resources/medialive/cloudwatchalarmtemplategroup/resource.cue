package cloudwatchalarmtemplategroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::CloudWatchAlarmTemplateGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::CloudWatchAlarmTemplateGroup"
	Properties: #Properties
}
