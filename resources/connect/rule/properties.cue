package rule

import "strings"

#Properties: {
	// A list of actions to be run when the rule is triggered.
	Actions: #Actions
	// The conditions of the rule.
	Function: string
	// The Amazon Resource Name (ARN) of the instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the rule.
	Name: string & =~"^[a-zA-Z0-9._-]{1,200}$"
	// The publish status of the rule.
 *Allowed values*: ``DRAFT`` | ``PUBLISHED``
	PublishStatus: "DRAFT" | "PUBLISHED"
	// The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.
	Tags?: [...#Tag]
	// The event source to trigger the rule.
	TriggerEventSource: #RuleTriggerEventSource
}

#Actions: {
	// Information about the contact category action. The syntax can be empty, for example, ``{}``.
	AssignContactCategoryActions?: #AssignContactCategoryActions
	AssignSlaActions?: #AssignSlaActions
	CreateCaseActions?: #CreateCaseActions
	EndAssociatedTasksActions?: #EndAssociatedTasksActions
	// Information about the EV action.
	EventBridgeActions?: #EventBridgeActions
	// Information about the send notification action.
	SendNotificationActions?: #SendNotificationActions
	SubmitAutoEvaluationActions?: #SubmitAutoEvaluationActions
	// Information about the task action. This field is required if ``TriggerEventSource`` is one of the following values: ``OnZendeskTicketCreate`` | ``OnZendeskTicketStatusUpdate`` | ``OnSalesforceCaseCreate``
	TaskActions?: #TaskActions
	UpdateCaseActions?: #UpdateCaseActions
}

#AssignSlaAction: {
	CaseSlaConfiguration: {
		FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
		Name: string & strings.MinRunes(1) & strings.MaxRunes(500)
		TargetFieldValues?: [...#SlaTargetFieldValue]
		TargetSlaMinutes: number & >=1 & <=1.0512e+06
		Type: "CaseField"
	}
	SlaAssignmentType: "CASES"
}

#CreateCaseAction: {
	Fields: #Fields
	TemplateId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#EventBridgeAction: {
	// The name.
	Name: string & =~"^[a-zA-Z0-9._-]{1,100}$"
}

#Field: {
	Id: string & strings.MinRunes(1) & strings.MaxRunes(500)
	Value: #FieldValue
}

#FieldValue: {
	BooleanValue?: bool
	DoubleValue?: number
	EmptyValue?: {...}
	StringValue?: string
}

#NotificationRecipientType: {
	// The Amazon Resource Name (ARN) of the user account.
	UserArns?: [...#UserArn]
	// The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }. CON users with the specified tags will be notified.
	UserTags?: string
}

#Reference: {
	// The type of the reference. ``DATE`` must be of type Epoch timestamp. 
 *Allowed values*: ``URL`` | ``ATTACHMENT`` | ``NUMBER`` | ``STRING`` | ``DATE`` | ``EMAIL``
	Type: "URL" | "ATTACHMENT" | "NUMBER" | "STRING" | "DATE" | "EMAIL"
	// A valid value for the reference. For example, for a URL reference, a formatted URL that is displayed to an agent in the Contact Control Panel (CCP).
	Value: string & =~"^(/|https:)"
}

#RuleTriggerEventSource: {
	// The name of the event source.
	EventSourceName: "OnEmailAnalysisAvailable" | "OnContactEvaluationSubmit" | "OnPostCallAnalysisAvailable" | "OnRealTimeCallAnalysisAvailable" | "OnRealTimeChatAnalysisAvailable" | "OnPostChatAnalysisAvailable" | "OnZendeskTicketCreate" | "OnZendeskTicketStatusUpdate" | "OnSalesforceCaseCreate" | "OnMetricDataUpdate" | "OnCaseCreate" | "OnCaseUpdate" | "OnSlaBreach" | "OnSchedulePublish" | "OnScheduleUpdate" | "OnScheduleTimeOffRequestActivity"
	// The Amazon Resource Name (ARN) of the integration association. ``IntegrationAssociationArn`` is required if ``TriggerEventSource`` is one of the following values: ``OnZendeskTicketCreate`` | ``OnZendeskTicketStatusUpdate`` | ``OnSalesforceCaseCreate``
	IntegrationAssociationArn?: string & =~"^$|arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/integration-association/[-a-zA-Z0-9]*$"
}

#SendNotificationAction: {
	// Notification content. Supports variable injection. For more information, see [JSONPath reference](https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html) in the *Administrators Guide*.
	Content: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Content type format.
 *Allowed value*: ``PLAIN_TEXT``
	ContentType: "PLAIN_TEXT"
	// Notification delivery method.
 *Allowed value*: ``EMAIL``
	DeliveryMethod: "EMAIL"
	Exclusion?: #NotificationRecipientType
	// Notification recipient.
	Recipient: #NotificationRecipientType
	// The subject of the email if the delivery method is ``EMAIL``. Supports variable injection. For more information, see [JSONPath reference](https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html) in the *Administrators Guide*.
	Subject?: string & strings.MinRunes(1) & strings.MaxRunes(200)
}

#SlaTargetFieldValue: {
	StringValue?: string
}

#SubmitAutoEvaluationAction: {
	EvaluationFormArn: string & =~"^$|arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/evaluation-form/[-a-zA-Z0-9]*$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & =~"^[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MaxRunes(256)
}

#TaskAction: {
	// The Amazon Resource Name (ARN) of the flow.
	ContactFlowArn: string & =~"^$|arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/contact-flow/[-a-zA-Z0-9]*$"
	// The description. Supports variable injection. For more information, see [JSONPath reference](https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html) in the *Administrators Guide*.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	// The name. Supports variable injection. For more information, see [JSONPath reference](https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html) in the *Administrators Guide*.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// Information about the reference when the ``referenceType`` is ``URL``. Otherwise, null. ``URL`` is the only accepted type. (Supports variable injection in the ``Value`` field.)
	References?: string
}

#UpdateCaseAction: {
	Fields: #Fields
}
