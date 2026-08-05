package anycastiplist

import "github.com/brianterry/cfn-cue-modules/cfn"

// An Anycast static IP list. For more information, see [Request Anycast static IPs to use for allowlisting](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/request-static-ips.html) in the *Amazon CloudFront Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::AnycastIpList"
	Properties: #Properties
}
