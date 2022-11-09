type t =
| Text of string 
| Directory of (string * bool * Digest.t * t) list

let hash _obj =  match _obj with 
  |Text t ->  Digest.string t
  |Directory _ -> Digest.string ""

let is_known _h = Sys.file_exists _h 

let read_text_object _h = failwith "TODO"

let store_object _obj = failwith "TODO"

let store_work_directory () = failwith "TODO"

let read_directory_object _h = failwith "TODO" 
  
let clean_work_directory () = failwith "TODO"

let restore_work_directory _obj = failwith "TODO" 

let merge_work_directory_I _obj = failwith "TODO"