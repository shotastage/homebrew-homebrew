cask "zulu-jdk8" do
    version "8.52.0.23,8.0.282"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "4eaf47acd097ad3102f55ddc586f4e1fbb3b8b8115d5cb2c455a54b0d84ee1bc"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "c6d1795d535cb448de567faf1449610fce69e5fe2e8a443a3f96f4036319f809"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end
    
    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"
  
    depends_on macos: ">= :big_sur"
  
    pkg "Double-Click to Install Zulu 8.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]
    
    caveats <<~EOS
      Zulu version OepnJDK Version 8 LTS for Apple Silicon ARM
    EOS
end
