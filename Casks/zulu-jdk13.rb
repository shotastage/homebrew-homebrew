cask "zulu-jdk13" do
    version "13.35.1025,13.0.5.1"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "e3c249b4a18703202df90f309cffce6e0b6cce50d622cadf849923f2bdafe0c9"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "6dd2115f2124e84b4c6eea160c57a64fc7be3515c659a91656ed2369d0f744bc"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end
    
    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"
  
    depends_on macos: ">= :big_sur"
  
    pkg "Double-Click to Install Zulu 13.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]
    
    caveats <<~EOS
      Zulu version OepnJDK Version 13 MTS for Apple Silicon ARM
    EOS
end
