# Generated with JReleaser 1.19.0 at 2025-08-26T06:30:55.152143129Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.0/solarpos-0.7.0-osx-aarch_64.zip"
  version "0.7.0"
  sha256 "321cd6d79761def8855ef9d3453f7317ca9f120bff9d36f501cebca3a14cf29a"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.0", output
  end
end
