{ pkgs, stdenv }:
let
  inherit (pkgs) eggDerivation fetchegg;
in
rec {

  datatype = eggDerivation {
    name = "datatype-1.6";

    src = fetchegg {
      name = "datatype";
      version = "1.6";
      sha256 = "1sjxck6l388vxbj9qbn3px3hkkzzknz7xp2gw89zpqnf9869ig3x";
    };

    buildInputs = [
      
    ];
  };

  ersatz = eggDerivation {
    name = "ersatz-1.28";

    src = fetchegg {
      name = "ersatz";
      version = "1.28";
      sha256 = "1ckl25p86mvpyjslhzw0cybmbpzgqccmx5r5fard13q70zjin71f";
    };

    buildInputs = [
      datatype
      silex
      lalr
      utf8
      uri-generic
      srfi-1
    ];
  };

  input-parse = eggDerivation {
    name = "input-parse-1.2";

    src = fetchegg {
      name = "input-parse";
      version = "1.2";
      sha256 = "140gqyxsbgni2f9280wx02hkjz6h9xqhjcz3p2l8p9l6nlcs9rym";
    };

    buildInputs = [
      srfi-13
    ];
  };

  iset = eggDerivation {
    name = "iset-2.2";

    src = fetchegg {
      name = "iset";
      version = "2.2";
      sha256 = "0yfkcd07cw6xnnqfbbvjy81x0vc54k40vdjp2m7gwxx64is6m3rz";
    };

    buildInputs = [
      
    ];
  };

  lalr = eggDerivation {
    name = "lalr-2.5.2";

    src = fetchegg {
      name = "lalr";
      version = "2.5.2";
      sha256 = "1s1xhb1j31997ffgl69ksy3vdr4dnrjk7j9zpmasn3x2mipy9h7f";
    };

    buildInputs = [
      srfi-1
    ];
  };

  matchable = eggDerivation {
    name = "matchable-1.1";

    src = fetchegg {
      name = "matchable";
      version = "1.1";
      sha256 = "084hm5dvbvgnpb32ispkp3hjili8z02hamln860r99jx68jx6j2v";
    };

    buildInputs = [
      
    ];
  };

  regex = eggDerivation {
    name = "regex-2.0";

    src = fetchegg {
      name = "regex";
      version = "2.0";
      sha256 = "0qgqrrdr95yqggw8xyvb693nhizwqvf1fp9cjx9p3z80c4ih8j4j";
    };

    buildInputs = [
      
    ];
  };

  rss = eggDerivation {
    name = "rss-1.7";

    src = fetchegg {
      name = "rss";
      version = "1.7";
      sha256 = "077graf60kgilbjglh3zhfk4gzr105y1ljjbynsx7mhhms77n1my";
    };

    buildInputs = [
      matchable
      srfi-1
      ssax
    ];
  };

  silex = eggDerivation {
    name = "silex-1.0";

    src = fetchegg {
      name = "silex";
      version = "1.0";
      sha256 = "0dmr11hgmx45f5mfggdh9kdf55gylbcw8glmlv2l20gy6p6cp8rz";
    };

    buildInputs = [
      srfi-13
    ];
  };

  srfi-1 = eggDerivation {
    name = "srfi-1-0.5.1";

    src = fetchegg {
      name = "srfi-1";
      version = "0.5.1";
      sha256 = "15x0ajdkw5gb3vgs8flzh5g0pzl3wmcpf11iimlm67mw6fxc8p7j";
    };

    buildInputs = [
      
    ];
  };

  srfi-13 = eggDerivation {
    name = "srfi-13-0.3.2";

    src = fetchegg {
      name = "srfi-13";
      version = "0.3.2";
      sha256 = "137yv5hkhnapgh7iq3siiq1vfqdmvck4gsax7p6pmch6adg2wcy4";
    };

    buildInputs = [
      srfi-14
    ];
  };

  srfi-14 = eggDerivation {
    name = "srfi-14-0.2.1";

    src = fetchegg {
      name = "srfi-14";
      version = "0.2.1";
      sha256 = "0gc33cx4xll9vsf7fm8jvn3gc0604kn3bbi6jfn6xscqp86kqb9p";
    };

    buildInputs = [
      
    ];
  };

  srfi-69 = eggDerivation {
    name = "srfi-69-0.4.3";

    src = fetchegg {
      name = "srfi-69";
      version = "0.4.3";
      sha256 = "11pny54nc3rpmpaxcxs9dap1n6490y80zpwgfg0bwji1938a6fks";
    };

    buildInputs = [
      
    ];
  };

  ssax = eggDerivation {
    name = "ssax-5.1.0";

    src = fetchegg {
      name = "ssax";
      version = "5.1.0";
      sha256 = "09gx09q78xr4lfnpx01zhjn2jp7cs62cpvhsjmcw1jnanqcm3d44";
    };

    buildInputs = [
      input-parse
      srfi-1
      srfi-13
    ];
  };

  uri-generic = eggDerivation {
    name = "uri-generic-3.2";

    src = fetchegg {
      name = "uri-generic";
      version = "3.2";
      sha256 = "1lpvnk1mnhmrga149km7ygpy7fkq7z2pvw0mvpx2aql03l8gpdsj";
    };

    buildInputs = [
      matchable
      srfi-1
      srfi-14
    ];
  };

  utf8 = eggDerivation {
    name = "utf8-3.6.2";

    src = fetchegg {
      name = "utf8";
      version = "3.6.2";
      sha256 = "10wzp3qmwik4gx3hhaqm2n83wza0rllgy57363h5ccv8fga5nnm6";
    };

    buildInputs = [
      srfi-69
      iset
      regex
    ];
  };
}

