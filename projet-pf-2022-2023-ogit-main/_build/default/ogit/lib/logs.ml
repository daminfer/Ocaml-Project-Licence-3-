type commit = {
    parents : Digest.t list;
    date : float;
    message : string;
    content : Digest.t
}
    
(** la date au format HH:MM:SS-JJ/MM/AAAA
    ex: 16:08:40-07/11/2022 *)
let date_fm _d = 
    let tm = Unix.gmtime _d in 
    Format.sprintf "%02d:%02d:%02d-%02d/%02d/%d" 
    tm.tm_hour tm.tm_min tm.tm_sec tm.tm_mday tm.tm_mon tm.tm_year

let set_head _l = (*si il est déjà dedans a voir*)
    let oc = open_out ".ogit/HEAD" in 
    List.iter (fun line -> output_string oc (Digest.to_hex line); 
    output_string oc "\n") _l ; 
    close_out oc

let get_head () = 
    try 
        let ic = open_in ".ogit/HEAD" in 
        let rec iter = 
            let s = input_line ic in 
            Digest.from_hex s :: iter
        in 
        close_in ic; 
        iter
    with 
    | End_of_file -> []
   
let make_commit _s  _h =  failwith "TODO"

let init_commit () = failwith "TODO"

let store_commit _c = failwith "TODO"

let read_commit _h = failwith "TODO" 