.PHONY: install_js install_native clean_dune_bsb js native clean

default:
	@@echo "use 'make js' or 'make native'"

install_js:
	esy @esy.js

install_native:
	esy @esy.native

js:
	esy @esy.js bsb -make-world

clean_dune_bsb:
	rm dune.bsb && rm dune

native: clean_dune_bsb
	esy @esy.native dune build @all

clean:
	esy dune clean
	yarn bsb -clean-world
