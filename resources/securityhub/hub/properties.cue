package hub

#Properties: {
	// Whether to automatically enable new controls when they are added to standards that are enabled
	AutoEnableControls?: bool
	// This field, used when enabling Security Hub, specifies whether the calling account has consolidated control findings turned on. If the value for this field is set to SECURITY_CONTROL, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards.  If the value for this field is set to STANDARD_CONTROL, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards.
	ControlFindingGenerator?: string & =~"^(SECURITY_CONTROL|STANDARD_CONTROL)$"
	// Whether to enable the security standards that Security Hub has designated as automatically enabled.
	EnableDefaultStandards?: bool
	Tags?: #Tags
}

#Tags: {...}
