function Get-CWMInvoiceinfo {
    [CmdletBinding()]
    param(
        [int]$invoiceId,
        [int]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')][string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all

    )

    $Endpoint = "/finance/info/invoice/"
    
    if($invoiceId){ $Endpoint = Join-Url $Endpoint $invoiceId }   

    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}