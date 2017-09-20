class Mms < Formula
  desc "My mock server, mock HTTP server and proxy"
  homepage "https://github.com/LiushuiXiaoxia/MyMockServer"
  url "https://github.com/LiushuiXiaoxia/MyMockServer/raw/master/deploy/mms-0.2.zip"
  sha256 "1f3c59896a82f043a1f1ec4b3f41c853f8efca8ee63e7031255101e4895821aa"

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
