package budget

#Properties: {
	Budget: #BudgetData
	NotificationsWithSubscribers?: [...#NotificationWithSubscribers]
	ResourceTags?: [...#ResourceTag]
}

#AutoAdjustData: {
	AutoAdjustType: string
	HistoricalOptions?: #HistoricalOptions
}

#BudgetData: {
	AutoAdjustData?: #AutoAdjustData
	BillingViewArn?: string
	BudgetLimit?: #Spend
	BudgetName?: string
	BudgetType: string
	CostFilters?: {...}
	CostTypes?: #CostTypes
	FilterExpression?: #Expression
	Metrics?: [...string]
	PlannedBudgetLimits?: {...}
	TimePeriod?: #TimePeriod
	TimeUnit: string
}

#CostCategoryValues: {
	Key?: string
	MatchOptions?: [...string]
	Values?: [...string]
}

#CostTypes: {
	IncludeCredit?: bool
	IncludeDiscount?: bool
	IncludeOtherSubscription?: bool
	IncludeRecurring?: bool
	IncludeRefund?: bool
	IncludeSubscription?: bool
	IncludeSupport?: bool
	IncludeTax?: bool
	IncludeUpfront?: bool
	UseAmortized?: bool
	UseBlended?: bool
}

#Expression: {
	And?: [...#Expression]
	CostCategories?: #CostCategoryValues
	Dimensions?: #ExpressionDimensionValues
	Not?: #Expression
	Or?: [...#Expression]
	Tags?: #TagValues
}

#ExpressionDimensionValues: {
	Key?: string
	MatchOptions?: [...string]
	Values?: [...string]
}

#HistoricalOptions: {
	BudgetAdjustmentPeriod: int
}

#Notification: {
	ComparisonOperator: string
	NotificationType: string
	Threshold: number
	ThresholdType?: string
}

#NotificationWithSubscribers: {
	Notification: #Notification
	Subscribers: [...#Subscriber]
}

#ResourceTag: {
	Key: string
	Value?: string
}

#Spend: {
	Amount: number
	Unit: string
}

#Subscriber: {
	Address: string
	SubscriptionType: string
}

#TagValues: {
	Key?: string
	MatchOptions?: [...string]
	Values?: [...string]
}

#TimePeriod: {
	End?: string
	Start?: string
}
