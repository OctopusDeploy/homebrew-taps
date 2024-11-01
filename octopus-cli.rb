# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OctopusCli < Formula
  desc "The New CLI (octopus) for Octopus Deploy, a user-friendly DevOps tool for developers that supports release management, deployment automation, and operations runbooks"
  homepage "https://github.com/OctopusDeploy/cli"
  version "2.11.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.11.0/octopus_2.11.0_macOS_amd64.tar.gz"
      sha256 "be66e032761b68a030a27e081f506c5f3b18d089642b2418f427cd1c19e7da7a"

      def install
        bin.install "octopus"
        # future: enhance the CLI to generate completion scripts, and install them as follows
        # bash_completion.install "completions/octopus.bash" => "octopus"
        # zsh_completion.install "completions/octopus.zsh" => "_octopus"
        # fish_completion.install "completions/octopus.fish"
      end
    end
    on_arm do
      url "https://github.com/OctopusDeploy/cli/releases/download/v2.11.0/octopus_2.11.0_macOS_arm64.tar.gz"
      sha256 "6f4bf18e5cdd1536120462c24162d18fd631e1c04eaad9aed69548dd8105419d"

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
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.11.0/octopus_2.11.0_linux_amd64.tar.gz"
        sha256 "12f1bd33d3dc1be072c1896d1a47378345cf76a925442857828a1629f207498e"

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
        url "https://github.com/OctopusDeploy/cli/releases/download/v2.11.0/octopus_2.11.0_linux_arm64.tar.gz"
        sha256 "d641cb4ab826ac40bfd7330e9c4e8d795d36e6075873ac51f757d41ed76301cc"

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
