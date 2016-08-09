daysBetween: clean 
	ocamlbuild -no-links -use-ocamlfind src/daysBetween.native
	mv _build/src/daysBetween.native daysBetween

clean:
	$(RM) -rf daysBetween _build/* 

deps:
	opam install calendar
