(***********************************************************************)
(*                             ocamlbuild                              *)
(*                                                                     *)
(*  Nicolas Pouillard, Berke Durak, projet Gallium, INRIA Rocquencourt *)
(*                                                                     *)
(*  Copyright 2007 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)


(* Original author: Nicolas Pouillard *)
type message =
  | Before_hygiene
  | After_hygiene
  | Before_options
  | After_options
  | Before_rules
  | After_rules

val setup_hooks : (message -> unit) -> unit
val call_hook : message -> unit
