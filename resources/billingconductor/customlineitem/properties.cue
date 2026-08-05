package customlineitem

import "strings"

#Properties: {
	// The account which this custom line item will be charged to
	AccountId?: string & =~"[0-9]{12}"
	// Billing Group ARN
	BillingGroupArn: string & =~"arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/?[a-zA-Z0-9]{10,12}"
	BillingPeriodRange?: #BillingPeriodRange
	// The display settings of the Custom Line Item.
	ComputationRule?: "CONSOLIDATED" | "ITEMIZED"
	CustomLineItemChargeDetails?: #CustomLineItemChargeDetails
	Description?: string & strings.MaxRunes(255)
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	PresentationDetails?: {
		Service: string & =~"^[a-zA-Z0-9]+$"
	}
	Tags?: [...#Tag]
}

#AttributeValue: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#BillingPeriodRange: {
	ExclusiveEndBillingPeriod?: #ExclusiveEndBillingPeriod
	InclusiveStartBillingPeriod?: #InclusiveStartBillingPeriod
}

#CustomLineItemChargeDetails: {
	Flat?: #CustomLineItemFlatChargeDetails
	LineItemFilters?: #LineItemFilters
	Percentage?: #CustomLineItemPercentageChargeDetails
	Type: #Type
}

#CustomLineItemFlatChargeDetails: {
	ChargeValue: number & >=0 & <=1e+06
}

#CustomLineItemPercentageChargeDetails: {
	ChildAssociatedResources?: [...string & =~"(arn:aws(-cn)?:billingconductor::[0-9]{12}:(customlineitem|billinggroup)/)?[a-zA-Z0-9]{10,12}"]
	PercentageValue: number & >=0 & <=10000
}

#ExclusiveEndBillingPeriod: string & =~"\\d{4}-(0?[1-9]|1[012])"

#InclusiveStartBillingPeriod: string & =~"\\d{4}-(0?[1-9]|1[012])"

#LineItemFilter: {
	Attribute: "LINE_ITEM_TYPE" | "SERVICE"
	AttributeValues?: [...#AttributeValue]
	MatchOption: "NOT_EQUAL" | "EQUAL"
	Values?: [...#LineItemFilterValue]
}

#LineItemFilterValue: "SAVINGS_PLAN_NEGATION"

#LineItemFilters: [...#LineItemFilter]

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Type: "FEE" | "CREDIT"
