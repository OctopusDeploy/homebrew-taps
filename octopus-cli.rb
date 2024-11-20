# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "2.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.12.0/octopus_2.12.0_macOS_amd64.tar.gz"
      sha256 "0289143d6714cf162e10818c7c358e0727bc52ba1cc9df096c37801344be0efd"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    on_arm do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.12.0/octopus_2.12.0_macOS_arm64.tar.gz"
      sha256 "274812ffcf215d4e3a21046866e7cf1ff193147d618aeed3be2660d0723b623d"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.12.0/octopus_2.12.0_linux_amd64.tar.gz"
        sha256 "768111e928a1c59b8e7ce70612cf13e3de8004769bcfe79b80d7a3029ac89805"

        def install
          bin.install "octopus"
          # future: enhance the CLI to generate completion scripts, and install them as follows
          # bash_completion.install "completions/octopus.bash" => "octopus"
          # zsh_completion.install "completions/octopus.zsh" => "_octopus"
          # fish_completion.install "completions/octopus.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.12.0/octopus_2.12.0_linux_arm64.tar.gz"
        sha256 "a197f0fe7c724993b9a5bb2ffc856c9f82161e6b02e2f2312aa6e5718c863023"

        def install
          bin.install "octopus"
          # future: enhance the CLI to generate completion scripts, and install them as follows
          # bash_completion.install "completions/octopus.bash" => "octopus"
          # zsh_completion.install "completions/octopus.zsh" => "_octopus"
          # fish_completion.install "completions/octopus.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
