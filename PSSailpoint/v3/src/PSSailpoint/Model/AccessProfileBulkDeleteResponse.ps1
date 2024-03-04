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

.PARAMETER TaskId
ID of the task which is executing the bulk deletion. This can be passed to the **/task-status** API to track status.
.PARAMETER Pending
List of IDs of Access Profiles which are pending deletion.
.PARAMETER InUse
List of usages of Access Profiles targeted for deletion.
.OUTPUTS

AccessProfileBulkDeleteResponse<PSCustomObject>
#>

function Initialize-AccessProfileBulkDeleteResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TaskId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Pending},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InUse}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccessProfileBulkDeleteResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "taskId" = ${TaskId}
            "pending" = ${Pending}
            "inUse" = ${InUse}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfileBulkDeleteResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileBulkDeleteResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileBulkDeleteResponse<PSCustomObject>
#>
function ConvertFrom-JsonToAccessProfileBulkDeleteResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccessProfileBulkDeleteResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccessProfileBulkDeleteResponse
        $AllProperties = ("taskId", "pending", "inUse")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "taskId"))) { #optional property not found
            $TaskId = $null
        } else {
            $TaskId = $JsonParameters.PSobject.Properties["taskId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pending"))) { #optional property not found
            $Pending = $null
        } else {
            $Pending = $JsonParameters.PSobject.Properties["pending"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inUse"))) { #optional property not found
            $InUse = $null
        } else {
            $InUse = $JsonParameters.PSobject.Properties["inUse"].value
        }

        $PSO = [PSCustomObject]@{
            "taskId" = ${TaskId}
            "pending" = ${Pending}
            "inUse" = ${InUse}
        }

        return $PSO
    }

}

