(** Virtual definition of Date interface *)

(** Represents a date value. *)
type t

(** Returns the current time. *)
val now : unit -> t

(** Returns the time for tomorrow. *)
val tomorrow : unit -> t

(** Returns the time for yesterday. *)
val yesterday : unit -> t
