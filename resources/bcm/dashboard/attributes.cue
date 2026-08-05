package dashboard

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws[-a-z0-9]*:bcm-dashboards::[0-9]{12}:dashboard/(\\*|[-a-z0-9]+)$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Type: #DashboardType
	CreatedAt: string
	UpdatedAt: string
}
