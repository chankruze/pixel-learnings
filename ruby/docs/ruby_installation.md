## Using `rbenv` (Recommended)

### 1. Setup rbenv and ruby-build

Run the following commands to install rbenv and ruby-build (a plugin to install Ruby versions):

```bash
# Install dependencies
sudo apt update
sudo apt install -y build-essential libssl-dev libreadline-dev zlib1g-dev git libffi-dev libyaml-dev

# Clone rbenv and set up path
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# For zsh
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(rbenv init -)"' >> ~/.zshrc
# source ~/.zshrc
# command -v rbenv  # Should output 'rbenv'

# Install ruby-build (to install Ruby versions)
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### 2. Install a Specific Ruby Version

```bash
# Check available versions
rbenv install -l

# Install a specific version (e.g., 3.2.2):
rbenv install 3.2.2
rbenv global 3.2.2  # Set it as default version

ruby -v  # Should show Ruby 3.2.2
```

## Using `RVM` (old but popular)

```bash
# Install RVM
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# Install Ruby
rvm install 3.2.2
rvm use 3.2.2 --default
ruby -v
```

## Output

```bash
➜  ruby-learnings git:(master) ✗ ruby -v
ruby 3.2.8 (2025-03-26 revision 13f495dc2c) [x86_64-linux]
```
