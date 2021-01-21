cask "zulu-jdk11" do
    version "11.43.1021,11.0.9.1"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "260a9d1bd3acda5b82bd3d61096fb3eec9985e5c37817ee2d3bb21f1134f0b36"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "18ba26ead6b15b4e8b6f9301053f962f2a7da3fb6f1d49a81957235979783cda"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end
    
    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"
  
    depends_on macos: ">= :big_sur"
  
    pkg "Double-Click to Install Zulu 11.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]
    
    caveats <<~EOS
      Zulu version OepnJDK Version 11 LTS for Apple Silicon ARM
    EOS
end
