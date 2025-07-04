# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Templater < Formula
  desc "A templating tool using helm flavoured sprig"
  homepage "https://github.com/rjshrjndrn/templater"
  version "6.0.0"

  on_macos do
    on_intel do
      url "https://github.com/rjshrjndrn/templater/releases/download/v6.0.0/templater_6.0.0_darwin_amd64.tar.gz"
      sha256 "eb40e2db1ad29d7c7d0ca5708be168622adc01ca858180f60a25c63d691cfd0b"

      def install
        bin.install "templater"
      end
    end
    on_arm do
      url "https://github.com/rjshrjndrn/templater/releases/download/v6.0.0/templater_6.0.0_darwin_arm64.tar.gz"
      sha256 "dd300081b3f197517148e25ceb626bfe119a64b01922d3c6b0a270247e7e156d"

      def install
        bin.install "templater"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v6.0.0/templater_6.0.0_linux_amd64.tar.gz"
        sha256 "e569e6a7e183306df8de2aa2681a8b143170dfa3c633956bb112b2b0903c8aed"

        def install
          bin.install "templater"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v6.0.0/templater_6.0.0_linux_arm64.tar.gz"
        sha256 "c7486137b942c660debbde3139240547a8ac2b31fbe517c8fb108318f21d36df"

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
