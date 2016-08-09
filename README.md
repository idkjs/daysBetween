daysBetween
-----------

A quick lightweight tool that tells you how many days are between two dates.

Example usage:

```
$ daysBetween 2016-01-01 2016-01-04
3
```

I just want to use it
=====================

Cool, you can download it from the [Releases](https://github.com/spencerwi/daysBetween/releases) tab at the top of this page.
 
I want to build it
==================

You'll need:

 * Ocaml
 * opam
 * ocamlbuild
 * Make

Then run:

```
make deps
make
```

This will spit out an executable called "daysBetween" in the current directory. 
Just drop it somewhere in your `$PATH` and you're ready to go!

