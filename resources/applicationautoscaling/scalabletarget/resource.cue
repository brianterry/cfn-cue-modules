package scalabletarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApplicationAutoScaling::ScalableTarget`` resource specifies a resource that Application Auto Scaling can scale, such as an AWS::DynamoDB::Table or AWS::ECS::Service resource.
 For more information, see [Getting started](https://docs.aws.amazon.com/autoscaling/application/userguide/getting-started.html) in the *Application Auto Scaling User Guide*.
  If the resource that you want Application Auto Scaling to scale is not yet created in your account, add a dependency on the resource when registering it as a scalable target using the [DependsOn](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html) attribute.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationAutoScaling::ScalableTarget"
	Properties: #Properties
}
