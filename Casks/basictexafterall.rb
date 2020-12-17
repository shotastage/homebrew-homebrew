class BasicTexAfterAll < Formula
  version '0.0.1'
  url 'https://github.com/shotastage/homebrew-shotacask'
  desc 'Homebrew Automatic Tex Installer for mac.'
  homepage 'https://folio.digital-nichan.com/'

  def install
    system 'ls', '-a'
  end

  test do
    system "false"
  end
end
