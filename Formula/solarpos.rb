# Generated with JReleaser 1.5.0 at 2023-03-05T20:20:42.77111709Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.2.0/solarpos-0.2.0.zip"
  version "0.2.0"
  sha256 "8b3d233eb15cc6d6409214b7b1cfdbee9f61a19b10059eacb8311c5bac943f7c"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.2.0", output
  end
end
