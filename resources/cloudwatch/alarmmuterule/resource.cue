package alarmmuterule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudWatch::AlarmMuteRule that allows defining a rule and targeting alarms to mute their actions during the specified window.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::AlarmMuteRule"
	Properties: #Properties
}
