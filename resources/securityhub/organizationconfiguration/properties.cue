package organizationconfiguration

#Properties: {
	// Whether to automatically enable Security Hub in new member accounts when they join the organization.
	AutoEnable: bool
	// Whether to automatically enable Security Hub default standards in new member accounts when they join the organization.
	AutoEnableStandards?: "DEFAULT" | "NONE"
	// Indicates whether the organization uses local or central configuration.
	ConfigurationType?: "CENTRAL" | "LOCAL"
}
