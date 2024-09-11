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

Bulk response object.

.PARAMETER Id
Identifier of bulk request item.
.PARAMETER StatusCode
Response status value.
.PARAMETER Message
Status containing additional context information about failures.
.OUTPUTS

BulkIdentitiesAccountsResponse<PSCustomObject>
#>

function Initialize-V2024BulkIdentitiesAccountsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${StatusCode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024BulkIdentitiesAccountsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "statusCode" = ${StatusCode}
            "message" = ${Message}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkIdentitiesAccountsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkIdentitiesAccountsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkIdentitiesAccountsResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToBulkIdentitiesAccountsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024BulkIdentitiesAccountsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024BulkIdentitiesAccountsResponse
        $AllProperties = ("id", "statusCode", "message")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCode"))) { #optional property not found
            $StatusCode = $null
        } else {
            $StatusCode = $JsonParameters.PSobject.Properties["statusCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "statusCode" = ${StatusCode}
            "message" = ${Message}
        }

        return $PSO
    }

}

