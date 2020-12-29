class BasictexUniversal < Formula

  url "https://www.tug.org/mactex/BasicTeX-2020-Universal.pkg"
  name "BasicTeXUniversal"
  desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
  homepage "https://www.tug.org/mactex/aboutarm.html"
  sha256 "3b6080e94b7a8e3fa07e55e844e74afa6650ced0a27ce90b2d87855f23750b82s"


  depends_on macos: ">= :big_sur"
  depends_on cask: "basictex-base"

  conflicts_with cask: [
    "mactex-no-gui",
    "mactex",
    "basictex",
  ]

  args1 = %W[
    --expand
    BasicTeX-2020-Universal.pkg
    ./tmp/
  ]

  def install
    system "sl"
    # system "pkgutil", *args1
    # system "pax", "-rz", "-f", "./tmp/BasicTeX-2020-Universal-Start.pkg/Payload"
    # system "mv", "./tmp/usr/local/texlive/2020/bin/custom", "/usr/local/texlive/2020/bin/"
  end

  test do
    system "false"
  end
end
