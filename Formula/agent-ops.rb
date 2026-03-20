class AgentOps < Formula
  desc "TUI for monitoring and resuming Claude Code agent sessions in tmux"
  homepage "https://github.com/swibrow/agent-ops"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.3.0/agent-ops_0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "8014ad55745a01d8bc170f2ac747430cf16776bf4affe01a762c298fe0e0a785"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.3.0/agent-ops_0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "eea26f9f9f489dbaba7ba9c3e0de8ba5225e080a6f923f369f47ddff210578ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.3.0/agent-ops_0.3.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "948596e159c2fb4d5597aaab93e9340d6b190209cf3aa341a1342b33e43b99ae"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.3.0/agent-ops_0.3.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14f23a8a3ca6daa756455ba4c9fc6f33283e050052bc32d85f4c4c87a9180d42"
    end
  end

  def install
    bin.install "agent-ops"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-ops --version", 2)
  end
end
