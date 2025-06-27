# typstyle GitHub Action
GitHub Action to run [typstyle](https://github.com/Enter-tainer/typstyle), a Typst formatter.

## Usage
1. Create `.github/workflows/ci.yml`
2. Configure `ci.yml`
3. Commit and push `ci.yml`

### Examples
The following formats all `.typ` files in branch `main` on pushes, then pushes the changes.
`.github/workflows/ci.yml`
```yml
name: CI
on:
  push:
    branches: main

jobs:
  typstyle:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
    - name: Checkout
      uses: actions/checkout@main
      with:
        ref: ${{ github.head_ref }}
    - name: Run typstyle
      uses: typstyle-rs/typstyle-action@main
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "style: format using typstyle"
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/typstyle-rs/typstyle-action/issues) to report bugs, crashes, and other issues.

## License
typstyle-action is under the [MIT License](https://github.com/typstyle-rs/typstyle-action/blob/main/LICENSE).
