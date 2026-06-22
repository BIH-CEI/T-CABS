CodeSystem: T_CABS_CodeSystem_DeviceAlert
Id: t-cabs-codesystem-device-alert
Title: "T-CABS DeviceAlert CodeSystem"
Description: "CodeSystem for DeviceAlert resource type, status, type, priority, and signal codes. Backport of FHIR R6 DeviceAlert concepts to R4."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Resource type code (for Basic.code)
* #device-alert "Device Alert" "Identifies a Basic resource as a DeviceAlert backport"

// Status codes (R6 DeviceAlert.status)
* #in-progress "In Progress" "The alert condition is present, or any signal from a previously present condition is not off"
* #completed "Completed" "The alert condition is not present, and all signals are off"
* #entered-in-error "Entered in Error" "This alert record was created in error and is not valid"
* #unknown "Unknown" "The status of the alert is not known"

// Type codes (R6 DeviceAlert.type)
* #physiological "Physiological" "Alert related to a physiological measurement exceeding thresholds"
* #technical "Technical" "Alert related to a technical device condition"

// Priority codes (R6 DeviceAlert.priority)
* #high "High" "High priority alert requiring immediate attention"
* #medium "Medium" "Medium priority alert"
* #low "Low" "Low priority alert"
* #info "Informational" "Informational alert, no action required"

// Signal activation state codes (R6 DeviceAlert.signal.activationState)
* #on "On" "The signal is currently active"
* #off "Off" "The signal is currently inactive"
* #paused "Paused" "The signal is temporarily paused"

// Signal presence codes (R6 DeviceAlert.signal.presence: on | latched | off | ack; on/off shared with activationState)
* #latched "Latched" "The signal persists although the condition is no longer present, until manually reset"
* #ack "Acknowledged" "The signal was manually ended while the condition is still present"

// Signal manifestation codes (R6 DeviceAlert.signal.manifestation: auditory | visual | vibratory)
* #auditory "Auditory" "An auditory signal (e.g., alarm tone)"
* #visual "Visual" "A visual signal (e.g., flashing LED)"
* #vibratory "Vibratory" "A tactile vibration signal"
