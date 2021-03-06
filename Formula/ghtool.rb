# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghtool < Formula
  desc "GitHub API Tool"
  homepage "https://github.com/na4ma4/ghtool"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.2.0/ghtool_0.2.0_darwin_arm64.tar.gz"
      sha256 "9b29bd5894e8857774ad2e6c5088abc0b0f8601f9c8e2a0670ee3c42e1c54102"

      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.2.0/ghtool_0.2.0_darwin_amd64.tar.gz"
      sha256 "0fa1b6bbc1e3c003ce75f775207de27c8f6ff2a8e5f9157226b12e4238d15f2f"

      def install
        bin.install "ghtool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.2.0/ghtool_0.2.0_linux_arm64.tar.gz"
      sha256 "95fb8e8007d66a7a033c7fe5a3454b8bd42241155f1fbe50ef5e48630de41d8c"

      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.2.0/ghtool_0.2.0_linux_armv6.tar.gz"
      sha256 "5e813b4173a08568b7acc9040322dde1b7771266352b6fe55bfb7a7b893f3fe1"

      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.2.0/ghtool_0.2.0_linux_amd64.tar.gz"
      sha256 "c3eeccd744eb26edcd084bab0329d40bde81cb4bab50e13aff4b998d538b3801"

      def install
        bin.install "ghtool"
      end
    end
  end

  test do
    system "#{bin}/ghtool --version"
  end
end
