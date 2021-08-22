opt --load-pass-plugin=StrictOpt.so \
      --passes="function(strict-opt)" \
      -S -o – test.ll


opt -O3 --enable-new-pm \
      --load-pass-plugin=StrictOpt.so \
      -S -o – test.ll
      