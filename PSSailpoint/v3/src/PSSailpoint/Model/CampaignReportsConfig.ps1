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

.PARAMETER IdentityAttributeColumns
list of identity attribute columns
.OUTPUTS

CampaignReportsConfig<PSCustomObject>
#>

function Initialize-CampaignReportsConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityAttributeColumns}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CampaignReportsConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityAttributeColumns" = ${IdentityAttributeColumns}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignReportsConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignReportsConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignReportsConfig<PSCustomObject>
#>
function ConvertFrom-JsonToCampaignReportsConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CampaignReportsConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CampaignReportsConfig
        $AllProperties = ("identityAttributeColumns")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttributeColumns"))) { #optional property not found
            $IdentityAttributeColumns = $null
        } else {
            $IdentityAttributeColumns = $JsonParameters.PSobject.Properties["identityAttributeColumns"].value
        }

        $PSO = [PSCustomObject]@{
            "identityAttributeColumns" = ${IdentityAttributeColumns}
        }

        return $PSO
    }

}

