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

The request body of Reassignment Configuration Details for a specific identity and config type

.PARAMETER ConfigType
No description available.
.PARAMETER TargetIdentity
No description available.
.PARAMETER StartDate
The date from which to start reassigning work items
.PARAMETER EndDate
The date from which to stop reassigning work items.  If this is an empty string it indicates a permanent reassignment.
.PARAMETER AuditDetails
No description available.
.OUTPUTS

ConfigurationDetailsResponse<PSCustomObject>
#>

function Initialize-V2024ConfigurationDetailsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_REQUESTS", "CERTIFICATIONS", "MANUAL_TASKS")]
        [PSCustomObject]
        ${ConfigType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TargetIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuditDetails}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ConfigurationDetailsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "configType" = ${ConfigType}
            "targetIdentity" = ${TargetIdentity}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "auditDetails" = ${AuditDetails}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigurationDetailsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigurationDetailsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigurationDetailsResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToConfigurationDetailsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ConfigurationDetailsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ConfigurationDetailsResponse
        $AllProperties = ("configType", "targetIdentity", "startDate", "endDate", "auditDetails")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configType"))) { #optional property not found
            $ConfigType = $null
        } else {
            $ConfigType = $JsonParameters.PSobject.Properties["configType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetIdentity"))) { #optional property not found
            $TargetIdentity = $null
        } else {
            $TargetIdentity = $JsonParameters.PSobject.Properties["targetIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startDate"))) { #optional property not found
            $StartDate = $null
        } else {
            $StartDate = $JsonParameters.PSobject.Properties["startDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) { #optional property not found
            $EndDate = $null
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "auditDetails"))) { #optional property not found
            $AuditDetails = $null
        } else {
            $AuditDetails = $JsonParameters.PSobject.Properties["auditDetails"].value
        }

        $PSO = [PSCustomObject]@{
            "configType" = ${ConfigType}
            "targetIdentity" = ${TargetIdentity}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "auditDetails" = ${AuditDetails}
        }

        return $PSO
    }

}

