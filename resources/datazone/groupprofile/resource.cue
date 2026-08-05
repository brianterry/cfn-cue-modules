package groupprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Group profiles represent groups of Amazon DataZone users. Groups can be manually created, or mapped to Active Directory groups of enterprise customers. In Amazon DataZone, groups serve two purposes. First, a group can map to a team of users in the organizational chart, and thus reduce the administrative work of a Amazon DataZone project owner when there are new employees joining or leaving a team. Second, corporate administrators use Active Directory groups to manage and update user statuses and so Amazon DataZone domain administrators can use these group memberships to implement Amazon DataZone domain policies.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::GroupProfile"
	Properties: #Properties
}
