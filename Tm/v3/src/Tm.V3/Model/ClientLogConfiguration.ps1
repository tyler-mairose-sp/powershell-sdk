#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Client Runtime Logging Configuration

.PARAMETER ClientId
Log configuration's client ID
.PARAMETER DurationMinutes
Duration in minutes for log configuration to remain in effect before resetting to defaults
.PARAMETER Expiration
Expiration date-time of the log configuration request
.PARAMETER RootLevel
No description available.
.PARAMETER LogLevels
Mapping of identifiers to Standard Log Level values
.OUTPUTS

ClientLogConfiguration<PSCustomObject>
#>

function Initialize-ClientLogConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClientId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${DurationMinutes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Expiration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("false", "FATAL", "ERROR", "WARN", "INFO", "DEBUG", "TRACE")]
        [PSCustomObject]
        ${RootLevel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${LogLevels}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ClientLogConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$DurationMinutes) {
            throw "invalid value for 'DurationMinutes', 'DurationMinutes' cannot be null."
        }

        if ($DurationMinutes -gt 1440) {
          throw "invalid value for 'DurationMinutes', must be smaller than or equal to 1440."
        }

        if ($DurationMinutes -lt 5) {
          throw "invalid value for 'DurationMinutes', must be greater than or equal to 5."
        }

        if (!$RootLevel) {
            throw "invalid value for 'RootLevel', 'RootLevel' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "clientId" = ${ClientId}
            "durationMinutes" = ${DurationMinutes}
            "expiration" = ${Expiration}
            "rootLevel" = ${RootLevel}
            "logLevels" = ${LogLevels}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClientLogConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClientLogConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClientLogConfiguration<PSCustomObject>
#>
function ConvertFrom-JsonToClientLogConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ClientLogConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ClientLogConfiguration
        $AllProperties = ("clientId", "durationMinutes", "expiration", "rootLevel", "logLevels")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'durationMinutes' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "durationMinutes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'durationMinutes' missing."
        } else {
            $DurationMinutes = $JsonParameters.PSobject.Properties["durationMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rootLevel"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rootLevel' missing."
        } else {
            $RootLevel = $JsonParameters.PSobject.Properties["rootLevel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientId"))) { #optional property not found
            $ClientId = $null
        } else {
            $ClientId = $JsonParameters.PSobject.Properties["clientId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) { #optional property not found
            $Expiration = $null
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logLevels"))) { #optional property not found
            $LogLevels = $null
        } else {
            $LogLevels = $JsonParameters.PSobject.Properties["logLevels"].value
        }

        $PSO = [PSCustomObject]@{
            "clientId" = ${ClientId}
            "durationMinutes" = ${DurationMinutes}
            "expiration" = ${Expiration}
            "rootLevel" = ${RootLevel}
            "logLevels" = ${LogLevels}
        }

        return $PSO
    }

}

