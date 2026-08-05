package eventbridgeruletemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::EventBridgeRuleTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::EventBridgeRuleTemplate"
	Properties: #Properties
}
