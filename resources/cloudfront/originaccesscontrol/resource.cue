package originaccesscontrol

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new origin access control in CloudFront. After you create an origin access control, you can add it to an origin in a CloudFront distribution so that CloudFront sends authenticated (signed) requests to the origin.
// This makes it possible to block public access to the origin, allowing viewers (users) to access the origin's content only through CloudFront.
// For more information about using a CloudFront origin access control, see [Restricting access to an origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html) in the *Amazon CloudFront Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::OriginAccessControl"
	Properties: #Properties
}
