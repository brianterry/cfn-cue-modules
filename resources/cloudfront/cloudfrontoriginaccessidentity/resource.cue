package cloudfrontoriginaccessidentity

import "github.com/brianterry/cfn-cue-modules/cfn"

// The request to create a new origin access identity (OAI). An origin access identity is a special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or just some of your Amazon S3 content. For more information, see [Restricting Access to Amazon S3 Content by Using an Origin Access Identity](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) in the *Amazon CloudFront Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::CloudFrontOriginAccessIdentity"
	Properties: #Properties
}
