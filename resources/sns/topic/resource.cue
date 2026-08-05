package topic

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SNS::Topic`` resource creates a topic to which notifications can be published.
  One account can create a maximum of 100,000 standard topics and 1,000 FIFO topics. For more information, see [endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sns.html) in the *General Reference*.
   The structure of ``AUTHPARAMS`` depends on the .signature of the API request. For more information, see [Examples of the complete Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/sigv4-signed-request-examples.html) in the *General Reference*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SNS::Topic"
	Properties: #Properties
}
