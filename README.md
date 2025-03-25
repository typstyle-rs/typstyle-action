# typstyle GitHub Action
GitHub Action to run [typstyle](https://github.com/Enter-tainer/typstyle), a Typst formatter.

## Usage
1. Create `typstyle.yml` in `.github/workflows/`
2. Paste the following into `typstyle.yml`:
```yml
name: typstyle
on: [push, pull_request]

jobs:
  format:
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
      with:
        args: --check
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "Formatted using typstyle"
```
3. Commit and push `typstyle.yml`

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/typstyle-action/issues) to report bugs, crashes, and other issues.

## License
typstyle-action is under the [MIT License](https://github.com/grayespinoza/typstyle-action/blob/main/LICENSE).
