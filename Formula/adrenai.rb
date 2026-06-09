class Adrenai < Formula
  desc "Repository-aware configuration for AI coding agents"
  homepage "https://nitikeshq.github.io/adrenai/"
  url "https://github.com/nitikeshq/adrenai/releases/download/v1.0.1/adrenai-1.0.1.tgz"
  version "1.0.1"
  sha256 "cf8614cd8c87e6ff58eb17b265e823c5a097a36cea64103d0d19765d0af4bcf9"
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
