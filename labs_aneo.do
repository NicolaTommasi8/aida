
/*** controlla l'installazione di strrec, se non c'è, procede all'installazione
     commentare questa procedura se il pc non è connesso ad internet
     o se non avete le credenziali per poter installare files sul vostro PC  ***/
qui capture which strrec
if _rc {
  ssc inst strrec
}
label drop _all

/*****************************
 ****  PROGs DEFINITION   ****
 *****************************/

capture program drop dest_prov
program define dest_prov
  replace `1'="84"   if `1'=="Agrigento"
  replace `1'="6"    if `1'=="Alessandria"
  replace `1'="42"   if `1'=="Ancona"
  replace `1'="7"    if inlist(`1',"Aosta","Valle d'Aosta/Vallée d'Aoste","Valle d’Aosta/Vallée D’Aoste")
  replace `1'="51"   if `1'=="Arezzo"
  replace `1'="44"   if `1'=="Ascoli Piceno"
  replace `1'="5"    if `1'=="Asti"
  replace `1'="64"   if `1'=="Avellino"
  replace `1'="72"   if `1'=="Bari"
  replace `1'="25"   if `1'=="Belluno"
  replace `1'="62"   if `1'=="Benevento"
  replace `1'="16"   if `1'=="Bergamo"
  replace `1'="96"   if `1'=="Biella"
  replace `1'="37"   if `1'=="Bologna"
  replace `1'="21"   if inlist(`1',"Bolzano","Bolzano/Bozen")
  replace `1'="17"   if `1'=="Brescia"
  replace `1'="74"   if `1'=="Brindisi"
  replace `1'="92"   if `1'=="Cagliari"
  replace `1'="85"   if `1'=="Caltanissetta"
  replace `1'="70"   if `1'=="Campobasso"
  replace `1'="61"   if `1'=="Caserta"
  replace `1'="87"   if `1'=="Catania"
  replace `1'="79"   if `1'=="Catanzaro"
  replace `1'="69"   if `1'=="Chieti"
  replace `1'="13"   if `1'=="Como"
  replace `1'="78"   if `1'=="Cosenza"
  replace `1'="19"   if `1'=="Cremona"
  replace `1'="101"  if inlist(`1',"Crotone","CrotoneValentia")
  replace `1'="4"    if `1'=="Cuneo"
  replace `1'="86"   if `1'=="Enna"
  replace `1'="38"   if `1'=="Ferrara"
  replace `1'="48"   if `1'=="Firenze"
  replace `1'="71"   if `1'=="Foggia"
  replace `1'="40"   if inlist(`1',"Forl¡","Forl¡-Cesana","Forli","Forlì-Cesena")
  replace `1'="60"   if `1'=="Frosinone"
  replace `1'="10"   if `1'=="Genova"
  replace `1'="31"   if `1'=="Gorizia"
  replace `1'="53"   if `1'=="Grosseto"
  replace `1'="8"    if `1'=="Imperia"
  replace `1'="94"   if `1'=="Isernia"
  replace `1'="11"   if `1'=="L'Aquila"
  replace `1'="66"   if `1'=="La Spezia"
  replace `1'="59"   if `1'=="Latina"
  replace `1'="75"   if `1'=="Lecce"
  replace `1'="97"   if `1'=="Lecco"
  replace `1'="49"   if `1'=="Livorno"
  replace `1'="98"   if `1'=="Lodi"
  replace `1'="46"   if `1'=="Lucca"
  replace `1'="43"   if `1'=="Macerata"
  replace `1'="20"   if `1'=="Mantova"
  replace `1'="45"   if `1'=="Massa-Carrara"
  replace `1'="77"   if `1'=="Matera"
  replace `1'="83"   if `1'=="Messina"
  replace `1'="15"   if `1'=="Milano"
  replace `1'="36"   if `1'=="Modena"
  replace `1'="63"   if `1'=="Napoli"
  replace `1'="3"    if `1'=="Novara"
  replace `1'="91"   if `1'=="Nuoro"
  replace `1'="95"   if `1'=="Oristano"
  replace `1'="28"   if `1'=="Padova"
  replace `1'="82"   if `1'=="Palermo"
  replace `1'="34"   if `1'=="Parma"
  replace `1'="18"   if `1'=="Pavia"
  replace `1'="54"   if `1'=="Perugia"
  replace `1'="41"   if inlist(`1',"Pesaro e Urbino","Pesaro Urbino")
  replace `1'="68"   if `1'=="Pescara"
  replace `1'="33"   if `1'=="Piacenza"
  replace `1'="50"   if `1'=="Pisa"
  replace `1'="47"   if `1'=="Pistoia"
  replace `1'="93"   if `1'=="Pordenone"
  replace `1'="76"   if `1'=="Potenza"
  replace `1'="100"  if `1'=="Prato"
  replace `1'="88"   if `1'=="Ragusa"
  replace `1'="39"   if `1'=="Ravenna"
  replace `1'="80"   if inlist(`1',"Reggio Calabria","Reggio di Calabria")
  replace `1'="35"   if inlist(`1',"Reggio Emilia","Reggio nell'Emilia")
  replace `1'="57"   if `1'=="Rieti"
  replace `1'="99"   if inlist(`1',"Rimini","RiminiEmilia")
  replace `1'="58"   if `1'=="Roma"
  replace `1'="29"   if `1'=="Rovigo"
  replace `1'="65"   if `1'=="Salerno"
  replace `1'="90"   if `1'=="Sassari"
  replace `1'="9"    if inlist(`1',"Savona","SavonaSpezia")
  replace `1'="52"   if `1'=="Siena"
  replace `1'="89"   if `1'=="Siracusa"
  replace `1'="14"   if `1'=="Sondrio"
  replace `1'="73"   if `1'=="Taranto"
  replace `1'="67"   if `1'=="Teramo"
  replace `1'="55"   if `1'=="Terni"
  replace `1'="1"    if `1'=="Torino"
  replace `1'="81"   if `1'=="Trapani"
  replace `1'="22"   if `1'=="Trento"
  replace `1'="26"   if `1'=="Treviso"
  replace `1'="32"   if `1'=="Trieste"
  replace `1'="30"   if `1'=="Udine"
  replace `1'="12"   if `1'=="Varese"
  replace `1'="27"   if `1'=="Venezia"
  replace `1'="103"  if inlist(`1',"Verbania","Verbano-Cusio-Ossola")
  replace `1'="2"    if `1'=="Vercelli"
  replace `1'="23"   if `1'=="Verona"
  replace `1'="102"  if `1'=="Vibo Valentia"
  replace `1'="24"   if `1'=="Vicenza"
  replace `1'="56"   if `1'=="Viterbo"
  replace `1'="15"   if inlist(`1',"Monza Brianza","Monza e della Brianza") & anno<2009
  replace `1'="108"  if inlist(`1',"Monza Brianza","Monza e della Brianza") & anno>=2009
  replace `1'="109"   if `1'=="Fermo"
  replace `1'="110"   if `1'=="Barletta-Andria-Trani"
  replace `1'="106"   if `1'=="Medio Campidano"
  replace `1'="105"   if `1'=="Ogliastra"
  replace `1'="104"   if `1'=="Olbia-Tempio"
  replace `1'="107"   if `1'=="Carbonia-Iglesias"
  replace `1'="111"   if `1'=="Sud Sardegna"
  replace `1'="" if inlist(`1',"-","Emilia-Romagna","Friuli-Venezia Giulia","Lazio","Lombardia","Umbria")
  destring `1', replace
  confirm numeric variable `1'
  label values `1' cod_prov
end


capture program drop dest_regio
program define dest_regio
   replace `1'=lower(`1')
   replace `1'="" if inlist(`1',"-","san marino")
   replace `1'="13" if `1'=="abruzzo"
   replace `1'="17" if `1'=="basilicata"
   replace `1'="18" if `1'=="calabria"
   replace `1'="15" if `1'=="campania"
   replace `1'="8"  if inlist(`1',"emilia-romagna","emilia romagna")
   replace `1'="6"  if inlist(`1',"friuli venezia giulia","friuli","friuli-venezia giulia","friuli-venezia")
   replace `1'="12" if `1'=="lazio"
   replace `1'="7"  if `1'=="liguria"
   replace `1'="3"  if `1'=="lombardia"
   replace `1'="11"  if `1'=="marche"
   replace `1'="14" if `1'=="molise"
   replace `1'="1"  if `1'=="piemonte"
   replace `1'="16" if `1'=="puglia"
   replace `1'="20" if `1'=="sardegna"
   replace `1'="19" if `1'=="sicilia"
   replace `1'="9" if `1'=="toscana"
   replace `1'="4"  if inlist(`1',"trentino-alto adige","trentino","trentino-alto")
   replace `1'="10" if `1'=="umbria"
   replace `1'="2"  if inlist(`1',"valle d'aosta","valle d'aosta/vallée d'aoste","valle d'aosta/")
   replace `1'="5"  if `1'=="veneto"
   replace `1'="21"  if `1'=="estero"
destring `1', replace
confirm numeric variable `1'
label values `1' cod_reg
end




capture program drop REF_INDEX
program define REF_INDEX
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("FTSE MIB INDEX"                                            = 1  "FTSE MIB INDEX")                                                   ///
             ("FTSE ITALIA STAR"                                          = 2  "FTSE ITALIA STAR")                                                 ///
             ("FTSE ITALIA MID CAP INDEX"                                 = 3  "FTSE ITALIA MID CAP INDEX")                                        ///
             ("FTSE 100"                                                  = 4  "FTSE 100")                                                         ///
             ("FTSE EUROTOP 100"                                          = 5  "FTSE EUROTOP 100")                                                 ///
             ("CAC 40"                                                    = 6  "CAC 40")                                                           ///
             ("DOW JONES EURO STOXX 50"                                   = 7  "DOW JONES EURO STOXX 50")                                          ///
             ("DOW JONES STOXX 50"                                        = 8  "DOW JONES STOXX 50")                                               ///
             ("DOW JONES INDUSTRIAL AVERAGE"                              = 9  "DOW JONES INDUSTRIAL AVERAGE")                                     ///
             ("NYSE COMPOSITE INDEX"                                      = 10 "NYSE COMPOSITE INDEX")                                             ///
             ("S&P 500 INDUSTRIAL COMPOSITE"                              = 11 "S&P 500 INDUSTRIAL COMPOSITE")                                     ///
             ("DAX PERFORMANCE (DEUTSCHER AKTIENINDEX PERFORMANCE-INDEX*" = 12 "DAX PERFORMANCE (DEUTSCHER AKTIENINDEX PERFORMANCE-INDEX)")        ///
             ("NASDAQ COMPOSITE"                                          = 13 "NASDAQ COMPOSITE")                                                 ///
             ("SMI (SWISS MARKET INDEX)"                                  = 14 "SMI (SWISS MARKET INDEX)")                                         ///
             ("MIB 30"                                                    = 15 "MIB 30")                                                           ///
             ("SBF 120"                                                   = 16 "SBF 120")                                                          ///
             ("IT.CAC"                                                    = 17 "IT.CAC")                                                           ///
             , define(`1') replace casesensitive sub
  qui count if `1'==.
  if `pre_miss' == r(N) {
    drop TMP
    macro drop pre_miss
  }
  else {
    fre TMP if `1'==.
    drop TMP
    macro drop pre_miss
    error 181
  }
end



capture program drop BORSE
program define BORSE
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)

  strrec `1' ("Delistata"                                                                        = 0  "Delistata")                                             ///
             ("Borsa Italiana - MTA (Mercato Telematico Azionario)" "Italian Continuous Market"  = 1  "Borsa Italiana - MTA (Mercato Telematico Azionario)")   ///
             ("Boerse Frankfurt" "Frankfurt Stock Exchange"                                      = 2  "Boerse Frankfurt")                                      ///
             ("Boerse Berlin"                                                                    = 3  "Boerse Berlin")                                         ///
             ("Euronext Paris"                                                                   = 4  "Euronext Paris")                                        ///
             ("Euronext Brussels"                                                                = 5  "Euronext Brussels")                                     ///
             ("Berlin Stock Exchange"                                                            = 6  "Berlin Stock Exchange")                                 ///
             ("Hong Kong Stock Exchange"                                                         = 7  "Hong Kong Stock Exchange")                              ///
             ("London Stock Exchange","London Stock Exchange (SEAQ)"                             = 8  "London Stock Exchange")                                 ///
             ("New York Stock Exchange" "New York Stock Exchange (NYSE)"                         = 9  "New York Stock Exchange")                               ///
             ("Mercato Alternativo del Capitale" "AIM Italia - Mercato Alternativo del Capitale" = 10 "Mercato Alternativo del Capitale")                      ///
             ("NASDAQ National Market"                                                           = 11 "NASDAQ National Market")                                ///
             ("OTC Pink Market"                                                                  = 12 "OTC Pink Market")                                       ///
             ("Pink Sheets Grey Market"                                                          = 13 "Pink Sheets Grey Market")                               ///
             ("Swiss Exchange" "Swiss Exchange (SWX)"                                            = 14 "Swiss Exchange")                                        ///
             ("Boerse Stuttgart"                                                                 = 15 "Boerse Stuttgart")                                      ///
             ("OTC Bulletin Board"                                                               = 16 "OTC Bulletin Board")                                    ///
             ("Non quotata"                                                                      = .a "Non quotata")                                           ///
             , define(`1') replace casesensitive sub
  qui count if `1'==.
  if `pre_miss' == r(N) {
    drop TMP
    macro drop pre_miss
  }
  else {
    di "Questi non sono stati ricodificati!"
    fre TMP if `1'==.
    drop TMP
    macro drop pre_miss
    error 181
  }
end


capture program drop ISO_A2
program define ISO_A2
   ** riferimento: http://www.nationsonline.org/oneworld/country_code_list.htm
  replace `1'="" if `1'=="-"
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("AF"  =    4   "Afghanistan"                               /* AFG */ )    ///
             ("AL"  =    8   "Albania"                                   /* ALB */ )    ///
             ("DZ"  =   12   "Algeria"                                   /* DZA */ )    ///
             ("AD"  =   20   "Andorra"                                   /* AND */ )    ///
             ("AO"  =   24   "Angola"                                    /* AGO */ )    ///
             ("AI"  =  660   "Anguilla"                                  /* AIA */ )    ///
             ("AQ"  =   10   "Antartide"                                 /* ATA */ )    ///
             ("AG"  =   28   "Antigua e Barbuda"                         /* ATG */ )    ///
             ("SA"  =  682   "Arabia Saudita"                            /* SAU */ )    ///
             ("AR"  =   32   "Argentina"                                 /* ARG */ )    ///
             ("AM"  =   51   "Armenia"                                   /* ARM */ )    ///
             ("AW"  =  533   "Aruba"                                     /* ABW */ )    ///
             ("AU"  =   36   "Australia"                                 /* AUS */ )    ///
             ("AT"  =   40   "Austria"                                   /* AUT */ )    ///
             ("AZ"  =   31   "Azerbaigian"                               /* AZE */ )    ///
             ("BS"  =   44   "Bahamas"                                   /* BHS */ )    ///
             ("BH"  =   48   "Bahrain"                                   /* BHR */ )    ///
             ("BD"  =   50   "Bangladesh"                                /* BGD */ )    ///
             ("BB"  =   52   "Barbados"                                  /* BRB */ )    ///
             ("BE"  =   56   "Belgio"                                    /* BEL */ )    ///
             ("BZ"  =   84   "Belize"                                    /* BLZ */ )    ///
             ("BJ"  =  204   "Benin"                                     /* BEN */ )    ///
             ("BM"  =   60   "Bermuda"                                   /* BMU */ )    ///
             ("BT"  =   64   "Bhutan"                                    /* BTN */ )    ///
             ("BY"  =  112   "Bielorussia"                               /* BLR */ )    ///
             ("MM"  =  104   "Birmania"                                  /* MMR */ )    ///
             ("BO"  =   68   "Bolivia"                                   /* BOL */ )    ///
             ("BA"  =   70   "Bosnia ed Erzegovina"                      /* BIH */ )    ///
             ("BW"  =   72   "Botswana"                                  /* BWA */ )    ///
             ("BR"  =   76   "Brasile"                                   /* BRA */ )    ///
             ("BN"  =   96   "Brunei"                                    /* BRN */ )    ///
             ("BG"  =  100   "Bulgaria"                                  /* BGR */ )    ///
             ("BF"  =  854   "Burkina Faso"                              /* BFA */ )    ///
             ("BI"  =  108   "Burundi"                                   /* BDI */ )    ///
             ("KH"  =  116   "Cambogia"                                  /* KHM */ )    ///
             ("CM"  =  120   "Camerun"                                   /* CMR */ )    ///
             ("CA"  =  124   "Canada"                                    /* CAN */ )    ///
             ("CV"  =  132   "Capo Verde"                                /* CPV */ )    ///
             ("TD"  =  148   "Ciad"                                      /* TCD */ )    ///
             ("CL"  =  152   "Cile"                                      /* CHL */ )    ///
             ("CN"  =  156   "Cina"                                      /* CHN */ )    ///
             ("CY"  =  196   "Cipro"                                     /* CYP */ )    ///
             ("VA"  =  336   "Città del Vaticano"                        /* VAT */ )    ///
             ("CO"  =  170   "Colombia"                                  /* COL */ )    ///
             ("KM"  =  174   "Comore"                                    /* COM */ )    ///
             ("KP"  =  408   "Corea del Nord"                            /* PRK */ )    ///
             ("KR"  =  410   "Corea del Sud"                             /* KOR */ )    ///
             ("CI"  =  384   "Costa d'Avorio"                            /* CIV */ )    ///
             ("CR"  =  188   "Costa Rica"                                /* CRI */ )    ///
             ("HR"  =  191   "Croazia"                                   /* HRV */ )    ///
             ("CU"  =  192   "Cuba"                                      /* CUB */ )    ///
             ("CW"  =  531   "Curaçao"                                   /* CUW */ )    ///
             ("DK"  =  208   "Danimarca"                                 /* DNK */ )    ///
             ("DM"  =  212   "Dominica"                                  /* DMA */ )    ///
             ("EC"  =  218   "Ecuador"                                   /* ECU */ )    ///
             ("EG"  =  818   "Egitto"                                    /* EGY */ )    ///
             ("SV"  =  222   "El Salvador"                               /* SLV */ )    ///
             ("AE"  =  784   "Emirati Arabi Uniti"                       /* ARE */ )    ///
             ("ER"  =  232   "Eritrea"                                   /* ERI */ )    ///
             ("EE"  =  233   "Estonia"                                   /* EST */ )    ///
             ("ET"  =  231   "Etiopia"                                   /* ETH */ )    ///
             ("FJ"  =  242   "Figi"                                      /* FJI */ )    ///
             ("PH"  =  608   "Filippine"                                 /* PHL */ )    ///
             ("FI"  =  246   "Finlandia"                                 /* FIN */ )    ///
             ("FR"  =  250   "Francia"                                   /* FRA */ )    ///
             ("GA"  =  266   "Gabon"                                     /* GAB */ )    ///
             ("GM"  =  270   "Gambia"                                    /* GMB */ )    ///
             ("GE"  =  268   "Georgia"                                   /* GEO */ )    ///
             ("GS"  =  239   "Georgia del Sud e isole Sandwich"          /* SGS */ )    ///
             ("DE"  =  276   "Germania"                                  /* DEU */ )    ///
             ("GH"  =  288   "Ghana"                                     /* GHA */ )    ///
             ("JM"  =  388   "Giamaica"                                  /* JAM */ )    ///
             ("JP"  =  392   "Giappone"                                  /* JPN */ )    ///
             ("GI"  =  292   "Gibilterra"                                /* GIB */ )    ///
             ("DJ"  =  262   "Gibuti"                                    /* DJI */ )    ///
             ("JO"  =  400   "Giordania"                                 /* JOR */ )    ///
             ("GR"  =  300   "Grecia"                                    /* GRC */ )    ///
             ("GD"  =  308   "Grenada"                                   /* GRD */ )    ///
             ("GL"  =  304   "Groenlandia"                               /* GRL */ )    ///
             ("GP"  =  312   "Guadalupa"                                 /* GLP */ )    ///
             ("GU"  =  316   "Guam"                                      /* GUM */ )    ///
             ("GT"  =  320   "Guatemala"                                 /* GTM */ )    ///
             ("GG"  =  831   "Guernsey"                                  /* GGY */ )    ///
             ("GN"  =  324   "Guinea"                                    /* GIN */ )    ///
             ("GW"  =  624   "Guinea-Bissau"                             /* GNB */ )    ///
             ("GQ"  =  226   "Guinea Equatoriale"                        /* GNQ */ )    ///
             ("GY"  =  328   "Guyana"                                    /* GUY */ )    ///
             ("GF"  =  254   "Guyana Francese"                           /* GUF */ )    ///
             ("HT"  =  332   "Haiti"                                     /* HTI */ )    ///
             ("HN"  =  340   "Honduras"                                  /* HND */ )    ///
             ("HK"  =  344   "Hong Kong"                                 /* HKG */ )    ///
             ("IN"  =  356   "India"                                     /* IND */ )    ///
             ("ID"  =  360   "Indonesia"                                 /* IDN */ )    ///
             ("IR"  =  364   "Iran"                                      /* IRN */ )    ///
             ("IQ"  =  368   "Iraq"                                      /* IRQ */ )    ///
             ("IE"  =  372   "Irlanda"                                   /* IRL */ )    ///
             ("IS"  =  352   "Islanda"                                   /* ISL */ )    ///
             ("BV"  =   74   "Isola Bouvet"                              /* BVT */ )    ///
             ("IM"  =  833   "Isola di Man"                              /* IMN */ )    ///
             ("CX"  =  162   "Isola di Natale"                           /* CXR */ )    ///
             ("NF"  =  574   "Isola Norfolk"                             /* NFK */ )    ///
             ("AX"  =  248   "Isole Åland"                               /* ALA */ )    ///
             ("BQ"  =  535   "Isole BES"                                 /* BES */ )    ///
             ("KY"  =  136   "Isole Cayman"                              /* CYM */ )    ///
             ("CC"  =  166   "Isole Cocos e Keeling"                     /* CCK */ )    ///
             ("CK"  =  184   "Isole Cook"                                /* COK */ )    ///
             ("FO"  =  234   "Isole Fær Øer"                             /* FRO */ )    ///
             ("FK"  =  238   "Isole Falkland"                            /* FLK */ )    ///
             ("HM"  =  334   "Isole Heard e McDonald"                    /* HMD */ )    ///
             ("MP"  =  580   "Isole Marianne Settentrionali"             /* MNP */ )    ///
             ("MH"  =  584   "Isole Marshall"                            /* MHL */ )    ///
             ("UM"  =  581   "Isole minori degli Stati Uniti"            /* UMI */ )    ///
             ("PN"  =  612   "Isole Pitcairn"                            /* PCN */ )    ///
             ("SB"  =  90    "Isole Salomone"                            /* SLB */ )    ///
             ("VG"  =  92    "Isole Vergini britanniche"                 /* VGB */ )    ///
             ("VI"  =  850   "Isole Vergini americane"                   /* VIR */ )    ///
             ("IL"  =  376   "Israele"                                   /* ISR */ )    ///
             ("IT"  =  380   "Italia"                                    /* ITA */ )    ///
             ("JE"  =  832   "Jersey"                                    /* JEY */ )    ///
             ("KZ"  =  398   "Kazakistan"                                /* KAZ */ )    ///
             ("KE"  =  404   "Kenya"                                     /* KEN */ )    ///
             ("KG"  =  417   "Kirghizistan"                              /* KGZ */ )    ///
             ("KI"  =  296   "Kiribati"                                  /* KIR */ )    ///
             ("KW"  =  414   "Kuwait"                                    /* KWT */ )    ///
             ("LA"  =  418   "Laos"                                      /* LAO */ )    ///
             ("LS"  =  426   "Lesotho"                                   /* LSO */ )    ///
             ("LV"  =  428   "Lettonia"                                  /* LVA */ )    ///
             ("LB"  =  422   "Libano"                                    /* LBN */ )    ///
             ("LR"  =  430   "Liberia"                                   /* LBR */ )    ///
             ("LY"  =  434   "Libia"                                     /* LBY */ )    ///
             ("LI"  =  438   "Liechtenstein"                             /* LIE */ )    ///
             ("LT"  =  440   "Lituania"                                  /* LTU */ )    ///
             ("LU"  =  442   "Lussemburgo"                               /* LUX */ )    ///
             ("MO"  =  446   "Macao"                                     /* MAC */ )    ///
             ("MK"  =  807   "Repubblica di Macedonia"                   /* MKD */ )    ///
             ("MG"  =  450   "Madagascar"                                /* MDG */ )    ///
             ("MW"  =  454   "Malawi"                                    /* MWI */ )    ///
             ("MY"  =  458   "Malesia"                                   /* MYS */ )    ///
             ("MV"  =  462   "Maldive"                                   /* MDV */ )    ///
             ("ML"  =  466   "Mali"                                      /* MLI */ )    ///
             ("MT"  =  470   "Malta"                                     /* MLT */ )    ///
             ("MA"  =  504   "Marocco"                                   /* MAR */ )    ///
             ("MQ"  =  474   "Martinica"                                 /* MTQ */ )    ///
             ("MR"  =  478   "Mauritania"                                /* MRT */ )    ///
             ("MU"  =  480   "Mauritius"                                 /* MUS */ )    ///
             ("YT"  =  175   "Mayotte"                                   /* MYT */ )    ///
             ("MX"  =  484   "Messico"                                   /* MEX */ )    ///
             ("FM"  =  583   "Micronesia"                                /* FSM */ )    ///
             ("MD"  =  498   "Moldavia"                                  /* MDA */ )    ///
             ("MN"  =  496   "Mongolia"                                  /* MNG */ )    ///
             ("ME"  =  499   "Montenegro"                                /* MNE */ )    ///
             ("MS"  =  500   "Montserrat"                                /* MSR */ )    ///
             ("MZ"  =  508   "Mozambico"                                 /* MOZ */ )    ///
             ("NA"  =  516   "Namibia"                                   /* NAM */ )    ///
             ("NR"  =  520   "Nauru"                                     /* NRU */ )    ///
             ("NP"  =  524   "Nepal"                                     /* NPL */ )    ///
             ("NI"  =  558   "Nicaragua"                                 /* NIC */ )    ///
             ("NE"  =  562   "Niger"                                     /* NER */ )    ///
             ("NG"  =  566   "Nigeria"                                   /* NGA */ )    ///
             ("NU"  =  570   "Niue"                                      /* NIU */ )    ///
             ("NO"  =  578   "Norvegia"                                  /* NOR */ )    ///
             ("NC"  =  540   "Nuova Caledonia"                           /* NCL */ )    ///
             ("NZ"  =  554   "Nuova Zelanda"                             /* NZL */ )    ///
             ("OM"  =  512   "Oman"                                      /* OMN */ )    ///
             ("NL"  =  528   "Paesi Bassi"                               /* NLD */ )    ///
             ("PK"  =  586   "Pakistan"                                  /* PAK */ )    ///
             ("PW"  =  585   "Palau"                                     /* PLW */ )    ///
             ("PS"  =  275   "Stato di Palestina"                        /* PSE */ )    ///
             ("PA"  =  591   "Panamá"                                    /* PAN */ )    ///
             ("PG"  =  598   "Papua Nuova Guinea"                        /* PNG */ )    ///
             ("PY"  =  600   "Paraguay"                                  /* PRY */ )    ///
             ("PE"  =  604   "Perù"                                      /* PER */ )    ///
             ("PF"  =  258   "Polinesia francese"                        /* PYF */ )    ///
             ("PL"  =  616   "Polonia"                                   /* POL */ )    ///
             ("PR"  =  630   "Porto Rico"                                /* PRI */ )    ///
             ("PT"  =  620   "Portogallo"                                /* PRT */ )    ///
             ("MC"  =  492   "Monaco"                                    /* MCO */ )    ///
             ("QA"  =  634   "Qatar"                                     /* QAT */ )    ///
             ("GB"  =  826   "Regno Unito"                               /* GBR */ )    ///
             ("CD"  =  180   "Repubblica Democratica del Congo"          /* COD */ )    ///
             ("CZ"  =  203   "Repubblica Ceca"                           /* CZE */ )    ///
             ("CF"  =  140   "Repubblica Centrafricana"                  /* CAF */ )    ///
             ("CG"  =  178   "Repubblica del Congo"                      /* COG */ )    ///
             ("DO"  =  214   "Repubblica Dominicana"                     /* DOM */ )    ///
             ("RE"  =  638   "Riunione"                                  /* REU */ )    ///
             ("RO"  =  642   "Romania"                                   /* ROU */ )    ///
             ("RW"  =  646   "Ruanda"                                    /* RWA */ )    ///
             ("RU"  =  643   "Russia"                                    /* RUS */ )    ///
             ("EH"  =  732   "Sahara Occidentale"                        /* ESH */ )    ///
             ("KN"  =  659   "Saint Kitts e Nevis"                       /* KNA */ )    ///
             ("LC"  =  662   "Santa Lucia"                               /* LCA */ )    ///
             ("SH"  =  654   "Sant'Elena"                                /* SHN */ )    ///
             ("VC"  =  670   "Saint Vincent e Grenadine"                 /* VCT */ )    ///
             ("BL"  =  652   "Saint-Barthélemy"                          /* BLM */ )    ///
             ("MF"  =  663   "Saint-Martin"                              /* MAF */ )    ///
             ("PM"  =  666   "Saint-Pierre e Miquelon"                   /* SPM */ )    ///
             ("WS"  =  882   "Samoa"                                     /* WSM */ )    ///
             ("AS"  =   16   "Samoa americane"                           /* ASM */ )    ///
             ("SM"  =  674   "San Marino"                                /* SMR */ )    ///
             ("ST"  =  678   "São Tomé e Príncipe"                       /* STP */ )    ///
             ("SN"  =  686   "Senegal"                                   /* SEN */ )    ///
             ("RS"  =  688   "Serbia"                                    /* SRB */ )    ///
             ("SC"  =  690   "Seychelles"                                /* SYC */ )    ///
             ("SL"  =  694   "Sierra Leone"                              /* SLE */ )    ///
             ("SG"  =  702   "Singapore"                                 /* SGP */ )    ///
             ("SX"  =  534   "Sint Maarten"                              /* SXM */ )    ///
             ("SY"  =  760   "Siria"                                     /* SYR */ )    ///
             ("SK"  =  703   "Slovacchia"                                /* SVK */ )    ///
             ("SI"  =  705   "Slovenia"                                  /* SVN */ )    ///
             ("SO"  =  706   "Somalia"                                   /* SOM */ )    ///
             ("ES"  =  724   "Spagna"                                    /* ESP */ )    ///
             ("LK"  =  144   "Sri Lanka"                                 /* LKA */ )    ///
             ("US"  =  840   "Stati Uniti d'America"                     /* USA */ )    ///
             ("ZA"  =  710   "Sudafrica"                                 /* ZAF */ )    ///
             ("SD"  =  729   "Sudan"                                     /* SDN */ )    ///
             ("SS"  =  728   "Sudan del Sud"                             /* SSD */ )    ///
             ("SR"  =  740   "Suriname"                                  /* SUR */ )    ///
             ("SJ"  =  744   "Svalbard e Jan Mayen"                      /* SJM */ )    ///
             ("SE"  =  752   "Svezia"                                    /* SWE */ )    ///
             ("CH"  =  756   "Svizzera"                                  /* CHE */ )    ///
             ("SZ"  =  748   "Swaziland"                                 /* SWZ */ )    ///
             ("TW"  =  158   "Taiwan"                                    /* TWN */ )    ///
             ("TJ"  =  762   "Tagikistan"                                /* TJK */ )    ///
             ("TZ"  =  834   "Tanzania"                                  /* TZA */ )    ///
             ("TF"  =  260   "Terre Australi e Antartiche Francesi"      /* ATF */ )    ///
             ("IO"  =   86   "Territorio britannico dell'oceano Indiano" /* IOT */ )    ///
             ("TH"  =  764   "Thailandia"                                /* THA */ )    ///
             ("TL"  =  626   "Timor Est"                                 /* TLS */ )    ///
             ("TG"  =  768   "Togo"                                      /* TGO */ )    ///
             ("TK"  =  772   "Tokelau"                                   /* TKL */ )    ///
             ("TO"  =  776   "Tonga"                                     /* TON */ )    ///
             ("TT"  =  780   "Trinidad e Tobago"                         /* TTO */ )    ///
             ("TN"  =  788   "Tunisia"                                   /* TUN */ )    ///
             ("TR"  =  792   "Turchia"                                   /* TUR */ )    ///
             ("TM"  =  795   "Turkmenistan"                              /* TKM */ )    ///
             ("TC"  =  796   "Turks e Caicos"                            /* TCA */ )    ///
             ("TV"  =  798   "Tuvalu"                                    /* TUV */ )    ///
             ("UA"  =  804   "Ucraina"                                   /* UKR */ )    ///
             ("UG"  =  800   "Uganda"                                    /* UGA */ )    ///
             ("HU"  =  348   "Ungheria"                                  /* HUN */ )    ///
             ("UY"  =  858   "Uruguay"                                   /* URY */ )    ///
             ("UZ"  =  860   "Uzbekistan"                                /* UZB */ )    ///
             ("VU"  =  548   "Vanuatu"                                   /* VUT */ )    ///
             ("VE"  =  862   "Venezuela"                                 /* VEN */ )    ///
             ("VN"  =  704   "Vietnam"                                   /* VNM */ )    ///
             ("WF"  =  876   "Wallis e Futuna"                           /* WLF */ )    ///
             ("YE"  =  887   "Yemen"                                     /* YEM */ )    ///
             ("ZM"  =  894   "Zambia"                                    /* ZMB */ )    ///
             ("ZW"  =  716   "Zimbabwe"                                  /* ZWE */ )    ///
             ("AN"  = .z     "AN -> Indefinto"                                     )    ///
             ("n.d." = .y    "n.d."                                                )    ///
             , define(`1') replace casesensitive sub
  qui count if `1'==.
  if `pre_miss' == r(N) {
    drop TMP
    macro drop pre_miss
  }
  else {
    di "Questi non sono stati ricodificati!"
    fre TMP if `1'==.
    drop TMP
    macro drop pre_miss
    error 181
  }
end





capture program drop ORIGINE
program define ORIGINE
  /***   ????????   ***/
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("AR"  = 1  "AR")   ///
             ("CP"  = 2  "CP")   ///
             ("DP"  = 3  "DP")   ///
             ("FS"  = 4  "FS")   ///
             ("HO"  = 5  "HO")   ///
             ("IP"  = 6  "IP")   ///
             ("IW"  = 7  "IW")   ///
             ("KS"  = 8  "KS")   ///
             ("NC"  = 9  "NC")   ///
             ("OS"  = 10 "OS")   ///
             ("PC"  = 11 "PC")   ///
             ("PX"  = 12 "PX")   ///
             ("RM"  = 13 "RM")   ///
             ("RS"  = 14 "RS")   ///
             ("SE"  = 15 "SE")   ///
             ("TC"  = 16 "TC")   ///
             ("TJ"  = 17 "TJ")   ///
             ("VD"  = 18 "VD")   ///
             ("WB"  = 19 "WB")   ///
             ("WW"  = 20 "WW")   ///
             , define(`1') replace casesensitive sub
  qui count if `1'==.
  if `pre_miss' == r(N) {
    drop TMP
    macro drop pre_miss
  }
  else {
    fre TMP if `1'==.
    drop TMP
    macro drop pre_miss
    error 181
  }
end




capture program drop OW
program define OW
  replace `1'=trim(`1')
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("AR"  = 1  "AR")                                                                                                                                        ///
    ("Altri azionisti, in forma aggregata" "Other unnamed shar., agg."                              =  1  "Altri azionisti, in forma aggregata")                      ///
    ("Assicurazioni" "Insurance company"                                                            =  2  "Assicurazioni")                                            ///
    ("Aziende industriale" "Industrial company"                                                     =  3  "Aziende industriale")                                      ///
    ("Banche" "Bank"                                                                                =  4  "Banche")                                                   ///
    ("Dipendenti /Dirigenti/Amministratori" "Employees/Managers"                                    =  5  "Dipendenti/Dirigenti/Amministratori")                      ///
    ("Enti Pubblici, Stato, Governo" "State, Public authority" "Public"                             =  6  "Enti pubblici, stato, governo")                            ///
    ("Fondazioni/Istituti di Ricerca" "Foundation/Research Institute"                               =  7  "Fondazioni/Istituti di ricerca")                           ///
    ("Fondi Mutualistici & Pensionistici/Nominali/Fiduciari" "Mutual & Pension fund/Trust/Nominee"  =  8  "Fondi mutualistici & pensionistici/nominali/fiduciari")    ///
    ("La proprietà stessa" "Self-owned"                                                             =  9  "La proprietà stessa")                                      ///
    ("Persone fisiche o famiglie" "Individual(s) or family(ies)"                                    =  10 "Persone fisiche o famiglie")                               ///
    ("Private Equity firms"                                                                         =  11 "Private equity firms")                                     ///
    ("Società Finanziaria" "Financial company"                                                      =  12 "Società finanziaria")                                      ///
    ("Società Quotate"                                                                              =  13 "Società quotate")                                          ///
    ("Venture capital"                                                                              =  14 "Venture capital")                                          ///
    ("Azionisti privati, in forma aggregata" "Unnamed private shareh., agg."                        =  15 "Azionisti privati, in forma aggregata")                    ///
    ("NA"                                                                                           =  .a "n.a.")                                                     ///
        , define(`1') replace casesensitive sub
  qui count if `1'==.
  if `pre_miss' == r(N) {
    drop TMP
    macro drop pre_miss
  }
  else {
    fre TMP if `1'==.
    drop TMP
    macro drop pre_miss
    error 181
  }
end




/***  LABEL DEFINE SECTION   ***/
capture label drop cod_prov
label define cod_prov 001 "Torino"                                                            ///
                      002 "Vercelli"                                                          ///
                      003 "Novara"                                                            ///
                      004 "Cuneo"                                                             ///
                      005 "Asti"                                                              ///
                      006 "Alessandria"                                                       ///
                      096 "Biella"                                                            ///
                      103 "Verbano-Cusio-Ossola"                                              ///
                      007 "Aosta"                                                             ///
                      012 "Varese"                                                            ///
                      013 "Como"                                                              ///
                      014 "Sondrio"                                                           ///
                      015 "Milano"                                                            ///
                      016 "Bergamo"                                                           ///
                      017 "Brescia"                                                           ///
                      018 "Pavia"                                                             ///
                      019 "Cremona"                                                           ///
                      020 "Mantova"                                                           ///
                      097 "Lecco"                                                             ///
                      098 "Lodi"                                                              ///
                      021 "Bolzano"                                                           ///
                      022 "Trento"                                                            ///
                      023 "Verona"                                                            ///
                      024 "Vicenza"                                                           ///
                      025 "Belluno"                                                           ///
                      026 "Treviso"                                                           ///
                      027 "Venezia"                                                           ///
                      028 "Padova"                                                            ///
                      029 "Rovigo"                                                            ///
                      030 "Udine"                                                             ///
                      031 "Gorizia"                                                           ///
                      032 "Trieste"                                                           ///
                      093 "Pordenone"                                                         ///
                      008 "Imperia"                                                           ///
                      009 "Savona"                                                            ///
                      010 "Genova"                                                            ///
                      011 "La Spezia"                                                         ///
                      033 "Piacenza"                                                          ///
                      034 "Parma"                                                             ///
                      035 "Reggio Emilia"                                                     ///
                      036 "Modena"                                                            ///
                      037 "Bologna"                                                           ///
                      038 "Ferrara"                                                           ///
                      039 "Ravenna"                                                           ///
                      040 "Forlì - Cesena"                                                    ///
                      099 "Rimini"                                                            ///
                      045 "Massa Carrara"                                                     ///
                      046 "Lucca"                                                             ///
                      047 "Pistoia"                                                           ///
                      048 "Firenze"                                                           ///
                      049 "Livorno"                                                           ///
                      050 "Pisa"                                                              ///
                      051 "Arezzo"                                                            ///
                      052 "Siena"                                                             ///
                      053 "Grosseto"                                                          ///
                      100 "Prato"                                                             ///
                      054 "Perugia"                                                           ///
                      055 "Terni"                                                             ///
                      041 "Pesaro e Urbino"                                                   ///
                      042 "Ancona"                                                            ///
                      043 "Macerata"                                                          ///
                      044 "Ascoli Piceno"                                                     ///
                      056 "Viterbo"                                                           ///
                      057 "Rieti"                                                             ///
                      058 "Roma"                                                              ///
                      059 "Latina"                                                            ///
                      060 "Frosinone"                                                         ///
                      066 "L'aquila"                                                          ///
                      067 "Teramo"                                                            ///
                      068 "Pescara"                                                           ///
                      069 "Chieti"                                                            ///
                      070 "Campobasso"                                                        ///
                      094 "Isernia"                                                           ///
                      061 "Caserta"                                                           ///
                      062 "Benevento"                                                         ///
                      063 "Napoli"                                                            ///
                      064 "Avellino"                                                          ///
                      065 "Salerno"                                                           ///
                      071 "Foggia"                                                            ///
                      072 "Bari"                                                              ///
                      073 "Taranto"                                                           ///
                      074 "Brindisi"                                                          ///
                      075 "Lecce"                                                             ///
                      076 "Potenza"                                                           ///
                      077 "Matera"                                                            ///
                      078 "Cosenza"                                                           ///
                      079 "Catanzaro"                                                         ///
                      080 "Reggio Calabria"                                                   ///
                      101 "Crotone"                                                           ///
                      102 "Vibo Valentia"                                                     ///
                      081 "Trapani"                                                           ///
                      082 "Palermo"                                                           ///
                      083 "Messina"                                                           ///
                      084 "Agrigento"                                                         ///
                      085 "Caltanissetta"                                                     ///
                      086 "Enna"                                                              ///
                      087 "Catania"                                                           ///
                      088 "Ragusa"                                                            ///
                      089 "Siracusa"                                                          ///
                      090 "Sassari"                                                           ///
                      091 "Nuoro"                                                             ///
                      092 "Cagliari"                                                          ///
                      095 "Oristano"                                                          ///
                      104 "Olbia-Tempio"                                                      ///
                      105 "Ogliastra"                                                         ///
                      106 "Medio Campidano"                                                   ///
                      107 "Carbonia-Iglesias"                                                 ///
                      108 "Monza Brianza"                                                     ///
                      109 "Fermo"                                                             ///
                      110 "Barletta-Andria-Trani"                                             ///
                      111 "Sud Sardegna"

capture label drop cod_reg
label define cod_reg   1 "Piemonte"                 ///
                       2  "Valle d'Aosta"            ///
                       3  "Lombardia"                ///
                       4  "Trentino-Alto Adige"      ///
                       5  "Veneto"                   ///
                       6  "Friuli Venezia Giulia"    ///
                       7  "Liguria"                  ///
                       8  "Emilia-Romagna"           ///
                       9  "Toscana"                  ///
                       10 "Umbria"                   ///
                       11 "Marche"                   ///
                       12 "Lazio"                    ///
                       13 "Abruzzo"                  ///
                       14 "Molise"                   ///
                       15 "Campania"                 ///
                       16 "Puglia"                   ///
                       17 "Basilicata"               ///
                       18 "Calabria"                 ///
                       20 "Sardegna"                 ///
                       19 "Sicilia"                  ///
                       21 "Estero"

capture label drop yesno
label define yesno 0 "No"  1 "Sì"
/***   END LABEL DEFINE SECTION   ***/


capture label var rag_soc "Ragione Sociale"
capture label var anno "Anno"


capture confirm variable codfisca
if !_rc {
  label var codfisca "Codice fiscale"
  rename codfisca h15
  **destring ??
}


capture confirm variable numcciaa
if !_rc {
  label var numcciaa "Numero CCIAA"
  rename numcciaa h03
}


capture confirm variable vat_number
if !_rc {
  label var vat_number "Partita IVA"
  rename vat_number h18
}

capture confirm variable bvdepid
if !_rc {
  label var bvdepid "BvD ID number"
  rename bvdepid cf32
}


capture confirm variable sd_isin
if !_rc {
  label var sd_isin "ISIN number"
  rename sd_isin f3
}


capture confirm variable sd_ticker
if !_rc {
  label var sd_ticker "Ticker symbol"
  rename sd_ticker f89
}



capture confirm variable indirizz
if !_rc {
  label var indirizz "Indirizzo"
  replace indirizz=trim(indirizz)
  rename indirizz h06
}

capture confirm variable codpost
if !_rc {
  label var codpost "Codice Postale"
  destring codpost, replace
  rename codpost h07
}


capture confirm variable localita
if !_rc {
  label var localita "Comune"
  rename localita h08
}

capture confirm variable istatcom
if !_rc {
  label var istatcom "Codice ISTAT comune"
  capture confirm string variable istatcom
  if !_rc {
    destring istatcom, replace
  }
  recode istatcom (0=.)
  rename istatcom vc_200078
}

capture confirm variable h08 vc_200078
if !_rc {
  drop h08
}






capture confirm variable provinc
if !_rc {
  label var provinc "Provincia"
  rename provinc h09
}

capture confirm variable istatpro
if !_rc {
  label var istatpro "Codice ISTAT provincia"
  capture confirm string variable istatpro
  if !_rc {
    destring istatpro, replace
  }
  recode istatpro (0 999=.)
  label values istatpro cod_prov
  rename istatpro vc_200077
}

capture confirm variable h09 vc_200077
if !_rc {
  drop h09
}





capture confirm variable regione
if !_rc {
  label var regione "Regione"
  rename regione h10
}

capture confirm variable istatreg
if !_rc {
  label var istatreg "Codice ISTAT regione"
  capture confirm string variable istatreg
  if !_rc {
    destring istatreg, replace
  }
  recode istatreg (0 99=.)
  label values istatreg cod_reg
  rename istatreg vc_200076
}

capture confirm variable h10 vc_200076
if !_rc {
  drop h10
}


capture confirm variable longitud
if !_rc {
  label var longitud "Longitudine"
  capture confirm string variable longitud
  if !_rc {
    destring longitud, replace
  }
  rename longitud vc_100055
}


capture confirm variable latitude
if !_rc {
  label var latitude "Latitudine"
  capture confirm string variable latitude
  if !_rc {
    destring latitude, replace
  }
  rename latitude vc_100056
}


capture confirm variable homepage
if !_rc {
  label var homepage "Website"
  replace homepage = trim(homepage)
  rename homepage h29
}


capture confirm variable hqaddr1
if !_rc {
  label var hqaddr1 "Sede principale"
  replace hqaddr1 = trim(hqaddr1)
  rename hqaddr1 vc_201100
}


capture confirm variable hqaddr2
if !_rc {
  label var hqaddr2 "Frazione"
  replace hqaddr2 = trim(hqaddr2)
  rename hqaddr2 vc_201101
}

capture confirm variable hqpost
if !_rc {
  label var hqpost "Codice Postale"
  replace hqpost = trim(hqpost)
  rename hqpost vc_201104
}

capture confirm variable hqcomm /* assente prima ?? */
if !_rc {
  label var hqcomm "Comune"
  replace hqcomm = trim(hqcomm)
  **rename hqcomm
}

capture confirm variable hqprov
if !_rc {
  label var hqprov "Provincia"
  replace hqprov = trim(hqprov)
  rename hqprov vc_201105
}


capture confirm variable hqregion
if !_rc {
  label var hqregion "Regione"
  replace hqregion = trim(hqregion)
  rename hqregion vc_201103
}

capture confirm variable hqtelefono
if !_rc {
  label var hqtelefono "Numero di telefono"
  replace hqtelefono = trim(hqtelefono)
  rename hqtelefono h11
}



capture confirm variable legalstatus
if !_rc {
  replace legalstatus=trim(legalstatus)
  count if legalstatus==""
  local pre = r(N)
  strrec legalstatus ("Ditta attiva" "Attiva" = 1 "Attiva") ///
                     ("Ditta cessata" "Cessata"  = 2 "Cessata")    ///
                     ("Fallita" = 3 "Fallita")   ////
                     ("Ditta in liquidazione" "In liquidazione" = 4 "In liquidazione") ///
                     ("Ditta inattiva" = 5 "Inattiva") ///
                     ("Ditta sospesa" = 6 "Sospesa") ///
                     ("Attiva (Stato di insolvenza)" = 11 "Attiva in stato di insolvenza")  ///
                     ("Attiva (Amministrazione Controllata)" = 12 "Attiva in Amministrazione Controllata") ///
                     ("Cessata (Fusione)" = 21 "Cessata per Fusione")  ///
                     ("Cessata (In liquidazione)" = 22 "Cessata in liquidazione")  ///
                     ("Ditta cessata per tranferimento" = 23 "Cessata per tranferimento") ///
                     ("Cessata (Scissione)" = 24 "Cessata per Scissione") ///
                     ("Cessata (Chiusura per fallimento)" = 25 "Cessata (Chiusura per fallimento)")  ///
                     ("Ditta in fallimento" "In fallimento" = 31 "In fallimento") ///
                     , ///
                     gen(h27)
  count if h27==.
  assert r(N) == `pre'
  **fre legalstatus if h27==.
  order h27, after(legalstatus)
  drop legalstatus
  label var h27 "Stato giuridico"
}




capture confirm variable formgiur
if !_rc {
  replace formgiur = trim(formgiur)
  count if formgiur==""
  local pre = r(N)
  strrec formgiur ("Associazione" = 1 "Associazione")  ///
                  ("Associazione impresa"= 2 "Associazione impresa")   ///
                  ("Consorzio" "Consorzio senza attivita' esterna" "Consorzio ai sensi del D.lgs. 267/2000" = 3 "Consorzio")   ///
                  ("Consorzio con attivita' esterna" = 4 "Consorzio con attività esterna")   ///
                  ("Fondazione" = 5 "Fondazione")   ///
                  ("Fondazione impresa" = 6 "Fondazione impresa")   ///
                  ("G.E.I.E." = 7 "G.E.I.E.")   ///
                  ("Non precisata" = 8 "Non precisata")  ///
                  ("Piccola societa' cooperativa a responsabilita' limitata" "PICC. S.C.A.R.L." "Piccola cooperativa"  = 9 "Piccola società cooperativa a responsabilità limitata")  ///
                  ("S.A.P.A." = 10 "S.A.P.A.")  ///
                  ("S.A.S." = 11 "S.A.S.")  ///
                  ("S.C.A.R.I." = 12 "S.C.A.R.I." )  ///
                  ("S.C.A.R.L." = 13 "S.C.A.R.L." )  ///
                  ("S.N.C." = 14 "S.N.C.")  ///
                  ("S.P.A." = 15 "S.P.A.")  ///
                  ("S.R.L." = 16 "S.R.L.")  ///
                  ("S.R.L. a unico socio" "S.R.L. a socio unico" = 17 "S.R.L. a unico socio")  ///
                  ("S.S." "Società semplice" = 18 "S.S.")  ///
                  ("Soc. Estera" "Società estera" "Società estere" "Società europea" = 19 "Società estera")  ///
                  ("Soc. consortile" "Società consortile in nome collettivo" = 20 "Società consortile")  ///
                  ("Soc. consortile a resp. limitata" "Società consortile a responsabilita' limitata" = 21 "Società consortile a responsabilità limitata")  ///
                  ("Soc. consortile per azioni" "Società consortile per azioni" = 22 "Società consortile per azioni")  ///
                  ("Soc. coop. a resp. limitata per azioni" "S.C.A.R.L.P.A." = 23 "Società cooperativa a responsabilità limitata per azioni (scarlpa)")  ///
                  ("Soc. coop. consortile" "Società cooperativa consortile" = 24 "Società cooperativa consortile")  ///
                  ("S.P.A. a socio unico" = 25 "S.P.A. a socio unico" )  ///
                  ("Cooperativa sociale" = 26 "Cooperativa sociale")  ///
                  ("Società anonima" "Societa' anonima" = 27 "Società anonima")  ///
                  ("Società di fatto" = 28 "Società di fatto")  ///
                  ("Mutua assicurazione" = 29 "Mutua assicurazione")  ///
                  ("Ente" = 30 "Ente")  ///
                  ("S.R.L. semplificata" = 31 "S.R.L. semplificata") ///
                  ("S.R.L. a capitale ridotto" = 32 "S.R.L. a capitale ridotto")  ///
                  ("Società consortile cooperativa a responsabilità limitata" = 33 "Società consortile cooperativa a responsabilità limitata")  ///
                  ("Società di mutuo soccorso" = 34 "Società di mutuo soccorso")  ///
                  ("Azienda speciale" "Azienda speciale ai sensi del D.lgs. 267/2000"= 35 "Azienda speciale")  ///
                  ("Società cooperativa europea" = 36 "Società cooperativa europea"), gen(h14)
                  count if h14==.
assert r(N) == `pre'
**fre formgiur if h14==.
order h14, after(formgiur)
drop formgiur
label var h14 "Forma giuridica"
}


capture confirm variable annocost
if !_rc {
  gen leng=length(annocost)
  replace annocost="01/01/"+annocost if leng==4
  replace annocost="01/"+annocost if leng==7
  drop leng
  gen h34 = date(annocost,"DMY")
  format h34 %td
  assert h34!=. if annocost!=""
  order h34, after(annocost)
  label var h34 "Anno costituzione"
  drop annocost
}


capture confirm variable udatachi
if !_rc {
  gen h23 = date(udatachi,"DMY")
  format h23 %td
  assert h23!=. if udatachi!=""
  order h23, after(udatachi)
  drop udatachi
  label var h23 "Data chiusura del bilancio"
}



capture confirm variable accmodel
if !_rc {
  capture confirm string variable accmodel
  if !_rc {
    strrec accmodel ("Abbreviato"     = 1 "Abbreviato") ///
                    ("Abbreviato (D)" = 2 "Abbreviato (D)")  ///
                    ("Dettagliato"    = 3 "Dettagliato"), gen(h36)
  assert h36!=. if accmodel!=""
  }
  order h36, after(accmodel)
  label var h36 "Ultimo modello di bilancio"
  drop accmodel
}


capture confirm variable accformat
if !_rc {
  count if accformat==""
  local pre = r(N)
  strrec accformat ("ICS" = 1 "Società industriali, commerciali e di servizi") ///
                   ("FIN" = 2 "Società di intermediazione finanziaria")  ///
                   ("SIM" = 3 "Società di intermediazione mobiliare")  ///
                   ("BNK" = 4 "Banche")  ///
                   ("INS" = 5 "Assicurazioni"), replace
  count if accformat==.
  assert `pre'==r(N)
  label var accformat "Schema di bilancio"
}



capture confirm variable ifrs
if !_rc {
   replace ifrs = lower(trim(ifrs))
   strrec ifrs ("no"=0 "No")  ///
               ("sì" "si"=1 "Sì")  ///
               ("n.d."=.a "n.d."), gen(vc_200071)
  order vc_200071, after(ifrs)
  assert vc_200071!=. if ifrs!=""
  label var vc_200071 "IFRS originale"
  drop ifrs
}




capture confirm variable desccons
if !_rc {
 replace desccons = trim(desccons)
  label var desccons "Descrizione di consolidamento"
  rename desccons h22
}



capture confirm variable codicons_str
if !_rc {
  replace codicons_str = trim(codicons_str)
  strrec codicons_str ("C2" = 10 "Consolidato per società CON non consolidato") ///
                      ("C1" = 11 "Consolidato per società SENZA non consolidato" ) ///
                      ("U2" = 20 "Non consolidato per società CON consolidato")  ///
                      ("U1" = 21 "Non consolidato per società SENZA consolidato")  ///
                      ("NF" = 99 "NF"), gen(h21)
  order h21, after(codicons_str)
  assert h21!=. if codicons_str!=""
  label var h21 "Codice di consolidamento"
  drop codicons_str
}

capture confirm variable h21 h22
if !_rc {
  drop h22
}


capture confirm variable statunit
if !_rc {
  replace statunit=trim(statunit)
  strrec statunit ("Unità" = 1 "Unità")  ///
                  ("Migliaia" = 2 "Migliaia")  ///
                  ("n.d." = .a "n.d."), gen(h33)
  assert h33!=. if statunit!=""
  label var h33 "Statement unit"
  order h33, after(statunit)
  drop statunit
}


capture confirm variable period
if !_rc {
  destring period, replace
  label var period "Periodo di competenza"
  rename period cf57
}


capture confirm variable owndata_nrmonths
if !_rc {
  capture destring owndata_nrmonths, replace
  label var owndata_nrmonths "Periodo di competenza"
  rename owndata_nrmonths cf57
}




capture confirm variable attiviit
if !_rc {
  replace attiviit = trim(attiviit)
  label var attiviit "Descrizione Attività (IT)"
  rename attiviit ac01
}


capture confirm variable ateco7c
if !_rc {
  replace ateco7c = trim(ateco7c)
  label var ateco7c  "ATECO 2007"
  rename ateco7c vc_200060
}

capture confirm variable ateco7d
if !_rc {
  replace ateco7d = trim(ateco7d)
  label var ateco7d "Descrizione ATECO 2007"
  rename ateco7d vc_200064
}


/***************************
**   STATO PATRIMONIALE   **
****************************/

capture confirm variable vc_1001
if !_rc {
 label var vc_1001 "CREDITI VERSO SOCI"
 }

capture confirm variable vc_1002
if !_rc {
 label var vc_1002 "Quota di capitale richiamata"
 }

capture confirm variable vc_1039
if !_rc {
 label var vc_1039 "TOTALE IMMOBILIZZAZIONI sep.ind. Di quelle conc. In loc. Finanz."
 }

capture confirm variable vc_1011
if !_rc {
 label var vc_1011 "TOTALE IMMOB. IMMATERIALI"
 }

capture confirm variable vc_1003
if !_rc {
 label var vc_1003 "Costi impianto e ampl."
 }

capture confirm variable vc_1004
if !_rc {
 label var vc_1004 "Costi ricerca e pubb."
 }

capture confirm variable vc_1005
if !_rc {
 label var vc_1005 "Diritti brevetto ind."
 }

capture confirm variable vc_1006
if !_rc {
 label var vc_1006 "Concessioni, licenze"
 }

capture confirm variable vc_1007
if !_rc {
 label var vc_1007 "Avviamento"
 }

capture confirm variable vc_1008
if !_rc {
 label var vc_1008 "Imm. in corso"
 }

capture confirm variable vc_1009
if !_rc {
 label var vc_1009 "Altre immobiliz. Immateriali"
 }

capture confirm variable vc_1010
if !_rc {
 label var vc_1010 "Fondo amm.to Immob. Immateriali"
 }

capture confirm variable vc_1018
if !_rc {
 label var vc_1018 "TOTALE IMMOB. MATERIALI"
 }

capture confirm variable vc_1012
if !_rc {
 label var vc_1012 "Terreni e fabbricati"
 }

capture confirm variable vc_1013
if !_rc {
 label var vc_1013 "Impianti"
 }

capture confirm variable vc_1014
if !_rc {
 label var vc_1014 "Attrez. industriali"
 }

capture confirm variable vc_1015
if !_rc {
 label var vc_1015 "Altri beni"
 }

capture confirm variable vc_1016
if !_rc {
 label var vc_1016 "Imm. in corso/acconti"
 }

capture confirm variable vc_1017
if !_rc {
 label var vc_1017 "Fondo amm.to Immob. Materiali"
 }

capture confirm variable vc_1038
if !_rc {
 label var vc_1038 "TOTALE IMMOB. FINANZIARIE"
 }

capture confirm variable vc_1023
if !_rc {
 label var vc_1023 "TOT Partecipazioni"
 }

capture confirm variable vc_1019
if !_rc {
 label var vc_1019 "Imprese controllate"
 }

capture confirm variable vc_1020
if !_rc {
 label var vc_1020 "Imprese collegate"
 }

capture confirm variable vc_1021
if !_rc {
 label var vc_1021 "Imprese controllanti"
 }

capture confirm variable vc_1022
if !_rc {
 label var vc_1022 "Altre imprese"
 }

capture confirm variable vc_1034
if !_rc {
 label var vc_1034 "TOT CREDITI Imm. Fin."
 }

capture confirm variable vc_1024
if !_rc {
 label var vc_1024 "Cred. vs Controllate entro"
 }

capture confirm variable vc_1025
if !_rc {
 label var vc_1025 "Cred. vs Controllate oltre"
 }

capture confirm variable vc_1026
if !_rc {
 label var vc_1026 "Cred. vs Collegate entro"
 }

capture confirm variable vc_1027
if !_rc {
 label var vc_1027 "Cred. vs Collegate oltre"
 }

capture confirm variable vc_1028
if !_rc {
 label var vc_1028 "Cred. vs Controllanti entro"
 }

capture confirm variable vc_1029
if !_rc {
 label var vc_1029 "Cred. vs Controllanti oltre"
 }

capture confirm variable vc_1030
if !_rc {
 label var vc_1030 "Cred. vs Altri entro"
 }

capture confirm variable vc_1031
if !_rc {
 label var vc_1031 "Cred. vs Altri oltre"
 }

capture confirm variable vc_1032
if !_rc {
 label var vc_1032 "CREDITI FIN. A BREVE"
 }

capture confirm variable vc_1033
if !_rc {
 label var vc_1033 "CREDITI FIN. A OLTRE"
 }

capture confirm variable vc_1035
if !_rc {
 label var vc_1035 "Altri titoli"
 }

capture confirm variable vc_1036
if !_rc {
 label var vc_1036 "Azioni proprie"
 }

capture confirm variable vc_1037
if !_rc {
 label var vc_1037 "Azioni proprie DI CUI: Val nominale"
 }

capture confirm variable vc_1071
if !_rc {
 label var vc_1071 "ATTIVO CIRCOLANTE"
 }

capture confirm variable vc_1045
if !_rc {
 label var vc_1045 "TOTALE RIMANENZE"
 }

capture confirm variable vc_1040
if !_rc {
 label var vc_1040 "Materie prime"
 }

capture confirm variable vc_1041
if !_rc {
 label var vc_1041 "Prodotti semilav./in corso"
 }

capture confirm variable vc_1042
if !_rc {
 label var vc_1042 "Lavori in corso"
 }

capture confirm variable vc_1043
if !_rc {
 label var vc_1043 "Prodotti finiti"
 }

capture confirm variable vc_1044
if !_rc {
 label var vc_1044 "Acconti"
 }

capture confirm variable vc_1058
if !_rc {
 label var vc_1058 "TOTALE CREDITI"
 }

capture confirm variable vc_1046
if !_rc {
 label var vc_1046 "Cred. vs Clienti entro"
 }

capture confirm variable vc_1047
if !_rc {
 label var vc_1047 "Cred. vs Clienti oltre"
 }

capture confirm variable vc_1048
if !_rc {
 label var vc_1048 "Cred. vs Controllate entro"
 }

capture confirm variable vc_1049
if !_rc {
 label var vc_1049 "Cred. vs Controllate oltre"
 }

capture confirm variable vc_1050
if !_rc {
 label var vc_1050 "Cred. vs Collegate entro"
 }

capture confirm variable vc_1051
if !_rc {
 label var vc_1051 "Cred. vs Collegate oltre"
 }

capture confirm variable vc_1052
if !_rc {
 label var vc_1052 "Cred. vs Controllanti entro"
 }

capture confirm variable vc_1053
if !_rc {
 label var vc_1053 "Cred. vs Controllanti oltre"
 }

capture confirm variable vc_1180
if !_rc {
 label var vc_1180 "Cred. tributari entro"
 }

capture confirm variable vc_1181
if !_rc {
 label var vc_1181 "Cred. tributari oltre"
 }

capture confirm variable vc_1182
if !_rc {
 label var vc_1182 "Cred. per imposte anticipate entro"
 }

capture confirm variable vc_1183
if !_rc {
 label var vc_1183 "Cred. per imposte anticipate oltre"
 }

capture confirm variable vc_1054
if !_rc {
 label var vc_1054 "Cred. verso altri entro"
 }

capture confirm variable vc_1055
if !_rc {
 label var vc_1055 "Cred. verso altri oltre"
 }

capture confirm variable vc_3046
if !_rc {
 label var vc_3046 "Cred. vs Clienti entro"
 }

capture confirm variable vc_3047
if !_rc {
 label var vc_3047 "Cred. vs Clienti oltre"
 }

capture confirm variable vc_3048
if !_rc {
 label var vc_3048 "Cred. vs Controllate entro"
 }

capture confirm variable vc_3049
if !_rc {
 label var vc_3049 "Cred. vs Controllate oltre"
 }

capture confirm variable vc_3050
if !_rc {
 label var vc_3050 "Cred. vs Collegate entro"
 }

capture confirm variable vc_3051
if !_rc {
 label var vc_3051 "Cred. vs Collegate oltre"
 }

capture confirm variable vc_3052
if !_rc {
 label var vc_3052 "Cred. vs Controllanti entro"
 }

capture confirm variable vc_3053
if !_rc {
 label var vc_3053 "Cred. vs Controllanti oltre"
 }

capture confirm variable vc_3180
if !_rc {
 label var vc_3180 "Cred. tributari entro"
 }

capture confirm variable vc_3181
if !_rc {
 label var vc_3181 "Cred. tributari oltre"
 }

capture confirm variable vc_3182
if !_rc {
 label var vc_3182 "Cred. per imposte anticipate entro"
 }

capture confirm variable vc_3183
if !_rc {
 label var vc_3183 "Cred. per imposte anticipate oltre"
 }

capture confirm variable vc_3054
if !_rc {
 label var vc_3054 "Cred. verso altri entro"
 }

capture confirm variable vc_3055
if !_rc {
 label var vc_3055 "Cred. verso altri oltre"
 }






capture confirm variable vc_1056
if !_rc {
 label var vc_1056 "Crediti a breve"
 }

capture confirm variable vc_1057
if !_rc {
 label var vc_1057 "Crediti a oltre"
 }

capture confirm variable vc_1066
if !_rc {
 label var vc_1066 "TOTALE ATTIVITA' FINANZIARIE"
 }

capture confirm variable vc_1059
if !_rc {
 label var vc_1059 "Partec.ni in Controllate"
 }

capture confirm variable vc_1060
if !_rc {
 label var vc_1060 "Partec.ni in Collegate"
 }

capture confirm variable vc_1061
if !_rc {
 label var vc_1061 "Partec.ni in Controllanti"
 }

capture confirm variable vc_1062
if !_rc {
 label var vc_1062 "Altre Partec.ni"
 }

capture confirm variable vc_1063
if !_rc {
 label var vc_1063 "Azioni proprie"
 }

capture confirm variable vc_1064
if !_rc {
 label var vc_1064 "Azioni proprie DI CUI: Val nominale"
 }

capture confirm variable vc_1065
if !_rc {
 label var vc_1065 "Altri titoli"
 }

capture confirm variable vc_1070
if !_rc {
 label var vc_1070 "TOT. DISPON. LIQUIDE"
 }

capture confirm variable vc_1067
if !_rc {
 label var vc_1067 "Depositi bancari"
 }

capture confirm variable vc_1068
if !_rc {
 label var vc_1068 "Assegni"
 }

capture confirm variable vc_1069
if !_rc {
 label var vc_1069 "Denaro in cassa"
 }

capture confirm variable vc_1072
if !_rc {
 label var vc_1072 "RATEI E RISCONTI"
 }

capture confirm variable vc_1073
if !_rc {
 label var vc_1073 "Disaggio su prestiti"
 }

capture confirm variable vc_1074
if !_rc {
 label var vc_1074 "TOTALE ATTIVO"
 }

capture confirm variable vc_1084
if !_rc {
 label var vc_1084 "TOTALE PATRIMONIO NETTO"
 }

capture confirm variable vc_1075
if !_rc {
 label var vc_1075 "Capitale sociale"
 }

capture confirm variable vc_1076
if !_rc {
 label var vc_1076 "Riserva da sovrapprezzo"
 }

capture confirm variable vc_1077
if !_rc {
 label var vc_1077 "Riserva di rivalutazione"
 }

capture confirm variable vc_1078
if !_rc {
 label var vc_1078 "Riserva legale"
 }

capture confirm variable vc_1080
if !_rc {
 label var vc_1080 "Riserva statutaria"
 }

capture confirm variable vc_1079
if !_rc {
 label var vc_1079 "Riserva azioni proprie"
 }

capture confirm variable vc_1081
if !_rc {
 label var vc_1081 "Altre riserve"
 }

capture confirm variable vc_2082
if !_rc {
 label var vc_2082 "Riserva da cons. del Gruppo"
 }

capture confirm variable vc_1082
if !_rc {
 label var vc_1082 "Utile/perdita a nuovo"
 }

capture confirm variable vc_1083
if !_rc {
 label var vc_1083 "Utile/perdita di esercizio"
 }

capture confirm variable vc_2085
if !_rc {
 label var vc_2085 "TOTALE PATRIMONIO DEL GRUPPO"
 }

capture confirm variable vc_2086
if !_rc {
 label var vc_2086 "Capitale e riserve di pertinenza di TERZI"
 }

capture confirm variable vc_2087
if !_rc {
 label var vc_2087 "Utile/perdita di es. di pertinenza di TERZI"
 }

capture confirm variable vc_2088
if !_rc {
 label var vc_2088 "TOTALE PATRIMONIO DI TERZI"
 }

capture confirm variable vc_1088
if !_rc {
 label var vc_1088 "TOTALE FONDI RISCHI"
 }

capture confirm variable vc_1085
if !_rc {
 label var vc_1085 "Fondo di Quiescenza"
 }

capture confirm variable vc_1086
if !_rc {
 label var vc_1086 "Fondo Imposte anche differite"
 }

capture confirm variable vc_1087
if !_rc {
 label var vc_1087 "Altri Fondi"
 }

capture confirm variable vc_2093
if !_rc {
 label var vc_2093 "Fondo di Consolidamento"
 }

capture confirm variable vc_1089
if !_rc {
 label var vc_1089 "TRATTAMENTO DI FINE RAPPORTO"
 }

capture confirm variable vc_1118
if !_rc {
 label var vc_1118 "TOTALE DEBITI"
 }

capture confirm variable vc_1090
if !_rc {
 label var vc_1090 "Obblig.ni entro"
 }

capture confirm variable vc_1091
if !_rc {
 label var vc_1091 "Obblig.ni oltre"
 }

capture confirm variable vc_1092
if !_rc {
 label var vc_1092 "Obblig.ni convert. entro"
 }

capture confirm variable vc_1093
if !_rc {
 label var vc_1093 "Obblig.ni convert. oltre."
 }

capture confirm variable vc_1184
if !_rc {
 label var vc_1184 "Soci per Finanziamenti entro"
 }

capture confirm variable vc_1185
if !_rc {
 label var vc_1185 "Soci per Finanziamenti oltre"
 }

capture confirm variable vc_1094
if !_rc {
 label var vc_1094 "Banche entro l'esercizio"
 }

capture confirm variable vc_1095
if !_rc {
 label var vc_1095 "Banche oltre l'esercizio"
 }

capture confirm variable vc_1096
if !_rc {
 label var vc_1096 "Altri finanziatori entro"
 }

capture confirm variable vc_1097
if !_rc {
 label var vc_1097 "Altri finanziatori oltre"
 }

capture confirm variable vc_1098
if !_rc {
 label var vc_1098 "Acconti entro"
 }

capture confirm variable vc_1099
if !_rc {
 label var vc_1099 "Acconti oltre"
 }

capture confirm variable vc_1100
if !_rc {
 label var vc_1100 "Fornitori entro"
 }

capture confirm variable vc_1101
if !_rc {
 label var vc_1101 "Fornitori oltre"
 }

capture confirm variable vc_1102
if !_rc {
 label var vc_1102 "Titoli di credito entro"
 }

capture confirm variable vc_1103
if !_rc {
 label var vc_1103 "Titoli di credito oltre"
 }

capture confirm variable vc_1104
if !_rc {
 label var vc_1104 "Imprese Controllate entro"
 }

capture confirm variable vc_1105
if !_rc {
 label var vc_1105 "Imprese Controllate oltre"
 }

capture confirm variable vc_1106
if !_rc {
 label var vc_1106 "Imprese Collegate entro"
 }

capture confirm variable vc_1107
if !_rc {
 label var vc_1107 "Imprese Collegate oltre"
 }

capture confirm variable vc_1108
if !_rc {
 label var vc_1108 "Controllanti entro"
 }

capture confirm variable vc_1109
if !_rc {
 label var vc_1109 "Controllanti oltre"
 }

capture confirm variable vc_1110
if !_rc {
 label var vc_1110 "Debiti Tributari entro"
 }

capture confirm variable vc_1111
if !_rc {
 label var vc_1111 "Debiti Tributari oltre"
 }

capture confirm variable vc_1112
if !_rc {
 label var vc_1112 "Istituti previdenza entro"
 }

capture confirm variable vc_1113
if !_rc {
 label var vc_1113 "Istituti previdenza oltre"
 }

capture confirm variable vc_1114
if !_rc {
 label var vc_1114 "Altri Debiti entro"
 }

capture confirm variable vc_1115
if !_rc {
 label var vc_1115 "Altri Debiti oltre"
 }

capture confirm variable vc_3090
if !_rc {
 label var vc_3090 "Obblig.ni entro"
 }

capture confirm variable vc_3091
if !_rc {
 label var vc_3091 "Obblig.ni oltre"
 }

capture confirm variable vc_3092
if !_rc {
 label var vc_3092 "Obblig.ni convert. entro"
 }

capture confirm variable vc_3093
if !_rc {
 label var vc_3093 "Obblig.ni convert. oltre."
 }

capture confirm variable vc_3184
if !_rc {
 label var vc_3184 "D.3. Soci per Finanziamenti entro"
 }

capture confirm variable vc_3185
if !_rc {
 label var vc_3185 "Soci per Finanziamenti oltre"
 }

capture confirm variable vc_3094
if !_rc {
 label var vc_3094 "Banche entro l'esercizio"
 }

capture confirm variable vc_3095
if !_rc {
 label var vc_3095 "Banche oltre l'esercizio"
 }

capture confirm variable vc_3096
if !_rc {
 label var vc_3096 "Altri finanziatori entro"
 }

capture confirm variable vc_3097
if !_rc {
 label var vc_3097 "Altri finanziatori oltre"
 }

capture confirm variable vc_3098
if !_rc {
 label var vc_3098 "Acconti entro"
 }

capture confirm variable vc_3099
if !_rc {
 label var vc_3099 "Acconti oltre"
 }

capture confirm variable vc_3100
if !_rc {
 label var vc_3100 "Fornitori entro"
 }

capture confirm variable vc_3101
if !_rc {
 label var vc_3101 "Fornitori oltre"
 }

capture confirm variable vc_3102
if !_rc {
 label var vc_3102 "Titoli di credito entro"
 }

capture confirm variable vc_3103
if !_rc {
 label var vc_3103 "Titoli di credito oltre"
 }

capture confirm variable vc_3104
if !_rc {
 label var vc_3104 "Imprese Controllate entro"
 }

capture confirm variable vc_3105
if !_rc {
 label var vc_3105 "Imprese Controllate oltre"
 }

capture confirm variable vc_3106
if !_rc {
 label var vc_3106 "Imprese Collegate entro"
 }

capture confirm variable vc_3107
if !_rc {
 label var vc_3107 "Imprese Collegate oltre"
 }

capture confirm variable vc_3108
if !_rc {
 label var vc_3108 "Controllanti entro"
 }

capture confirm variable vc_3109
if !_rc {
 label var vc_3109 "Controllanti oltre"
 }

capture confirm variable vc_3110
if !_rc {
 label var vc_3110 "Debiti Tributari entro"
 }

capture confirm variable vc_3111
if !_rc {
 label var vc_3111 "Debiti Tributari oltre"
 }

capture confirm variable vc_3112
if !_rc {
 label var vc_3112 "Istituti previdenza entro"
 }

capture confirm variable vc_3113
if !_rc {
 label var vc_3113 "Istituti previdenza oltre"
 }

capture confirm variable vc_3114
if !_rc {
 label var vc_3114 "Altri Debiti entro"
 }

capture confirm variable vc_3115
if !_rc {
 label var vc_3115 "Altri Debiti oltre"
 }



capture confirm variable vc_1116
if !_rc {
 label var vc_1116 "DEBITI A BREVE"
 }

capture confirm variable vc_1117
if !_rc {
 label var vc_1117 "DEBITI A OLTRE"
 }

capture confirm variable vc_1903
if !_rc {
 label var vc_1903 "Total debiti entro l'esercizio"
 }

capture confirm variable vc_1904
if !_rc {
 label var vc_1904 "Total debiti oltre l'esercizio"
 }

capture confirm variable vc_1119
if !_rc {
 label var vc_1119 "RATEI E RISCONTI"
 }

capture confirm variable vc_1120
if !_rc {
 label var vc_1120 "Aggio sui prestiti"
 }

capture confirm variable vc_1121
if !_rc {
 label var vc_1121 "TOTALE PASSIVO"
 }

capture confirm variable vc_1122
if !_rc {
 label var vc_1122 "TOTALE CONTI D'ORDINE"
 }

capture confirm variable vc_1123
if !_rc {
 label var vc_1123 "Garanzie prestate"
 }





capture confirm variable vc_1130
if !_rc {
 label var vc_1130 "TOT. VAL. DELLA PRODUZIONE"
 }

capture confirm variable vc_1124
if !_rc {
 label var vc_1124 "Ricavi vendite e prestazioni"
 }

capture confirm variable vc_1125
if !_rc {
 label var vc_1125 "Var. rimanenze prodotti"
 }

capture confirm variable vc_1126
if !_rc {
 label var vc_1126 "Variazione lavori"
 }

capture confirm variable vc_1186
if !_rc {
 label var vc_1186 "Totale Variazioni"
 }

capture confirm variable vc_1127
if !_rc {
 label var vc_1127 "Incrementi di immob."
 }

capture confirm variable vc_1128
if !_rc {
 label var vc_1128 "Altri ricavi"
 }

capture confirm variable vc_1129
if !_rc {
 label var vc_1129 "Contributi in conto esercizio"
 }

capture confirm variable vc_1149
if !_rc {
 label var vc_1149 "COSTI DELLA PRODUZIONE"
 }

capture confirm variable vc_1131
if !_rc {
 label var vc_1131 "Materie prime e consumo"
 }

capture confirm variable vc_1132
if !_rc {
 label var vc_1132 "Servizi"
 }

capture confirm variable vc_1133
if !_rc {
 label var vc_1133 "Godimento beni di terzi"
 }

capture confirm variable vc_1139
if !_rc {
 label var vc_1139 "Totale costi del personale"
 }

capture confirm variable vc_1134
if !_rc {
 label var vc_1134 "Salari e stipendi"
 }

capture confirm variable vc_1135
if !_rc {
 label var vc_1135 "Oneri sociali"
 }

capture confirm variable vc_1136
if !_rc {
 label var vc_1136 "Tratt. fine rapporto"
 }

capture confirm variable vc_1137
if !_rc {
 label var vc_1137 "Tratt. di quiescenza"
 }

capture confirm variable vc_1138
if !_rc {
 label var vc_1138 "Altri costi"
 }

capture confirm variable vc_1187
if !_rc {
 label var vc_1187 "TFR + quiescenza + altri costi"
 }

capture confirm variable vc_1144
if !_rc {
 label var vc_1144 "TOT Ammortamenti e svalut."
 }

capture confirm variable vc_1140
if !_rc {
 label var vc_1140 "Amm. Immob. Immat."
 }

capture confirm variable vc_1141
if !_rc {
 label var vc_1141 "Amm. Immob. Mat."
 }

capture confirm variable vc_1142
if !_rc {
 label var vc_1142 "Altre svalut. Immob."
 }

capture confirm variable vc_1188
if !_rc {
 label var vc_1188 "Amm. e svalut. delle immob."
 }

capture confirm variable vc_1143
if !_rc {
 label var vc_1143 "Svalut. crediti"
 }

capture confirm variable vc_1145
if !_rc {
 label var vc_1145 "Variazione materie"
 }

capture confirm variable vc_1146
if !_rc {
 label var vc_1146 "Accantonamenti per rischi"
 }

capture confirm variable vc_1147
if !_rc {
 label var vc_1147 "Altri accantonamenti"
 }

capture confirm variable vc_1148
if !_rc {
 label var vc_1148 "Oneri diversi di gestione"
 }

capture confirm variable vc_1901
if !_rc {
 label var vc_1901 "RISULTATO OPERATIVO"
 }

capture confirm variable vc_1902
if !_rc {
 label var vc_1902 "Valore Aggiunto"
 }

capture confirm variable vc_1161
if !_rc {
 label var vc_1161 "TOTALE PROVENTI E ONERI FINANZIARI"
 }

capture confirm variable vc_1150
if !_rc {
 label var vc_1150 "Tot. proventi da partecip."
 }

capture confirm variable vc_1151
if !_rc {
 label var vc_1151 "da imprese controllate/collegate"
 }

capture confirm variable vc_1158
if !_rc {
 label var vc_1158 "TOT Altri Proventi"
 }

capture confirm variable vc_1152
if !_rc {
 label var vc_1152 "Da Crediti"
 }

capture confirm variable vc_1153
if !_rc {
 label var vc_1153 "di cui da Contr/coll"
 }

capture confirm variable vc_1154
if !_rc {
 label var vc_1154 "Da titoli iscr. imm."
 }

capture confirm variable vc_1155
if !_rc {
 label var vc_1155 "Da titoli iscr. att.circol."
 }

capture confirm variable vc_1189
if !_rc {
 label var vc_1189 "Proventi da Titoli"
 }

capture confirm variable vc_1156
if !_rc {
 label var vc_1156 "Proventi fin. Diversi"
 }

capture confirm variable vc_1157
if !_rc {
 label var vc_1157 "di cui da Contr/coll"
 }

capture confirm variable vc_1159
if !_rc {
 label var vc_1159 "TOT Oneri finanziari"
 }

capture confirm variable vc_1160
if !_rc {
 label var vc_1160 "Oneri fin. di cui da Contr/coll"
 }

capture confirm variable vc_1190
if !_rc {
 label var vc_1190 "Utili e perdite su cambi"
 }

capture confirm variable vc_1170
if !_rc {
 label var vc_1170 "TOTALE RETTIFICHE ATT. FINANZ."
 }

capture confirm variable vc_1165
if !_rc {
 label var vc_1165 "TOT Rivalutazioni"
 }

capture confirm variable vc_1162
if !_rc {
 label var vc_1162 "Rivalut. di partec."
 }

capture confirm variable vc_1163
if !_rc {
 label var vc_1163 "Rivalut. di altre imm. fin."
 }

capture confirm variable vc_1164
if !_rc {
 label var vc_1164 "Rivalut. di titoli"
 }

capture confirm variable vc_1169
if !_rc {
 label var vc_1169 "TOT Svalutazioni"
 }

capture confirm variable vc_1166
if !_rc {
 label var vc_1166 "Svalut. di partec."
 }

capture confirm variable vc_1167
if !_rc {
 label var vc_1167 "Svalut. di altre imm. fin."
 }

capture confirm variable vc_1168
if !_rc {
 label var vc_1168 "Svalut. di titoli"
 }

capture confirm variable vc_1176
if !_rc {
 label var vc_1176 "TOTALE PROVENTI/ONERI STRAORDINARI"
 }

capture confirm variable vc_1171
if !_rc {
 label var vc_1171 "Proventi Straordinari"
 }

capture confirm variable vc_1172
if !_rc {
 label var vc_1172 "Plusvalenze"
 }

capture confirm variable vc_1173
if !_rc {
 label var vc_1173 "Oneri Straordinari"
 }

capture confirm variable vc_1174
if !_rc {
 label var vc_1174 "Minusvalenze"
 }

capture confirm variable vc_1175
if !_rc {
 label var vc_1175 "Imposte es. prec."
 }

capture confirm variable vc_1177
if !_rc {
 label var vc_1177 "RISULTATO PRIMA DELLE IMPOSTE"
 }

capture confirm variable vc_1178
if !_rc {
 label var vc_1178 "Totale Imposte sul reddito correnti, differite e anticipate"
 }

capture confirm variable vc_1191
if !_rc {
 label var vc_1191 "Imposte correnti"
 }

capture confirm variable vc_1192
if !_rc {
 label var vc_1192 "Imposte differite e anticipate"
 }

capture confirm variable vc_1179
if !_rc {
 label var vc_1179 "UTILE/PERDITA DI ESERCIZIO"
 }

capture confirm variable vc_2186
if !_rc {
 label var vc_2186 "UTILE/PERDITA DI ESERCIZIO di pert. di TERZI"
 }

capture confirm variable vc_2187
if !_rc {
 label var vc_2187 "UTILE/PERDITA DI ESERCIZIO di pert. del GRUPPO"
 }

capture confirm variable vc_1500
if !_rc {
 label var vc_1500 "Dipendenti"
 }











capture confirm variable vc_426
if !_rc {
 label var vc_426 "Indice di liquidità"
 }

capture confirm variable vc_427
if !_rc {
 label var vc_427 "Indice corrente"
 }

capture confirm variable vc_428
if !_rc {
 label var vc_428 "Indice di indebitam. a breve"
 }

capture confirm variable vc_429
if !_rc {
 label var vc_429 "Indice di indebitam. a lungo"
 }

capture confirm variable vc_430
if !_rc {
 label var vc_430 "Indice di copertura delle immob. (patrimoniale)"
 }

capture confirm variable vc_431
if !_rc {
 label var vc_431 "Grado di ammortamento"
 }

capture confirm variable vc_432
if !_rc {
 label var vc_432 "Rapporto di indebitamento"
 }

capture confirm variable vc_433
if !_rc {
 label var vc_433 "Indice di copertura delle immob. (finanziario)"
 }

capture confirm variable vc_434
if !_rc {
 label var vc_434 "Debiti v/banche su fatt."
 }

capture confirm variable vc_435
if !_rc {
 label var vc_435 "Costo denaro a prestito"
 }

capture confirm variable vc_436
if !_rc {
 label var vc_436 "Grado di copertura degli interessi passivi"
 }

capture confirm variable vc_437
if !_rc {
 label var vc_437 "Oneri finanz. su fatt."
 }

capture confirm variable vc_438
if !_rc {
 label var vc_438 "Indice di indip. Finanz."
 }

capture confirm variable vc_439
if !_rc {
 label var vc_439 "Grado di indip. da terzi"
 }

capture confirm variable vc_492
if !_rc {
 label var vc_492 "Posizione finanziaria netta"
 }

capture confirm variable vc_493
if !_rc {
 label var vc_493 "Debt/Equity ratio"
 }

capture confirm variable vc_494
if !_rc {
 label var vc_494 "Debt/EBITDA ratio"
 }

capture confirm variable vc_441
if !_rc {
 label var vc_441 "Rotaz. cap. investito (volte)"
 }

capture confirm variable vc_442
if !_rc {
 label var vc_442 "Rotaz. cap. cir. lordo (volte)"
 }

capture confirm variable vc_495
if !_rc {
 label var vc_495 "Incidenza circolante operativo"
 }

capture confirm variable vc_443
if !_rc {
 label var vc_443 "Giac. media delle scorte (gg)"
 }

capture confirm variable vc_444
if !_rc {
 label var vc_444 "Giorni copertura scorte (gg)"
 }

capture confirm variable vc_445
if !_rc {
 label var vc_445 "Durata media dei crediti al lordo IVA (gg)"
 }

capture confirm variable vc_446
if !_rc {
 label var vc_446 "Durata media dei debiti al lordo IVA (gg)"
 }

capture confirm variable vc_496
if !_rc {
 label var vc_496 "Durata Ciclo Commerciale (gg)"
 }

capture confirm variable vc_497
if !_rc {
 label var vc_497 "EBITDA"
 }

capture confirm variable vc_498
if !_rc {
 label var vc_498 "EBITDA/Vendite"
 }

capture confirm variable vc_499
if !_rc {
 label var vc_499 "Redditività del totale attivo (ROA)"
 }

capture confirm variable vc_447
if !_rc {
 label var vc_447 "Redditività di tutto il capitale investito (ROI)"
 }

capture confirm variable vc_448
if !_rc {
 label var vc_448 "Redditività delle vendite (ROS)"
 }

capture confirm variable vc_449
if !_rc {
 label var vc_449 "Redditività del capitale proprio (ROE)"
 }

capture confirm variable vc_450
if !_rc {
 label var vc_450 "Incid. oneri/Proventi extrag. (%)"
 }

capture confirm variable vc_452
if !_rc {
 label var vc_452 "Ricavi pro-capite"
 }

capture confirm variable vc_453
if !_rc {
 label var vc_453 "Valore aggiunto pro-capite"
 }

capture confirm variable vc_454
if !_rc {
 label var vc_454 "Costo lavoro pro-capite"
 }

capture confirm variable vc_455
if !_rc {
 label var vc_455 "Rendimento dipendenti"
 }

capture confirm variable vc_456
if !_rc {
 label var vc_456 "Capitale circolante netto"
 }

capture confirm variable vc_457
if !_rc {
 label var vc_457 "Margine sui consumi"
 }

capture confirm variable vc_458
if !_rc {
 label var vc_458 "Margine di tesoreria"
 }

capture confirm variable vc_459
if !_rc {
 label var vc_459 "Margine di struttura"
 }

capture confirm variable vc_460
if !_rc {
 label var vc_460 "Flusso di cassa di gestione"
 }



capture confirm variable exfiling
if !_rc {
  replace exfiling=trim(exfiling)
  strrec exfiling ("Esonerati dalla presentazione (art 2615 bis)" = 1 "Esonerati dalla presentazione"), gen(h62)
  assert h62!=. if exfiling!=""
  order h62, after(exfiling)
  label var h62 "Esonerati dalla presentazione"
  drop exfiling
}





capture confirm variable proc_cessazione
if !_rc {
  replace proc_cessazione=trim(proc_cessazione)
  rename proc_cessazione vc_200087
  label var vc_200087 "Procedura/cessazione"
  ** troppe specifiche!!
}

capture confirm variable proc_cess_open_date
if !_rc {
  gen prova = date(proc_cess_open_date,"DMY")
  format prova %td
  assert prova!=. if proc_cess_open_date!=""
  order prova, after(proc_cess_open_date)
  drop proc_cess_open_date
  rename prova vc_200088
  label var vc_200088 "Data di inizio procedura/cessazione"
}

capture confirm variable proc_cess_close_date
if !_rc {
  gen prova = date(proc_cess_close_date,"DMY")
  format prova %td
  assert prova!=. if proc_cess_close_date!=""
  order prova, after(proc_cess_close_date)
  drop proc_cess_close_date
  rename prova vc_200089
  label var vc_200089 "Data di chiusura procedura"
}



capture confirm variable vc_203010
if !_rc {
  label var vc_203010 "Area commerciale"
}


capture confirm variable vc_203100
if !_rc {
  label var vc_203100 "Natura giuridica"
}

capture confirm variable vc_203102
if !_rc {
  label var vc_203102 "Camera di Commercio"
}


capture confirm variable vc_206007
if !_rc {
  label var vc_206007 "Attività esercitata"
}

capture confirm variable vc_207000
if !_rc {
  label var vc_207000 "Oggetto sociale"
}

capture confirm variable marketcap
if !_rc {
  destring marketcap, replace
  label var marketcap "Capitalizzazione di mercato corrente (migl.)"
  rename marketcap f99
}






capture confirm variable datemarkcap
if !_rc {
  replace datemarkcap="" if datemarkcap=="n.d."
  gen f80 = date(datemarkcap,"DMY")
  format f80 %td
  assert f80!=. if datemarkcap!=""
  order f80, after(datemarkcap)
  drop datemarkcap
  label var f80 "Data dell'attuale capitalizzazione di mercato"
}




capture confirm variable attivigb
if !_rc {
  replace attivigb=trim(attivigb)
  label var attivigb "Descrizione Attività (GB)"
  rename attivigb ac02
}

capture confirm variable attivigb
if !_rc {
  replace attivigb=trim(attivigb)
  label var attivigb "Descrizione Attività (GB)"
  rename attivigb ac02
}


capture confirm variable s_innod_primary_business_line
if !_rc {
  replace s_innod_primary_business_line=trim(s_innod_primary_business_line)
  label var s_innod_primary_business_line "Linea di business principale"
}


capture confirm variable s_innod_secondary_business_line
if !_rc {
  replace s_innod_secondary_business_line=trim(s_innod_secondary_business_line)
  label var s_innod_secondary_business_line "Linea di business secondaria"
}


capture confirm variable s_innod_main_activity
if !_rc {
  replace s_innod_main_activity=trim(s_innod_main_activity)
  label var s_innod_main_activity "Attività principale"
}

capture confirm variable s_innod_secondary_activity
if !_rc {
  replace s_innod_secondary_activity=trim(s_innod_secondary_activity)
  label var s_innod_secondary_activity "Attività secondaria"
}

capture confirm variable s_innod_main_products_services
if !_rc {
  replace s_innod_main_products_services=trim(s_innod_main_products_services)
  label var s_innod_main_products_services "Principali prodotti e servizi"
}



capture confirm variable vc_1201
if !_rc {
  label var vc_1201 "Cred. vs imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_1202
if !_rc {
  label var vc_1202 "Cred. vs imprese sottoposte al controllo delle controllanti oltre"
}

capture confirm variable vc_1210
if !_rc {
  label var vc_1210 "Riserva per operazioni copertura flussi finanziari attesi"
}

capture confirm variable vc_1211
if !_rc {
  label var vc_1211 "Riserva negativa per azioni proprie in portafoglio"
}

capture confirm variable vc_3205
if !_rc {
  label var vc_3205 "Cred. vs imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_3206
if !_rc {
  label var vc_3206 "Cred. vs imprese sottoposte al controllo delle controllanti oltre"
}

capture confirm variable vc_3213
if !_rc {
  label var vc_3213 "Debiti vs imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_3214
if !_rc {
  label var vc_3214 "Debiti vs imprese sottoposte al controllo delle controllanti oltre"
}



capture confirm variable vc_1215
if !_rc {
  label var vc_1215 "proventi da partecip. da imprese controllanti"
}

capture confirm variable vc_1216
if !_rc {
  label var vc_1216 "proventi da partecip. da imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1217
if !_rc {
  label var vc_1217 "altri proventi da crediti da imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1218
if !_rc {
  label var vc_1218 "Proventi fin. diversi da imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1219
if !_rc {
  label var vc_1219 "Totale Oneri finanziari da imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1220
if !_rc {
  label var vc_1220 "Rivalutazioni di strumenti finanziari derivati"
}

capture confirm variable vc_1221
if !_rc {
  label var vc_1221 "Rivalutazioni di attività finanziarie per la gestione accentrata della tesoreria"
}

capture confirm variable vc_1222
if !_rc {
  label var vc_1222 "Svalutazioni di strumenti finanziari derivati"
}

capture confirm variable vc_1223
if !_rc {
  label var vc_1223 "Svalutazioni di attività finanziarie per la gestione accentrata della tesoreria"
}

capture confirm variable vc_1224
if !_rc {
  label var vc_1224 "Imposte relative a esercizi precedenti"
}

capture confirm variable vc_1235
if !_rc {
  label var vc_1235 "Imposte differite (+/-)"
}

capture confirm variable vc_1236
if !_rc {
  label var vc_1236 "Imposte anticipate (+/-)"
}

capture confirm variable vc_1237
if !_rc {
  label var vc_1237 "Prov. (oneri) da adesione al regime di trasparenza fiscale"
}

capture confirm variable vc_1225
if !_rc {
  label var vc_1225 "Avviamento/Differenza di consolidamento di cui Avviamento"
}

capture confirm variable vc_1226
if !_rc {
  label var vc_1226 "Beni materiali concessi in locazione finanziaria"
}

capture confirm variable vc_1227
if !_rc {
  label var vc_1227 "IMMOB. FINANZIARIE esigibili entro l'esercizio successivo"
}

capture confirm variable vc_1200
if !_rc {
  label var vc_1200 "Partecipazioni in imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1203
if !_rc {
  label var vc_1203 "Strumenti finanziari derivati attivi"
}

capture confirm variable vc_1207
if !_rc {
  label var vc_1207 "Partec.ni in imprese sottoposte al controllo delle controllanti"
}

capture confirm variable vc_1208
if !_rc {
  label var vc_1208 "Strumenti finanziari derivati attivi"
}

capture confirm variable vc_1209
if !_rc {
  label var vc_1209 "Attività finanziarie per la gestione accentrata della tesoreria"
}

capture confirm variable vc_1228
if !_rc {
  label var vc_1228 "Versamenti soci in c/capitale"
}

capture confirm variable vc_1229
if !_rc {
  label var vc_1229 "Versamenti in c/futuro aumento di capitale"
}

capture confirm variable vc_1230
if !_rc {
  label var vc_1230 "Versamenti in c/capitale"
}

capture confirm variable vc_1231
if !_rc {
  label var vc_1231 "Versamenti a copertura perdite"
}

capture confirm variable vc_1232
if !_rc {
  label var vc_1232 "Acconto dividendi"
}

capture confirm variable vc_1233
if !_rc {
  label var vc_1233 "Copertura parziale perdita di esercizio"
}

capture confirm variable vc_1234
if !_rc {
  label var vc_1234 "Imposte differite di capitale e riserve di pertinenza di TERZI"
}

capture confirm variable vc_1212
if !_rc {
  label var vc_1212 "Strumenti finanziari derivati passivi"
  note vc_1212: B.3.
}



/*** BANCHE ***/
**Stato patrimoniale - Banche (BNK)
**Attivo
capture confirm variable vc_5000
if !_rc {
label var vc_5000 "Cassa e disponibilità liquide"
}

capture confirm variable vc_5001
if !_rc {
label var vc_5001 "Attività finanziarie detenute per la negoziazione"
}

capture confirm variable vc_5002
if !_rc {
label var vc_5002 "Attività finanziarie valutate al fair value"
}

capture confirm variable vc_5003
if !_rc {
label var vc_5003 "Attività finanziarie disponibili per la vendita"
}

capture confirm variable vc_5004
if !_rc {
label var vc_5004 "Attività finanziarie detenute sino alla scadenza"
}

capture confirm variable vc_5005
if !_rc {
label var vc_5005 "Crediti verso banche"
}

capture confirm variable vc_5006
if !_rc {
label var vc_5006 "Crediti verso clientela"
}

capture confirm variable vc_5007
if !_rc {
label var vc_5007 "Derivati di copertura"
}

capture confirm variable vc_5008
if !_rc {
label var vc_5008 "Adeguamento di valore delle attività finanziarie oggetto di copertura generica (+/-)"
}

capture confirm variable vc_5009
if !_rc {
label var vc_5009 "Partecipazioni"
}

capture confirm variable vc_5010
if !_rc {
label var vc_5010 "Riserve tecniche a carico dei riassicuratori"
}

capture confirm variable vc_5011
if !_rc {
label var vc_5011 "Attività materiali"
}

capture confirm variable vc_5012
if !_rc {
label var vc_5012 "Attività immateriali"
}

capture confirm variable vc_5013
if !_rc {
label var vc_5013 "Attività immateriali, di cui: avviamento"
}

capture confirm variable vc_5014
if !_rc {
label var vc_5014 "Attività fiscali"
}

capture confirm variable vc_5015
if !_rc {
label var vc_5015 "Attività fiscali correnti"
}

capture confirm variable vc_5016
if !_rc {
label var vc_5016 "Attività fiscali anticipate"
}

capture confirm variable vc_5017
if !_rc {
label var vc_5017 "Attività non correnti e gruppi di attività in via di dismissione"
}

capture confirm variable vc_5018
if !_rc {
label var vc_5018 "Altre attività"
}

**Passivo
capture confirm variable vc_5020
if !_rc {
label var vc_5020 "Debiti verso banche"
}

capture confirm variable vc_5021
if !_rc {
label var vc_5021 "Debiti verso clientela"
}

capture confirm variable vc_5022
if !_rc {
label var vc_5022 "Titoli in circolazione"
}

capture confirm variable vc_5023
if !_rc {
label var vc_5023 "Passività finanziarie di negoziazione"
}

capture confirm variable vc_5024
if !_rc {
label var vc_5024 "Passività finanziarie valutate al fair value"
}

capture confirm variable vc_5025
if !_rc {
label var vc_5025 "Derivati di copertura"
}

capture confirm variable vc_5026
if !_rc {
label var vc_5026 "Adeguamento di valore delle passività finanziarie oggetto di copertura generica (+/-)"
}

capture confirm variable vc_5027
if !_rc {
label var vc_5027 "Passività fiscali"
}

capture confirm variable vc_5028
if !_rc {
label var vc_5028 "Passività fiscali correnti"
}

capture confirm variable vc_5029
if !_rc {
label var vc_5029 "Passività fiscali differite"
}

capture confirm variable vc_5030
if !_rc {
label var vc_5030 "Passività associate ad attività in via di dismissione"
}

capture confirm variable vc_5031
if !_rc {
label var vc_5031 "Altre passività"
}

capture confirm variable vc_5032
if !_rc {
label var vc_5032 "Trattamento di fine rapporto del personale"
}

capture confirm variable vc_5033
if !_rc {
label var vc_5033 "Fondi per rischi ed oneri"
}

capture confirm variable vc_5034
if !_rc {
label var vc_5034 "Fondi per rischi ed oneri : quiescenza e obblighi simili"
}

capture confirm variable vc_5035
if !_rc {
label var vc_5035 "Fondi per rischi ed oneri : altri fondi"
}

capture confirm variable vc_5036
if !_rc {
label var vc_5036 "Riserve tecniche"
}

capture confirm variable vc_5037
if !_rc {
label var vc_5037 "Riserve da valutazione"
}

capture confirm variable vc_5038
if !_rc {
label var vc_5038 "Azioni rimborsabili"
}

capture confirm variable vc_5039
if !_rc {
label var vc_5039 "Strumenti di capitale"
}

capture confirm variable vc_5040
if !_rc {
label var vc_5040 "Riserve"
}

capture confirm variable vc_5041
if !_rc {
label var vc_5041 "Sovrapprezzi di emissione"
}

capture confirm variable vc_5042
if !_rc {
label var vc_5042 "Capitale"
}

capture confirm variable vc_5043
if !_rc {
label var vc_5043 "Azioni proprie (-)"
}

capture confirm variable vc_5044
if !_rc {
label var vc_5044 "Patrimonio di pertinenza di terzi (+/-)"
}

capture confirm variable vc_5045
if !_rc {
label var vc_5045 "Utile (perdita) d'esercizio (+/-)"
}






**Conto economico - Banche (BNK)
capture confirm variable vc_5047
if !_rc {
label var vc_5047 "Interessi attivi e proventi assimilati"
}

capture confirm variable vc_5048
if !_rc {
 label var vc_5048 "Interessi passivi e oneri assimilati"
}

capture confirm variable vc_5049
if !_rc {
label var vc_5049 "Margine di interesse"
}

capture confirm variable vc_5050
if !_rc {
label var vc_5050 "Commissioni attive"
}

capture confirm variable vc_5051
if !_rc {
label var vc_5051 "Commissioni passive"
}

capture confirm variable vc_5052
if !_rc {
label var vc_5052 "Commissioni nette"
}

capture confirm variable vc_5053
if !_rc {
label var vc_5053 "Dividendi e proventi simili"
}

capture confirm variable vc_5054
if !_rc {
label var vc_5054 "Risultato netto dell'attività di negoziazione"
}

capture confirm variable vc_5055
if !_rc {
label var vc_5055 "Risultato netto dell'attività di copertura"
}

capture confirm variable vc_5056
if !_rc {
label var vc_5056 "Utile/perdita da cessione o riacquisto"
}

capture confirm variable vc_5057
if !_rc {
label var vc_5057 "Utile/perdita da cessione o riacquisto di crediti"
}

capture confirm variable vc_5058
if !_rc {
label var vc_5058 "Utile/perdita da cessione o riacquisto di attività finanziarie disponibili per la vendita"
}

capture confirm variable vc_5059
if !_rc {
label var vc_5059 "Utile/perdita da cessione o riacquisto di attività finanziarie detenute sino alla scadenza"
}

capture confirm variable vc_5060
if !_rc {
label var vc_5060 "Utile/perdita da cessione o riacquisto di passività finanziarie"
}

capture confirm variable vc_5061
if !_rc {
label var vc_5061 "Risultato netto delle attività e passività finanziarie valutate al fair value"
}

capture confirm variable vc_5062
if !_rc {
label var vc_5062 "Margine di intermediazione"
}

capture confirm variable vc_5063
if !_rc {
label var vc_5063 "Rettifiche/riprese di valore nette per deterioramento"
}

capture confirm variable vc_5064
if !_rc {
label var vc_5064 "Rettifiche/riprese di valore nette per deterioramento di crediti"
}

capture confirm variable vc_5065
if !_rc {
label var vc_5065 "Rettifiche/riprese di valore nette per deterioramento di attività finanziarie disponibili per la vendita"
}

capture confirm variable vc_5066
if !_rc {
label var vc_5066 "Rettifiche/riprese di valore nette per deterioramento di attività finanziarie detenute sino alla scadenza"
}

capture confirm variable vc_5067
if !_rc {
label var vc_5067 "Rettifiche/riprese di valore nette per deterioramento di altre operazioni finanziarie"
}

capture confirm variable vc_5068
if !_rc {
label var vc_5068 "Risultato netto della gestione finanziaria"
}

capture confirm variable vc_5069
if !_rc {
label var vc_5069 "Premi netti"
}

capture confirm variable vc_5070
if !_rc {
label var vc_5070 "Saldo altri proventi/oneri della gestione assicurativa"
}

capture confirm variable vc_5071
if !_rc {
label var vc_5071 "Risultato netto della gestione finanziaria e assicurativa"
}

capture confirm variable vc_5072
if !_rc {
label var vc_5072 "Spese amministrative"
}

capture confirm variable vc_5073
if !_rc {
label var vc_5073 "Spese amministrative per il personale"
}

capture confirm variable vc_5074
if !_rc {
label var vc_5074 "Altre spese amministrative"
}

capture confirm variable vc_5075
if !_rc {
label var vc_5075 "Accantonamenti netti ai fondi per rischi e oneri"
}

capture confirm variable vc_5076
if !_rc {
label var vc_5076 "Rettifiche/riprese di valore nette su attività materiali"
}

capture confirm variable vc_5077
if !_rc {
label var vc_5077 "Rettifiche/riprese di valore nette su attività immateriali"
}

capture confirm variable vc_5078
if !_rc {
label var vc_5078 "Altri oneri/proventi di gestione"
}

capture confirm variable vc_5079
if !_rc {
label var vc_5079 "Costi operativi"
}

capture confirm variable vc_5080
if !_rc {
label var vc_5080 "Utili (Perdite) delle partecipazioni"
}

capture confirm variable vc_5081
if !_rc {
label var vc_5081 "Risultato netto della valutazione al fair value delle attività materiali e immateriali"
}

capture confirm variable vc_5082
if !_rc {
label var vc_5082 "Rettifiche di valore dell'avviamento"
}

capture confirm variable vc_5083
if !_rc {
label var vc_5083 "Utili (Perdite) da cessione di investimenti"
}

capture confirm variable vc_5084
if !_rc {
label var vc_5084 "Utile (Perdita) della operatività corrente al lordo delle imposte"
}

capture confirm variable vc_5085
if !_rc {
label var vc_5085 "Imposte sul reddito dell'esercizio dell'operatività corrente"
}

capture confirm variable vc_5086
if !_rc {
label var vc_5086 "Utile (Perdita) della operatività corrente al netto delle imposte"
}

capture confirm variable vc_5087
if !_rc {
label var vc_5087 "Utile (Perdita) dei gruppi di attività in via di dismissione al netto delle imposte"
}

capture confirm variable vc_5088
if !_rc {
label var vc_5088 "Utile (Perdita) d'esercizio"
}

capture confirm variable vc_5090
if !_rc {
label var vc_5090 "Utile (Perdita) d'esercizio di pertinenza della capogruppo"
}







**Stato patrimoniale - Assicurazioni (INS)
**Attivo
capture confirm variable vc_5300
if !_rc {
label var vc_5300 "CREDITI VERSO SOCI PER CAPITALE SOCIALE SOTTOSCRITTO NON VERSATO"
}

capture confirm variable vc_5301
if !_rc {
label var vc_5301 "Capitale richiamato"
}

capture confirm variable vc_5302
if !_rc {
label var vc_5302 "ATTIVI IMMATERIALI"
}

capture confirm variable vc_5303
if !_rc {
label var vc_5303 "Provvigioni di acquisizione da ammortizzare"
}

capture confirm variable vc_5304
if !_rc {
label var vc_5304 "rami vita"
}

capture confirm variable vc_5305
if !_rc {
label var vc_5305 "rami danni"
}

capture confirm variable vc_5306
if !_rc {
label var vc_5306 "Altre spese di acquisizione"
}

capture confirm variable vc_5307
if !_rc {
label var vc_5307 "Costi di impianto e di ampliamento"
}

capture confirm variable vc_5308
if !_rc {
label var vc_5308 "Avviamento"
}

capture confirm variable vc_5309
if !_rc {
label var vc_5309 "Altri costi pluriennali"
}

capture confirm variable vc_5310
if !_rc {
label var vc_5310 "Altri attivi immateriali"
}

capture confirm variable vc_5311
if !_rc {
label var vc_5311 "Differenza da consolidamento"
}

capture confirm variable vc_5312
if !_rc {
label var vc_5312 "INVESTIMENTI"
}

capture confirm variable vc_5313
if !_rc {
label var vc_5313 "Terreni e Fabbricati"
}

capture confirm variable vc_5314
if !_rc {
label var vc_5314 "Immobili destinati all'esercizio dell'impresa"
}

capture confirm variable vc_5315
if !_rc {
label var vc_5315 "Immobili ad uso di terzi"
}

capture confirm variable vc_5316
if !_rc {
label var vc_5316 "Altri Immobili"
}

capture confirm variable vc_5317
if !_rc {
label var vc_5317 "Altri diritti reali"
}

capture confirm variable vc_5318
if !_rc {
label var vc_5318 "Immobilizzazioni in corso e acconti"
}

capture confirm variable vc_5319
if !_rc {
label var vc_5319 "Investimenti in imprese del gruppo ed in altre partecipate"
}

capture confirm variable vc_5320
if !_rc {
label var vc_5320 "Azioni e quote di imprese:"
}

capture confirm variable vc_5321
if !_rc {
label var vc_5321 "controllanti"
}

capture confirm variable vc_5322
if !_rc {
label var vc_5322 "controllate"
}

capture confirm variable vc_5323
if !_rc {
label var vc_5323 "consociate"
}

capture confirm variable vc_5324
if !_rc {
label var vc_5324 "collegate"
}

capture confirm variable vc_5325
if !_rc {
label var vc_5325 "altre"
}





capture confirm variable vc_5326
if !_rc {
label var vc_5326 "Obbligazioni emesse da imprese:"
}

capture confirm variable vc_5327
if !_rc {
label var vc_5327 "controllanti"
}

capture confirm variable vc_5328
if !_rc {
label var vc_5328 "controllate"
}

capture confirm variable vc_5329
if !_rc {
label var vc_5329 "consociate"
}

capture confirm variable vc_5330
if !_rc {
label var vc_5330 "collegate"
}

capture confirm variable vc_5331
if !_rc {
label var vc_5331 "altre"
}

capture confirm variable vc_5332
if !_rc {
label var vc_5332 "Finanziamenti ad imprese:"
}

capture confirm variable vc_5333
if !_rc {
label var vc_5333 "controllanti"
}

capture confirm variable vc_5334
if !_rc {
label var vc_5334 "controllate"
}

capture confirm variable vc_5335
if !_rc {
label var vc_5335 "consociate"
}

capture confirm variable vc_5336
if !_rc {
label var vc_5336 "collegate"
}

capture confirm variable vc_5337
if !_rc {
label var vc_5337 "altre"
}

capture confirm variable vc_5338
if !_rc {
label var vc_5338 "Altri investimenti finanziari"
}

capture confirm variable vc_5339
if !_rc {
label var vc_5339 "Azioni e quote"
}

capture confirm variable vc_5340
if !_rc {
label var vc_5340 "Azioni quotate"
}

capture confirm variable vc_5341
if !_rc {
label var vc_5341 "Azioni non quotate"
}

capture confirm variable vc_5342
if !_rc {
label var vc_5342 "Quote"
}

capture confirm variable vc_5343
if !_rc {
label var vc_5343 "Quote di fondi comuni di investimento"
}

capture confirm variable vc_5344
if !_rc {
label var vc_5344 "Obbligazioni e altri titoli a reddito fisso"
}

capture confirm variable vc_5345
if !_rc {
label var vc_5345 "quotati"
}

capture confirm variable vc_5346
if !_rc {
label var vc_5346 "non quotati"
}

capture confirm variable vc_5347
if !_rc {
label var vc_5347 "obbligazioni convertibili"
}

capture confirm variable vc_5348
if !_rc {
label var vc_5348 "Finanziamenti"
}

capture confirm variable vc_5349
if !_rc {
label var vc_5349 "prestiti con garanzia reale"
}

capture confirm variable vc_5350
if !_rc {
label var vc_5350 "prestiti su polizze"
}

capture confirm variable vc_5351
if !_rc {
label var vc_5351 "altri prestiti"
}

capture confirm variable vc_5352
if !_rc {
label var vc_5352 "Quote in investimenti comuni"
}

capture confirm variable vc_5353
if !_rc {
label var vc_5353 "Depositi presso enti creditizi"
}

capture confirm variable vc_5354
if !_rc {
label var vc_5354 "Investimenti finanziari diversi"
}

capture confirm variable vc_5355
if !_rc {
label var vc_5355 "Depositi presso imprese cedenti"
}

capture confirm variable vc_5356
if !_rc {
label var vc_5356 "INVEST. A BENEF. ASSICUR. RAMI VITA E DERIVANTI DALLA GEST. F. DI PENSIONE"
}

capture confirm variable vc_5357
if !_rc {
label var vc_5357 "Invest. relativi a prestazioni connesse con fondi di invest. e indici di mercato"
}

capture confirm variable vc_5358
if !_rc {
label var vc_5358 "Invest. derivanti dalla gestione dei fondi pensione"
}






capture label var vc_5359 "RISERVE TECNICHE A CARICO DEI RIASSICURATORI"
capture label var vc_5360 "RAMI DANNI"
capture label var vc_5361 "Riserva premi"
capture label var vc_5362 "Riserva sinistri"
capture label var vc_5363 "Riserva per partecipazioni agli utili e ristorni"
capture label var vc_5364 "Altre riserve tecniche"
capture label var vc_5365 "RAMI VITA"
capture label var vc_5366 "Riserve matematiche"
capture label var vc_5367 "Riserva premi delle assicurazioni complementari"
capture label var vc_5368 "Riserva per somme da pagare"
capture label var vc_5369 "Riserva per partecipazione agli utili e ristorni"
capture label var vc_5370 "Altre riserve tecniche"
capture label var vc_5371 "Ris. Tecn. Per rischio invest.sopportato assicur. e f.di pensione"
capture label var vc_5372 "CREDITI"
capture label var vc_5373 "Crediti, derivanti da operazioni di assicurazione diretta, nei confronti di:"
capture label var vc_5374 "Assicurati"
capture label var vc_5375 "per premi dell'esercizio"
capture label var vc_5376 "per premi degli es. precedenti"
capture label var vc_5377 "Intermediari di assicurazione"
capture label var vc_5378 "Compagnie conti correnti"
capture label var vc_5379 "Assicurati e terzi per somme da recuperare"
capture label var vc_5380 "Crediti, derivanti da operazioni di riassicurazione, nei confronti di:"
capture label var vc_5381 "Compagnie di assicurazione e riassicurazione"
capture label var vc_5382 "Intermediari di riassicurazione"
capture label var vc_5383 "Altri crediti"
capture label var vc_5384 "ALTRI ELEMENTI DELL'ATTIVO"
capture label var vc_5385 "Attivi materiali e scorte"
capture label var vc_5386 "Mobili,macchine d'ufficio e mezzi di trasporto interno"
capture label var vc_5387 "Beni mobili iscritti in pubblici registri"
capture label var vc_5388 "Impianti e attrezzature"
capture label var vc_5389 "Scorte e beni diversi"
capture label var vc_5390 "Disponibilita' liquide"
capture label var vc_5391 "Depositi bancari e c/c postali"
capture label var vc_5392 "Assegni e consistenza di cassa"
capture label var vc_5393 "Azioni o quote proprie"
capture label var vc_5394 "Altre attivita"
capture label var vc_5395 "Conti transitori attivi di riassicurazione"
capture label var vc_5396 "Attivita diverse"
capture label var vc_5397 "RATEI E RISCONTI"
capture label var vc_5398 "Per interessi"
capture label var vc_5399 "Per canoni di locazione"
capture label var vc_5400 "Altri ratei e risconti"



**Passivo
capture label var vc_5402 "PATRIMONIO NETTO"
capture label var vc_5403 "Capitale sociale sottoscritto o fondo equivalente"
capture label var vc_5404 "Riserva da sovraprezzo di emissione"
capture label var vc_5405 "Riserva di rivalutazione"
capture label var vc_5406 "Riserva legale"
capture label var vc_5407 "Riserve statutarie"
capture label var vc_5408 "Riserve per azioni proprie e della controllante"
capture label var vc_5409 "Altre Riserve"
capture label var vc_5410 "Utili (perdite) portati a nuovo"
capture label var vc_5411 "Utile (perdite) dell'esercizio"
capture label var vc_5412 "PATRIMONIO NETTO DEL GRUPPO"
capture label var vc_5413 "Capitale sociale sottoscritto o fondo equivalente"
capture label var vc_5414 "Riserve patrimoniali"
capture label var vc_5415 "Riserva di consolidamento"
capture label var vc_5416 "Riserva per differ. di valutaz. su partecip. non consol."
capture label var vc_5417 "Riserva per differenze di conversione"
capture label var vc_5418 "Riserva per azioni proprie e della controllante"
capture label var vc_5419 "Utile (perdita) dell'esercizio"
capture label var vc_5420 "PATRIMONIO NETTO DI TERZI"
capture label var vc_5421 "Capitale e riserve di terzi"
capture label var vc_5422 "Utile (perdita) dell'esercizio di pertinenza di terzi"
capture label var vc_5423 "PASSIVITA' SUBORDINATE"
capture label var vc_5424 "RISERVE TECNICHE"
capture label var vc_5425 "RAMI DANNI"
capture label var vc_5426 "Riserva premi"
capture label var vc_5427 "Riserva sinistri"
capture label var vc_5428 "Riserva per partecipazione agli utili e ristorni"
capture label var vc_5429 "Altre riserve tecniche"
capture label var vc_5430 "Riserve di perequazione"
capture label var vc_5431 "RAMI VITA"
capture label var vc_5432 "Riserve matematiche"
capture label var vc_5433 "Riserva premi delle assicurazioni complementari"
capture label var vc_5434 "Riserva per somme da pagare"
capture label var vc_5435 "Riserva per partecipazione agli utili e ristorni"
capture label var vc_5436 "Altre riserve tecniche"
capture label var vc_5437 "RIS. TEC. PER RISCHIO INVEST. SOPPORTATO ASSIC. E F.DI PENSIONE"
capture label var vc_5438 "Ris. relative a contr. le cui prest. sono connese con f.di di invest.e indici merc."
capture label var vc_5439 "Riserve derivanti dalla gestione dei fondi pensione"
capture label var vc_5440 "FONDI PER RISCHI E ONERI"
capture label var vc_5441 "Fondi per trattamenti di quiescenza ed obblighi simili"
capture label var vc_5442 "Fondi per imposte"
capture label var vc_5443 "Fondi di consolidamento per rischi e oneri futuri"
capture label var vc_5444 "Altri accantonamenti"
capture label var vc_5445 "DEPOSITI RICEVUTI DA RIASSICURATORI"
capture label var vc_5446 "DEBITI E ALTRE PASSIVITA'"
capture label var vc_5447 "Debiti, derivanti da operazioni di assicurazione diretta, nei confronti di:"
capture label var vc_5448 "Intermediari di assicurazione"
capture label var vc_5449 "Compagnie conti correnti"
capture label var vc_5450 "Assicurati per depositi cauzionali e premi"
capture label var vc_5451 "Fondi di garanzia a favore degli assicurati"
capture label var vc_5452 "Debiti, derivanti da operazioni di riassicurazione, nei confornti di:"
capture label var vc_5453 "Compagnie di assicurazione e riassicurazione"
capture label var vc_5454 "Intermediari di riassicurazione"
capture label var vc_5455 "Prestiti Obbligazionari"
capture label var vc_5456 "Debiti verso banche e istituti finanziari"
capture label var vc_5457 "Debiti con garanzia reale"
capture label var vc_5458 "Prestiti diversi e altri debiti finanziari"
capture label var vc_5459 "Trattamento di fine rapporto di lavoro subordinato"
capture label var vc_5460 "Altri Debiti"
capture label var vc_5461 "Per imposte a carico degli assicurati"
capture label var vc_5462 "Per oneri tributari diversi"
capture label var vc_5463 "Verso enti assistenziali e previdenziali"
capture label var vc_5464 "Debiti diversi"
capture label var vc_5465 "Altre passivita"
capture label var vc_5466 "Conti transitori passivi di riassicurazione"
capture label var vc_5467 "Provvigioni per premi in corso di riscossione"
capture label var vc_5468 "Passivita diverse"
capture label var vc_5469 "RATEI E RISCONTI"
capture label var vc_5470 "Per interessi"
capture label var vc_5471 "Per canoni di locazione"
capture label var vc_5472 "Altri ratei e risconti"
capture label var vc_5474 "Garanzie prestate"
capture label var vc_5475 "Fidejussioni"
capture label var vc_5476 "Avalli"
capture label var vc_5477 "Altre garanzie personali"
capture label var vc_5478 "Garanzie reali"
capture label var vc_5479 "Garanzie ricevute"
capture label var vc_5480 "Fidejussioni"
capture label var vc_5481 "Avalli"
capture label var vc_5482 "Altre garanzie personali"
capture label var vc_5483 "Garanzie reali"
capture label var vc_5484 "Garanzie prestate da terzi nell'interesse dell'impresa"
capture label var vc_5485 "Impegni"
capture label var vc_5486 "Beni di terzi"
capture label var vc_5487 "Attività di pertinenza dei fondi pensione gestiti in nome e per conto di terzi"
capture label var vc_5488 "Titoli depositati presso terzi"
capture label var vc_5489 "Altri conti d'ordine"

**Conto economico - Assicurazioni (INS)
**Conto tecnico del ramo non vita
capture label var vc_5490 "PREMI DI COMPETENZA AL NETTO DELLE CESSIONI IN RIASS."
capture label var vc_5491 "Premi lordi contabilizzati"
capture label var vc_5492 "Premi ceduti in riassicurazione"
capture label var vc_5493 "Variazione dell'importo lordo della riserva premi"
capture label var vc_5494 "Variazione della riserva premi a carico dei riassicuratori"
capture label var vc_5495 "QUOTA DELL'UT. DEGLI INVEST. TRASFERITA DAL CONTO NON TECN."
capture label var vc_5496 "ALTRI PROVENTI TECNICI, AL NETTO DELLE CESSIONI IN RIASS."
capture label var vc_5497 "ONERI RELATIVI AI SINISTRI, AL NETTO DEI RECUP. E DELLE CES. IN RIASS."
capture label var vc_5498 "importi pagati"
capture label var vc_5499 "importo lordo"
capture label var vc_5500 "quote a carico dei riassicuratori"
capture label var vc_5501 "Variazione dei recuperi al netto delle quote a carico dei riass."
capture label var vc_5502 "importo lordo"
capture label var vc_5503 "quote a carico dei riassicuratori"
capture label var vc_5504 "variazione della riserva sinistri"
capture label var vc_5505 "importo lordo"
capture label var vc_5506 "quote a carico dei riassicuratori"
capture label var vc_5507 "VARIAZIONE DELLE ALTRE RIS. TECN., AL NETTO DELLE CESS. IN RIASS."
capture label var vc_5508 "RISTORNI E PARTECIP. AGLI UTILI, AL NETTO DELLE CESS. IN RIASS."
capture label var vc_5509 "SPESE DI GESTIONE"
capture label var vc_5510 "Provvigioni di acquisizione"
capture label var vc_5511 "Altre spese di acquisizione"
capture label var vc_5512 "Variaz. delle provvig. e delle altre spese di acquis. da ammort."
capture label var vc_5513 "Provvigioni di incasso"
capture label var vc_5514 "Altre spese di amministrazione"
capture label var vc_5515 "Provvigioni e partecipazioni agli utili ricevute dai riass."
capture label var vc_5516 "ALTRI ONERI TECNICI, AL NETTO DELLE CESSIONI IN RIASSICURAZIONE"
capture label var vc_5517 "VARIAZIONE DELLE RISERVE DI PEREQUAZIONE"
capture label var vc_5518 "RISULTATO DEL CONTO TECNICO DEI RAMI DANNI"

**Conto tecnico del ramo vita
capture label var vc_5519 "PREMI DELL'ESERCIZIO, AL NETTO DELLE CESSIONI IN RIASS."
capture label var vc_5520 "Premi lordi contabilizzati"
capture label var vc_5521 "premi ceduti in riassicurazione"
capture label var vc_5522 "PROVENTI DA INVESTIMENTI"
capture label var vc_5523 "Proventi derivanti da azioni e quote"
capture label var vc_5524 "di cui: provenienti da imprese del gruppo"
capture label var vc_5525 "Proventi derivanti da altri investimenti:"
capture label var vc_5526 "da terreni e fabbricati"
capture label var vc_5527 "da altri investimenti"
capture label var vc_5528 "di cui: provenienti da imprese del gruppo"
capture label var vc_5529 "Riprese di rettifiche di valore sugli investimenti"
capture label var vc_5530 "Profitti sul realizzo di investimenti"
capture label var vc_5531 "di cui: provenienti da imprese del gruppo"
capture label var vc_5532 "QUOTA UTILE DEGLI INVEST. TRASF. DAL C.TO NON TECNICO"
capture label var vc_5533 "PROV. E PLUS. NON REALIZ. INVEST ASSIC E INVEST.DEI F. PENSIONE"
capture label var vc_5534 "ALTRI PROVENTI TECNICI, AL NETTO DELLE CESSIONI IN RIASS."
capture label var vc_5535 "ONERI RELATIVI AI SINISTRI, AL NETTO DELLE CESSIONI IN RIASS."
capture label var vc_5536 "Somme pagate"
capture label var vc_5537 "Importo lordo"
capture label var vc_5538 "Quote a carico dei riassicuratori"
capture label var vc_5539 "Variazione della riserva per somme da pagare"
capture label var vc_5540 "Importo lordo"
capture label var vc_5541 "Quote a carico dei riassicuratori"
capture label var vc_5542 "VARIAZ. RISER MATEM E RISER TECN. AL NETTO DELLE CESS. RIASS."
capture label var vc_5543 "Riserve matematiche:"
capture label var vc_5544 "Importo lordo"
capture label var vc_5545 "Quote a carico dei riassicuratori"
capture label var vc_5546 "Riserva premi delle assicurazioni complementari:"
capture label var vc_5547 "Importo lordo"
capture label var vc_5548 "Quote a carico dei riassicuratori"
capture label var vc_5549 "Altre riserve tecniche"
capture label var vc_5550 "Importo lordo"
capture label var vc_5551 "Quote a carico dei riassicuratori"
capture label var vc_5552 "Riser. Tecn. rischio dell'invest assicu. e fondi pensione"
capture label var vc_5553 "Importo lordo"
capture label var vc_5554 "Quote a carico dei riassicuratori"
capture label var vc_5555 "RISTORNI E PARTECIP. AGLI UTILI, AL NETTO DELLE CESS. IN RIASS."
capture label var vc_5556 "SPESE DI GESTIONE"
capture label var vc_5557 "Provvigioni di acquisizione"
capture label var vc_5558 "Altre spese di acquisizione"
capture label var vc_5559 "Variaz. Provvig spese di acquis. da ammortizzare"
capture label var vc_5560 "Provvigioni di incasso"
capture label var vc_5561 "Altre spese di amministrazione"
capture label var vc_5562 "Provvig. e partecip. agli utili ricevute dai riassicu."
capture label var vc_5563 "ONERI PATRIMONIALI E FINANZIARI"
capture label var vc_5564 "Oneri di gest. degli invest. e interessi passivi"
capture label var vc_5565 "Rettifiche di valore sugli investimenti"
capture label var vc_5566 "Perdite sul realizzo di investimenti"
capture label var vc_5567 "ON. PATR. E FIN E MINUS INVESTI.DI ASSICU. E DEI FONDI PENSIONE"
capture label var vc_5568 "ALTRI ONERI TECNICI, AL NETTO DELLE CESSIONI IN RIASSICURAZIONE"
capture label var vc_5569 "QUOTA DELL'UT. DEGLI INVEST. TRASFERITA AL CONTO NON TECN."
capture label var vc_5570 "RISULTATO DEL CONTO TECNICO DEI RAMI VITA"
capture label var vc_5571 "ONERI PATRIMONIALI E FINANZ. E MINUSVAL. NON REALIZZATE."
capture label var vc_5572 "ALTRI ONERI TECNICI AL NETTO DELLE CESSIONI IN RIASSIC."
capture label var vc_5573 "RISULTATO DEL CONTO TECNICO DEI RAMI VITA"

**Conto non tecnico
capture label var vc_5574 "PROVENTI DA INVESTIMENTI DEI RAMI DANNI:"
capture label var vc_5575 "Proventi derivanti da azioni e quote"
capture label var vc_5576 "di cui: provenienti da imprese del gruppo"
capture label var vc_5577 "Proventi derivanti da altri investimenti"
capture label var vc_5578 "da terreni e fabbricati"
capture label var vc_5579 "da altri investimenti"
capture label var vc_5580 "di cui: provenienti da imprese del gruppo"
capture label var vc_5581 "Riprese di rettifiche di valore sugli investimenti"
capture label var vc_5582 "Profitti sul realizzo di investimenti"
capture label var vc_5583 "di cui: provenienti da imprese del gruppo"
capture label var vc_5584 "QUOTA DELL'UT. INVEST TRASF. DAL CONTO TECN. DEI RAMI VITA"
capture label var vc_5585 "ONERI PATRIMONIALI E FINANZIARI DEI RAMI DANNI"
capture label var vc_5586 "Oneri di gestione degli investimenti e interessi passivi"
capture label var vc_5587 "Rettifiche di valore sugli investimenti"
capture label var vc_5588 "Perdite sul realizzo di investimenti"
capture label var vc_5589 "QUOTA DELL'UT. INVEST TRASF. AL CONTO TECNICO DEI RAMI DANNI"
capture label var vc_5590 "ALTRI PROVENTI"
capture label var vc_5591 "ALTRI ONERI"
capture label var vc_5592 "RISULTATO DELLA ATTIVITA' ORDINARIA"
capture label var vc_5593 "PROVENTI STRAORDINARI"
capture label var vc_5594 "ONERI STRAORDINARI"
capture label var vc_5595 "RISULTATO DELLA ATTIVITA' STRAORDINARIA"
capture label var vc_5596 "RISULTATO PRIMA DELLE IMPOSTE"
capture label var vc_5597 "IMPOSTE SUL REDDITO DELL'ESERCIZIO"
capture label var vc_5598 "UTILE (PERDITA) D'ESERCIZIO"
capture label var vc_5599 "PROVENTI DA INVESTIMENTI"
capture label var vc_5600 "Proventi derivanti da azioni e quote"
capture label var vc_5601 "quote di ris. d'eserc. Su partec. Val. metodo patr.netto"
capture label var vc_5602 "altri"
capture label var vc_5603 "Proventi derivanti da altri investimenti"
capture label var vc_5604 "da terreni e fabbricati"
capture label var vc_5605 "Riprese di rettifiche di valore sugli investimenti"
capture label var vc_5606 "Profitti sul realizzo di investimenti"
capture label var vc_5607 "ONERI PATRIMONIALI E FINANZIARI"
capture label var vc_5608 "Oneri di gestione degli investimenti e interessi passivi"
capture label var vc_5609 "Rettifiche di valore sugli investimenti"
capture label var vc_5610 "Perdite sul realizzo di investimenti"
capture label var vc_5611 "QUOTA DELL'UT. INVEST. TRASF. AL C.TO TECN. RAMI VITA"
capture label var vc_5612 "ALTRI PROVENTI"
capture label var vc_5613 "ALTRI ONERI"
capture label var vc_5614 "interessi su debiti finanziari"
capture label var vc_5615 "oneri diversi"
capture label var vc_5616 "RISULTATO DELLA ATTIVITA' ORDINARIA"
capture label var vc_5617 "PROVENTI STRAORDINARI"
capture label var vc_5618 "ONERI STRAORDINARI"
capture label var vc_5619 "RISULTATO DELLA ATTIVITA' STRAORDINARIA"
capture label var vc_5620 "RISULTATO PRIMA DELLE IMPOSTE"
capture label var vc_5621 "IMPOSTE SUL REDDITO DELL'ESERCIZIO"
capture label var vc_5622 "RISULTATO CONSOLIDATO"
capture label var vc_5623 "UTILE (PERDITA) DELL'ESERCIZIO DI PERTINENZA DI TERZI"
capture label var vc_5624 "UTILE (PERDITA DI GRUPPO)"
