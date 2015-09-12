# InstallChocolateyWithProxy
NTLM認証のあるPROXY環境下でも[Chocolatey](https://chocolatey.org/)のインストールを可能にするPowerShellスクリプトです。

Chocolateyは一度インストールしてしまえば、この手のツールには珍しくNTLM認証のあるProxyでもちゃんと動いてくれますが、サイトに公開されているインストール用スクリプトでは、初回インストール時NTLM認証に阻まれてインストール出来ないという残念な欠点がありました。

このため、このスクリプトではこの残念さを取り除くべく、インストールのスクリプトをProxy対応にしました。

## 使い方

srcディレクトリにあるInstallChocolateyWProxy.ps1を管理者権限で実行してください。

## License

このスクリプトはApache License Version 2.0ライセンスです。

このスクリプトはChocolateyのソースコードを参照しており、そのライセンス、権利者については以下を参照してください。

* Chocolatey は Apache License Version 2.0の元に配布されています。
* Chocolateyの権利者に関しては、CREDIT of Chocolateyを参照してください。
