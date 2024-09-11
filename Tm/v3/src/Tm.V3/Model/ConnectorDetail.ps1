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

.PARAMETER Name
The connector name
.PARAMETER Type
The connector type
.PARAMETER ClassName
The connector class name
.PARAMETER ScriptName
The connector script name
.PARAMETER ApplicationXml
The connector application xml
.PARAMETER CorrelationConfigXml
The connector correlation config xml
.PARAMETER SourceConfigXml
The connector source config xml
.PARAMETER SourceConfig
The connector source config
.PARAMETER SourceConfigFrom
The connector source config origin
.PARAMETER S3Location
storage path key for this connector
.PARAMETER UploadedFiles
The list of uploaded files supported by the connector. If there was any executable files uploaded to thee connector. Typically this be empty as the executable be uploaded at source creation.
.PARAMETER FileUpload
true if the source is file upload
.PARAMETER DirectConnect
true if the source is a direct connect source
.PARAMETER TranslationProperties
A map containing translation attributes by loacale key
.PARAMETER ConnectorMetadata
A map containing metadata pertinent to the UI to be used
.PARAMETER Status
The connector status
.OUTPUTS

ConnectorDetail<PSCustomObject>
#>

function Initialize-ConnectorDetail {
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
        ${ClassName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationXml},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CorrelationConfigXml},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfigXml},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceConfigFrom},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${S3Location},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UploadedFiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FileUpload} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DirectConnect} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${TranslationProperties},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ConnectorMetadata},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DEPRECATED", "DEVELOPMENT", "DEMO", "RELEASED")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ConnectorDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "className" = ${ClassName}
            "scriptName" = ${ScriptName}
            "applicationXml" = ${ApplicationXml}
            "correlationConfigXml" = ${CorrelationConfigXml}
            "sourceConfigXml" = ${SourceConfigXml}
            "sourceConfig" = ${SourceConfig}
            "sourceConfigFrom" = ${SourceConfigFrom}
            "s3Location" = ${S3Location}
            "uploadedFiles" = ${UploadedFiles}
            "fileUpload" = ${FileUpload}
            "directConnect" = ${DirectConnect}
            "translationProperties" = ${TranslationProperties}
            "connectorMetadata" = ${ConnectorMetadata}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorDetail<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ConnectorDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorDetail
        $AllProperties = ("name", "type", "className", "scriptName", "applicationXml", "correlationConfigXml", "sourceConfigXml", "sourceConfig", "sourceConfigFrom", "s3Location", "uploadedFiles", "fileUpload", "directConnect", "translationProperties", "connectorMetadata", "status")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) { #optional property not found
            $ClassName = $null
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) { #optional property not found
            $ScriptName = $null
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationXml"))) { #optional property not found
            $ApplicationXml = $null
        } else {
            $ApplicationXml = $JsonParameters.PSobject.Properties["applicationXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correlationConfigXml"))) { #optional property not found
            $CorrelationConfigXml = $null
        } else {
            $CorrelationConfigXml = $JsonParameters.PSobject.Properties["correlationConfigXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfigXml"))) { #optional property not found
            $SourceConfigXml = $null
        } else {
            $SourceConfigXml = $JsonParameters.PSobject.Properties["sourceConfigXml"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfig"))) { #optional property not found
            $SourceConfig = $null
        } else {
            $SourceConfig = $JsonParameters.PSobject.Properties["sourceConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceConfigFrom"))) { #optional property not found
            $SourceConfigFrom = $null
        } else {
            $SourceConfigFrom = $JsonParameters.PSobject.Properties["sourceConfigFrom"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "s3Location"))) { #optional property not found
            $S3Location = $null
        } else {
            $S3Location = $JsonParameters.PSobject.Properties["s3Location"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uploadedFiles"))) { #optional property not found
            $UploadedFiles = $null
        } else {
            $UploadedFiles = $JsonParameters.PSobject.Properties["uploadedFiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fileUpload"))) { #optional property not found
            $FileUpload = $null
        } else {
            $FileUpload = $JsonParameters.PSobject.Properties["fileUpload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directConnect"))) { #optional property not found
            $DirectConnect = $null
        } else {
            $DirectConnect = $JsonParameters.PSobject.Properties["directConnect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "translationProperties"))) { #optional property not found
            $TranslationProperties = $null
        } else {
            $TranslationProperties = $JsonParameters.PSobject.Properties["translationProperties"].value
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
            "className" = ${ClassName}
            "scriptName" = ${ScriptName}
            "applicationXml" = ${ApplicationXml}
            "correlationConfigXml" = ${CorrelationConfigXml}
            "sourceConfigXml" = ${SourceConfigXml}
            "sourceConfig" = ${SourceConfig}
            "sourceConfigFrom" = ${SourceConfigFrom}
            "s3Location" = ${S3Location}
            "uploadedFiles" = ${UploadedFiles}
            "fileUpload" = ${FileUpload}
            "directConnect" = ${DirectConnect}
            "translationProperties" = ${TranslationProperties}
            "connectorMetadata" = ${ConnectorMetadata}
            "status" = ${Status}
        }

        return $PSO
    }

}

