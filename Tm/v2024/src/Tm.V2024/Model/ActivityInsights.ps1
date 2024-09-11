#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Insights into account activity

.PARAMETER AccountID
UUID of the account
.PARAMETER UsageDays
The number of days of activity
.PARAMETER UsageDaysState
Status indicating if the activity is complete or unknown
.OUTPUTS

ActivityInsights<PSCustomObject>
#>

function Initialize-V2024ActivityInsights {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountID},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UsageDays},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("COMPLETE", "UNKNOWN")]
        [String]
        ${UsageDaysState}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ActivityInsights' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($UsageDays -and $UsageDays -gt 90) {
          throw "invalid value for 'UsageDays', must be smaller than or equal to 90."
        }

        if ($UsageDays -and $UsageDays -lt 0) {
          throw "invalid value for 'UsageDays', must be greater than or equal to 0."
        }


        $PSO = [PSCustomObject]@{
            "accountID" = ${AccountID}
            "usageDays" = ${UsageDays}
            "usageDaysState" = ${UsageDaysState}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ActivityInsights<PSCustomObject>

.DESCRIPTION

Convert from JSON to ActivityInsights<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ActivityInsights<PSCustomObject>
#>
function ConvertFrom-V2024JsonToActivityInsights {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ActivityInsights' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ActivityInsights
        $AllProperties = ("accountID", "usageDays", "usageDaysState")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountID"))) { #optional property not found
            $AccountID = $null
        } else {
            $AccountID = $JsonParameters.PSobject.Properties["accountID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageDays"))) { #optional property not found
            $UsageDays = $null
        } else {
            $UsageDays = $JsonParameters.PSobject.Properties["usageDays"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageDaysState"))) { #optional property not found
            $UsageDaysState = $null
        } else {
            $UsageDaysState = $JsonParameters.PSobject.Properties["usageDaysState"].value
        }

        $PSO = [PSCustomObject]@{
            "accountID" = ${AccountID}
            "usageDays" = ${UsageDays}
            "usageDaysState" = ${UsageDaysState}
        }

        return $PSO
    }

}

