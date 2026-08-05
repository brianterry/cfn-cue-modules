package warmpool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::AutoScaling::WarmPool.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AutoScaling::WarmPool"
	Properties: #Properties
}
