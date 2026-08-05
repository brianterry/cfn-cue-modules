package variable

import "strings"

#Properties: {
	// The source of the data.
	DataSource: "EVENT" | "EXTERNAL_MODEL_SCORE"
	// The data type.
	DataType: "STRING" | "INTEGER" | "FLOAT" | "BOOLEAN"
	// The default value for the variable when no value is received.
	DefaultValue: string
	// The description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the variable.
	Name: string & =~"^[a-z_][a-z0-9_]{0,99}?$"
	// Tags associated with this variable.
	Tags?: [...#Tag]
	// The variable type. For more information see https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
	VariableType?: "AUTH_CODE" | "AVS" | "BILLING_ADDRESS_L1" | "BILLING_ADDRESS_L2" | "BILLING_CITY" | "BILLING_COUNTRY" | "BILLING_NAME" | "BILLING_PHONE" | "BILLING_STATE" | "BILLING_ZIP" | "CARD_BIN" | "CATEGORICAL" | "CURRENCY_CODE" | "EMAIL_ADDRESS" | "FINGERPRINT" | "FRAUD_LABEL" | "FREE_FORM_TEXT" | "IP_ADDRESS" | "NUMERIC" | "ORDER_ID" | "PAYMENT_TYPE" | "PHONE_NUMBER" | "PRICE" | "PRODUCT_CATEGORY" | "SHIPPING_ADDRESS_L1" | "SHIPPING_ADDRESS_L2" | "SHIPPING_CITY" | "SHIPPING_COUNTRY" | "SHIPPING_NAME" | "SHIPPING_PHONE" | "SHIPPING_STATE" | "SHIPPING_ZIP" | "USERAGENT"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
