Logical: ResMed_AVX_LoggedEvents
Id: resmed-avx-logged-events
Title: "ResMed AirView Exchange (AVX) Logged Events"
Description: """
Source logical model describing the JSON structure of the ResMed AVX API response
for GET /v1/patients/{ecn}/data/loggedEvents.
Returns the last five days of patient Alarm, System and Settings Change events.
Based on AVX API Technical Specification for Data Collection and Usage (Release 4.38).
Note: Alarm and System events are available to Astral and Stellar devices only.
Alarm events are available to AirCurve 10 ST-A devices supporting alarms.
"""

* ecn 1..1 string "EasyCare Number" "Patient unique identifier (UUID)"

* loggedEvents 0..* BackboneElement "Logged Events" "Array of logged event records"

  * endDateTime 1..1 string "End Date Time" "Date and time event occurred (yyyy-mm-ddThh:mm:ss)"

  * eventType 1..1 string "Event Type" "Type of event: System, Alarm, or SettingsChange"

  * details 1..1 BackboneElement "Details" "Details of the event"

    // System events
    * systemCode 0..1 string "System Code" "Code assigned to the system event (e.g. E-001, E-020)"

    // Alarm events
    * action 0..1 string "Action" "Alarm action: Activate, Deactivate, Reset, Unknown"
    * alarmType 0..1 string "Alarm Type" "The type of alarm (e.g. APNEA_ALARM, HIGH_PRESSURE_ALARM)"
    * alarmPriority 0..1 string "Alarm Priority" "Alarm priority: Watchdog, High, Medium, Low, Unknown"
    * alarmCode 0..1 string "Alarm Code" "Code assigned to the alarm, used when alarmType is Unknown"
    * program 0..1 string "Program" "The program the device was in when the alarm occurred (Astral only)"

    * threshold 0..1 BackboneElement "Threshold" "Threshold information for alarm events"
      * thresholdCode 0..1 string "Threshold Code" "The item that triggered the alarm event"
      * thresholdType 0..1 string "Threshold Type" "The item that triggered the alarm event (alternative)"
      * trigger 0..1 BackboneElement "Trigger" "Information on the item triggering the alarm"
        * value 0..1 string "Value" "The value of the trigger"
        * units 0..1 string "Units" "The units of the triggered value"

    // Settings Change events
    * settingType 0..1 string "Setting Type" "The name of the setting that was changed"
    * settingCode 0..1 string "Setting Code" "Code assigned to the setting, used when settingType is Unknown"
    * change 0..1 BackboneElement "Change" "Details of the settings change"
      * value 0..1 string "Value" "The value of the setting after the change"
      * previous 0..1 string "Previous" "The value of the setting before the change"
      * units 0..1 string "Units" "The units of the setting"
