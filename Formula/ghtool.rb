# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghtool < Formula
  desc "GitHub API Tool"
  homepage "https://github.com/na4ma4/ghtool"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.4.1/ghtool_0.4.1_darwin_amd64.tar.gz"
      sha256 "905a684ff9968f6066de3ce9d731499a006c6070a3d942cda7e75e3381ff4d72"

      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.4.1/ghtool_0.4.1_darwin_arm64.tar.gz"
      sha256 "b04eeb998478415ae8c4858d8b09f1410b9ccd56d591daaa9af61320a7b98494"

      def install
        bin.install "ghtool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.4.1/ghtool_0.4.1_linux_amd64.tar.gz"
      sha256 "a536920927f34f3b21d71442d8df19dbce3e986c8a8fd044c55e7713ee902663"
      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.4.1/ghtool_0.4.1_linux_armv6.tar.gz"
      sha256 "9b09ff674ab9f85508700b9d5b7a42ed3a7e4bf78fa983c1c2f21c88b236f7c8"
      def install
        bin.install "ghtool"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/ghtool/releases/download/v0.4.1/ghtool_0.4.1_linux_arm64.tar.gz"
      sha256 "bbc5fc8bbaceb0aa193c0d0f0fbb5098d5a608ef3ae566e3f838b365d8dcedcf"
      def install
        bin.install "ghtool"
      end
    end
  end

  test do
    system "#{bin}/ghtool --version"
  end
end
