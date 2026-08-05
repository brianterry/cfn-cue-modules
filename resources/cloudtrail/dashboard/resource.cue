package dashboard

import "github.com/brianterry/cfn-cue-modules/cfn"

// The Amazon CloudTrail dashboard resource allows customers to manage managed dashboards and create custom dashboards. You can manually refresh custom and managed dashboards. For custom dashboards, you can also set up an automatic refresh schedule and modify dashboard widgets.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudTrail::Dashboard"
	Properties: #Properties
}
