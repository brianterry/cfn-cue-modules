package continuousdeploymentpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a continuous deployment policy that routes a subset of production traffic from a primary distribution to a staging distribution.
// After you create and update a staging distribution, you can use a continuous deployment policy to incrementally move traffic to the staging distribution. This enables you to test changes to a distribution's configuration before moving all of your production traffic to the new configuration.
// For more information, see [Using CloudFront continuous deployment to safely test CDN configuration changes](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/continuous-deployment.html) in the *Amazon CloudFront Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::ContinuousDeploymentPolicy"
	Properties: #Properties
}
