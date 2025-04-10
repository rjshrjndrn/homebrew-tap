# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Templater < Formula
  desc "A templating tool using helm flavoured sprig"
  homepage "https://github.com/rjshrjndrn/templater"
  version "5.0.1"

  on_macos do
    on_intel do
      url "https://github.com/rjshrjndrn/templater/releases/download/v5.0.1/templater_5.0.1_darwin_amd64.tar.gz"
      sha256 "5bb75272db9cc39b0bf50cbf7fb6683559bb49642149f4955d561f73a52308cb"

      def install
        bin.install "templater"
      end
    end
    on_arm do
      url "https://github.com/rjshrjndrn/templater/releases/download/v5.0.1/templater_5.0.1_darwin_arm64.tar.gz"
      sha256 "08999ff95ee9e7d4a1ea1634405fb59741b1969fb1387d39b3e5cb93165d089b"

      def install
        bin.install "templater"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v5.0.1/templater_5.0.1_linux_amd64.tar.gz"
        sha256 "780c6b26f0c2c5f0566543b685591b7c5c775103e7ebfc023321c1a40b784c5b"

        def install
          bin.install "templater"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v5.0.1/templater_5.0.1_linux_arm64.tar.gz"
        sha256 "802e2646e27ec51e8d1fea1304a6a6570f76dc013c8fb74d3686a82f68cd207f"

        def install
          bin.install "templater"
        end
      end
    end
  end

  test do
    system "#{bin}/templater --version"
  end
end
