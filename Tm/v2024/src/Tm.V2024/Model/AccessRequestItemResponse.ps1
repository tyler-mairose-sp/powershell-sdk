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

.PARAMETER Operation
the access request item operation
.PARAMETER AccessItemType
the access item type
.PARAMETER Name
the name of access request item
.PARAMETER Decision
the final decision for the access request
.PARAMETER Description
the description of access request item
.PARAMETER SourceId
the source id
.PARAMETER SourceName
the source Name
.PARAMETER ApprovalInfos
No description available.
.OUTPUTS

AccessRequestItemResponse<PSCustomObject>
#>

function Initialize-V2024AccessRequestItemResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessItemType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED")]
        [String]
        ${Decision},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalInfos}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AccessRequestItemResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "accessItemType" = ${AccessItemType}
            "name" = ${Name}
            "decision" = ${Decision}
            "description" = ${Description}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "approvalInfos" = ${ApprovalInfos}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestItemResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestItemResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestItemResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessRequestItemResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AccessRequestItemResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessRequestItemResponse
        $AllProperties = ("operation", "accessItemType", "name", "decision", "description", "sourceId", "sourceName", "approvalInfos")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessItemType"))) { #optional property not found
            $AccessItemType = $null
        } else {
            $AccessItemType = $JsonParameters.PSobject.Properties["accessItemType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decision"))) { #optional property not found
            $Decision = $null
        } else {
            $Decision = $JsonParameters.PSobject.Properties["decision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalInfos"))) { #optional property not found
            $ApprovalInfos = $null
        } else {
            $ApprovalInfos = $JsonParameters.PSobject.Properties["approvalInfos"].value
        }

        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "accessItemType" = ${AccessItemType}
            "name" = ${Name}
            "decision" = ${Decision}
            "description" = ${Description}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "approvalInfos" = ${ApprovalInfos}
        }

        return $PSO
    }

}

