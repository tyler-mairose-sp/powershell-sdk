#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
Non-Employee source id.
.PARAMETER SourceId
Source Id associated with this non-employee source.
.PARAMETER Name
Source name associated with this non-employee source.
.PARAMETER Description
Source description associated with this non-employee source.
.PARAMETER SchemaAttributes
List of schema attributes associated with this non-employee source.
.OUTPUTS

NonEmployeeSourceLiteWithSchemaAttributes<PSCustomObject>
#>

function Initialize-NonEmployeeSourceLiteWithSchemaAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SchemaAttributes}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => NonEmployeeSourceLiteWithSchemaAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "name" = ${Name}
            "description" = ${Description}
            "schemaAttributes" = ${SchemaAttributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSourceLiteWithSchemaAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSourceLiteWithSchemaAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSourceLiteWithSchemaAttributes<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeSourceLiteWithSchemaAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => NonEmployeeSourceLiteWithSchemaAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeSourceLiteWithSchemaAttributes
        $AllProperties = ("id", "sourceId", "name", "description", "schemaAttributes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schemaAttributes"))) { #optional property not found
            $SchemaAttributes = $null
        } else {
            $SchemaAttributes = $JsonParameters.PSobject.Properties["schemaAttributes"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "name" = ${Name}
            "description" = ${Description}
            "schemaAttributes" = ${SchemaAttributes}
        }

        return $PSO
    }

}

