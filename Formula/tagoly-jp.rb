class TagolyJp < Formula
    desc "軽量コマンドラインでファイルにタグ管理できるツール（日本語版）"
    homepage "https://github.com/meso1007/tagoly-jp"
    version "0.1.0"
  
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/meso1007/tagoly-jp/releases/download/v1.0.0/tagoly-jp-darwin-arm64"
      sha256 "f4e9821763b6cc9b9fb2bbb5ecb1b9808fc70ab75516c6e6d719f0571cc76f7c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://github.com/meso1007/tagoly-jp/releases/download/v1.0.0/tagoly-jp-darwin-amd64"
      sha256 "16d1000469b4f5de630fa15a929db674ccdb64acd5b0322df2da9eec35e6d158"
    elsif OS.linux?
      url "https://github.com/meso1007/tagoly-jp/releases/download/v1.0.0/tagoly-jp-linux-amd64"
      sha256 "951f17a75e5d2cf3d15d35a78e1e5c3a09ea8dfb137b78e54e976c5f4d3b4fff"
    end
  
    def install
      bin.install "tagoly-jp-darwin-arm64" => "tagoly-jp" if OS.mac? && Hardware::CPU.arm?
      bin.install "tagoly-jp-darwin-amd64" => "tagoly-jp" if OS.mac? && Hardware::CPU.intel?
      bin.install "tagoly-jp-linux-amd64" => "tagoly-jp" if OS.linux?
    end
  
    test do
      system "#{bin}/tagoly-jp", "--version"
    end
  end
  