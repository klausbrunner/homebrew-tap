# Generated with JReleaser 1.9.0 at 2023-12-31T09:12:59.471894949Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.1/solarpos-0.4.1.zip"
  version "0.4.1"
  sha256 "79ce0a26e92c61f6b4c95a24f5bf9a118f120de7d2bc25a16dd1a4c04c0f0dfe"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.1", output
  end
end
