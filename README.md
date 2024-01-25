# dotfiles
Repository containing dotfiles used for workspace setups

## Mac OS Installations

### Brew
- [brew](https://brew.sh/) (package manager for macos)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Python
- [pyenv](https://formulae.brew.sh/formula/pyenv) (python environment)
- [pipenv](https://formulae.brew.sh/formula/pipenv) (pip environment manager)
- [xz](https://formulae.brew.sh/formula/xz) (required for recent python versions)

```shell
brew install pyenv
brew install pipenv
brew install xz
```
<details>
<summary><h4>Python installation via Pyenv</h4></summary>
Before running the next set of commands, please ensure that your .zprofile is updated 
with the profile in this repo.

```shell
pyenv install --list | grep 3.X  <-- find Python version available
pyenv install 3.X.X  <-- install Python version through pyenv
pyenv versions  <-- see versions of Python installed
pyenv global 3.X.X  <-- set the Python version globally to an installed version of Python
```

You can verify the Python version by doing:

`python --version` or `python3 --version`
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
<summary><h4>Java SDK installation via SDKMAN</h4></summary>
Before running the next set of commands, please ensure that your .zprofile is updated 
with the profile in this repo.

```shell
sdk list java | grep amzn  <-- find Java Corretto JDK versions available
sdk install java {Identifier}  <-- install Java Corretto JDK version i.e. 8.0.402-amzn
```

In the `.zprofile`, there are aliases for Java 8, 11, 17, 21. They can be modified by installing
the preferred version and updating the `.zprofile`. If using the provided profile, run the 
following:

```shell
sdk install java 8.0.402-amzn
sdk install java 11.0.22-amzn
sdk install java 17.0.10-amzn
sdk install java 21.0.2-amzn
```

Then switch Java versions by entering `java8`, `java11`, `java17`, `java21`:

```shell
java8

> Using java version 8.0.402-amzn in this shell.
```

</details>
