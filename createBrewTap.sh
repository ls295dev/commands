YOUR_GITHUB_USERNAME="ls295dev"
brew tap-new $YOUR_GITHUB_USERNAME/homebrew-tap
gh repo create $YOUR_GITHUB_USERNAME/homebrew-tap --push --public --source "$(brew --repository $YOUR_GITHUB_USERNAME/homebrew-tap)"
