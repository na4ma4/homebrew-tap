# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ZenggeLc < Formula
  desc "Zengge Light Control Protocol Tool"
  homepage "https://github.com/na4ma4/zengge-lightcontrol"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/na4ma4/zengge-lightcontrol/releases/download/v0.1.0/zengge-lightcontrol_0.1.0_darwin_arm64.tar.gz"
      sha256 "c8c3a35052e2a21b3afabb10dd9bd9cfa5128b6a6ebfb1bf67c0721489aed39a"

      def install
        bin.install "zengge-lc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/na4ma4/zengge-lightcontrol/releases/download/v0.1.0/zengge-lightcontrol_0.1.0_darwin_amd64.tar.gz"
      sha256 "4426ffda5676083823d45e9b65c437f723c15bb88272433ce5ad6fe08d2a658f"

      def install
        bin.install "zengge-lc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/na4ma4/zengge-lightcontrol/releases/download/v0.1.0/zengge-lightcontrol_0.1.0_linux_amd64.tar.gz"
      sha256 "b36299b3389a504a294179539d5697c779e6e06ab7bec1b415b8537eae6b3d19"

      def install
        bin.install "zengge-lc"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/zengge-lightcontrol/releases/download/v0.1.0/zengge-lightcontrol_0.1.0_linux_armv6.tar.gz"
      sha256 "3f115f86ab21383655139fe82c0e02391f00c5f92ce6271c2ddb69d1acbdf00a"

      def install
        bin.install "zengge-lc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/na4ma4/zengge-lightcontrol/releases/download/v0.1.0/zengge-lightcontrol_0.1.0_linux_arm64.tar.gz"
      sha256 "987ba5b344d8039173e34996a8bdd3ca0f743f859413f30a78a9ff26f11afc16"

      def install
        bin.install "zengge-lc"
      end
    end
  end

  test do
    system "#{bin}/zengge-lc --version"
  end
end
