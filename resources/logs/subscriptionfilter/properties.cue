package subscriptionfilter

import "strings"

#Properties: {
	// This parameter is valid only for log groups that have an active log transformer. For more information about log transformers, see [PutTransformer](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html).
 If this value is ``true``, the subscription filter is applied on the transformed version of the log events instead of the original ingested log events.
	ApplyOnTransformedLogs?: bool
	// The Amazon Resource Name (ARN) of the destination.
	DestinationArn: string
	// The method used to distribute log data to the destination, which can be either random or grouped by log stream.
	Distribution?: "Random" | "ByLogStream"
	// The list of system fields that are included in the log events sent to the subscription destination. Returns the ``emitSystemFields`` value if it was specified when the subscription filter was created.
	EmitSystemFields?: [...string]
	// The filter expression that specifies which log events are processed by this subscription filter based on system fields. Returns the ``fieldSelectionCriteria`` value if it was specified when the subscription filter was created.
	FieldSelectionCriteria?: string & strings.MinRunes(0) & strings.MaxRunes(2000)
	// The name of the subscription filter.
	FilterName?: string
	// The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
	FilterPattern: string
	// The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
	LogGroupName: string
	// The ARN of an IAM role that grants CWL permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.
	RoleArn?: string
}
