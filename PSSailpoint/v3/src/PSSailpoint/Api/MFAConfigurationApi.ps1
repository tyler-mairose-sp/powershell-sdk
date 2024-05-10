#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Delete MFA method configuration

.DESCRIPTION

This API removes the configuration for the specified MFA method. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER Method
The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaOktaConfig
#>
function Remove-MFAConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Method},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-MFAConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/{method}/delete'
        if (!$Method) {
            throw "Error! The required parameter `Method` missing when calling deleteMFAConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{method}', [System.Web.HTTPUtility]::UrlEncode($Method))



        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaOktaConfig" `
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

Configuration of Duo MFA method

.DESCRIPTION

This API returns the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaDuoConfig
#>
function Get-MFADuoConfig {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-MFADuoConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/duo-web/config'



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaDuoConfig" `
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

Configuration of KBA MFA method

.DESCRIPTION

This API returns the KBA configuration for MFA. A token with USER or ORG_ADMIN authority is required to call this API.

.PARAMETER AllLanguages
Indicator whether the question text should be returned in all configured languages    * If true, the question text is returned in all languages that it is configured in.    * If false, the question text is returned in the user locale if available, else for the default locale.     * If not passed, it behaves the same way as passing this parameter as false

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

KbaQuestion[]
#>
function Get-MFAKbaConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${AllLanguages},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-MFAKbaConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/kba/config'

        if ($AllLanguages) {
            $LocalVarQueryParameters['allLanguages'] = $AllLanguages
        }



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "KbaQuestion[]" `
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

Configuration of Okta MFA method

.DESCRIPTION

This API returns the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaOktaConfig
#>
function Get-MFAOktaConfig {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-MFAOktaConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/okta-verify/config'



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaOktaConfig" `
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

Set Duo MFA configuration

.DESCRIPTION

This API sets the configuration of an Duo MFA method. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER MfaDuoConfig
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaDuoConfig
#>
function Set-MFADuoConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${MfaDuoConfig},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-MFADuoConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/duo-web/config'

        if (!$MfaDuoConfig) {
            throw "Error! The required parameter `MfaDuoConfig` missing when calling setMFADuoConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($MfaDuoConfig -is [array])) {
            $LocalVarBodyParameter = $MfaDuoConfig | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $MfaDuoConfig | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaDuoConfig" `
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

Set MFA KBA configuration

.DESCRIPTION

This API sets answers to challenge questions.  Any configured questions omitted from the request are removed from user KBA configuration. A token with USER authority is required to call this API.

.PARAMETER KbaAnswerRequestItem
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

KbaAnswerResponseItem[]
#>
function Set-MFAKBAConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${KbaAnswerRequestItem},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-MFAKBAConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/kba/config/answers'

        if (!$KbaAnswerRequestItem) {
            throw "Error! The required parameter `KbaAnswerRequestItem` missing when calling setMFAKBAConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($KbaAnswerRequestItem -is [array])) {
            $LocalVarBodyParameter = $KbaAnswerRequestItem | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $KbaAnswerRequestItem | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "KbaAnswerResponseItem[]" `
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

Set Okta MFA configuration

.DESCRIPTION

This API sets the configuration of an Okta MFA method. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER MfaOktaConfig
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaOktaConfig
#>
function Set-MFAOktaConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${MfaOktaConfig},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-MFAOktaConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/okta-verify/config'

        if (!$MfaOktaConfig) {
            throw "Error! The required parameter `MfaOktaConfig` missing when calling setMFAOktaConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($MfaOktaConfig -is [array])) {
            $LocalVarBodyParameter = $MfaOktaConfig | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $MfaOktaConfig | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaOktaConfig" `
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

MFA method's test configuration

.DESCRIPTION

This API validates that the configuration is valid and will properly authenticate with the MFA provider identified by the method path parameter. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER Method
The name of the MFA method. The currently supported method names are 'okta-verify' and 'duo-web'.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MfaConfigTestResponse
#>
function Test-MFAConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Method},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-MFAConfig' | Write-Debug
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

        $LocalVarUri = '/mfa/{method}/test'
        if (!$Method) {
            throw "Error! The required parameter `Method` missing when calling testMFAConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{method}', [System.Web.HTTPUtility]::UrlEncode($Method))



        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "MfaConfigTestResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

