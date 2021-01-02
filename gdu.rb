class Gdu < Formula
  desc "Disk usage analyzer with console interface written in Go"
  homepage "https://github.com/dundee/gdu"
  url "https://github.com/dundee/gdu/archive/v1.6.0.tar.gz"
  sha256 "f4cb8b7450b8996b80983087dfde65528a9862fe1f412c345d66556149d79623"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags=\"-s -w -X 'main.AppVersion=v1.6.0'\"", "."
    bin.install "gdu" => "gdu"
  end

  test do
    system "#{bin}/gdu" "-v"
  end
end
