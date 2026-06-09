class Adrenai < Formula
  desc "Repository-aware configuration for AI coding agents"
  homepage "https://nitikeshq.github.io/adrenai/"
  url "https://github.com/nitikeshq/adrenai/releases/download/v1.0.0/adrenai-1.0.0.tgz"
  version "1.0.0"
  sha256 "77555837661b9a52cd05348f9b40974a74b2f9cd1b4dc9effbe3762b1dd0a162"
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
