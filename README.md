# typstyle GitHub Action
GitHub Action to run [typstyle](https://github.com/Enter-tainer/typstyle), a Typst formatter.

## Usage
1. Create `.github/workflows/cd.yml`
2. Configure `cd.yml`
3. Commit and push `cd.yml`

### Examples
The following formats all `.typ` files in branch `main` on pushes, then pushes the changes.
`.github/workflows/cd.yml`
```yml
name: CD
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
      uses: grayespinoza/typstyle-action@main
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "style: format using typstyle"
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/typstyle-action/issues) to report bugs, crashes, and other issues.

## License
typstyle-action is under the [MIT License](https://github.com/grayespinoza/typstyle-action/blob/main/LICENSE).
