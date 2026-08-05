package proactiveengagement

import "strings"

#Properties: {
	// A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support.
	// To enable proactive engagement, the contact list must include at least one phone number.
	EmergencyContactList: [...#EmergencyContact]
	// If `ENABLED`, the Shield Response Team (SRT) will use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.
	// If `DISABLED`, the SRT will not proactively notify contacts about escalations or to initiate proactive customer support.
	ProactiveEngagementStatus: "ENABLED" | "DISABLED"
}

#EmergencyContact: {
	// Additional notes regarding the contact.
	ContactNotes?: string & =~"^[\\w\\s\\.\\-,:/()+@]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The email address for the contact.
	EmailAddress: string & =~"^\\S+@\\S+\\.\\S+$" & strings.MinRunes(1) & strings.MaxRunes(150)
	// The phone number for the contact
	PhoneNumber?: string & =~"^\\+[1-9]\\d{1,14}$" & strings.MinRunes(1) & strings.MaxRunes(16)
}
