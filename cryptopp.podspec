Pod::Spec.new do |s|
  s.name         = "cryptopp"
  s.version      = "5.6.2"
  s.summary      = "Crypto++ Library is a free C++ class library of cryptographic schemes."
  s.description  = <<-DESC
Crypto++ Library is a free C++ class library of cryptographic schemes.
Currently the library contains the following algorithms:

                   algorithm type  name

 authenticated encryption schemes  GCM, CCM, EAX

        high speed stream ciphers  Panama, Sosemanuk, Salsa20, XSalsa20

           AES and AES candidates  AES (Rijndael), RC6, MARS, Twofish, Serpent,
                                   CAST-256

                                   IDEA, Triple-DES (DES-EDE2 and DES-EDE3),
              other block ciphers  Camellia, SEED, RC5, Blowfish, TEA, XTEA,
                                   Skipjack, SHACAL-2

  block cipher modes of operation  ECB, CBC, CBC ciphertext stealing (CTS),
                                   CFB, OFB, counter mode (CTR)

     message authentication codes  VMAC, HMAC, GMAC, CMAC, CBC-MAC, DMAC,
                                   Two-Track-MAC

                                   SHA-1, SHA-2 (SHA-224, SHA-256, SHA-384, and
                   hash functions  SHA-512), SHA-3, Tiger, WHIRLPOOL, RIPEMD-128,
                                   RIPEMD-256, RIPEMD-160, RIPEMD-320

                                   RSA, DSA, ElGamal, Nyberg-Rueppel (NR),
          public-key cryptography  Rabin-Williams (RW), LUC, LUCELG,
                                   DLIES (variants of DHAES), ESIGN

   padding schemes for public-key  PKCS#1 v2.0, OAEP, PSS, PSSR, IEEE P1363
                          systems  EMSA2 and EMSA5

                                   Diffie-Hellman (DH), Unified Diffie-Hellman
            key agreement schemes  (DH2), Menezes-Qu-Vanstone (MQV), LUCDIF,

      elliptic curve cryptography  ECDSA, ECNR, ECIES, ECDH, ECMQV

          insecure or obsolescent  MD2, MD4, MD5, Panama Hash, DES, ARC4, SEAL
algorithms retained for backwards  3.0, WAKE-OFB, DESX (DES-XEX3), RC2,
     compatibility and historical  SAFER, 3-WAY, GOST, SHARK, CAST-128, Square
                            value

Other features include:

  * pseudo random number generators (PRNG): ANSI X9.17 appendix C, RandomPool
  * password based key derivation functions: PBKDF1 and PBKDF2 from PKCS #5,
    PBKDF from PKCS #12 appendix B
  * Shamir's secret sharing scheme and Rabin's information dispersal algorithm
    (IDA)
  * fast multi-precision integer (bignum) and polynomial operations
  * finite field arithmetics, including GF(p) and GF(2^n)
  * prime number generation and verification
  * useful non-cryptographic algorithms
      + DEFLATE (RFC 1951) compression/decompression with gzip (RFC 1952) and
        zlib (RFC 1950) format support
      + hex, base-32, and base-64 coding/decoding
      + 32-bit CRC and Adler32 checksum
  * class wrappers for these operating system features (optional):
      + high resolution timers on Windows, Unix, and Mac OS
      + Berkeley and Windows style sockets
      + Windows named pipes
      + /dev/random, /dev/urandom, /dev/srandom
      + Microsoft's CryptGenRandom on Windows
  * A high level interface for most of the above, using a filter/pipeline
    metaphor
  * benchmarks and validation testing
  * x86, x86-64 (x64), MMX, and SSE2 assembly code for the most commonly used
    algorithms, with run-time CPU feature detection and code selection
  * some versions are available in FIPS 140-2 validated form
                   DESC
  s.homepage     = "http://http://cryptopp.com/"
  s.screenshots  = 
  s.license      = 'BOOST'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/cryptopp.git", :tag => s.version.to_s }
  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/cryptopp/include"' }
  s.private_header_files = s.source_files =
     'include/**/*.h'
  s.header_mappings_dir = 'include'
end
