package certificateprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Use the AWS::IoT::CertificateProvider resource to declare an AWS IoT Certificate Provider.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::CertificateProvider"
	Properties: #Properties
}
