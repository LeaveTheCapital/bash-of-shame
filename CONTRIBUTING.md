# Contributing

Thanks for helping improve bash-of-shame. Bug reports, documentation fixes,
portable aliases, and installer improvements are welcome.

## Before you start

- Search existing issues and pull requests for the same change. For a larger
  change, open an issue first so the approach can be discussed.
- Keep shortcuts portable where possible. Use `$HOME` instead of a machine's
  absolute home directory, and explain platform-specific commands.
- Do not commit shell history, credentials, tokens, private paths, or other
  personal data. The repository contains older dotfile snapshots, so review
  the files you stage carefully.

## Make a change

1. Fork the repository and create a branch in your fork.
2. Make a focused change and update the README when behavior or usage changes.
3. Check shell syntax from the repository root:

   ```sh
   for file in install-zsh-aliases bash_profile.sh env.sh git-prompt.sh lang.sh perlbin.sh aliases.sh BBay/bash-windows/aliases.sh BBay/zsh_history_fix.sh; do sh -n "$file" || exit 1; done
   for file in zsh-aliases.zsh zsh/.zshrc BBay/.zshrc; do zsh -n "$file" || exit 1; done
   git diff --check
   ```

4. If you change the installer, try it with a disposable `HOME` and `ZDOTDIR`
   before using it with your real shell settings. The installer updates a Git
   checkout and writes to `.zshrc` and `~/.local/bin`.
5. Open a pull request against `main`. Describe the change, how you checked
   it, and any platform-specific behavior. Link a related issue if there is one.

Contributors retain copyright in their contributions and agree to license them
under the repository's [MIT License](LICENSE).
