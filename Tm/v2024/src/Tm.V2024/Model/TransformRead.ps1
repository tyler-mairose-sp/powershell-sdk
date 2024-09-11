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

.PARAMETER Name
Unique name of this transform
.PARAMETER Type
The type of transform operation
.PARAMETER Attributes
No description available.
.PARAMETER Id
Unique ID of this transform
.PARAMETER Internal
Indicates whether this is an internal SailPoint-created transform or a customer-created transform
.OUTPUTS

TransformRead<PSCustomObject>
#>

function Initialize-V2024TransformRead {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accountAttribute", "base64Decode", "base64Encode", "concat", "conditional", "dateCompare", "dateFormat", "dateMath", "decomposeDiacriticalMarks", "e164phone", "firstValid", "rule", "identityAttribute", "indexOf", "iso3166", "lastIndexOf", "leftPad", "lookup", "lower", "normalizeNames", "randomAlphaNumeric", "randomNumeric", "reference", "replaceAll", "replace", "rightPad", "split", "static", "substring", "trim", "upper", "usernameGenerator", "uuid", "displayName", "rfc5646")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Internal} = $false
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024TransformRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 50) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 50."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Internal) {
            throw "invalid value for 'Internal', 'Internal' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "internal" = ${Internal}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TransformRead<PSCustomObject>

.DESCRIPTION

Convert from JSON to TransformRead<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TransformRead<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTransformRead {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024TransformRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TransformRead
        $AllProperties = ("name", "type", "attributes", "id", "internal")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'internal' missing."
        } else {
            $Internal = $JsonParameters.PSobject.Properties["internal"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "internal" = ${Internal}
        }

        return $PSO
    }

}

