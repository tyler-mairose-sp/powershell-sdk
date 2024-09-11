#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A JSONPatch Operation as defined by [RFC 6902 - JSON Patch](https://tools.ietf.org/html/rfc6902)

.PARAMETER Op
The operation to be performed
.PARAMETER Path
A string JSON Pointer representing the target path to an element to be affected by the operation
.PARAMETER Value
No description available.
.OUTPUTS

SubscriptionPatchRequestInner<PSCustomObject>
#>

function Initialize-BetaSubscriptionPatchRequestInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("add", "remove", "replace", "move", "copy")]
        [String]
        ${Op},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaSubscriptionPatchRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Op) {
            throw "invalid value for 'Op', 'Op' cannot be null."
        }

        if (!$Path) {
            throw "invalid value for 'Path', 'Path' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "op" = ${Op}
            "path" = ${Path}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SubscriptionPatchRequestInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to SubscriptionPatchRequestInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SubscriptionPatchRequestInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSubscriptionPatchRequestInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaSubscriptionPatchRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSubscriptionPatchRequestInner
        $AllProperties = ("op", "path", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'op' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "op"))) {
            throw "Error! JSON cannot be serialized due to the required property 'op' missing."
        } else {
            $Op = $JsonParameters.PSobject.Properties["op"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "path"))) {
            throw "Error! JSON cannot be serialized due to the required property 'path' missing."
        } else {
            $Path = $JsonParameters.PSobject.Properties["path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "op" = ${Op}
            "path" = ${Path}
            "value" = ${Value}
        }

        return $PSO
    }

}

