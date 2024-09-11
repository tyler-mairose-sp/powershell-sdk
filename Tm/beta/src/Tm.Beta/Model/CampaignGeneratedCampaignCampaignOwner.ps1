#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The identity that owns the campaign.

.PARAMETER Id
The unique ID of the identity.
.PARAMETER DisplayName
The display name of the identity.
.PARAMETER Email
The primary email address of the identity.
.OUTPUTS

CampaignGeneratedCampaignCampaignOwner<PSCustomObject>
#>

function Initialize-BetaCampaignGeneratedCampaignCampaignOwner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaCampaignGeneratedCampaignCampaignOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$DisplayName) {
            throw "invalid value for 'DisplayName', 'DisplayName' cannot be null."
        }

        if (!$Email) {
            throw "invalid value for 'Email', 'Email' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "email" = ${Email}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignGeneratedCampaignCampaignOwner<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignGeneratedCampaignCampaignOwner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignGeneratedCampaignCampaignOwner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignGeneratedCampaignCampaignOwner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaCampaignGeneratedCampaignCampaignOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignGeneratedCampaignCampaignOwner
        $AllProperties = ("id", "displayName", "email")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'displayName' missing."
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) {
            throw "Error! JSON cannot be serialized due to the required property 'email' missing."
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "email" = ${Email}
        }

        return $PSO
    }

}

