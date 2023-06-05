#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Level
Denotes the level of the message
.PARAMETER Localizations
No description available.
.OUTPUTS

CampaignAlert<PSCustomObject>
#>

function Initialize-CampaignAlert {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ERROR", "WARN", "INFO")]
        [String]
        ${Level},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Localizations}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CampaignAlert' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "level" = ${Level}
            "localizations" = ${Localizations}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignAlert<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignAlert<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignAlert<PSCustomObject>
#>
function ConvertFrom-JsonToCampaignAlert {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CampaignAlert' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CampaignAlert
        $AllProperties = ("level", "localizations")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "level"))) { #optional property not found
            $Level = $null
        } else {
            $Level = $JsonParameters.PSobject.Properties["level"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localizations"))) { #optional property not found
            $Localizations = $null
        } else {
            $Localizations = $JsonParameters.PSobject.Properties["localizations"].value
        }

        $PSO = [PSCustomObject]@{
            "level" = ${Level}
            "localizations" = ${Localizations}
        }

        return $PSO
    }

}

