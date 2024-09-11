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

.PARAMETER ObjectRefs
No description available.
.PARAMETER Tags
Label to be applied to an Object
.PARAMETER Operation
If APPEND, tags are appended to the list of tags for the object. A 400 error is returned if this would add duplicate tags to the object.  If MERGE, tags are merged with the existing tags. Duplicate tags are silently ignored.
.OUTPUTS

BulkAddTaggedObject<PSCustomObject>
#>

function Initialize-BulkAddTaggedObject {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ObjectRefs},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPEND", "MERGE")]
        [String]
        ${Operation} = "APPEND"
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => BulkAddTaggedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "objectRefs" = ${ObjectRefs}
            "tags" = ${Tags}
            "operation" = ${Operation}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkAddTaggedObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkAddTaggedObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkAddTaggedObject<PSCustomObject>
#>
function ConvertFrom-JsonToBulkAddTaggedObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => BulkAddTaggedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BulkAddTaggedObject
        $AllProperties = ("objectRefs", "tags", "operation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectRefs"))) { #optional property not found
            $ObjectRefs = $null
        } else {
            $ObjectRefs = $JsonParameters.PSobject.Properties["objectRefs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        $PSO = [PSCustomObject]@{
            "objectRefs" = ${ObjectRefs}
            "tags" = ${Tags}
            "operation" = ${Operation}
        }

        return $PSO
    }

}

