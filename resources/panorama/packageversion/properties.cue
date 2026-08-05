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

#NodePackageArn: string & strings.MinRunes(1) & strings.MaxRunes(255)

#NodePackageId: string & =~"^[a-zA-Z0-9\\-\\_\\/]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#NodePackageName: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)

#NodePackagePatchVersion: string & =~"^[a-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#NodePackageVersion: string & =~"^([0-9]+)\\.([0-9]+)$" & strings.MinRunes(1) & strings.MaxRunes(255)

#PackageOwnerAccount: string & =~"^[0-9a-z\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(12)

#PackageVersionStatus: "REGISTER_PENDING" | "REGISTER_COMPLETED" | "FAILED" | "DELETING"

#PackageVersionStatusDescription: string & strings.MinRunes(1) & strings.MaxRunes(255)

#TimeStamp: int
