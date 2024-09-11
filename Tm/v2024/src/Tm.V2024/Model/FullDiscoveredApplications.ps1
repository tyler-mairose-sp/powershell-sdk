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

Discovered applications with their respective associated sources

.PARAMETER Id
Unique identifier for the discovered application.
.PARAMETER Name
Name of the discovered application.
.PARAMETER DiscoverySource
Source from which the application was discovered.
.PARAMETER DiscoveredVendor
The vendor associated with the discovered application.
.PARAMETER Description
A brief description of the discovered application.
.PARAMETER RecommendedConnectors
List of recommended connectors for the application.
.PARAMETER DiscoveredAt
The timestamp when the application was last received via an entitlement aggregation invocation  or a manual csv upload, in ISO 8601 format.
.PARAMETER CreatedAt
The timestamp when the application was first discovered, in ISO 8601 format.
.PARAMETER Status
The status of an application within the discovery source.  By default this field is set to ""ACTIVE"" when the application is discovered.  If an application has been deleted from within the discovery source, the status will be set to ""INACTIVE"".
.PARAMETER AssociatedSources
List of associated sources related to this discovered application.
.OUTPUTS

FullDiscoveredApplications<PSCustomObject>
#>

function Initialize-V2024FullDiscoveredApplications {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiscoverySource},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiscoveredVendor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RecommendedConnectors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DiscoveredAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AssociatedSources}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024FullDiscoveredApplications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "discoverySource" = ${DiscoverySource}
            "discoveredVendor" = ${DiscoveredVendor}
            "description" = ${Description}
            "recommendedConnectors" = ${RecommendedConnectors}
            "discoveredAt" = ${DiscoveredAt}
            "createdAt" = ${CreatedAt}
            "status" = ${Status}
            "associatedSources" = ${AssociatedSources}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FullDiscoveredApplications<PSCustomObject>

.DESCRIPTION

Convert from JSON to FullDiscoveredApplications<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FullDiscoveredApplications<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFullDiscoveredApplications {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024FullDiscoveredApplications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FullDiscoveredApplications
        $AllProperties = ("id", "name", "discoverySource", "discoveredVendor", "description", "recommendedConnectors", "discoveredAt", "createdAt", "status", "associatedSources")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "discoverySource"))) { #optional property not found
            $DiscoverySource = $null
        } else {
            $DiscoverySource = $JsonParameters.PSobject.Properties["discoverySource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "discoveredVendor"))) { #optional property not found
            $DiscoveredVendor = $null
        } else {
            $DiscoveredVendor = $JsonParameters.PSobject.Properties["discoveredVendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recommendedConnectors"))) { #optional property not found
            $RecommendedConnectors = $null
        } else {
            $RecommendedConnectors = $JsonParameters.PSobject.Properties["recommendedConnectors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "discoveredAt"))) { #optional property not found
            $DiscoveredAt = $null
        } else {
            $DiscoveredAt = $JsonParameters.PSobject.Properties["discoveredAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "associatedSources"))) { #optional property not found
            $AssociatedSources = $null
        } else {
            $AssociatedSources = $JsonParameters.PSobject.Properties["associatedSources"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "discoverySource" = ${DiscoverySource}
            "discoveredVendor" = ${DiscoveredVendor}
            "description" = ${Description}
            "recommendedConnectors" = ${RecommendedConnectors}
            "discoveredAt" = ${DiscoveredAt}
            "createdAt" = ${CreatedAt}
            "status" = ${Status}
            "associatedSources" = ${AssociatedSources}
        }

        return $PSO
    }

}

