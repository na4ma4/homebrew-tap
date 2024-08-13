# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghtool < Formula
  desc "GitHub API Tool"
  homepage "https://github.com/na4ma4/ghtool"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/na4ma4/ghtool/releases/download/v0.3.0/ghtool_0.3.0_darwin_amd64.tar.gz"
      sha256 "957cc25230f089b4ff950aa026385851e7c41c49a6ab2ef9e17e9efc69eab562"

      def install
        bin.install "ghtool"
      end
    end
    on_arm do
      url "https://github.com/na4ma4/ghtool/releases/download/v0.3.0/ghtool_0.3.0_darwin_arm64.tar.gz"
      sha256 "0f9ad91896d904f422953d5e1c305e77e36c7619ffdf1fdb9411f10e5125f4bb"

      def install
        bin.install "ghtool"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/na4ma4/ghtool/releases/download/v0.3.0/ghtool_0.3.0_linux_amd64.tar.gz"
        sha256 "39685e9ad5d493f4894ec2f0b2515c5d9977e8d35c6919d4f86bf0fac4346e68"

        def install
          bin.install "ghtool"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/na4ma4/ghtool/releases/download/v0.3.0/ghtool_0.3.0_linux_armv6.tar.gz"
        sha256 "a7ea185ea770de904b6604eb67f43f42f6d62f2c329cf0097fcb15d8cbf7b5f4"

        def install
          bin.install "ghtool"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/na4ma4/ghtool/releases/download/v0.3.0/ghtool_0.3.0_linux_arm64.tar.gz"
        sha256 "8150a6448fa73ec4758e697361562ad3fc10f7b568401637ce2893ee5fa51596"

        def install
          bin.install "ghtool"
        end
      end
    end
  end

  test do
    system "#{bin}/ghtool --version"
  end
end
