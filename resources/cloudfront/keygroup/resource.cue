package keygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// A key group.
 A key group contains a list of public keys that you can use with [CloudFront signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::KeyGroup"
	Properties: #Properties
}
