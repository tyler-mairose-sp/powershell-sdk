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

If an account activity item is associated with an access request, captures details of that request.

.PARAMETER RequestedObjectId
Id of requested object
.PARAMETER RequestedObjectName
Human-readable name of requested object
.PARAMETER RequestedObjectType
No description available.
.OUTPUTS

AccountRequestInfo<PSCustomObject>
#>

function Initialize-V2024AccountRequestInfo {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedObjectId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedObjectName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE", "ENTITLEMENT")]
        [PSCustomObject]
        ${RequestedObjectType}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccountRequestInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requestedObjectId" = ${RequestedObjectId}
            "requestedObjectName" = ${RequestedObjectName}
            "requestedObjectType" = ${RequestedObjectType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountRequestInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountRequestInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountRequestInfo<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountRequestInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccountRequestInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountRequestInfo
        $AllProperties = ("requestedObjectId", "requestedObjectName", "requestedObjectType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedObjectId"))) { #optional property not found
            $RequestedObjectId = $null
        } else {
            $RequestedObjectId = $JsonParameters.PSobject.Properties["requestedObjectId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedObjectName"))) { #optional property not found
            $RequestedObjectName = $null
        } else {
            $RequestedObjectName = $JsonParameters.PSobject.Properties["requestedObjectName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedObjectType"))) { #optional property not found
            $RequestedObjectType = $null
        } else {
            $RequestedObjectType = $JsonParameters.PSobject.Properties["requestedObjectType"].value
        }

        $PSO = [PSCustomObject]@{
            "requestedObjectId" = ${RequestedObjectId}
            "requestedObjectName" = ${RequestedObjectName}
            "requestedObjectType" = ${RequestedObjectType}
        }

        return $PSO
    }

}

