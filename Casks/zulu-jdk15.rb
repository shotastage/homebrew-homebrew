cask "zulu-jdk15" do
    version "15.28.1013,15.0.1"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "055a493236ed0023216f40d4e222ebc9cebd13bcaa8288d9f6c6c5c2d61f30ee"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "991311eaa854b2c6ec7747d548d3208099b293ef2eb3727320ba83c875154777"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end
  
    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"
  
    depends_on macos: ">= :big_sur"
  
    pkg "Double-Click to Install Zulu 15.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]
    
    caveats <<~EOS
      Zulu version OepnJDK Version 15 Latest for Apple Silicon ARM
    EOS
end
