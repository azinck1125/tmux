# tmux config

Minimal, portable tmux setup with a self-contained bootstrap script.

## Install

Clone the repo wherever you want:

```bash
git clone <repo-url> ~/dotfiles/tmux
cd ~/dotfiles/tmux
./bootstrap-tmux.sh
```

---

## What this does

The bootstrap script will:

* Symlink the tmux config:

  ```text
  ~/.tmux.conf -> <repo>/tmux/tmux.conf
  ```

* Install TPM (tmux plugin manager) if missing:

  ```text
  ~/.tmux/plugins/tpm
  ```

---

## After install

Start tmux and install plugins:

```text
prefix + I
```

---

## Structure

```text
tmux/
  bootstrap-tmux.sh
  tmux/
    tmux.conf
```

* `bootstrap-tmux.sh` → handles setup
* `tmux.conf` → actual config

---

## Updating

Pull latest changes:

```bash
git pull
```

No reinstall needed — symlink already points to the repo.

If plugins change:

```text
prefix + I
```

---

## Notes

* Designed for Linux environments (Arch, Ubuntu, AL2, WSL)
* Config path uses default:

  ```text
  ~/.tmux.conf
  ```
* No system-specific logic — same setup everywhere

---

## Troubleshooting

If you already have a tmux config:

```bash
mv ~/.tmux.conf ~/.tmux.conf.bak
```

Then re-run:

```bash
./bootstrap-tmux.sh
```

---

## TL;DR

```bash
git clone <repo-url> ~/dotfiles/tmux
cd ~/dotfiles/tmux
./bootstrap-tmux.sh
```

open tmux → `prefix + I`
