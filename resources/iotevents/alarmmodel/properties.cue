package alarmmodel

import "strings"

#Properties: {
	// Contains the configuration information of alarm state changes.
	AlarmCapabilities?: #AlarmCapabilities
	// Contains information about one or more alarm actions.
	AlarmEventActions?: #AlarmEventActions
	// The description of the alarm model.
	AlarmModelDescription?: string & strings.MaxRunes(1024)
	// The name of the alarm model.
	AlarmModelName?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Defines when your alarm is invoked.
	AlarmRule: #AlarmRule
	// An input attribute used as a key to create an alarm. ITE routes [inputs](https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html) associated with this key to the alarm.
	Key?: string & =~"^((`[\\w\\- ]+`)|([\\w\\-]+))(\\.((`[\\w\\- ]+`)|([\\w\\-]+)))*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *General Reference*.
	RoleArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A non-negative integer that reflects the severity level of the alarm.
	Severity?: int & >=0 & <=2147483647
	// A list of key-value pairs that contain metadata for the alarm model. The tags help you manage the alarm model. For more information, see [Tagging your resources](https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html) in the *Developer Guide*.
 You can create up to 50 tags for one alarm model.
	Tags?: [...#Tag]
}

#AcknowledgeFlow: {
	// The value must be ``TRUE`` or ``FALSE``. If ``TRUE``, you receive a notification when the alarm state changes. You must choose to acknowledge the notification before the alarm state can return to ``NORMAL``. If ``FALSE``, you won't receive notifications. The alarm automatically changes to the ``NORMAL`` state when the input property value returns to the specified range.
	Enabled?: bool
}

#AlarmAction: {
	// Defines an action to write to the Amazon DynamoDB table that you created. The standard action payload contains all the information about the detector model instance and the event that triggered the action. You can customize the [payload](https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html). One column of the DynamoDB table receives all attribute-value pairs in the payload that you specify.
 You must use expressions for all parameters in ``DynamoDBAction``. The expressions accept literals, operators, functions, references, and substitution templates.
  **Examples**
 +  For literal values, the expressions must contain single quotes. For example, the value for the ``hashKeyType`` parameter can be ``'STRING'``.
  +  For references, you must specify either variables or input values. For example, the value for the ``hashKeyField`` parameter can be ``$input.GreenhouseInput.name``.
  +  For a substitution template, you must use ``${}``, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.
 In the following example, the value for the ``hashKeyValue`` parameter uses a substitution template. 
  ``'${$input.GreenhouseInput.temperature * 6 / 5 + 32} in Fahrenheit'`` 
  +  For a string concatenation, you must use ``+``. A string concatenation can also contain a combination of literals, operators, functions, references, and substitution templates.
 In the following example, the value for the ``tableName`` parameter uses a string concatenation. 
  ``'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`` 
  
 For more information, see [Expressions](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html) in the *Developer Guide*.
 If the defined payload type is a string, ``DynamoDBAction`` writes non-JSON data to the DynamoDB table as binary data. The DynamoDB console displays the data as Base64-encoded text. The value for the ``payloadField`` parameter is ``<payload-field>_raw``.
	DynamoDB?: #DynamoDB
	// Defines an action to write to the Amazon DynamoDB table that you created. The default action payload contains all the information about the detector model instance and the event that triggered the action. You can customize the [payload](https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html). A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify.
 You must use expressions for all parameters in ``DynamoDBv2Action``. The expressions accept literals, operators, functions, references, and substitution templates.
  **Examples**
 +  For literal values, the expressions must contain single quotes. For example, the value for the ``tableName`` parameter can be ``'GreenhouseTemperatureTable'``.
  +  For references, you must specify either variables or input values. For example, the value for the ``tableName`` parameter can be ``$variable.ddbtableName``.
  +  For a substitution template, you must use ``${}``, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.
 In the following example, the value for the ``contentExpression`` parameter in ``Payload`` uses a substitution template. 
  ``'{\"sensorID\": \"${$input.GreenhouseInput.sensor_id}\", \"temperature\": \"${$input.GreenhouseInput.temperature * 9 / 5 + 32}\"}'`` 
  +  For a string concatenation, you must use ``+``. A string concatenation can also contain a combination of literals, operators, functions, references, and substitution templates.
 In the following example, the value for the ``tableName`` parameter uses a string concatenation. 
  ``'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`` 
  
 For more information, see [Expressions](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html) in the *Developer Guide*.
 The value for the ``type`` parameter in ``Payload`` must be ``JSON``.
	DynamoDBv2?: #DynamoDBv2
	// Sends information about the detector model instance and the event that triggered the action to an Amazon Kinesis Data Firehose delivery stream.
	Firehose?: #Firehose
	// Sends an ITE input, passing in information about the detector model instance and the event that triggered the action.
	IotEvents?: #IotEvents
	// Sends information about the detector model instance and the event that triggered the action to a specified asset property in ITSW.
 You must use expressions for all parameters in ``IotSiteWiseAction``. The expressions accept literals, operators, functions, references, and substitutions templates.
  **Examples**
 +  For literal values, the expressions must contain single quotes. For example, the value for the ``propertyAlias`` parameter can be ``'/company/windfarm/3/turbine/7/temperature'``.
  +  For references, you must specify either variables or input values. For example, the value for the ``assetId`` parameter can be ``$input.TurbineInput.assetId1``.
  +  For a substitution template, you must use ``${}``, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.
 In the following example, the value for the ``propertyAlias`` parameter uses a substitution template. 
  ``'company/windfarm/${$input.TemperatureInput.sensorData.windfarmID}/turbine/ ${$input.TemperatureInput.sensorData.turbineID}/temperature'`` 
  
 You must specify either ``propertyAlias`` or both ``assetId`` and ``propertyId`` to identify the target asset property in ITSW.
 For more information, see [Expressions](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html) in the *Developer Guide*.
	IotSiteWise?: #IotSiteWise
	// Information required to publish the MQTT message through the IoT message broker.
	IotTopicPublish?: #IotTopicPublish
	// Calls a Lambda function, passing in information about the detector model instance and the event that triggered the action.
	Lambda?: #Lambda
	// Information required to publish the Amazon SNS message.
	Sns?: #Sns
	// Sends information about the detector model instance and the event that triggered the action to an Amazon SQS queue.
	Sqs?: #Sqs
}

#AlarmCapabilities: {
	// Specifies whether to get notified for alarm state changes.
	AcknowledgeFlow?: #AcknowledgeFlow
	// Specifies the default alarm state. The configuration applies to all alarms that were created based on this alarm model.
	InitializationConfiguration?: #InitializationConfiguration
}

#AlarmEventActions: {
	// Specifies one or more supported actions to receive notifications when the alarm state changes.
	AlarmActions?: #AlarmActions
}

#AlarmRule: {
	// A rule that compares an input property value to a threshold value with a comparison operator.
	SimpleRule?: #SimpleRule
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

#Firehose: {
	// The name of the Kinesis Data Firehose delivery stream where the data is written.
	DeliveryStreamName: string
	// You can configure the action payload when you send a message to an Amazon Data Firehose delivery stream.
	Payload?: #Payload
	// A character separator that is used to separate records written to the Kinesis Data Firehose delivery stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
	Separator?: string & =~"([\\n\\t])|(\\r\\n)|(,)"
}

#InitializationConfiguration: {
	// The value must be ``TRUE`` or ``FALSE``. If ``FALSE``, all alarm instances created based on the alarm model are activated. The default value is ``TRUE``.
	DisabledOnInitialization: bool
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
	PropertyValue?: #AssetPropertyValue
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

#Payload: {
	// The content of the payload. You can use a string expression that includes quoted strings (``'<string>'``), variables (``$variable.<variable-name>``), input values (``$input.<input-name>.<path-to-datum>``), string concatenations, and quoted strings that contain ``${}`` as the content. The recommended maximum size of a content expression is 1 KB.
	ContentExpression: string & strings.MinRunes(1)
	// The value of the payload type can be either ``STRING`` or ``JSON``.
	Type: string
}

#SimpleRule: {
	// The comparison operator.
	ComparisonOperator: "GREATER" | "GREATER_OR_EQUAL" | "LESS" | "LESS_OR_EQUAL" | "EQUAL" | "NOT_EQUAL"
	// The value on the left side of the comparison operator. You can specify an ITE input attribute as an input property.
	InputProperty: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// The value on the right side of the comparison operator. You can enter a number or specify an ITE input attribute.
	Threshold: string & strings.MinRunes(1) & strings.MaxRunes(512)
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

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
