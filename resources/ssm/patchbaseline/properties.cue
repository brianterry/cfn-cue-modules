package patchbaseline

import "strings"

#Properties: {
	ApprovalRules?: #RuleGroup
	// A list of explicitly approved patches for the baseline.
	ApprovedPatches?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	// Defines the compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. The default value is UNSPECIFIED.
	ApprovedPatchesComplianceLevel?: "CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "INFORMATIONAL" | "UNSPECIFIED"
	// Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
	ApprovedPatchesEnableNonSecurity?: bool
	// The compliance status for vendor recommended security updates that are not approved by this patch baseline.
	AvailableSecurityUpdatesComplianceStatus?: "NON_COMPLIANT" | "COMPLIANT"
	// Set the baseline as default baseline. Only registering to default patch baseline is allowed.
	DefaultBaseline?: bool
	// The description of the patch baseline.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A set of global filters used to include patches in the baseline.
	GlobalFilters?: #PatchFilterGroup
	// The name of the patch baseline.
	Name: string & =~"^[a-zA-Z0-9_\\-.]{3,128}$" & strings.MinRunes(3) & strings.MaxRunes(128)
	// Defines the operating system the patch baseline applies to. The Default value is WINDOWS.
	OperatingSystem?: "WINDOWS" | "AMAZON_LINUX" | "AMAZON_LINUX_2" | "AMAZON_LINUX_2022" | "AMAZON_LINUX_2023" | "UBUNTU" | "REDHAT_ENTERPRISE_LINUX" | "SUSE" | "CENTOS" | "ORACLE_LINUX" | "DEBIAN" | "MACOS" | "RASPBIAN" | "ROCKY_LINUX" | "ALMA_LINUX"
	// PatchGroups is used to associate instances with a specific patch baseline
	PatchGroups?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// A list of explicitly rejected patches for the baseline.
	RejectedPatches?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	// The action for Patch Manager to take on patches included in the RejectedPackages list.
	RejectedPatchesAction?: "ALLOW_AS_DEPENDENCY" | "BLOCK"
	// Information about the patches to use to update the instances, including target operating systems and source repository. Applies to Linux instances only.
	Sources?: [...#PatchSource]
	// Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways.
	Tags?: [...#Tag]
}

#PatchFilter: {
	Key?: "ADVISORY_ID" | "ARCH" | "BUGZILLA_ID" | "CLASSIFICATION" | "CVE_ID" | "EPOCH" | "MSRC_SEVERITY" | "NAME" | "PATCH_ID" | "PATCH_SET" | "PRIORITY" | "PRODUCT" | "PRODUCT_FAMILY" | "RELEASE" | "REPOSITORY" | "SECTION" | "SECURITY" | "SEVERITY" | "VERSION"
	Values?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#PatchFilterGroup: {
	PatchFilters?: [...#PatchFilter]
}

#PatchSource: {
	Configuration?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Name?: string & =~"^[a-zA-Z0-9_\\-.]{3,50}$"
	Products?: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#Rule: {
	ApproveAfterDays?: int & >=0 & <=360
	ApproveUntilDate?: string & strings.MinRunes(0) & strings.MaxRunes(10)
	ComplianceLevel?: "CRITICAL" | "HIGH" | "INFORMATIONAL" | "LOW" | "MEDIUM" | "UNSPECIFIED"
	EnableNonSecurity?: bool
	PatchFilterGroup?: #PatchFilterGroup
}

#RuleGroup: {
	PatchRules?: [...#Rule]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
