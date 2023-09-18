This script must be run as root.
Run it from PowerShell with `wsl.exe -u root -e`.

# パッケージの更新とアップグレード
apt update && apt -y upgrade

# Azure CLIのインストール
# ref. https://learn.microsoft.com/ja-jp/cli/azure/install-azure-cli-linux?pivots=apt#option-2-step-by-step-installation-instructions
apt install -y ca-certificates curl apt-transport-https lsb-release gnupg

mkdir -p /etc/apt/keyring
curl -sLS https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
        tee /etc/apt/keyrings/microsoft.gpg > /dev/null
chmod go+r /etc/apt/keyrings/microsoft.gpg

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    tee /etc/apt/sources.list.d/azure-cli.list

apt update
apt install -y azure-cli
