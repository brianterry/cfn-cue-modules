package function

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a CF function.
// To create a function, you provide the function code and some configuration information about the function. The response contains an Amazon Resource Name (ARN) that uniquely identifies the function, and the function’s stage.
// By default, when you create a function, it’s in the ``DEVELOPMENT`` stage. In this stage, you can [test the function](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/test-function.html) in the CF console (or with ``TestFunction`` in the CF API).
// When you’re ready to use your function with a CF distribution, publish the function to the ``LIVE`` stage. You can do this in the CF console, with ``PublishFunction`` in the CF API, or by updating the ``AWS::CloudFront::Function`` resource with the ``AutoPublish`` property set to ``true``. When the function is published to the ``LIVE`` stage, you can attach it to a distribution’s cache behavior, using the function’s ARN.
// To automatically publish the function to the ``LIVE`` stage when it’s created, set the ``AutoPublish`` property to ``true``.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::Function"
	Properties: #Properties
}
