package domainname

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::DomainName`` resource specifies a public custom domain name for your API in API Gateway.
// To create a custom domain name for private APIs, use [AWS::ApiGateway::DomainNameV2](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainnamev2.html).
// You can use a custom domain name to provide a URL that's more intuitive and easier to recall. For more information about using custom domain names, see [Set up Custom Domain Name for an API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::DomainName"
	Properties: #Properties
}
