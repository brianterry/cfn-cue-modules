package packageversion

#Properties: {
	// Whether to mark the new version as the latest version.
	MarkLatest?: bool
	// An owner account.
	OwnerAccount?: #PackageOwnerAccount
	// A package ID.
	PackageId: #NodePackageId
	// A package version.
	PackageVersion: #NodePackageVersion
	// A patch version.
	PatchVersion: #NodePackagePatchVersion
	// If the version was marked latest, the new version to maker as latest.
	UpdatedLatestPatchVersion?: #NodePackagePatchVersion
}
