package publickey

import "github.com/brianterry/cfn-cue-modules/cfn"

// A public key that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html), or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
// CloudFront supports signed URLs and signed cookies with RSA 2048 or ECDSA 256 key signatures. Field-level encryption is only compatible with RSA 2048 key signatures.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::PublicKey"
	Properties: #Properties
}
