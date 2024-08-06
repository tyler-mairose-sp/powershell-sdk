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

No description available.

.PARAMETER Id
The id for the entitlement
.PARAMETER Name
The name of the entitlement
.PARAMETER Description
Information about the entitlement
.PARAMETER Privileged
Indicates if the entitlement is a privileged entitlement
.PARAMETER Owner
No description available.
.PARAMETER AttributeName
The name of the attribute on the source
.PARAMETER AttributeValue
The value of the attribute on the source
.PARAMETER SourceSchemaObjectType
The schema object type on the source used to represent the entitlement and its attributes
.PARAMETER SourceName
The name of the source for which this entitlement belongs
.PARAMETER SourceType
The type of the source for which the entitlement belongs
.PARAMETER SourceId
The ID of the source for which the entitlement belongs
.PARAMETER HasPermissions
Indicates if the entitlement has permissions
.PARAMETER IsPermission
Indicates if the entitlement is a representation of an account permission
.PARAMETER Revocable
Indicates whether the entitlement can be revoked
.PARAMETER CloudGoverned
True if the entitlement is cloud governed
.PARAMETER ContainsDataAccess
True if the entitlement has DAS data
.PARAMETER DataAccess
No description available.
.PARAMETER Account
No description available.
.OUTPUTS

ReviewableEntitlement<PSCustomObject>
#>

function Initialize-V2024ReviewableEntitlement {
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
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceSchemaObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasPermissions} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPermission} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Revocable} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CloudGoverned} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ContainsDataAccess} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DataAccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ReviewableEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "owner" = ${Owner}
            "attributeName" = ${AttributeName}
            "attributeValue" = ${AttributeValue}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "sourceName" = ${SourceName}
            "sourceType" = ${SourceType}
            "sourceId" = ${SourceId}
            "hasPermissions" = ${HasPermissions}
            "isPermission" = ${IsPermission}
            "revocable" = ${Revocable}
            "cloudGoverned" = ${CloudGoverned}
            "containsDataAccess" = ${ContainsDataAccess}
            "dataAccess" = ${DataAccess}
            "account" = ${Account}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReviewableEntitlement<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReviewableEntitlement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReviewableEntitlement<PSCustomObject>
#>
function ConvertFrom-V2024JsonToReviewableEntitlement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ReviewableEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ReviewableEntitlement
        $AllProperties = ("id", "name", "description", "privileged", "owner", "attributeName", "attributeValue", "sourceSchemaObjectType", "sourceName", "sourceType", "sourceId", "hasPermissions", "isPermission", "revocable", "cloudGoverned", "containsDataAccess", "dataAccess", "account")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) { #optional property not found
            $AttributeName = $null
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeValue"))) { #optional property not found
            $AttributeValue = $null
        } else {
            $AttributeValue = $JsonParameters.PSobject.Properties["attributeValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceSchemaObjectType"))) { #optional property not found
            $SourceSchemaObjectType = $null
        } else {
            $SourceSchemaObjectType = $JsonParameters.PSobject.Properties["sourceSchemaObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceType"))) { #optional property not found
            $SourceType = $null
        } else {
            $SourceType = $JsonParameters.PSobject.Properties["sourceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasPermissions"))) { #optional property not found
            $HasPermissions = $null
        } else {
            $HasPermissions = $JsonParameters.PSobject.Properties["hasPermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isPermission"))) { #optional property not found
            $IsPermission = $null
        } else {
            $IsPermission = $JsonParameters.PSobject.Properties["isPermission"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "revocable"))) { #optional property not found
            $Revocable = $null
        } else {
            $Revocable = $JsonParameters.PSobject.Properties["revocable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cloudGoverned"))) { #optional property not found
            $CloudGoverned = $null
        } else {
            $CloudGoverned = $JsonParameters.PSobject.Properties["cloudGoverned"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "containsDataAccess"))) { #optional property not found
            $ContainsDataAccess = $null
        } else {
            $ContainsDataAccess = $JsonParameters.PSobject.Properties["containsDataAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataAccess"))) { #optional property not found
            $DataAccess = $null
        } else {
            $DataAccess = $JsonParameters.PSobject.Properties["dataAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "owner" = ${Owner}
            "attributeName" = ${AttributeName}
            "attributeValue" = ${AttributeValue}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "sourceName" = ${SourceName}
            "sourceType" = ${SourceType}
            "sourceId" = ${SourceId}
            "hasPermissions" = ${HasPermissions}
            "isPermission" = ${IsPermission}
            "revocable" = ${Revocable}
            "cloudGoverned" = ${CloudGoverned}
            "containsDataAccess" = ${ContainsDataAccess}
            "dataAccess" = ${DataAccess}
            "account" = ${Account}
        }

        return $PSO
    }

}

