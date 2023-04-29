# Generated with JReleaser 1.6.0 at 2023-04-29T16:17:03.360999442Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.3/solarpos-0.3.3-osx-x86_64.zip"
  version "0.3.3"
  sha256 "6ea8de45e250b8978512eea90ebe4b368db1c5687a8b8003966a9231c1bfd42b"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.3", output
  end
end
