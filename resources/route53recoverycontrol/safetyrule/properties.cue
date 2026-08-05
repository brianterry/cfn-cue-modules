package safetyrule

import "strings"

#Properties: {
	AssertionRule?: #AssertionRule
	// The Amazon Resource Name (ARN) of the control panel.
	ControlPanelArn?: string
	GatingRule?: #GatingRule
	Name?: #SafetyRuleName
	RuleConfig?: #RuleConfig
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#AssertionRule: {
	// The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three AWS Regions.
	AssertedControls: [...string]
	// An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.
	WaitPeriodMs: int
}

#GatingRule: {
	// The gating controls for the gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.
	GatingControls: [...string]
	// Routing controls that can only be set or unset if the specified RuleConfig evaluates to true for the specified GatingControls. For example, say you have three gating controls, one for each of three AWS Regions. Now you specify AtLeast 2 as your RuleConfig. With these settings, you can only change (set or unset) the routing controls that you have specified as TargetControls if that rule evaluates to true.
	// In other words, your ability to change the routing controls that you have specified as TargetControls is gated by the rule that you set for the routing controls in GatingControls.
	TargetControls: [...string]
	// An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.
	WaitPeriodMs: int
}

#RuleConfig: {
	// Logical negation of the rule. If the rule would usually evaluate true, it's evaluated as false, and vice versa.
	Inverted: bool
	// The value of N, when you specify an ATLEAST rule type. That is, Threshold is the number of controls that must be set when you specify an ATLEAST type.
	Threshold: int
	Type: #RuleType
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}
