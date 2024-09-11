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
The connector name
.PARAMETER Type
The connector type
.PARAMETER ScriptName
The connector script name
.PARAMETER ClassName
The connector class name.
.PARAMETER Features
The list of features supported by the connector
.PARAMETER DirectConnect
true if the source is a direct connect source
.PARAMETER ConnectorMetadata
A map containing metadata pertinent to the connector
.PARAMETER Status
The connector status
.OUTPUTS

V3ConnectorDto<PSCustomObject>
#>

function Initialize-V2024V3ConnectorDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Features},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DirectConnect} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ConnectorMetadata},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DEPRECATED", "DEVELOPMENT", "DEMO", "RELEASED")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024V3ConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "scriptName" = ${ScriptName}
            "className" = ${ClassName}
            "features" = ${Features}
            "directConnect" = ${DirectConnect}
            "connectorMetadata" = ${ConnectorMetadata}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V3ConnectorDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to V3ConnectorDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V3ConnectorDto<PSCustomObject>
#>
function ConvertFrom-V2024JsonToV3ConnectorDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024V3ConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024V3ConnectorDto
        $AllProperties = ("name", "type", "scriptName", "className", "features", "directConnect", "connectorMetadata", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) { #optional property not found
            $ScriptName = $null
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) { #optional property not found
            $ClassName = $null
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) { #optional property not found
            $Features = $null
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directConnect"))) { #optional property not found
            $DirectConnect = $null
        } else {
            $DirectConnect = $JsonParameters.PSobject.Properties["directConnect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorMetadata"))) { #optional property not found
            $ConnectorMetadata = $null
        } else {
            $ConnectorMetadata = $JsonParameters.PSobject.Properties["connectorMetadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "scriptName" = ${ScriptName}
            "className" = ${ClassName}
            "features" = ${Features}
            "directConnect" = ${DirectConnect}
            "connectorMetadata" = ${ConnectorMetadata}
            "status" = ${Status}
        }

        return $PSO
    }

}

