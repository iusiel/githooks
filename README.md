# Git hooks

Git hooks that I want to use on my projects. Planning to use in conjuction with this https://github.com/iusiel/linters

## Installation

1. Create **githooks** directory inside project root.
1. Clone repository inside **githooks** directory.
1. Create soft link for the git hooks (Make sure you are running this command on the project root)
```
sudo ln -s ../../githooks/pre-commit.sh .git/hooks/pre-commit
sudo chmod +x githooks/pre-commit.sh
```

## CHANGELOG

### 1.0 (2022-04-17)
1. Added pre-commit