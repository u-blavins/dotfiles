# dotfiles
Repository containing dotfiles used for workspace setups

## Mac OS Installations

### Brew
- [brew](https://brew.sh/) (package manager for macos)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Python
- [uv](https://docs.astral.sh/uv/) (Python version, package, and project manager)
- [pre-commit](https://formulae.brew.sh/formula/pre-commit)

```shell
brew install uv
brew install pre-commit
```
<details>
<summary><h4>Python management via uv</h4></summary>

```shell
uv python list                  # see available and installed Python versions
uv python install 3.14          # install Python 3.14
uv python pin 3.14              # pin Python version for a project (.python-version)
uv venv --python 3.14           # create a virtual environment
uv run python script.py         # run using the pinned Python version
uvx ruff check .                # run ruff without installing globally
```
</details>

### Golang
- [golang](https://formulae.brew.sh/formula/go) (golang)

```shell
brew install go
```

### Java
- [sdkman](https://sdkman.io/) (sdk installer and manager)

```shell
$ curl -s "https://get.sdkman.io" | bash
```

<details>
<summary><h4>Java JDK installation via SDKMAN</h4></summary>
Before running the next set of commands, please ensure that your .zprofile is updated 
with the profile in this repo.

```shell
sdk list java | grep amzn  <-- find Java Corretto JDK versions available
sdk install java {Identifier}  <-- install Java Corretto JDK version i.e. 8.0.402-amzn
```

In the `.zprofile`, there are aliases for Java 17, 21, and 25 (Amazon Corretto LTS). They can be modified by installing
the preferred version and updating the `.zprofile`. If using the provided profile, run the 
following:

```shell
sdk install java 17.0.21.1.2-amzn
sdk install java 21.0.13.1.2-amzn
sdk install java 25.0.5.1.2-amzn
```

Then switch Java versions by entering `java17`, `java21`, `java25`:

```shell
java21

> Using java version 21.0.13.1.2-amzn in this shell.
```

</details>

### JavaScript
- [nvm](https://formulae.brew.sh/formula/nvm)

```shell
brew install nvm
```

### AWS CLI

- [aws cli](https://formulae.brew.sh/formula/awscli)
- [aws-vault](https://formulae.brew.sh/formula/aws-vault)

```shell
brew install awscli
brew install aws-vault
```

### Terraform

- [tfenv](https://formulae.brew.sh/formula/tfenv)

```shell
brew install tfenv

tfenv list-remote # get list of remote versions of terraform
tfenv install <version>
tfenv use <version>

terraform --version
```

### Dotnet

- [dotnet-sdk-versions](https://github.com/isen-ng/homebrew-dotnet-sdk-versions?tab=readme-ov-file)

```shell
brew tap isen-ng/dotnet-sdk-versions
brew install --cask <version> # dotnet-sdk8-0-200 and dotnet-sdk6-0-400

dotnet --list-sdks
```

### CLI & Dev Tools

```shell
brew install starship fzf ripgrep fd jq yq git-delta bat
```

Or install everything in one shot with the included `Brewfile`:

```shell
brew bundle --file=Brewfile
```
