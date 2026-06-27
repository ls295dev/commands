YOUR_GITHUB_USERNAME="lsdev295"
brew tap-new $YOUR_GITHUB_USERNAME/homebrew-tap
brew install gh
gh repo create $YOUR_GITHUB_USERNAME/homebrew-tap --push --public --source "$(brew --repository $YOUR_GITHUB_USERNAME/homebrew-tap)"
