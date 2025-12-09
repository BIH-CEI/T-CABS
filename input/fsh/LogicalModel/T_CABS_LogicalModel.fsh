Logical: T_CABS_LogicalModel
Id: tCabsLogicalModel
Title: "T-CABS Logical Model"
Description: """
Comprehensive logical model for the T-CABS project covering:
- Cross-domain entities (Patient, Organization)
- Ventilation data (Devices, DeviceMetric, Procedure, Parameters)
- Vital data (PHD devices, Parameters)

Mappings are provided to concrete T-CABS FHIR profiles for implementation guidance.
"""

// ===============================================
// 1. CROSS-DOMAIN ENTITIES
// ===============================================

* crossDomain 1..* BackboneElement "Cross-Domain Entities" "Organizational and clinical context entities used across all domains"

  * patient 1..1 BackboneElement "Ventilation Patient" "Patient receiving home ventilation therapy"
    * identifier 1..* string "Identifier" "Unique identifier in the T-CABS study"
    * name 1..* string "Full Name" "Complete patient name"
    * gender 1..1 code "Gender" "Administrative gender (male|female|other|unknown)"
    * birthDate 1..1 date "Birth Date" "Date of birth for age calculation"
    * address 0..1 string "Home Address" "Residential address for home care"
    * managingOrganization 0..1 Reference(Organization) "Managing Organization" "Primary healthcare organization"
    * generalPractitioner 0..1 Reference(Practitioner) "General Practitioner" "Primary care physician reference"
    // Mapping: T_CABS_Patient (Parent: mii-pr-person-patient, ISiK-compatible)
  
  * organization 0..* BackboneElement "Healthcare Organization" "Treatment centers, device providers, service organizations"
    * name 1..1 string "Organization Name" "Official name of organization"
    * identifier 1..1 string "Organization Identifier" "Unique organizational identifier"
    * type 1..1 code "Organization Type" "Healthcare provider, device manufacturer, service provider"
    * contactInfo 0..1 string "Contact Information" "Phone, email, address for coordination"
    * providerType 0..1 code "Provider Type" "Jochum|Löwenstein|Vivisol|Doccla|CABS"
    // Mapping: T_CABS_Organisation (Parent: Organization, ISiK-compatible)

// ===============================================
// 2. VENTILATION DATA
// ===============================================

* ventilationData 1..* BackboneElement "Ventilation Data" "All ventilation-related devices and measurements"

  * devices 1..1 BackboneElement "Ventilation Devices" "IEEE 11073 device hierarchy for ventilation monitoring"
    
    * mds 1..1 BackboneElement "Medical Device System (MDS)" "Top-level ventilator device"
      * deviceIdentifier 0..* string "Device Identifier" "UDI or unique device identification"
      * manufacturer 1..1 string "Manufacturer" "Device manufacturer (BREAS, ResMed, Löwenstein)"
      * model 1..1 string "Device Model" "Specific model designation"
      * serialNumber 1..1 string "Serial Number" "Unique device serial number"
      * deviceName 1..* string "Device Name" "Human-readable device name"
      * operatingHours 1..1 decimal "Operating Hours" "Total device operating hours"
      * patient 1..1 Reference(Patient) "Patient Reference" "Patient using this device"
      * owner 1..1 Reference(Organization) "Device Owner" "Organization owning the device"
      // Mapping: T_CABS_Device_MDS_Beatmungsgeraet (Parent: MdsDevice)
    
    * vmd 0..* BackboneElement "Virtual Medical Device (VMD)" "Parameter-specific virtual subsystems"
      * vmdType 1..1 string "VMD Type" "Type of virtual medical device module"
      * parameters 1..* string "Monitored Parameters" "Parameters handled by this VMD"
      * manufacturer 1..1 string "Manufacturer" "Corresponds to MDS manufacturer"
      * parentMds 1..1 Reference(Device) "Parent MDS" "Reference to parent Medical Device System"
      // Parameter-specific VMDs:
      // BREAS: ahi, amv, ipap, targetvolume
      // ResMed: atemfrequenz, leckage, atemzeit, druck  
      // Löwenstein: peep, triggeredbreaths, ti
      // Mapping: T_CABS_Device_VMD_Beatmungsgeraet (Parent: VmdDevice)
    
    * channel 0..* BackboneElement "Measurement Channel" "Grouping of related measurements"
      * channelType 1..1 string "Channel Type" "Type of measurement channel"
      * ieeeCode 1..1 code "IEEE 11073 Code" "Standard device channel code"
      * parentVmd 1..1 Reference(Device) "Parent VMD" "Reference to parent Virtual Medical Device"
      // Mapping: T_CABS_Device_Channel_Beatmungsgeraet (Parent: ChannelDevice)

  * deviceMetric 0..* BackboneElement "Device Metric" "Individual measurement/calculation metrics"
    * metricType 1..1 code "Metric Type" "IEEE 11073 code for specific metric"
    * unit 1..1 code "Measurement Unit" "UCUM unit code"
    * category 1..1 code "Metric Category" "measurement, calculation, setting"
    * operationalStatus 1..1 code "Operational Status" "on, off, standby, not-available"
    * measurementPeriod 0..1 Period "Measurement Period" "Frequency of measurements"
    * calibration 0..* string "Calibration Information" "Device calibration details"
    * parentChannel 1..1 Reference(Device) "Parent Channel" "Reference to parent measurement channel"
    * sourceMds 1..1 Reference(Device) "Source MDS" "Reference to originating MDS device"
    // Mapping: T_CABS_DeviceMetric_NumericMetric (Parent: NumericDeviceMetric)
  
  * procedure 1..* BackboneElement "Ventilation Procedure" "Active ventilation treatment"
    * procedureCode 1..1 code "Procedure Code" "SNOMED CT code for ventilation procedure"
    * ventilationForm 1..1 code "Ventilation Form" "Invasive or non-invasive ventilation"
    * ventilationMode 1..1 code "Ventilation Mode" "PCV, PSV, CPAP, BiPAP (IEEE 11073 codes)"
    * ventilationSite 0..1 code "Ventilation Site" "Tracheostomy, mask, nasal"
    * performedPeriod 1..1 Period "Procedure Period" "Duration of ventilation treatment"
    * usedDevice 0..* Reference(Device) "Used Device" "Reference to ventilator device"
    * subject 1..1 Reference(Patient) "Patient Reference" "Reference to patient"
    // Mapping: T_CABS_Procedure_Beatmung (Parent: Procedure)

  * ventilationParameter 0..* BackboneElement "Ventilation Parameters" "Simple ventilation parameters without components"
    
    * abstractParameter 0..* BackboneElement "Abstract Ventilation Parameter" "Common structure for all simple ventilation measurements"
      * parameterType 1..1 code "Parameter Type" "IEEE 11073 MDC code identifying the parameter"
      * parameterName 1..1 string "Parameter Name" "Human-readable parameter name"
      * value 0..1 decimal "Measured Value" "Numeric measurement value"
      * unit 1..1 code "Measurement Unit" "UCUM unit code"
      * measurementTime 1..1 Period "Measurement Time" "Time period of measurement"
      * deviceReference 1..1 Reference(DeviceMetric) "Device Reference" "Reference to associated DeviceMetric"
      * patientReference 1..1 Reference(Patient) "Patient Reference" "Reference to patient"
      * procedureReference 1..1 Reference(Procedure) "Procedure Reference" "Reference to ventilation procedure"
      * category 1..* code "Parameter Category" "procedure (from RuleSet ProcedureParameter)"
      * referenceRange 0..1 string "Reference Range" "Normal range for this parameter"
      * measurementMethod 0..1 string "Measurement Method" "How the parameter was determined"
      // Mapping: T_CABS_Observation_Beatmungsparameter (Parent: NumericObservation)
    
    // Simple Ventilation Parameters (9 total)
    * ahi 0..* Quantity "AHI (Apnea-Hypopnea Index)" "Number of breathing interruptions per hour [score]"
      // Mapping: T_CABS_Observation_AHI
    * leakage 0..* Quantity "Leakage" "System leak rate [L/min]"
      // Mapping: T_CABS_Observation_Leckage  
    * triggeredBreaths 0..* Quantity "Triggered Breaths" "Percentage of patient-initiated breaths [%]"
      // Mapping: T_CABS_Observation_TriggeredBreaths
    * respiratoryRateVentilator 0..* Quantity "Respiratory Rate (Ventilator)" "Ventilator-measured breathing rate [/min]"
      // Mapping: T_CABS_Observation_Atemfrequenz_beatmet
    * minuteVolume 0..* Quantity "Minute Volume (AMV)" "Total ventilation per minute [L/min]"
      // Mapping: T_CABS_Observation_AMV
    * targetVolume 0..* Quantity "Target Volume" "Targeted tidal volume [mL]"
      // Mapping: T_CABS_Observation_TargetVolume
    * ipap 0..* Quantity "IPAP (Inspiratory Positive Airway Pressure)" "Inspiratory pressure [mbar]"
      // Mapping: T_CABS_Observation_IPAP
    * peep 0..* Quantity "PEEP (Positive End-Expiratory Pressure)" "End-expiratory pressure [mbar]"
      // Mapping: T_CABS_Observation_PEEP
    * inspiratoryTime 0..* Quantity "Inspiratory Time (TI)" "Duration of inspiration phase [s]"
      // Mapping: T_CABS_Observation_TI

  * ventilationParameterComponents 0..* BackboneElement "Component-Based Ventilation Parameters" "Parameters with multiple measurement components"
    
    * abstractComponentParam 0..* BackboneElement "Abstract Component-Based Parameter" "Common structure for compound ventilation parameters"
      * parameterType 1..1 code "Parameter Type" "IEEE 11073 MDC code for compound parameter"
      * parameterName 1..1 string "Parameter Name" "Human-readable compound parameter name"
      * components 2..* BackboneElement "Parameter Components" "Individual components of compound measurement"
        * componentCode 1..1 code "Component Code" "IEEE 11073 code for component"
        * componentName 1..1 string "Component Name" "Human-readable component name"
        * componentValue 1..1 decimal "Component Value" "Numeric value of component"
        * componentUnit 1..1 code "Component Unit" "UCUM unit for component"
      * measurementTime 1..1 Period "Measurement Time" "Time period of measurement"
      * deviceReference 1..1 Reference(DeviceMetric) "Device Reference" "Reference to associated DeviceMetric"
      * patientReference 1..1 Reference(Patient) "Patient Reference" "Reference to patient"
      * procedureReference 1..1 Reference(Procedure) "Procedure Reference" "Reference to ventilation procedure"
      * category 1..* code "Parameter Category" "procedure (from RuleSet ProcedureParameter)"
      // Mapping: T_CABS_Observation_BeatmungsparameterMitKomponenten (Parent: CompoundNumericObservation)
    
    // Component-Based Ventilation Parameters (2 total)
    * respiratoryTimeRatio 0..* Quantity "Respiratory Time Ratio" "I:E ratio (components: inspiratory time, expiratory time)"
      // Mapping: T_CABS_Observation_Atemzeitverhaeltnis
    * pressureMinMax 0..* Quantity "Pressure Min/Max" "Pressure range (components: MinPress, MaxPress) [mbar]"
      // Mapping: T_CABS_Observation_DruckMinMax

// ===============================================
// 3. VITAL DATA
// ===============================================

* vitalData 0..* BackboneElement "Vital Data" "All vital parameter devices and measurements"

  * devices 1..* BackboneElement "Personal Health Devices" "PHD hierarchy for vital parameter monitoring"
    
    * phg 1..1 BackboneElement "Personal Health Gateway (PHG)" "Gateway device for data aggregation"
      * deviceIdentifier 0..* string "Gateway Identifier" "Unique identifier for gateway device"
      * deviceType 1..1 code "Gateway Type" "IEEE 11073 code for gateway type (typically tablet)"
      * manufacturer 1..1 string "Manufacturer" "Gateway device manufacturer"
      * model 1..1 string "Gateway Model" "Model designation of gateway"
      * serialNumber 1..1 string "Serial Number" "Unique gateway serial number"
      * supportedProfiles 1..* code "Supported Profiles" "List of supported IEEE 11073 profiles"
      * patient 1..1 Reference(Patient) "Patient Reference" "Patient using this gateway"
      // Mapping: T_CABS_Device_PHG (Parent: PhgDevice)
    
    * phd 0..* BackboneElement "Personal Health Device (PHD)" "Individual measurement devices"
      * deviceIdentifier 0..* string "Device Identifier" "Unique identifier for PHD"
      * deviceType 1..1 code "Device Type" "Type from T-CABS PHD ValueSet"
      * specialization 1..1 code "Device Specialization" "IEEE 11073 specialization code"
      * manufacturer 1..1 string "Manufacturer" "PHD manufacturer"
      * model 1..1 string "Device Model" "Model designation"
      * serialNumber 1..1 string "Serial Number" "Unique device serial number"
      * measurementCapabilities 1..* string "Measurement Capabilities" "Types of measurements this device can perform"
      * patient 1..1 Reference(Patient) "Patient Reference" "Patient using this device"
      * owner 1..1 Reference(Organization) "Device Owner" "Organization owning the device"
      * parentGateway 0..1 Reference(Device) "Parent Gateway" "Associated PHG for data transmission"
      // Device types: Pulse oximeter, blood pressure monitor, scale, spirometer, etc.
      // Mapping: T_CABS_Device_PHD (Parent: PhdDevice)

  * vitalParameter 0..* BackboneElement "Vital Parameters" "Simple vital parameters without components"
    
    * abstractVitalParam 0..* BackboneElement "Abstract Vital Parameter" "Common structure for all simple vital sign measurements"
      * parameterType 1..1 code "Parameter Type" "LOINC code identifying the vital parameter"
      * parameterTypeMDC 1..1 code "Parameter Type (MDC)" "IEEE 11073 MDC code for device compatibility"
      * parameterName 1..1 string "Parameter Name" "Human-readable parameter name"
      * value 0..1 decimal "Measured Value" "Numeric measurement value"
      * unit 1..1 code "Measurement Unit" "UCUM unit code"
      * measurementTime 1..1 Period "Measurement Time" "Time period of measurement"
      * deviceReference 1..1 Reference(Device) "PHD Device Reference" "Reference to Personal Health Device"
      * gatewayReference 0..1 Reference(Device) "Gateway Reference" "Reference to PHG gateway device"
      * patientReference 1..1 Reference(Patient) "Patient Reference" "Reference to patient"
      * performer 0..* Reference(Practitioner or Patient or RelatedPerson) "Measurement Performer" "Who performed the measurement"
      * category 1..* code "Parameter Categories" "vital-signs + phd-observation (PHD standard)"
      * referenceRange 0..1 string "Reference Range" "Normal range for this parameter"
      // Mapping: T_CABS_Observation_Vitalparameter (Parent: PhdNumericObservation)
    
    // Simple Vital Parameters (11 total)
    * heartRate 0..* Quantity "Heart Rate" "Heart beats per minute [/min]"
      // Mapping: T_CABS_Observation_Herzfrequenz
    * respiratoryRate 0..* Quantity "Respiratory Rate" "Spontaneous breathing rate [/min]"
      // Mapping: T_CABS_Observation_Atemfrequenz
    * oxygenSaturation 0..* Quantity "Oxygen Saturation (SpO2)" "Arterial oxygen saturation [%]"
      // Mapping: T_CABS_Observation_ArterielleSPO2
    * bodyTemperature 0..* Quantity "Body Temperature" "Core body temperature [°C]"
      // Mapping: T_CABS_Observation_Koerpertemperatur
    * bodyWeight 0..* Quantity "Body Weight" "Patient weight [kg]"
      // Mapping: T_CABS_Observation_Koerpergewicht
    * bmi 0..* Quantity "Body Mass Index (BMI)" "Weight-to-height ratio [kg/m²]"
      // Mapping: T_CABS_Observation_BMI
    * walkingDistance 0..* Quantity "6-Minute Walk Distance" "Distance walked in 6 minutes [m]"
      // Mapping: T_CABS_Observation_Gehstrecke
    * handGripStrength 0..* Quantity "Hand Grip Strength" "Maximum grip strength [kg]"
      // Mapping: T_CABS_Observation_Handgriffstaerke
    * fev1 0..* Quantity "FEV1 (Forced Expiratory Volume 1s)" "Forced expiratory volume in 1 second [L]"
      // Mapping: T_CABS_Observation_FEV1
    * fev6 0..* Quantity "FEV6 (Forced Expiratory Volume 6s)" "Forced expiratory volume in 6 seconds [L]"
      // Mapping: T_CABS_Observation_FEV6
    * fefTwentyFiveToSeventyFive 0..* Quantity "FEF25-75 (Forced Expiratory Flow)" "Mean forced expiratory flow 25-75% [L/s]"
      // Mapping: T_CABS_Observation_FEF25_75

  * vitalParameterComponents 0..* BackboneElement "Component-Based Vital Parameters" "Vital parameters with multiple measurement components"
    
    * abstractComponentParameter 0..* BackboneElement "Abstract Component-Based Vital Parameter" "Common structure for compound vital parameters"
      * parameterType 1..1 code "Parameter Type" "LOINC code for compound vital parameter"
      * parameterName 1..1 string "Parameter Name" "Human-readable compound parameter name"
      * components 2..* BackboneElement "Parameter Components" "Individual components of compound measurement"
        * componentCode 1..1 code "Component Code" "LOINC code for component"
        * componentName 1..1 string "Component Name" "Human-readable component name"
        * componentValue 1..1 decimal "Component Value" "Numeric value of component"
        * componentUnit 1..1 code "Component Unit" "UCUM unit for component"
      * measurementTime 1..1 Period "Measurement Time" "Time period of measurement"
      * deviceReference 1..1 Reference(Device) "PHD Device Reference" "Reference to Personal Health Device"
      * patientReference 1..1 Reference(Patient) "Patient Reference" "Reference to patient"
      // Mapping: T_CABS_Observation_VitalparameterMitKomponenten (Parent: PhdCompoundNumericObservation)
    
    // Component-Based Vital Parameters (2 total)
    * bloodPressure 0..* Quantity "Arterial Blood Pressure" "Blood pressure (components: systolic, diastolic, mean) [mmHg]"
      // Mapping: T_CABS_Observation_ArteriellerBlutdruck
    * fevOneToSixRatio 0..* Quantity "FEV1/FEV6 Ratio" "Pulmonary function ratio (components: FEV1, FEV6)"
      // Mapping: T_CABS_Observation_FEV1_FEV6