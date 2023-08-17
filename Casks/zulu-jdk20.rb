cask "zulu-jdk20" do
    version "19.32.11,20.0.2"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "c5c196a0a25eca25a22edee325ff8ee2cd96aa9bfdee0ca3554dfbfd31dba8df"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "6f02981801832230edd0a0091b8de10873d3271cd7cc4d7a9ed439b046fa4b1f"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end

    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"

    pkg "Double-Click to Install Azul Zulu JDK 20.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]

    caveats <<~EOS
      Zulu version OepnJDK Version 20 Latest for Apple Silicon ARM
    EOS
end
