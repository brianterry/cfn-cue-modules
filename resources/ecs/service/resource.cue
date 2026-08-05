package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECS::Service`` resource creates an Amazon Elastic Container Service (Amazon ECS) service that runs and maintains the requested number of tasks and associated load balancers.
// The stack update fails if you change any properties that require replacement and at least one ECS Service Connect ``ServiceConnectConfiguration`` property is configured. This is because AWS CloudFormation creates the replacement service first, but each ``ServiceConnectService`` must have a name that is unique in the namespace.
// Starting April 15, 2023, AWS; will not onboard new customers to Amazon Elastic Inference (EI), and will help current customers migrate their workloads to options that offer better price and performance. After April 15, 2023, new customers will not be able to launch instances with Amazon EI accelerators in Amazon SageMaker, ECS, or EC2. However, customers who have used Amazon EI at least once during the past 30-day period are considered current customers and will be able to continue using the service.
// On June 12, 2025, Amazon ECS launched support for updating capacity provider configuration for ECS services. With this launch, ECS also aligned the CFN update behavior for ``CapacityProviderStrategy`` parameter with the standard practice. For more information, see [adds support for updating capacity provider configuration for ECS services](https://docs.aws.amazon.com/about-aws/whats-new/2025/05/amazon-ecs-capacity-provider-configuration-ecs/). Previously ECS ignored the ``CapacityProviderStrategy`` property if it was set to an empty list for example, ``[]`` in CFN, because updating capacity provider configuration was not supported. Now, with support for capacity provider updates, customers can remove capacity providers from a service by passing an empty list. When you specify an empty list (``[]``) for the ``CapacityProviderStrategy`` property in your CFN template, ECS will remove any capacity providers associated with the service, as follows:
// +  For services created with a capacity provider strategy after the launch:
// +  If there's a cluster default strategy set, the service will revert to using that default strategy.
// +  If no cluster default strategy exists, you will receive the following error:
// No launch type to fall back to for empty capacity provider strategy. Your service was not created with a launch type.
// +  For services created with a capacity provider strategy prior to the launch:
// +  If ``CapacityProviderStrategy`` had ``FARGATE_SPOT`` or ``FARGATE`` capacity providers, the launch type will be updated to ``FARGATE`` and the capacity provider will be removed.
// +  If the strategy included Auto Scaling group capacity providers, the service will revert to EC2 launch type, and the Auto Scaling group capacity providers will not be used.
// Recommended Actions
// If you are currently using ``CapacityProviderStrategy: []`` in your CFN templates, you should take one of the following actions:
// +  If you do not intend to update the Capacity Provider Strategy:
// +  Remove the ``CapacityProviderStrategy`` property entirely from your CFN template
// +  Alternatively, use ``!Ref ::NoValue`` for the ``CapacityProviderStrategy`` property in your template
// +  If you intend to maintain or update the Capacity Provider Strategy, specify the actual Capacity Provider Strategy for the service in your CFN template.
// If your CFN template had an empty list ([]) for ``CapacityProviderStrategy`` prior to the aforementioned launch on June 12, and you are using the same template with ``CapacityProviderStrategy: []``, you might encounter the following error:
// Invalid request provided: When switching from launch type to capacity provider strategy on an existing service, or making a change to a capacity provider strategy on a service that is already using one, you must force a new deployment. (Service: Ecs, Status Code: 400, Request ID: xxx) (SDK Attempt Count: 1)" (RequestToken: xxx HandlerErrorCode: InvalidRequest)
// Note that CFN automatically initiates a new deployment when it detects a parameter change, but customers cannot choose to force a deployment through CFN. This is an invalid input scenario that requires one of the remediation actions listed above.
// If you are experiencing active production issues related to this change, contact AWS Support or your Technical Account Manager.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::Service"
	Properties: #Properties
}
