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

.PARAMETER Name
The connector name. Need to be unique per tenant. The name will able be used to derive a url friendly unique scriptname that will be in response. Script name can then be used for all update endpoints
.PARAMETER Type
The connector type. If not specified will be defaulted to 'custom '+name
.PARAMETER ClassName
The connector class name. If you are implementing openconnector standard (what is recommended), then this need to be set to sailpoint.connector.OpenConnectorAdapter
.PARAMETER DirectConnect
true if the source is a direct connect source
.PARAMETER Status
The connector status
.OUTPUTS

V3CreateConnectorDto<PSCustomObject>
#>

function Initialize-V3CreateConnectorDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DirectConnect} = $true,
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DEVELOPMENT", "DEMO", "RELEASED")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => V3CreateConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$ClassName) {
            throw "invalid value for 'ClassName', 'ClassName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "className" = ${ClassName}
            "directConnect" = ${DirectConnect}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V3CreateConnectorDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to V3CreateConnectorDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V3CreateConnectorDto<PSCustomObject>
#>
function ConvertFrom-JsonToV3CreateConnectorDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => V3CreateConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V3CreateConnectorDto
        $AllProperties = ("name", "type", "className", "directConnect", "status")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) {
            throw "Error! JSON cannot be serialized due to the required property 'className' missing."
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directConnect"))) { #optional property not found
            $DirectConnect = $null
        } else {
            $DirectConnect = $JsonParameters.PSobject.Properties["directConnect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "className" = ${ClassName}
            "directConnect" = ${DirectConnect}
            "status" = ${Status}
        }

        return $PSO
    }

}

