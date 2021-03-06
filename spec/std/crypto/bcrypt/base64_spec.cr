require "spec"
require "secure_random"
require "crypto/bcrypt/base64"

describe Crypto::Bcrypt::Base64 do
  eqs = {"61dbe7dd1eddc479" => "LhDiWkS1XEOvXUPiWxO1MO",
         "e2a61a8db1245853" => "XRHfLhDfMEPgKRGyLRezKu",
         "e99508d693789c3f" => "XRi3LR.2XBW3Kxa2MUKxXe",
         "d2812979024320c4" => "XBG2KRG3LxiuKhOxKh/hL."}

  eqs.each do |a, b|
    it "encode #{a.inspect} to #{b.inspect}" do
      Crypto::Bcrypt::Base64.encode(a).should eq(b)
    end
    it "decode from #{b.inspect} to #{a.inspect}" do
      Crypto::Bcrypt::Base64.decode(b).should eq(a)
    end
  end
end
