<#
    Copyright (c) 2015 Tadahiro Ishisaka All rights reserved.
    This software is released under the Apache License Version 2.0, see LICENSE(Apache License 2.0).
#>
$url = 'https://chocolatey.org/install.ps1'

$wc = new-object System.Net.WebClient
if (!$wc.Proxy.IsBypassed($url)) {
    $creds = [System.Net.CredentialCache]::DefaultCredentials
    if ($creds -eq $null) {
        $cred = get-credential
        $creds = $cred.GetNetworkCredential();
    }
    $proxyaddress = $wc.Proxy.GetProxy($url).Authority
    Write-host "Using this proxyserver: $proxyaddress"
    $proxy = New-Object System.Net.WebProxy($proxyaddress)
    $proxy.Credentials = $creds
    $wc.Proxy = $proxy
}

iex ($wc.DownloadString($url))