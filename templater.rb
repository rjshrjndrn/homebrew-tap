# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Templater < Formula
  desc "A templating tool using helm flavoured sprig"
  homepage "https://github.com/rjshrjndrn/templater"
  version "4.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.2/templater_4.0.2_darwin_amd64.tar.gz"
      sha256 "2ddd0164e6b31faa375b3382033c1e5ca6d06c9b53e522bdd60e7ff5f05031f1"

      def install
        bin.install "templater"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.2/templater_4.0.2_darwin_arm64.tar.gz"
      sha256 "c137b4a2f8a09fa87cc46789680dfd6fac50d18a9db0f0af1e75c6e8b4a84942"

      def install
        bin.install "templater"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.2/templater_4.0.2_linux_arm64.tar.gz"
      sha256 "c3e2cdccb4ad7ece8094eb029eba8dd46d13e7a7d826b18a6cb7c8f099a30114"

      def install
        bin.install "templater"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.2/templater_4.0.2_linux_amd64.tar.gz"
      sha256 "ecd173ba821bdecdc9424bc0135e774928b1d224f0fe95c68acfb2f794bdd80b"

      def install
        bin.install "templater"
      end
    end
  end

  test do
    system "#{bin}/templater --version"
  end
end
