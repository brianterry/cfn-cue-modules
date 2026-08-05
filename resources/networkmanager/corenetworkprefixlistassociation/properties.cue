package corenetworkprefixlistassociation

#Properties: {
	// The ID of the core network.
	CoreNetworkId: string
	// The alias of the prefix list
	PrefixListAlias: string
	// The Amazon Resource Name (ARN) of the prefix list.
	PrefixListArn: string & =~"^arn:[a-z0-9-]+:ec2:[a-z]+-[a-z]+-[0-9]:([0-9]{12}):prefix-list/pl-[a-z0-9]+$"
}
