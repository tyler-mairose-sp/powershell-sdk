#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Type
No description available.
.PARAMETER Values
The selected values. 
.PARAMETER Interval
The selected interval for RANGE selectors. 
.OUTPUTS

Schedule1Hours<PSCustomObject>
#>

function Initialize-BetaSchedule1Hours {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LIST", "RANGE")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Values},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Interval}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSchedule1Hours' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Values) {
            throw "invalid value for 'Values', 'Values' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Schedule1Hours<PSCustomObject>

.DESCRIPTION

Convert from JSON to Schedule1Hours<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Schedule1Hours<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSchedule1Hours {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSchedule1Hours' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSchedule1Hours
        $AllProperties = ("type", "values", "interval")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) {
            throw "Error! JSON cannot be serialized due to the required property 'values' missing."
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interval"))) { #optional property not found
            $Interval = $null
        } else {
            $Interval = $JsonParameters.PSobject.Properties["interval"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }

}

