package notification

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the notification.
	Arn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/notification/[-a-zA-Z0-9]*$"
	// The identifier of the notification.
	Id: string & =~"^.{0,256}$"
	// The time a notification was created
	CreatedAt: string & =~"^[0-9]+$"
}
