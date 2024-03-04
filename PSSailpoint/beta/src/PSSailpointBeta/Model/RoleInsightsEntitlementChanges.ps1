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

.PARAMETER Name
Name of the entitlement
.PARAMETER Id
Id of the entitlement
.PARAMETER Description
Description for the entitlement
.PARAMETER Attribute
Attribute for the entitlement
.PARAMETER Value
Attribute value for the entitlement
.PARAMETER Source
Source or the application for the entitlement
.PARAMETER Insight
No description available.
.OUTPUTS

RoleInsightsEntitlementChanges<PSCustomObject>
#>

function Initialize-BetaRoleInsightsEntitlementChanges {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Insight}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleInsightsEntitlementChanges' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "source" = ${Source}
            "insight" = ${Insight}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleInsightsEntitlementChanges<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleInsightsEntitlementChanges<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleInsightsEntitlementChanges<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleInsightsEntitlementChanges {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleInsightsEntitlementChanges' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleInsightsEntitlementChanges
        $AllProperties = ("name", "id", "description", "attribute", "value", "source", "insight")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "insight"))) { #optional property not found
            $Insight = $null
        } else {
            $Insight = $JsonParameters.PSobject.Properties["insight"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "source" = ${Source}
            "insight" = ${Insight}
        }

        return $PSO
    }

}

