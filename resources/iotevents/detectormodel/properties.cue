package detectormodel

import "strings"

#Properties: {
	// Information that defines how a detector operates.
	DetectorModelDefinition: #DetectorModelDefinition
	// A brief description of the detector model.
	DetectorModelDescription?: string & strings.MaxRunes(1024)
	// The name of the detector model.
	DetectorModelName?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Information about the order in which events are evaluated and how actions are executed.
	EvaluationMethod?: "BATCH" | "SERIAL"
	// The value used to identify a detector instance. When a device or system sends input, a new detector instance with a unique key value is created. ITE can continue to route input to its corresponding detector instance based on this identifying information. 
 This parameter uses a JSON-path expression to select the attribute-value pair in the message payload that is used for identification. To route the message to the correct detector instance, the device must send a message payload that contains the same attribute-value.
	Key?: string & =~"^((`[\\w\\- ]+`)|([\\w\\-]+))(\\.((`[\\w\\- ]+`)|([\\w\\-]+)))*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN of the role that grants permission to ITE to perform its operations.
	RoleArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// An array of key-value pairs to apply to this resource.
 For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
	Tags?: [...#Tag]
}

#Action: {
	// Information needed to clear the timer.
	ClearTimer?: #ClearTimer
	// Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can customize the [payload](https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html). One column of the DynamoDB table receives all attribute-value pairs in the payload that you specify. For more information, see [Actions](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html) in *Developer Guide*.
	DynamoDB?: #DynamoDB
	// Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can customize the [payload](https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html). A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify. For more information, see [Actions](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html) in *Developer Guide*.
	DynamoDBv2?: #DynamoDBv2
	// Sends information about the detector model instance and the event that triggered the action to an Amazon Kinesis Data Firehose delivery stream.
	Firehose?: #Firehose
	// Sends ITE input, which passes information about the detector model instance and the event that triggered the action.
	IotEvents?: #IotEvents
	// Sends information about the detector model instance and the event that triggered the action to an asset property in ITSW .
	IotSiteWise?: #IotSiteWise
	// Publishes an MQTT message with the given topic to the IoT message broker.
	IotTopicPublish?: #IotTopicPublish
	// Calls a Lambda function, passing in information about the detector model instance and the event that triggered the action.
	Lambda?: #Lambda
	// Information needed to reset the timer.
	ResetTimer?: #ResetTimer
	// Information needed to set the timer.
	SetTimer?: #SetTimer
	// Sets a variable to a specified value.
	SetVariable?: #SetVariable
	// Sends an Amazon SNS message.
	Sns?: #Sns
	// Sends an Amazon SNS message.
	Sqs?: #Sqs
}

#AssetPropertyTimestamp: {
	// The nanosecond offset converted from ``timeInSeconds``. The valid range is between 0-999999999.
	OffsetInNanos?: string
	// The timestamp, in seconds, in the Unix epoch format. The valid range is between 1-31556889864403199.
	TimeInSeconds: string
}

#AssetPropertyValue: {
	// The quality of the asset property value. The value must be ``'GOOD'``, ``'BAD'``, or ``'UNCERTAIN'``.
	Quality?: string
	// The timestamp associated with the asset property value. The default is the current event time.
	Timestamp?: #AssetPropertyTimestamp
	// The value to send to an asset property.
	Value: #AssetPropertyVariant
}

#AssetPropertyVariant: {
	// The asset property value is a Boolean value that must be ``'TRUE'`` or ``'FALSE'``. You must use an expression, and the evaluated result should be a Boolean value.
	BooleanValue?: string
	// The asset property value is a double. You must use an expression, and the evaluated result should be a double.
	DoubleValue?: string
	// The asset property value is an integer. You must use an expression, and the evaluated result should be an integer.
	IntegerValue?: string
	// The asset property value is a string. You must use an expression, and the evaluated result should be a string.
	StringValue?: string
}

#ClearTimer: {
	// The name of the timer to clear.
	TimerName: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#DetectorModelDefinition: {
	// The state that is entered at the creation of each detector (instance).
	InitialStateName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Information about the states of the detector.
	States: [...#State]
}

#DynamoDB: {
	// The name of the hash key (also called the partition key). The ``hashKeyField`` value must match the partition key of the target DynamoDB table.
	HashKeyField: string
	// The data type for the hash key (also called the partition key). You can specify the following values:
  +  ``'STRING'`` - The hash key is a string.
  +  ``'NUMBER'`` - The hash key is a number.
  
 If you don't specify ``hashKeyType``, the default value is ``'STRING'``.
	HashKeyType?: string
	// The value of the hash key (also called the partition key).
	HashKeyValue: string
	// The type of operation to perform. You can specify the following values: 
  +  ``'INSERT'`` - Insert data as a new item into the DynamoDB table. This item uses the specified hash key as a partition key. If you specified a range key, the item uses the range key as a sort key.
  +  ``'UPDATE'`` - Update an existing item of the DynamoDB table with new data. This item's partition key must match the specified hash key. If you specified a range key, the range key must match the item's sort key.
  +  ``'DELETE'`` - Delete an existing item of the DynamoDB table. This item's partition key must match the specified hash key. If you specified a range key, the range key must match the item's sort key.
  
 If you don't specify this parameter, ITE triggers the ``'INSERT'`` operation.
	Operation?: string
	// Information needed to configure the payload.
 By default, ITE generates a standard payload in JSON for any action. This action payload contains all attribute-value pairs that have the information about the detector model instance and the event triggered the action. To configure the action payload, you can use ``contentExpression``.
	Payload?: #Payload
	// The name of the DynamoDB column that receives the action payload.
 If you don't specify this parameter, the name of the DynamoDB column is ``payload``.
	PayloadField?: string
	// The name of the range key (also called the sort key). The ``rangeKeyField`` value must match the sort key of the target DynamoDB table.
	RangeKeyField?: string
	// The data type for the range key (also called the sort key), You can specify the following values:
  +  ``'STRING'`` - The range key is a string.
  +  ``'NUMBER'`` - The range key is number.
  
 If you don't specify ``rangeKeyField``, the default value is ``'STRING'``.
	RangeKeyType?: string
	// The value of the range key (also called the sort key).
	RangeKeyValue?: string
	// The name of the DynamoDB table. The ``tableName`` value must match the table name of the target DynamoDB table.
	TableName: string
}

#DynamoDBv2: {
	// Information needed to configure the payload.
 By default, ITE generates a standard payload in JSON for any action. This action payload contains all attribute-value pairs that have the information about the detector model instance and the event triggered the action. To configure the action payload, you can use ``contentExpression``.
	Payload?: #Payload
	// The name of the DynamoDB table.
	TableName: string
}

#Event: {
	// The actions to be performed.
	Actions?: [...#Action]
	// Optional. The Boolean expression that, when TRUE, causes the ``actions`` to be performed. If not present, the actions are performed (=TRUE). If the expression result is not a Boolean value, the actions are not performed (=FALSE).
	Condition?: string & strings.MaxRunes(512)
	// The name of the event.
	EventName: string & strings.MaxRunes(128)
}

#Firehose: {
	// The name of the Kinesis Data Firehose delivery stream where the data is written.
	DeliveryStreamName: string
	// You can configure the action payload when you send a message to an Amazon Data Firehose delivery stream.
	Payload?: #Payload
	// A character separator that is used to separate records written to the Kinesis Data Firehose delivery stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
	Separator?: string & =~"([\\n\\t])|(\\r\\n)|(,)"
}

#IotEvents: {
	// The name of the ITE input where the data is sent.
	InputName: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// You can configure the action payload when you send a message to an ITE input.
	Payload?: #Payload
}

#IotSiteWise: {
	// The ID of the asset that has the specified property.
	AssetId?: string
	// A unique identifier for this entry. You can use the entry ID to track which data entry causes an error in case of failure. The default is a new unique identifier.
	EntryId?: string
	// The alias of the asset property.
	PropertyAlias?: string
	// The ID of the asset property.
	PropertyId?: string
	// The value to send to the asset property. This value contains timestamp, quality, and value (TQV) information.
	PropertyValue: #AssetPropertyValue
}

#IotTopicPublish: {
	// The MQTT topic of the message. You can use a string expression that includes variables (``$variable.<variable-name>``) and input values (``$input.<input-name>.<path-to-datum>``) as the topic string.
	MqttTopic: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// You can configure the action payload when you publish a message to an IoTCore topic.
	Payload?: #Payload
}

#Lambda: {
	// The ARN of the Lambda function that is executed.
	FunctionArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// You can configure the action payload when you send a message to a Lambda function.
	Payload?: #Payload
}

#OnEnter: {
	// Specifies the actions that are performed when the state is entered and the ``condition`` is ``TRUE``.
	Events?: [...#Event]
}

#OnExit: {
	// Specifies the ``actions`` that are performed when the state is exited and the ``condition`` is ``TRUE``.
	Events?: [...#Event]
}

#OnInput: {
	// Specifies the actions performed when the ``condition`` evaluates to TRUE.
	Events?: [...#Event]
	// Specifies the actions performed, and the next state entered, when a ``condition`` evaluates to TRUE.
	TransitionEvents?: [...#TransitionEvent]
}

#Payload: {
	// The content of the payload. You can use a string expression that includes quoted strings (``'<string>'``), variables (``$variable.<variable-name>``), input values (``$input.<input-name>.<path-to-datum>``), string concatenations, and quoted strings that contain ``${}`` as the content. The recommended maximum size of a content expression is 1 KB.
	ContentExpression: string & strings.MinRunes(1)
	// The value of the payload type can be either ``STRING`` or ``JSON``.
	Type: string
}

#ResetTimer: {
	// The name of the timer to reset.
	TimerName: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#SetTimer: {
	// The duration of the timer, in seconds. You can use a string expression that includes numbers, variables (``$variable.<variable-name>``), and input values (``$input.<input-name>.<path-to-datum>``) as the duration. The range of the duration is 1-31622400 seconds. To ensure accuracy, the minimum duration is 60 seconds. The evaluated result of the duration is rounded down to the nearest whole number.
	DurationExpression?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The number of seconds until the timer expires. The minimum value is 60 seconds to ensure accuracy. The maximum value is 31622400 seconds.
	Seconds?: int & >=60 & <=31622400
	// The name of the timer.
	TimerName: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#SetVariable: {
	// The new value of the variable.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The name of the variable.
	VariableName: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Sns: {
	// You can configure the action payload when you send a message as an Amazon SNS push notification.
	Payload?: #Payload
	// The ARN of the Amazon SNS target where the message is sent.
	TargetArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Sqs: {
	// You can configure the action payload when you send a message to an Amazon SQS queue.
	Payload?: #Payload
	// The URL of the SQS queue where the data is written.
	QueueUrl: string
	// Set this to TRUE if you want the data to be base-64 encoded before it is written to the queue. Otherwise, set this to FALSE.
	UseBase64?: bool
}

#State: {
	// When entering this state, perform these ``actions`` if the ``condition`` is TRUE.
	OnEnter?: #OnEnter
	// When exiting this state, perform these ``actions`` if the specified ``condition`` is ``TRUE``.
	OnExit?: #OnExit
	// When an input is received and the ``condition`` is TRUE, perform the specified ``actions``.
	OnInput?: #OnInput
	// The name of the state.
	StateName: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}

#TransitionEvent: {
	// The actions to be performed.
	Actions?: [...#Action]
	// Required. A Boolean expression that when TRUE causes the actions to be performed and the ``nextState`` to be entered.
	Condition: string & strings.MaxRunes(512)
	// The name of the transition event.
	EventName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The next state to enter.
	NextState: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
