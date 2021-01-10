class Gdu < Formula
  desc "Disk usage analyzer with console interface written in Go"
  homepage "https://github.com/dundee/gdu"
  version "2.2.0"
  url "https://github.com/dundee/gdu/archive/v#{version}.tar.gz"
  sha256 "94f4faaee6c1676b73bb75f031cc3d004b8df713fb12d1dfc90ed592bf302df7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-ldflags=\"-s -w -X 'main.AppVersion=v#{version}'\"", "."
  end

  test do
    system "#{bin}/gdu", "-v"
  end
end
