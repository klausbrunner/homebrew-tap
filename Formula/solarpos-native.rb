# Generated with JReleaser 1.19.0 at 2025-08-27T07:59:24.489741053Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.5/solarpos-0.7.5-osx-aarch_64.zip"
  version "0.7.5"
  sha256 "59e465f878fd3c503f3074eda95ce006e6fc1a32ff3dd45afca37562f56e9fcd"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.5", output
  end
end
