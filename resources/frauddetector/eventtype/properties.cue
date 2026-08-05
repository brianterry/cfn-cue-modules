package eventtype

import "strings"

#Properties: {
	// The description of the event type.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name for the event type
	Name: string & =~"^[0-9a-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this event type.
	Tags?: [...#Tag]
}

#EntityType: {
	Arn?: string
	// The time when the event type was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the event type was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this event type.
	Tags?: [...#Tag]
}

#EventVariable: {
	Arn?: string
	// The time when the event type was created.
	CreatedTime?: string
	DataSource?: "EVENT"
	DataType?: "STRING" | "INTEGER" | "FLOAT" | "BOOLEAN"
	DefaultValue?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the event type was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this event type.
	Tags?: [...#Tag]
	VariableType?: "AUTH_CODE" | "AVS" | "BILLING_ADDRESS_L1" | "BILLING_ADDRESS_L2" | "BILLING_CITY" | "BILLING_COUNTRY" | "BILLING_NAME" | "BILLING_PHONE" | "BILLING_STATE" | "BILLING_ZIP" | "CARD_BIN" | "CATEGORICAL" | "CURRENCY_CODE" | "EMAIL_ADDRESS" | "FINGERPRINT" | "FRAUD_LABEL" | "FREE_FORM_TEXT" | "IP_ADDRESS" | "NUMERIC" | "ORDER_ID" | "PAYMENT_TYPE" | "PHONE_NUMBER" | "PRICE" | "PRODUCT_CATEGORY" | "SHIPPING_ADDRESS_L1" | "SHIPPING_ADDRESS_L2" | "SHIPPING_CITY" | "SHIPPING_COUNTRY" | "SHIPPING_NAME" | "SHIPPING_PHONE" | "SHIPPING_STATE" | "SHIPPING_ZIP" | "USERAGENT"
}

#Label: {
	Arn?: string
	// The time when the event type was created.
	CreatedTime?: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Inline?: bool
	// The time when the event type was last updated.
	LastUpdatedTime?: string
	Name?: string
	// Tags associated with this event type.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
