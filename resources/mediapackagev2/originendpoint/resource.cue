package originendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// <p>Represents an origin endpoint that is associated with a channel, offering a dynamically repackaged version of its content through various streaming media protocols. The content can be efficiently disseminated to end-users via a Content Delivery Network (CDN), like Amazon CloudFront.</p>
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackageV2::OriginEndpoint"
	Properties: #Properties
}
