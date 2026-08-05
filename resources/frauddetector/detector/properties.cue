package detector

import "strings"

#Properties: {
	// The description of the detector.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID of the detector
	DetectorId: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The desired detector version status for the detector
	DetectorVersionStatus?: "DRAFT" | "ACTIVE"
	RuleExecutionMode?: "FIRST_MATCHED" | "ALL_MATCHED"
	// Tags associated with this detector.
	Tags?: [...#Tag]
}

#EntityType: {
	Arn?: string
	// The time when the entity type was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the entity type was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this entity type.
	Tags?: [...#Tag]
}

#EventType: {
	// The ARN of the event type.
	Arn?: string
	// The time when the event type was created.
	CreatedTime?: string
	// The description of the event type.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	EntityTypes?: [...#EntityType]
	EventVariables?: [...#EventVariable]
	Inline?: bool
	Labels?: [...#Label]
	// The time when the event type was last updated.
	LastUpdatedTime?: string
	// The name for the event type
	Name?: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this event type.
	Tags?: [...#Tag]
}

#EventVariable: {
	Arn?: string
	// The time when the event variable was created.
	CreatedTime?: string
	DataSource?: "EVENT"
	DataType?: "STRING" | "INTEGER" | "FLOAT" | "BOOLEAN"
	DefaultValue?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the event variable was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this event variable.
	Tags?: [...#Tag]
	VariableType?: "AUTH_CODE" | "AVS" | "BILLING_ADDRESS_L1" | "BILLING_ADDRESS_L2" | "BILLING_CITY" | "BILLING_COUNTRY" | "BILLING_NAME" | "BILLING_PHONE" | "BILLING_STATE" | "BILLING_ZIP" | "CARD_BIN" | "CATEGORICAL" | "CURRENCY_CODE" | "EMAIL_ADDRESS" | "FINGERPRINT" | "FRAUD_LABEL" | "FREE_FORM_TEXT" | "IP_ADDRESS" | "NUMERIC" | "ORDER_ID" | "PAYMENT_TYPE" | "PHONE_NUMBER" | "PRICE" | "PRODUCT_CATEGORY" | "SHIPPING_ADDRESS_L1" | "SHIPPING_ADDRESS_L2" | "SHIPPING_CITY" | "SHIPPING_COUNTRY" | "SHIPPING_NAME" | "SHIPPING_PHONE" | "SHIPPING_STATE" | "SHIPPING_ZIP" | "USERAGENT"
}

#Label: {
	Arn?: string
	// The time when the label was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the label was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this label.
	Tags?: [...#Tag]
}

#Model: {
	Arn?: string
}

#Outcome: {
	Arn?: string
	// The time when the outcome was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the outcome was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this outcome.
	Tags?: [...#Tag]
}

#Rule: {
	Arn?: string
	// The time when the event type was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DetectorId?: string
	Expression?: string
	Language?: "DETECTORPL"
	// The time when the event type was last updated.
	LastUpdatedTime?: string
	Outcomes?: [...#Outcome]
	RuleId?: string
	RuleVersion?: string
	// Tags associated with this event type.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
