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

.PARAMETER AccessRequestId
The unique ID of the access request object. Can be used with the [access request status endpoint](https://developer.sailpoint.com/idn/api/beta/list-access-request-status) to get the status of the request. 
.PARAMETER RequestedFor
Identities access was requested for.
.PARAMETER RequestedItems
The access items that are being requested.
.PARAMETER RequestedBy
No description available.
.OUTPUTS

AccessRequestDynamicApprover<PSCustomObject>
#>

function Initialize-V2024AccessRequestDynamicApprover {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessRequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedFor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestedBy}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AccessRequestDynamicApprover' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccessRequestId) {
            throw "invalid value for 'AccessRequestId', 'AccessRequestId' cannot be null."
        }

        if (!$RequestedFor) {
            throw "invalid value for 'RequestedFor', 'RequestedFor' cannot be null."
        }

        if ($RequestedFor.length -gt 10) {
            throw "invalid value for 'RequestedFor', number of items must be less than or equal to 10."
        }

        if ($RequestedFor.length -lt 1) {
            throw "invalid value for 'RequestedFor', number of items must be greater than or equal to 1."
        }

        if (!$RequestedItems) {
            throw "invalid value for 'RequestedItems', 'RequestedItems' cannot be null."
        }

        if ($RequestedItems.length -gt 25) {
            throw "invalid value for 'RequestedItems', number of items must be less than or equal to 25."
        }

        if ($RequestedItems.length -lt 1) {
            throw "invalid value for 'RequestedItems', number of items must be greater than or equal to 1."
        }

        if (!$RequestedBy) {
            throw "invalid value for 'RequestedBy', 'RequestedBy' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accessRequestId" = ${AccessRequestId}
            "requestedFor" = ${RequestedFor}
            "requestedItems" = ${RequestedItems}
            "requestedBy" = ${RequestedBy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestDynamicApprover<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestDynamicApprover<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestDynamicApprover<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessRequestDynamicApprover {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AccessRequestDynamicApprover' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessRequestDynamicApprover
        $AllProperties = ("accessRequestId", "requestedFor", "requestedItems", "requestedBy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accessRequestId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessRequestId' missing."
        } else {
            $AccessRequestId = $JsonParameters.PSobject.Properties["accessRequestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedFor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedFor' missing."
        } else {
            $RequestedFor = $JsonParameters.PSobject.Properties["requestedFor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedItems"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedItems' missing."
        } else {
            $RequestedItems = $JsonParameters.PSobject.Properties["requestedItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedBy"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedBy' missing."
        } else {
            $RequestedBy = $JsonParameters.PSobject.Properties["requestedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "accessRequestId" = ${AccessRequestId}
            "requestedFor" = ${RequestedFor}
            "requestedItems" = ${RequestedItems}
            "requestedBy" = ${RequestedBy}
        }

        return $PSO
    }

}

