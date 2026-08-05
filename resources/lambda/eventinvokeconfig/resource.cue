package eventinvokeconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Lambda::EventInvokeConfig resource configures options for asynchronous invocation on a version or an alias.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::EventInvokeConfig"
	Properties: #Properties
}
