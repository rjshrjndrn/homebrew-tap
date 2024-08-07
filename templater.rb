# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Templater < Formula
  desc "A templating tool using helm flavoured sprig"
  homepage "https://github.com/rjshrjndrn/templater"
  version "4.0.3"

  on_macos do
    on_intel do
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.3/templater_4.0.3_darwin_amd64.tar.gz"
      sha256 "0da33cd900dc0c6ff8d1ddb6a9b487aaf459fd33981406fab44ce7d93a91fea6"

      def install
        bin.install "templater"
      end
    end
    on_arm do
      url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.3/templater_4.0.3_darwin_arm64.tar.gz"
      sha256 "feb0388e5a7ca7d913198d4adae6461ae2b423e3d9bf1ef156db0d279f604edb"

      def install
        bin.install "templater"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.3/templater_4.0.3_linux_amd64.tar.gz"
        sha256 "17031c415d32d0aa4ecf456d410c5692aeb98a7989c1eaa53c0e306a96c2f279"

        def install
          bin.install "templater"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rjshrjndrn/templater/releases/download/v4.0.3/templater_4.0.3_linux_arm64.tar.gz"
        sha256 "edf4f1be8ca1ca78abb727f566e3579cb5ccf093b3d6825b72de17c3614a7ea3"

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
