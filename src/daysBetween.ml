let daysBetween (startDate: CalendarLib.Date.t) (endDate: CalendarLib.Date.t) =
     CalendarLib.Date.sub endDate startDate 
     |> CalendarLib.Date.Period.nb_days

let map_pair f (a, b) = (f a, f b)

let () = 
    if Array.length Sys.argv >= 3 then
        let (startDate, endDate) = 
            map_pair (CalendarLib.Printer.Date.from_fstring "%Y-%m-%d") (Sys.argv.(1), Sys.argv.(2))
        in
        daysBetween startDate endDate
        |> Printf.printf "%d\n"
    else
        print_endline "USAGE: daysBetween START END"
