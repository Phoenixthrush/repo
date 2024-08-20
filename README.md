## Add my APT repo

### Installation (debian based distros):

#### Stable

```shell
curl -sSL phoenixthrush.com/repo/install.sh | bash
```

#### Use that command to add my repo on WSL (Windows)!
```shell
sudo apt update && sudo apt upgrade -y && sudo apt install apt-transport-https curl -y && curl -sSL https://phoenixthrush.com/repo/install.sh | bash
```
<br/>

#### Packages:

- nezuko (Test Application) <br/>
```shell
sudo apt install nezuko -y
```