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

Must be set only if the campaign type is SOURCE_OWNER.

.PARAMETER SourceIds
The list of sources to be included in the campaign.
.OUTPUTS

CampaignAllOfSourceOwnerCampaignInfo<PSCustomObject>
#>

function Initialize-CampaignAllOfSourceOwnerCampaignInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CampaignAllOfSourceOwnerCampaignInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "sourceIds" = ${SourceIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignAllOfSourceOwnerCampaignInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignAllOfSourceOwnerCampaignInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignAllOfSourceOwnerCampaignInfo<PSCustomObject>
#>
function ConvertFrom-JsonToCampaignAllOfSourceOwnerCampaignInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CampaignAllOfSourceOwnerCampaignInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CampaignAllOfSourceOwnerCampaignInfo
        $AllProperties = ("sourceIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceIds"))) { #optional property not found
            $SourceIds = $null
        } else {
            $SourceIds = $JsonParameters.PSobject.Properties["sourceIds"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }

}

