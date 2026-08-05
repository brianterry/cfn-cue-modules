package vpcendpointconnectionnotification

#Properties: {
	// The endpoint events for which to receive notifications.
	ConnectionEvents: [...string]
	// The ARN of the SNS topic for the notifications.
	ConnectionNotificationArn: string
	// The ID of the endpoint service.
	ServiceId?: string
	// The ID of the endpoint.
	VPCEndpointId?: string
}
