# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.0.0/octopus_2.0.0_macOS_arm64.tar.gz"
      sha256 "93c8285edc78d64ebfa5c0ba3361699775034df0e381ef35802fed34f33cd246"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.0.0/octopus_2.0.0_macOS_amd64.tar.gz"
      sha256 "87d58dcecb8786340a6a1a15f150be83134c5fedf2286cca5d21ce27f24fd4c3"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.0.0/octopus_2.0.0_linux_arm64.tar.gz"
      sha256 "dfbebf990a211a0132eabd92b8d0695f121b56d225ce96d659f4466753bef8e4"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.0.0/octopus_2.0.0_linux_amd64.tar.gz"
      sha256 "6fa777afe29f78b859db823b5de7134711731a7c6db0ac4b882926ada103db65"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
  end

  test do
    system "#{bin}/octopus", "--help"
  end
end
