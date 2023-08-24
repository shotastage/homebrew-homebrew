cask "google-one-vpn" do
    version "1.7.0"
    sha256 "077b026c46d5fb67c29a572ecee7df83364bec4b6e948c3122ab439cf4ebce79"
    url "https://dl.google.com/google-one/VpnByGoogleOne.dmg"

    name "VPN By Google One"
    homepage "https://one.google.com/about/vpn"

    pkg "VpnByGoogleOne.pkg"

    uninstall pkgutil: "com.google.one", delete: []
end
