class BasicteXUniversal < Formula
  version "2020"
  sha256 "3b6080e94b7a8e3fa07e55e844e74afa6650ced0a27ce90b2d87855f23750b82s"
  url "https://www.tug.org/mactex/BasicTeX-2020-Universal.pkg"
  name "BasicTeXUniversal"
  desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
  homepage "https://www.tug.org/mactex/aboutarm.html"


  depends_on macos: ">= :big_sur", cask: "basictex-base"


  conflicts_with "basictex"

  def install
    system 'pkgutil', '--expand', 'BasicTeX-2020-Universal.pkg', './tmp/'
    system 'pax', '-rz', '-f', .'./tmp/BasicTeX-2020-Universal-Start.pkg/Payload'
    system 'mv', 'usr/local/texlive/2020/bin/custom', '/usr/local/texlive/2020/bin/'
  end
end
