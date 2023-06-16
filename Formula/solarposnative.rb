# Generated with JReleaser 1.6.0 at 2023-06-16T13:58:09.31803228Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.4/solarpos-0.3.4-osx-x86_64.zip"
  version "0.3.4"
  sha256 "54a44f7dac0c8d508dc159408ad085f0ee81f1f5d1a1535e7a32da63d5ad647e"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.4", output
  end
end
