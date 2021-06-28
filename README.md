# neovim

Installing [neovim](https://github.com/neovim/neovim) and my custom configuration, plugins, etc...

At the time of writing, the stable version of neovim is 0.4, but some of the plugins I use require version >0.5. The steps below detail the installation of the unstable/nightly builds of neovim.

## Installing on macOS

### Install neovim with brew

```text
$ brew install --HEAD luajit
$ brew install --HEAD neovim
```

### Install additional binaries with brew

* node.js

    ```text
    $ brew install node.js
    ```

* fzf

    ```text
    $ brew install fzf
    $ $(brew --prefix)/opt/fzf/install
    ```

* ripgrep

    ```text
    $ brew install ripgrep
    ```

## Installing on Ubuntu WSL

### Install neovim with apt

Ubuntu installation instructions say to add the unstable repository using `add-apt-repository`, but that may not work depending on your proxy configuration. The error below is not obvious that the proxy is the problem.

```text
$ sudo -E add-apt-repository ppa:neovim-ppa/unstable
Cannot add PPA: 'ppa:~neovim-ppa/ubuntu/unstable'.
```

You can manually add the repository.

1. Update repository sources

    Create a file in `/etc/apt/sources.list.d`

    ```text
    $ sudo cat /etc/apt/sources.list.d/neovim-unstable.list
    # neovim - nightly build
    deb http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu hirsute main 
    deb-src http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu hirsute main 
    ```

2. Get PUBKEY value

    Run `apt update`, which will fail, but it will give an error that containts the PUBKEY that we need for the next step.

    ```text
    $ sudo apt update
    Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
    Hit:2 http://archive.ubuntu.com/ubuntu focal InRelease
    Get:3 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal InRelease [18.1 kB]
    Get:4 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
    Get:5 http://archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
    Err:3 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal InRelease
    The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 55F96FCF8231B6DD
    Reading package lists... Done
    W: GPG error: http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 55F96FCF8231B6DD
    E: The repository 'http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal InRelease' is not signed.
    N: Updating from such a repository can't be done securely, and is therefore disabled by default.
    N: See apt-secure(8) manpage for repository creation and user configuration details.
    ```

3. Download and add PUBKEY

    Use the PUBKEY above and add it to the URL below to add the key.

    ```text
    $ curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x55F96FCF8231B6DD" | sudo apt-key add
    OK
    ```

4. Run apt update

    ```text
    $ sudo apt update
    Get:1 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal InRelease [18.1 kB]
    Get:2 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
    Hit:3 http://archive.ubuntu.com/ubuntu focal InRelease
    Get:4 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
    Get:5 http://archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
    Get:6 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal/main Sources [796 B]
    Get:7 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal/main amd64 Packages [588 B]
    Get:8 http://ppa.launchpad.net/neovim-ppa/unstable/ubuntu focal/main Translation-en [200 B]
    Fetched 348 kB in 45s (7660 B/s)
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    All packages are up to date.
    ```

5. Install neovim

    ```text
    $ sudo apt install neovim
    ```

### Install additional binaries with apt

* node.js

    ```text
    $ sudo apt install npm
    ```

* fzf

    ```text
    $ sudo apt install fzf
    ```

* ripgrep

    ```text
    $ sudo apt install ripgrep
    ```

## Clone configuration files

```text
$ mkdir -p ~/.config/nvim
$ git clone https://github.com/Kristijan/neovim.git ~/.config/nvim
```

## Install Plug

Follow the installation instructions at [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## Install plugins

Start `nvim` and run `:PlugInstall`. When you first state it, it will error because it can't find themes and plugins, but you can ignore that, as they'll be installed by Plug.
