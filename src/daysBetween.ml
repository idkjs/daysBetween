let daysBetween (startDate: CalendarLib.Date.t) (endDate: CalendarLib.Date.t) =
     CalendarLib.Date.sub endDate startDate 
     |> CalendarLib.Date.Period.nb_days

let map_pair f (a, b) = (f a, f b)

let parse_date (s: string) : CalendarLib.Date.t =
    match String.lowercase s with
    | "now" | "today" -> CalendarLib.Date.today()
    | _ -> CalendarLib.Printer.Date.from_fstring "%Y-%m-%d" s

let () = 
    if Array.length Sys.argv >= 3 then
        let (startDate, endDate) = 
            map_pair parse_date (Sys.argv.(1), Sys.argv.(2))
        in
        daysBetween startDate endDate
        |> Printf.printf "%d\n"
    else begin
        print_endline "USAGE: daysBetween START END";
        print_endline "\tSTART and END must be yyyy-MM-dd or the word 'today' or the word 'now'"
    end
