#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create Connector Rule

.DESCRIPTION

Creates a new connector rule. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER ConnectorRuleCreateRequest
The connector rule to create

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConnectorRuleResponse
#>
function New-V2024ConnectorRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConnectorRuleCreateRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-V2024ConnectorRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/connector-rules'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling createConnectorRule."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$ConnectorRuleCreateRequest) {
            throw "Error! The required parameter `ConnectorRuleCreateRequest` missing when calling createConnectorRule."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($ConnectorRuleCreateRequest -is [array])) {
            $LocalVarBodyParameter = $ConnectorRuleCreateRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $ConnectorRuleCreateRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConnectorRuleResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete a Connector-Rule

.DESCRIPTION

Deletes the connector rule specified by the given ID. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER Id
ID of the connector rule to delete

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-V2024ConnectorRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-V2024ConnectorRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/connector-rules/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling deleteConnectorRule."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling deleteConnectorRule."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Connector-Rule by ID

.DESCRIPTION

Returns the connector rule specified by ID. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER Id
ID of the connector rule to retrieve

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConnectorRuleResponse
#>
function Get-V2024ConnectorRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024ConnectorRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/connector-rules/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getConnectorRule."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getConnectorRule."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConnectorRuleResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List Connector Rules

.DESCRIPTION

Returns the list of connector rules. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConnectorRuleResponse[]
#>
function Get-V2024ConnectorRuleList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024ConnectorRuleList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/connector-rules'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getConnectorRuleList."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConnectorRuleResponse[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update a Connector Rule

.DESCRIPTION

Updates an existing connector rule with the one provided in the request body. Note that the fields 'id', 'name', and 'type' are immutable. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER Id
ID of the connector rule to update

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER ConnectorRuleUpdateRequest
The connector rule with updated data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConnectorRuleResponse
#>
function Update-V2024ConnectorRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConnectorRuleUpdateRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-V2024ConnectorRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/connector-rules/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling updateConnectorRule."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling updateConnectorRule."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($ConnectorRuleUpdateRequest -is [array])) {
            $LocalVarBodyParameter = $ConnectorRuleUpdateRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $ConnectorRuleUpdateRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConnectorRuleResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Validate Connector Rule

.DESCRIPTION

Returns a list of issues within the code to fix, if any. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER SourceCode
The code to validate

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConnectorRuleValidationResponse
#>
function Confirm-V2024ConnectorRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SourceCode},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Confirm-V2024ConnectorRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/connector-rules/validate'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling validateConnectorRule."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$SourceCode) {
            throw "Error! The required parameter `SourceCode` missing when calling validateConnectorRule."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($SourceCode -is [array])) {
            $LocalVarBodyParameter = $SourceCode | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $SourceCode | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConnectorRuleValidationResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

