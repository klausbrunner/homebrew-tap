# Generated with JReleaser 1.11.0 at 2024-04-29T17:39:27.608255609Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.2/solarpos-0.4.2-osx-aarch_64.zip"
  version "0.4.2"
  sha256 "7a9b012933fdb1293c7311ecbcd3f0c8e631baefc987102fa5fb63de4dd3cf36"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.2", output
  end
end
