ValueSet: T_CABS_ValueSet_VentilationLimitExceedanceCode
Id: t-cabs-valueset-ventilation-limit-exceedance-code
Title: "T-CABS Ventilation Limit Exceedance Code ValueSet"
Description: "Generic limit exceedance event codes for ventilation parameter alarms (high/low). The monitored parameter is identified by the binding profile (e.g. Respiratory Rate, Tidal Volume) and the alert's `alertDerivedFrom` reference."
* ^status = #draft

// IEEE 11073 - Generic limit exceedance events (Partition 3)
* $IEEE-11073#196648 "MDC_EVT_HI"
* $IEEE-11073#196670 "MDC_EVT_LO"
