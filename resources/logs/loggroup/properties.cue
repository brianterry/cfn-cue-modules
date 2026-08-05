package loggroup

import "strings"

#Properties: {
	// Indicates whether bearer token authentication is enabled for this log group. When enabled, bearer token authentication is allowed on operations until it is explicitly disabled.
	BearerTokenAuthenticationEnabled?: bool
	// Creates a data protection policy and assigns it to the log group. A data protection policy can help safeguard sensitive data that's ingested by the log group by auditing and masking the sensitive log data. When a user who does not have permission to view masked data views a log event that includes masked data, the sensitive data is replaced by asterisks.
	DataProtectionPolicy?: {...}
	// Indicates whether deletion protection is enabled for this log group. When enabled, deletion protection blocks all deletion operations until it is explicitly disabled.
	DeletionProtectionEnabled?: bool
	// Creates or updates a *field index policy* for the specified log group. Only log groups in the Standard log class support field index policies. For more information about log classes, see [Log classes](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html).
 You can use field index policies to create *field indexes* on fields found in log events in the log group. Creating field indexes lowers the costs for CWL Insights queries that reference those field indexes, because these queries attempt to skip the processing of log events that are known to not match the indexed field. Good fields to index are fields that you often need to query for and fields that have high cardinality of values Common examples of indexes include request ID, session ID, userID, and instance IDs. For more information, see [Create field indexes to improve query performance and reduce costs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html).
 Currently, this array supports only one field index policy object.
	FieldIndexPolicies?: [...{...}]
	// The Amazon Resource Name (ARN) of the KMS key to use when encrypting log data.
 To associate an KMS key with the log group, specify the ARN of that KMS key here. If you do so, ingested data is encrypted using this key. This association is stored as long as the data encrypted with the KMS key is still within CWL. This enables CWL to decrypt this data whenever it is requested.
 If you attempt to associate a KMS key with the log group but the KMS key doesn't exist or is deactivated, you will receive an ``InvalidParameterException`` error.
 Log group data is always encrypted in CWL. If you omit this key, the encryption does not use KMS. For more information, see [Encrypt log data in using](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/encrypt-log-data-kms.html)
	KmsKeyId?: string & =~"^arn:[a-z0-9-]+:kms:[a-z0-9-]+:\\d{12}:(key|alias)/.+\\Z" & strings.MaxRunes(256)
	// Specifies the log group class for this log group. There are two classes:
  +  The ``Standard`` log class supports all CWL features.
  +  The ``Infrequent Access`` log class supports a subset of CWL features and incurs lower costs.
  
 For details about the features supported by each class, see [Log classes](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html)
	LogGroupClass?: "STANDARD" | "INFREQUENT_ACCESS" | "DELIVERY"
	// The name of the log group. If you don't specify a name, CFNlong generates a unique ID for the log group.
	LogGroupName?: string & =~"^[.\\-_/#A-Za-z0-9]{1,512}\\Z" & strings.MinRunes(1) & strings.MaxRunes(512)
	// Creates or updates a resource policy for the specified log group that allows other services to put log events to this account. A LogGroup can have 1 resource policy.
	ResourcePolicyDocument?: {...}
	// The number of days to retain the log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, and 3653.
 To set a log group so that its log events do not expire, do not specify this property.
	RetentionInDays?: int
	// An array of key-value pairs to apply to the log group.
 For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of this key-value pair.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
