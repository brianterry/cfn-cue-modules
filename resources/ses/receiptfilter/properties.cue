package receiptfilter

#Properties: {
	Filter: #Filter
}

#Filter: {
	IpFilter: #IpFilter
	Name?: string
}

#IpFilter: {
	Cidr: string
	Policy: string
}
