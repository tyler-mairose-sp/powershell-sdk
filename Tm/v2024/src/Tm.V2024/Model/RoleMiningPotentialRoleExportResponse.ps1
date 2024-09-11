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

.PARAMETER MinEntitlementPopularity
The minimum popularity among identities in the role which an entitlement must have to be included in the report
.PARAMETER IncludeCommonAccess
If false, do not include entitlements that are highly popular among the entire orginization
.PARAMETER ExportId
ID used to reference this export
.PARAMETER Status
No description available.
.OUTPUTS

RoleMiningPotentialRoleExportResponse<PSCustomObject>
#>

function Initialize-V2024RoleMiningPotentialRoleExportResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinEntitlementPopularity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeCommonAccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExportId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("QUEUED", "IN_PROGRESS", "SUCCESS", "ERROR")]
        [PSCustomObject]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024RoleMiningPotentialRoleExportResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "minEntitlementPopularity" = ${MinEntitlementPopularity}
            "includeCommonAccess" = ${IncludeCommonAccess}
            "exportId" = ${ExportId}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleExportResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleExportResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleExportResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleMiningPotentialRoleExportResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024RoleMiningPotentialRoleExportResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleMiningPotentialRoleExportResponse
        $AllProperties = ("minEntitlementPopularity", "includeCommonAccess", "exportId", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minEntitlementPopularity"))) { #optional property not found
            $MinEntitlementPopularity = $null
        } else {
            $MinEntitlementPopularity = $JsonParameters.PSobject.Properties["minEntitlementPopularity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeCommonAccess"))) { #optional property not found
            $IncludeCommonAccess = $null
        } else {
            $IncludeCommonAccess = $JsonParameters.PSobject.Properties["includeCommonAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exportId"))) { #optional property not found
            $ExportId = $null
        } else {
            $ExportId = $JsonParameters.PSobject.Properties["exportId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "minEntitlementPopularity" = ${MinEntitlementPopularity}
            "includeCommonAccess" = ${IncludeCommonAccess}
            "exportId" = ${ExportId}
            "status" = ${Status}
        }

        return $PSO
    }

}

