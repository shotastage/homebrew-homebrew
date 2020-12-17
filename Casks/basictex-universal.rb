cask "basictex-universal" do
    version "2020"
  
    sha256 "3b6080e94b7a8e3fa07e55e844e74afa6650ced0a27ce90b2d87855f23750b82"

    url "https://www.tug.org/mactex/BasicTeX-2020-Universal.pkg"
    name "BasicTeXUniversal"
    desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
    homepage "https://www.tug.org/mactex/aboutarm.html"
  
    conflicts_with cask: [
      "mactex-no-gui",
      "mactex",
    ]
  
    depends_on macos: ">= :big_sur", cask: "basictex-base"
  
    pkg "BasicTeX-2020-Universal.pkg"
  
    uninstall pkgutil: "org.tug.mactex.basictexuniversal",
              delete:  [
                "/usr/local/texlive/#{version.major}basic/bin/custom",
              ]
  
    zap trash: [
      "/usr/local/texlive/texmf-local",
      "~/Library/texlive/#{version.major}basic",
    ],
        rmdir: [
          "/usr/local/texlive",
          "~/Library/texlive",
        ]
  
    caveats <<~EOS
      You must restart your terminal window for the installation of MacTex CLI tools to take effect.
      Alternatively, Bash and Zsh users can run the command:
        eval "$(/usr/libexec/path_helper)"
    EOS
  end