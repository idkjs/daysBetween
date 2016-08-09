daysBetween: clean 
	ocamlbuild -use-ocamlfind src/daysBetween.native
	mv daysBetween.native daysBetween

clean:
	$(RM) -rf daysBetween _build/* 

deps:
	opam install calendar
