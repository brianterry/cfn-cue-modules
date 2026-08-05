package subscriptiondefinitionversion

#Properties: {
	SubscriptionDefinitionId: string
	Subscriptions: [...#Subscription]
}

#Subscription: {
	Id: string
	Source: string
	Subject: string
	Target: string
}
