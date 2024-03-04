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

.PARAMETER Id
The ID of the access item
.PARAMETER DisplayName
the display name of the access item
.PARAMETER Description
Description of the access item.
.PARAMETER AccessType
The type of the access item.
.PARAMETER SourceName
the associated source name if it exists
.PARAMETER ExtremelyRare
rarest access
.OUTPUTS

OutliersContributingFeatureAccessItems<PSCustomObject>
#>

function Initialize-BetaOutliersContributingFeatureAccessItems {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENTITLEMENT", "ACCESS_PROFILE", "ROLE")]
        [String]
        ${AccessType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExtremelyRare} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaOutliersContributingFeatureAccessItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "accessType" = ${AccessType}
            "sourceName" = ${SourceName}
            "extremelyRare" = ${ExtremelyRare}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OutliersContributingFeatureAccessItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to OutliersContributingFeatureAccessItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OutliersContributingFeatureAccessItems<PSCustomObject>
#>
function ConvertFrom-BetaJsonToOutliersContributingFeatureAccessItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaOutliersContributingFeatureAccessItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaOutliersContributingFeatureAccessItems
        $AllProperties = ("id", "displayName", "description", "accessType", "sourceName", "extremelyRare")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "extremelyRare"))) { #optional property not found
            $ExtremelyRare = $null
        } else {
            $ExtremelyRare = $JsonParameters.PSobject.Properties["extremelyRare"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "accessType" = ${AccessType}
            "sourceName" = ${SourceName}
            "extremelyRare" = ${ExtremelyRare}
        }

        return $PSO
    }

}

