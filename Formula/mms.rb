class Mms < Formula
  desc "My mock server, mock HTTP server and proxy"
  homepage "https://github.com/LiushuiXiaoxia/MyMockServer"
  url "https://github.com/LiushuiXiaoxia/MyMockServer/raw/develop/deploy/mms-0.3.zip"
  sha256 "06c9a715582dc5d89e47a766fe852007b96d55753bbb8a21ed9644031d3eb880"

  bottle :unneeded
  depends_on :java => "1.6+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/MyMockServer" => "mms"

    lib.install_symlink "#{libexec}/lib" => "mms"
  end

  test do
    File.exist? "#{bin}/mms"
  end
end
