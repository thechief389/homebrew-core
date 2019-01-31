class CAlgorithms < Formula
  desc "Library of common data structures and algorithms written in C"
  homepage "https://fragglet.github.io/c-algorithms/"
  url "https://github.com/fragglet/c-algorithms/releases/download/c-algorithms-1.2.0/c-algorithms-1.2.0.tar.gz"
  sha256 "15946ce9d94a53aafa879739ccc6a550ca48e0be8888207bb6d0ac22f0086442"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end
