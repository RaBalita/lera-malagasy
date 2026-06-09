Feature: Webpage displays time along correct saying

    Scenario Outline: The time in HH:mm is displayed with the correct saying
        Given a time <HH_mm> and its successor <HH_mm_next>
        When live clock indicates <current_time>
        And <current_time> is equal or above <HH_mm>
        But <current_time> has not yet reached <HH_mm_next>
        Then <HH_mm_saying> corresponding to <current_time> is displayed

        Examples:
            | HH_mm   | HH_mm_next | HH_mm_saying                                                      |
            | "00h00" | "01h30"    | "MISASAKALINA"                                                    |
            | "01h30" | "02h00"    | "MITRENA OMBILAHY"                                                |
            | "02h00" | "02h30"    | "MANENO SAHONA"                                                   |
            | "02h30" | "03h00"    | "MIVOAKA GOAIKA"                                                  |
            | "03h00" | "03h30"    | "MANENO AKOHO"                                                    |
            | "03h30" | "04h00"    | "MANENO FITATRA"                                                  |
            | "04h00" | "04h30"    | "MAZAVA RATSY"                                                    |
            | "04h30" | "05h00"    | "MIFOHA OLO-MAZOTO"                                               |
            | "05h00" | "05h30"    | "MIFOHA OLONA"                                                    |
            | "05h30" | "06h00"    | "MIPOAKA ANDRON-DOLO"                                             |
            | "06h00" | "06h30"    | "MIRAN'ANDRO"                                                     |
            | "06h30" | "07h00"    | "MAIM-BOHON-DRAVINA"                                              |
            | "07h00" | "08h00"    | "VAKY MASOANDRO"                                                  |
            | "08h00" | "09h00"    | "MISANDRATR'ANDRO"                                                |
            | "09h00" | "09h30"    | "MIVOAKA OMBY"                                                    |
            | "09h30" | "10h00"    | "MIVOAKA OMBY TERA-BAO"                                           |
            | "10h00" | "11h00"    | "ANTOANDRO BE NANAHARY"                                           |
            | "11h00" | "12h00"    | "AMBOLOMBODITRANO NY ANDRO"                                       |
            | "12h00" | "13h00"    | "MITATAO VOVONANA"                                                |
            | "13h00" | "14h00"    | "MIHILANA NY ANDRO"                                               |
            | "14h00" | "14h30"    | "TAFALATSAKA NY ANDRO"                                            |
            | "14h30" | "15h00"    | "AM-PAMATORAN-JANAK'OMBY NY ANDRO"                                |
            | "15h00" | "15h30"    | "AM-PITOTOAM-BARY NY ANDRO"                                       |
            | "15h30" | "16h00"    | "AM-BAVA-FISOKO NY ANDRO"                                         |
            | "16h00" | "16h30"    | "TAFAPAKA NY ANDRO"                                               |
            | "16h30" | "17h00"    | "MODY OMBY TERA-BAO"                                              |
            | "17h00" | "17h30"    | "MODY OMBY"                                                       |
            | "17h30" | "18h00"    | "MENA MASOANDRO"                                                  |
            | "18h00" | "18h30"    | "MATY MASOANDRO"                                                  |
            | "18h30" | "19h00"    | "MAIZIM-BAVA VILANY, TSY AHITA-MITSINJO, TSY AHITAN-TSORATR'OMBY" |
            | "19h00" | "20h00"    | "MANOKOM-BARY OLONA"                                              |
            | "20h00" | "21h00"    | "HOMAM-BARY OLONA"                                                |
            | "21h00" | "21h30"    | "TAPI-MANDRY OLONA"                                               |
            | "21h30" | "22h00"    | "LOHA-TORY"                                                       |
            | "22h00" | "23h00"    | "MIVOAKA MPAMOSAVY"                                               |
            | "23h00" | "24h00"    | "MAMATONA ALINA"                                                  |