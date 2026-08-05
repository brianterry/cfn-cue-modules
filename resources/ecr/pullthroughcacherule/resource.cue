package pullthroughcacherule

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECR::PullThroughCacheRule`` resource creates or updates a pull through cache rule. A pull through cache rule provides a way to cache images from an upstream registry in your Amazon ECR private registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::PullThroughCacheRule"
	Properties: #Properties
}
