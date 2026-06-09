class Adrenai < Formula
  desc "Repository-aware configuration for AI coding agents"
  homepage "https://nitikeshq.github.io/adrenai/"
  url "https://github.com/nitikeshq/adrenai/releases/download/v1.1.0/adrenai-1.1.0.tgz"
  version "1.1.0"
  sha256 "6f2a11e945576c5d9fc4210079584ca6843c2b1daa6cf87c99cb87fca7afb9a1"
  license "Apache-2.0"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adrenai --version")
  end
end
