package clientcertificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::ClientCertificate`` resource creates a client certificate that API Gateway uses to configure client-side SSL authentication for sending requests to the integration endpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::ClientCertificate"
	Properties: #Properties
}
