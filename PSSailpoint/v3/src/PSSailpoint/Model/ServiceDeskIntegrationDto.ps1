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

.PARAMETER Id
Unique identifier for the Service Desk integration
.PARAMETER Name
Service Desk integration's name. The name must be unique.
.PARAMETER Created
The date and time the Service Desk integration was created
.PARAMETER Modified
The date and time the Service Desk integration was last modified
.PARAMETER Description
Service Desk integration's description.
.PARAMETER Type
Service Desk integration types:  - ServiceNowSDIM - ServiceNow 
.PARAMETER OwnerRef
No description available.
.PARAMETER ClusterRef
No description available.
.PARAMETER Cluster
Cluster ID for the Service Desk integration (replaced by clusterRef, retained for backward compatibility).
.PARAMETER ManagedSources
Source IDs for the Service Desk integration (replaced by provisioningConfig.managedSResourceRefs, but retained here for backward compatibility).
.PARAMETER ProvisioningConfig
No description available.
.PARAMETER Attributes
Service Desk integration's attributes. Validation constraints enforced by the implementation.
.PARAMETER BeforeProvisioningRule
No description available.
.OUTPUTS

ServiceDeskIntegrationDto<PSCustomObject>
#>

function Initialize-ServiceDeskIntegrationDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type} = "ServiceNowSDIM",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClusterRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ManagedSources},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisioningConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BeforeProvisioningRule}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ServiceDeskIntegrationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "type" = ${Type}
            "ownerRef" = ${OwnerRef}
            "clusterRef" = ${ClusterRef}
            "cluster" = ${Cluster}
            "managedSources" = ${ManagedSources}
            "provisioningConfig" = ${ProvisioningConfig}
            "attributes" = ${Attributes}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceDeskIntegrationDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceDeskIntegrationDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceDeskIntegrationDto<PSCustomObject>
#>
function ConvertFrom-JsonToServiceDeskIntegrationDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ServiceDeskIntegrationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ServiceDeskIntegrationDto
        $AllProperties = ("id", "name", "created", "modified", "description", "type", "ownerRef", "clusterRef", "cluster", "managedSources", "provisioningConfig", "attributes", "beforeProvisioningRule")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerRef"))) { #optional property not found
            $OwnerRef = $null
        } else {
            $OwnerRef = $JsonParameters.PSobject.Properties["ownerRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clusterRef"))) { #optional property not found
            $ClusterRef = $null
        } else {
            $ClusterRef = $JsonParameters.PSobject.Properties["clusterRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managedSources"))) { #optional property not found
            $ManagedSources = $null
        } else {
            $ManagedSources = $JsonParameters.PSobject.Properties["managedSources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningConfig"))) { #optional property not found
            $ProvisioningConfig = $null
        } else {
            $ProvisioningConfig = $JsonParameters.PSobject.Properties["provisioningConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beforeProvisioningRule"))) { #optional property not found
            $BeforeProvisioningRule = $null
        } else {
            $BeforeProvisioningRule = $JsonParameters.PSobject.Properties["beforeProvisioningRule"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "type" = ${Type}
            "ownerRef" = ${OwnerRef}
            "clusterRef" = ${ClusterRef}
            "cluster" = ${Cluster}
            "managedSources" = ${ManagedSources}
            "provisioningConfig" = ${ProvisioningConfig}
            "attributes" = ${Attributes}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }

        return $PSO
    }

}

