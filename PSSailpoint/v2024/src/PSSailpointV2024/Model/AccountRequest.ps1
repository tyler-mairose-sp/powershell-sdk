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

.PARAMETER AccountId
Unique ID of the account
.PARAMETER AttributeRequests
No description available.
.PARAMETER Op
The operation that was performed
.PARAMETER ProvisioningTarget
No description available.
.PARAMETER Result
No description available.
.PARAMETER Source
No description available.
.OUTPUTS

AccountRequest<PSCustomObject>
#>

function Initialize-V2024AccountRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeRequests},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Op},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisioningTarget},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Result},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccountRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "attributeRequests" = ${AttributeRequests}
            "op" = ${Op}
            "provisioningTarget" = ${ProvisioningTarget}
            "result" = ${Result}
            "source" = ${Source}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccountRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountRequest
        $AllProperties = ("accountId", "attributeRequests", "op", "provisioningTarget", "result", "source")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeRequests"))) { #optional property not found
            $AttributeRequests = $null
        } else {
            $AttributeRequests = $JsonParameters.PSobject.Properties["attributeRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "op"))) { #optional property not found
            $Op = $null
        } else {
            $Op = $JsonParameters.PSobject.Properties["op"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningTarget"))) { #optional property not found
            $ProvisioningTarget = $null
        } else {
            $ProvisioningTarget = $JsonParameters.PSobject.Properties["provisioningTarget"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "attributeRequests" = ${AttributeRequests}
            "op" = ${Op}
            "provisioningTarget" = ${ProvisioningTarget}
            "result" = ${Result}
            "source" = ${Source}
        }

        return $PSO
    }

}

