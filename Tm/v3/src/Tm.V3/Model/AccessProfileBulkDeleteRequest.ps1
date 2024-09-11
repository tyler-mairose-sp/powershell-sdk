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

.PARAMETER AccessProfileIds
List of IDs of Access Profiles to be deleted.
.PARAMETER BestEffortOnly
If **true**, silently skip over any of the specified Access Profiles if they cannot be deleted because they are in use. If **false**, no deletions will be attempted if any of the Access Profiles are in use.
.OUTPUTS

AccessProfileBulkDeleteRequest<PSCustomObject>
#>

function Initialize-AccessProfileBulkDeleteRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AccessProfileIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BestEffortOnly}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => AccessProfileBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessProfileIds" = ${AccessProfileIds}
            "bestEffortOnly" = ${BestEffortOnly}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfileBulkDeleteRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileBulkDeleteRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileBulkDeleteRequest<PSCustomObject>
#>
function ConvertFrom-JsonToAccessProfileBulkDeleteRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => AccessProfileBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccessProfileBulkDeleteRequest
        $AllProperties = ("accessProfileIds", "bestEffortOnly")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfileIds"))) { #optional property not found
            $AccessProfileIds = $null
        } else {
            $AccessProfileIds = $JsonParameters.PSobject.Properties["accessProfileIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bestEffortOnly"))) { #optional property not found
            $BestEffortOnly = $null
        } else {
            $BestEffortOnly = $JsonParameters.PSobject.Properties["bestEffortOnly"].value
        }

        $PSO = [PSCustomObject]@{
            "accessProfileIds" = ${AccessProfileIds}
            "bestEffortOnly" = ${BestEffortOnly}
        }

        return $PSO
    }

}

