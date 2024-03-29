**TODO 1. verificare per vc_200087 (vedi commento)

/***
vc_203010 vc_203100 vc_203102 vc_206007 vc_207000 marketcap datemarkcap attivigb s_innod_primary_business_line
s_innod_secondary_business_line s_innod_main_activitys_innod_secondary_activity s_innod_main_products_services vc_1121
****/



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

capture program drop prov_num
program define prov_num
  tempvar anno
  gen `anno' = 2020
  capture replace `anno'=anno
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
  replace `1'="15"   if inlist(`1',"Monza Brianza","Monza e della Brianza") & `anno'<2009
  replace `1'="108"  if inlist(`1',"Monza Brianza","Monza e della Brianza") & `anno'>=2009
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


capture program drop regio_num
program define regio_num
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
  replace `1'="" if inlist(`1',"-")
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("AR"=1     "AR") ///
             ("BD"=2     "BD") ///
             ("BI"=3     "BI") ///
             ("BV"=4     "BV") ///
             ("CB"=5     "CB") ///
             ("CA"=6     "CA") ///
             ("CI"=7     "CI") ///
             ("CP"=8     "CP") ///
             ("CT"=9     "CT") ///
             ("CU"=10    "CU") ///
             ("DP"=11    "DP") ///
             ("EC"=12    "EC") ///
             ("ED"=13    "ED") ///
             ("FA"=14    "FA") ///
             ("FC"=15    "FC") ///
             ("FI"=16    "FI") ///
             ("FS"=17    "FS") ///
             ("GA"=18    "GA") ///
             ("HO"=19    "HO") ///
             ("HR"=20    "HR") ///
             ("HS"=21    "HS") ///
             ("IA"=22    "IA") ///
             ("ID"=23    "ID") ///
             ("IH"=24    "IH") ///
             ("II"=25    "II") ///
             ("IN"=26    "IN") ///
             ("IP"=27    "IP") ///
             ("IR"=28    "IR") ///
             ("IS"=29    "IS") ///
             ("IV"=30    "IV") ///
             ("IW"=31    "IW") ///
             ("JO"=32    "JO") ///
             ("KO"=33    "KO") ///
             ("LN"=34    "LN") ///
             ("MI"=35    "MI") ///
             ("MO"=36    "MO") ///
             ("NB"=37    "NB") ///
             ("NC"=38    "NC") ///
             ("OF"=39    "OF") ///
             ("OS"=40    "OS") ///
             ("PC"=41    "PC") ///
             ("PE"=42    "PE") ///
             ("PX"=43    "PX") ///
             ("RM"=44    "RM") ///
             ("RS"=45    "RS") ///
             ("SC"=46    "SC") ///
             ("SE"=47    "SE") ///
             ("SH"=48    "SH") ///
             ("ST"=49    "ST") ///
             ("TC"=50    "TC") ///
             ("TI"=51    "TI") ///
             ("TJ"=52    "TJ") ///
             ("TU"=53    "TU") ///
             ("UC"=54    "UC") ///
             ("VC"=55    "VC") ///
             ("VD"=56    "VD") ///
             ("WB"=57    "WB") ///
             ("WO"=58    "WO") ///
             ("WV"=59    "WV") ///
             ("WW"=60    "WW") ///
             ("XB"=61    "XB") ///
             ("ZP"=62    "ZP") ///
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
  strrec `1' ("Altri azionisti, in forma aggregata" "Other unnamed shar., agg."                              =  1  "Altri azionisti, in forma aggregata")                      ///
             ("Assicurazioni" "Insurance company"                                                            =  2  "Assicurazioni")                                            ///
             ("Aziende industriale" "Industrial company"                                                     =  3  "Aziende industriale")                                      ///
             ("Banche" "Bank"                                                                                =  4  "Banche")                                                   ///
             ("Dipendenti /Dirigenti/Amministratori" "Employees/Managers"                                    =  5  "Dipendenti/Dirigenti/Amministratori")                      ///
             ("Enti Pubblici, Stato, Governo" "State, Public authority" "Public"                             =  6  "Enti pubblici, stato, governo")                            ///
             ("Fondazioni/Istituti di Ricerca" "Foundation/Research Institute"                               =  7  "Fondazioni/Istituti di ricerca")                           ///
             ("Fondi Mutualistici & Pensionistici/Nominali/Fiduciari" "Mutual & Pension fund/Trust/Nominee"  =  8  "Fondi mutualistici & pensionistici/nominali/fiduciari")    ///
             ("La proprietà stessa" "Self-owned"                                                             =  9  "La proprietà stessa")                                      ///
             ("Persone fisiche o famiglie" "Individual(s) or family(ies)"                                    =  10 "Persone fisiche o famiglie")                               ///
             ("Private Equity firms" "Private equity firm"                                                   =  11 "Private equity firms")                                     ///
             ("Società Finanziaria" "Financial company"                                                      =  12 "Società finanziaria")                                      ///
             ("Società Quotate"                                                                              =  13 "Società quotate")                                          ///
             ("Venture capital"                                                                              =  14 "Venture capital")                                          ///
             ("Azionisti privati, in forma aggregata" "Unnamed private shareh., agg."                        =  15 "Azionisti privati, in forma aggregata")                    ///
             ("Società"                                                                                      =  16 "Società")                                                  ///
             ("Nave marittima"                                                                               =  17 "Nave marittima")                                           ///
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





capture program drop STATUS
program define STATUS
  replace `1'=trim(`1')
    replace `1'="" if inlist(`1',"-")
  gen TMP=`1'
  count if `1'==""
  local pre_miss = r(N)
  strrec `1' ("AR" = 1 "AR") ///
             ("AR+" = 2 "AR+") ///
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
                       9 "Toscana"                  ///
                       10 "Umbria"                   ///
                       11  "Marche"                   ///
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
if !_rc label var sd_isin "ISIN number"


capture confirm variable sd_ticker
if !_rc label var sd_ticker "Ticker symbol"


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
  label var regione "Provincia"
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
  capture confirm numeric variable hqpost
  if _rc replace hqpost = trim(hqpost)
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
                     ("Attiva (Stato di insolvenza)" "Attiva (con procedure di insolvenza)"= 11 "Attiva in stato di insolvenza")  ///
                     ("Attiva (Amministrazione Controllata)" = 12 "Attiva in Amministrazione Controllata") ///
                     ("Cessata (Fusione)" = 21 "Cessata per Fusione")  ///
                     ("Cessata (In liquidazione)" = 22 "Cessata in liquidazione")  ///
                     ("Cessata (Chiusura per fallimento)" = 23 "Cessata (Chiusura per fallimento)") ///
                     ("Ditta cessata per tranferimento" = 23 "Cessata per tranferimento") ///
                     ("Cessata (Scissione)" = 24 "Cessata per Scissione") ///
                     ("Ditta in fallimento" "In fallimento" = 31 "In fallimento") ///
                     , gen(h27)
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
  fre formgiur
  count if formgiur==""
  local pre = r(N)
  strrec formgiur ("Associazione" = 1 "Associazione")  ///
                  ("Associazione impresa"= 2 "Associazione impresa")   ///
                  ("Consorzio" "Consorzio senza attivita' esterna" = 3 "Consorzio")   ///
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
                  ("Soc. Estera" "Società estera" "Società estere" "Società europea" "Società cooperativa europea" = 19 "Società estera")  ///
                  ("Soc. consortile" "Società consortile in nome collettivo" "Società consortile in accomandita semplice" = 20 "Società consortile")  ///
                  ("Soc. consortile a resp. limitata" "Società consortile a responsabilita' limitata" "Società consortile cooperativa a responsabilità limitata" = 21 "Società consortile a responsabilità limitata")  ///
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
                  ("Azienda speciale*" = 33 "Azienda speciale")  ///
                  ("Consorzi di garanzia fidi" "Consorzio ai sensi del D.lgs. 267/2000" = 34 "Consorzio") ///
                  ("Società di mutuo soccorso" = 35 "Società di mutuo soccorso"), sub gen(h14)

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
                      ("U1" = 21 "Non consolidato per società SENZA consolidato") ///
                      ("LF" = 98 "Società con dati di bilancio limitati")  ///
                      ("NF" = 99 "Nessun dato finanziario"), gen(h21)
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

capture rename owndata_nrmonths period
capture confirm variable period
if !_rc {
  destring period, replace
  label var period "Periodo di competenza"
  rename period cf57
}



capture confirm variable attiviit
if !_rc {
  replace attiviit = trim(attiviit)
  label var attiviit "Descrizione Attività (IT)"
  rename attiviit ac01
}


capture confirm variable ateco7c
if !_rc {
  capture confirm numeric variable ateco7c
  if _rc  replace ateco7c = trim(ateco7c)
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
 label var vc_1007 "Avviamento/Differenza di consolidamento"
}

capture confirm variable vc_1225
if !_rc {
 label var vc_1225 "di cui: Avviamento"
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

capture confirm variable vc_1226
if !_rc {
 label var vc_1226 "di cui: Beni materiali concessi in locazione finanziaria"
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

capture confirm variable vc_1227
if !_rc {
 label var vc_1227 "di cui: esigibili entro l'esercizio successivo"
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

capture confirm variable vc_1200
if !_rc {
 label var vc_1200 "In imprese sottoposte al controllo delle controllanti"
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

capture confirm variable vc_1201
if !_rc {
 label var vc_1201 "Cred. vs imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_1202
if !_rc {
 label var vc_1202 "Cred. vs imprese sottoposte al controllo delle controllanti oltre"
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

capture confirm variable vc_1203
if !_rc {
 label var vc_1203 "Strumenti finanziari derivati attivi"
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

capture confirm variable vc_1204
if !_rc {
 label var vc_1204 "Immobilizzazioni materiali destinate alla vendita"
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

capture confirm variable vc_3205
if !_rc {
 label var vc_3205 "Cred. vs imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_3206
if !_rc {
 label var vc_3206 "Cred. vs imprese sottoposte al controllo delle controllanti oltre"
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

capture confirm variable vc_1238
if !_rc {
 label var vc_1238 "Crediti per imposte anticipate"
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

capture confirm variable vc_1207
if !_rc {
 label var vc_1207 "Partec.ni in imprese sottoposte al controllo delle controllanti"
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

capture confirm variable vc_1208
if !_rc {
 label var vc_1208 "Strumenti finanziari derivati attivi"
}

capture confirm variable vc_1065
if !_rc {
 label var vc_1065 "Altri titoli"
}

capture confirm variable vc_1209
if !_rc {
 label var vc_1209 "Attività finanziarie per la gestione accentrata della tesoreria"
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

capture confirm variable vc_1228
if !_rc {
 label var vc_1228 "di cui: Versamenti soci in c/capitale"
}

capture confirm variable vc_1229
if !_rc {
 label var vc_1229 "di cui: Versamenti in c/futuro aumento di capitale"
}

capture confirm variable vc_1230
if !_rc {
 label var vc_1230 "di cui: Versamenti in c/capitale"
}

capture confirm variable vc_1231
if !_rc {
 label var vc_1231 "di cui: Versamenti a copertura perdite"
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

capture confirm variable vc_1210
if !_rc {
 label var vc_1210 "Riserva per operazioni di copertura dei flussi finanziari attesi"
}

capture confirm variable vc_1082
if !_rc {
 label var vc_1082 "Utile/perdita a nuovo"
}

capture confirm variable vc_1083
if !_rc {
 label var vc_1083 "Utile/perdita di esercizio"
}

capture confirm variable vc_1232
if !_rc {
 label var vc_1232 "Acconto dividendi"
}

capture confirm variable vc_1233
if !_rc {
 label var vc_1233 "Copertura parziale perdita di esercizio"
}

capture confirm variable vc_1211
if !_rc {
 label var vc_1211 "Riserva negativa per azioni proprie in portafoglio (+/-)"
}

capture confirm variable vc_2085
if !_rc {
 label var vc_2085 "TOTALE PATRIMONIO DEL GRUPPO"
}

capture confirm variable vc_2086
if !_rc {
 label var vc_2086 "Capitale e riserve di pertinenza di TERZI"
}

capture confirm variable vc_1234
if !_rc {
 label var vc_1234 "di cui: per imposte differite"
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

capture confirm variable vc_1212
if !_rc {
 label var vc_1212 "Strumenti finanziari derivati passivi"
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

capture confirm variable vc_3213
if !_rc {
 label var vc_3213 "Debiti VS imprese sottoposte al controllo delle controllanti entro"
}

capture confirm variable vc_3214
if !_rc {
 label var vc_3214 "Debiti VS imprese sottoposte al controllo delle controllanti oltre"
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

capture confirm variable vc_1215
if !_rc {
 label var vc_1215 "Tot. proventi da partecip. (di cui: da imprese controllanti)"
}

capture confirm variable vc_1216
if !_rc {
 label var vc_1216 "Tot. proventi da partecip. (di cui: da imprese sottoposte al controllo delle controllanti)"
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

capture confirm variable vc_1217
if !_rc {
 label var vc_1217 "Da Crediti (di cui: da imprese sottoposte al controllo delle controllanti)"
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

capture confirm variable vc_1218
if !_rc {
 label var vc_1218 "Proventi fin. Diversi (di cui: da imprese sottoposte al controllo delle controllanti)"
}

capture confirm variable vc_1159
if !_rc {
 label var vc_1159 "TOT Oneri finanziari"
}

capture confirm variable vc_1160
if !_rc {
 label var vc_1160 "Oneri fin. di cui da Contr/coll"
}

capture confirm variable vc_1219
if !_rc {
 label var vc_1219 "Oneri fin. di cui: da imprese sottoposte al controllo delle controllanti"
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

capture confirm variable vc_1220
if !_rc {
 label var vc_1220 "Rivalut. di strumenti finanziari derivati"
}

capture confirm variable vc_1221
if !_rc {
 label var vc_1221 "Rivalut. di attività finanziarie per la gestione accentrata della tesoreria"
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

capture confirm variable vc_1222
if !_rc {
 label var vc_1222 "Svalut. di strumenti finanziari derivati"
}

capture confirm variable vc_1223
if !_rc {
 label var vc_1223 "Svalut. di attività finanziarie per la gestione accentrata della tesoreria"
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

capture confirm variable vc_1224
if !_rc {
 label var vc_1224 "Imposte relative a esercizi precedenti"
}

capture confirm variable vc_1192
if !_rc {
 label var vc_1192 "Imposte differite e anticipate"
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





** VOCI DI RENDICONTO FINANZIARIO
**metodo indiretto
capture confirm variable vc_7002
if !_rc {
 label var vc_7002 "Utile (perdita) dell'esercizio"
}

capture confirm variable vc_7003
if !_rc {
 label var vc_7003 "Imposte sul reddito"
}

capture confirm variable vc_7004
if !_rc {
 label var vc_7004 "Interessi passivi/(attivi)"
}

capture confirm variable vc_7005
if !_rc {
 label var vc_7005 "(Dividendi)"
}

capture confirm variable vc_7006
if !_rc {
 label var vc_7006 "(Plusvalenze)/Minusvalenze derivanti dalla cessione di attività"
}

capture confirm variable vc_7007
if !_rc {
 label var vc_7007 "Utile (perdita) dell'esercizio prima d'imposte sul reddito, interessi, dividendi e plus/minusvalenze da cessione"
}

capture confirm variable vc_7009
if !_rc {
 label var vc_7009 "Accantonamenti ai fondi"
}

capture confirm variable vc_7010
if !_rc {
 label var vc_7010 "Ammortamenti delle immobilizzazioni"
}

capture confirm variable vc_7011
if !_rc {
 label var vc_7011 "Svalutazioni per perdite durevoli di valore"
}

capture confirm variable vc_7012
if !_rc {
 label var vc_7012 "Rettifiche di valore di attivita e passivita finanziarie di strumenti finanziari derivati che non comportano movimentazione monetarie"
}

capture confirm variable vc_7013
if !_rc {
 label var vc_7013 "Altre rettifiche in aumento/(in diminuzione) per elementi non monetari"
}

capture confirm variable vc_7014
if !_rc {
 label var vc_7014 "Totale rettifiche per elementi non monetari che non hanno avuto contropartita nel capitale circolante netto"
}

capture confirm variable vc_7015
if !_rc {
 label var vc_7015 "Flusso finanziario prima delle variazioni del capitale circolante netto"
}

capture confirm variable vc_7017
if !_rc {
 label var vc_7017 "Decremento/(Incremento) delle rimanenze"
}

capture confirm variable vc_7018
if !_rc {
 label var vc_7018 "Decremento/(Incremento) dei crediti verso clienti"
}

capture confirm variable vc_7019
if !_rc {
 label var vc_7019 "Incremento/(Decremento) dei debiti verso fornitori"
}

capture confirm variable vc_7020
if !_rc {
 label var vc_7020 "Decremento/(Incremento) dei ratei e risconti attivi"
}

capture confirm variable vc_7021
if !_rc {
 label var vc_7021 "Incremento/(Decremento) dei ratei e risconti passivi"
}

capture confirm variable vc_7022
if !_rc {
 label var vc_7022 "Altri decrementi/(Altri incrementi) del capitale circolante netto"
}

capture confirm variable vc_7023
if !_rc {
 label var vc_7023 "Totale variazioni del capitale circolante netto"
}

capture confirm variable vc_7024
if !_rc {
 label var vc_7024 "Flusso finanziario dopo le variazioni del capitale circolante netto"
}

capture confirm variable vc_7026
if !_rc {
 label var vc_7026 "Interessi incassati/(pagati)"
}

capture confirm variable vc_7027
if !_rc {
 label var vc_7027 "(Imposte sul reddito pagate)"
}

capture confirm variable vc_7028
if !_rc {
 label var vc_7028 "Dividendi incassati"
}

capture confirm variable vc_17029
if !_rc {
 label var vc_17029 "(Utilizzo dei fondi)"
}

capture confirm variable vc_7030
if !_rc {
 label var vc_7030 "Altri incassi/(pagamenti)"
}

capture confirm variable vc_7031
if !_rc {
 label var vc_7031 "Totale altre rettifiche"
}

capture confirm variable vc_7032
if !_rc {
 label var vc_7032 "Flusso finanziario dell'attività operativa (A)"
}

capture confirm variable vc_7034
if !_rc {
 label var vc_7034 "Immobilizzazioni materiali: (Investimenti)"
}

capture confirm variable vc_7035
if !_rc {
 label var vc_7035 "Immobilizzazioni materiali: Disinvestimenti"
}

capture confirm variable vc_7036
if !_rc {
 label var vc_7036 "Immobilizzazioni immateriali: (Investimenti)"
}

capture confirm variable vc_7037
if !_rc {
 label var vc_7037 "Immobilizzazioni immateriali: Disinvestimenti"
}

capture confirm variable vc_7038
if !_rc {
 label var vc_7038 "Immobilizzazioni finanziarie: (Investimenti)"
}

capture confirm variable vc_7039
if !_rc {
 label var vc_7039 "Immobilizzazioni finanziarie: Disinvestimenti"
}

capture confirm variable vc_7040
if !_rc {
 label var vc_7040 "Attività finanziarie non immobilizzate: (Investimenti)"
}

capture confirm variable vc_7041
if !_rc {
 label var vc_7041 "Attività finanziarie non immobilizzate: Disinvestimenti"
}

capture confirm variable vc_7042
if !_rc {
 label var vc_7042 "Acquisizione  di societa controllate al netto delle disponibilita liquide"
 note vc_7042: BIL. CONS.
}

capture confirm variable vc_7043
if !_rc {
 label var vc_7043 "Cessione  di societa controllate al netto delle disponibilita liquide"
 note vc_7043: BIL. CONS.
}

capture confirm variable vc_7044
if !_rc {
 label var vc_7044 "Acquisizione  di rami d'azienda al netto delle disponibilita liquide"
}

capture confirm variable vc_7045
if !_rc {
 label var vc_7045 "Cessione di rami d'azienda al netto delle disponibilita liquide"
}

capture confirm variable vc_7046
if !_rc {
 label var vc_7046 "Flusso finanziario dell'attività di investimento"
}

capture confirm variable vc_7049
if !_rc {
 label var vc_7049 "Incremento/(Decremento) debiti a breve verso banche"
}

capture confirm variable vc_7050
if !_rc {
 label var vc_7050 "Accensione finanziamenti"
}

capture confirm variable vc_7051
if !_rc {
 label var vc_7051 "(Rimborso finanziamenti)"
}

capture confirm variable vc_7053
if !_rc {
 label var vc_7053 "Aumento di capitale a pagamento"
}

capture confirm variable vc_7054
if !_rc {
 label var vc_7054 "(Rimborso di capitale)"
}

capture confirm variable vc_7055
if !_rc {
 label var vc_7055 "Cessione/(Acquisto) di azioni proprie"
}

capture confirm variable vc_7056
if !_rc {
 label var vc_7056 "(Dividendi e acconti su dividendi pagati)"
}

capture confirm variable vc_7057
if !_rc {
 label var vc_7057 "Flusso finanziario dell'attivita di finanziamento"
}

capture confirm variable vc_7058
if !_rc {
 label var vc_7058 "Incremento (decremento) delle disponibilita liquide"
 note vc_7058:  A + B + C
}

capture confirm variable vc_7059
if !_rc {
 label var vc_7059 "Effetto cambi sulle disponibilità liquide"
}

capture confirm variable vc_7060
if !_rc {
 label var vc_7060 "Disponibilità liquide a inizio esercizio"
}

capture confirm variable vc_7061
if !_rc {
 label var vc_7061 "Depositi bancari e postali"
}

capture confirm variable vc_7062
if !_rc {
 label var vc_7062 "Assegni"
}

capture confirm variable vc_7063
if !_rc {
 label var vc_7063 "Danaro e valori in cassa"
}

capture confirm variable vc_7064
if !_rc {
 label var vc_7064 "Totale disponibilita liquide a inizio esercizio"
}

capture confirm variable vc_7065
if !_rc {
 label var vc_7065 "Totale disponibilità liquide a inizio esercizio, di cui non liberamente utilizzabili"
}

capture confirm variable vc_7067
if !_rc {
 label var vc_7067 "Depositi bancari e postali"
}

capture confirm variable vc_7068
if !_rc {
 label var vc_7068 "Assegni"
}

capture confirm variable vc_7069
if !_rc {
 label var vc_7069 "Denaro e valori in cassa"
}

capture confirm variable vc_7070
if !_rc {
 label var vc_7070 "Totale disponibilità liquide a fine esercizio"
}

capture confirm variable vc_7071
if !_rc {
 label var vc_7071 "Totale disponibilità liquide a fine esercizio, di cui non liberamente utilizzabili"
}

capture confirm variable vc_7072
if !_rc {
 label var vc_7072 "Acquisizione o cessione di societa controllate"
 note vc_7072:  BIL. CONS.
}

capture confirm variable vc_7073
if !_rc {
 label var vc_7073 "Corrispettivi totali pagati o ricevuti"
 note vc_7073:  BIL. CONS.
}

capture confirm variable vc_7074
if !_rc {
 label var vc_7074 "Parte dei corrispettivi consistente in disponibilità liquide"
 note vc_7074:  BIL. CONS.
}

capture confirm variable vc_7075
if !_rc {
 label var vc_7075 "Disponibilità liquide acquisite o cedute con le operazioni di acquisizione/cessione delle societa controllate"
 note vc_7075:  BIL. CONS.
}

capture confirm variable vc_7076
if !_rc {
 label var vc_7076 "Valore contabile delle attività/passivita acquisite o cedute"
 note vc_7076:  BIL. CONS.
}

capture confirm variable vc_7078
if !_rc {
 label var vc_7078 "Incassi da clienti"
}

capture confirm variable vc_7079
if !_rc {
 label var vc_7079 "Altri incassi"
}

capture confirm variable vc_7080
if !_rc {
 label var vc_7080 "(Pagamenti a fornitori per acquisti)"
}

capture confirm variable vc_7081
if !_rc {
 label var vc_7081 "(Pagamenti a fornitori per servizi)"
}

capture confirm variable vc_7082
if !_rc {
 label var vc_7082 "(Pagamenti al personale)"
}

capture confirm variable vc_7083
if !_rc {
 label var vc_7083 "(Altri pagamenti)"
}

capture confirm variable vc_7084
if !_rc {
 label var vc_7084 "(Imposte pagate sul reddito)"
}

capture confirm variable vc_7085
if !_rc {
 label var vc_7085 "Interessi incassati/(pagati)"
}

capture confirm variable vc_7086
if !_rc {
 label var vc_7086 "Dividendi incassati"
}

capture confirm variable vc_7087
if !_rc {
 label var vc_7087 "Flusso finanziario dell'attivita operativa"
}

capture confirm variable vc_7089
if !_rc {
 label var vc_7089 "Immobilizzazioni materiali: (Investimenti)"
}

capture confirm variable vc_7090
if !_rc {
 label var vc_7090 "Immobilizzazioni materiali: Disinvestimenti"
}

capture confirm variable vc_7091
if !_rc {
 label var vc_7091 "Immobilizzazioni immateriali: (Investimenti)"
}

capture confirm variable vc_7092
if !_rc {
 label var vc_7092 "Immobilizzazioni immateriali: Disinvestimenti"
}

capture confirm variable vc_7093
if !_rc {
 label var vc_7093 "Immobilizzazioni finanziarie: (Investimenti)"
}

capture confirm variable vc_7094
if !_rc {
 label var vc_7094 "Immobilizzazioni finanziarie: Disinvestimenti"
}

capture confirm variable vc_7095
if !_rc {
 label var vc_7095 "Attività finanziarie non immobilizzate: (Investimenti)"
}

capture confirm variable vc_7096
if !_rc {
 label var vc_7096 "Attività finanziarie non immobilizzate: Disinvestimenti"
}

capture confirm variable vc_7098
if !_rc {
 label var vc_7098 "Cessione  di società controllate al netto delle disponibilità liquide"
  note vc_7098: BIL. CONS.
}

capture confirm variable vc_7099
if !_rc {
 label var vc_7099 "Acquisizione di rami d'azienda al netto delle disponibilità liquide"
}

capture confirm variable vc_7100
if !_rc {
 label var vc_7100 "Cessione di rami d'azienda al netto delle disponibilità liquide"
}

capture confirm variable vc_7101
if !_rc {
 label var vc_7101 "Flusso finanziario dell'attivita di investimento"
}

capture confirm variable vc_7104
if !_rc {
 label var vc_7104 "Incremento/(Decremento) debiti a breve verso banche"
}

capture confirm variable vc_7105
if !_rc {
 label var vc_7105 "Accensione finanziamenti"
}

capture confirm variable vc_7106
if !_rc {
 label var vc_7106 "(Rimborso finanziamenti)"
}

capture confirm variable vc_7108
if !_rc {
 label var vc_7108 "Aumento di capitale a pagamento"
}

capture confirm variable vc_7109
if !_rc {
 label var vc_7109 "(Rimborso di capitale)"
}

capture confirm variable vc_7110
if !_rc {
 label var vc_7110 "Cessione/(Acquisto) di azioni proprie"
}

capture confirm variable vc_7111
if !_rc {
 label var vc_7111 "(Dividendi e acconti su dividendi pagati)"
}

capture confirm variable vc_7112
if !_rc {
 label var vc_7112 "Flusso finanziario dell'attività di finanziamento"
}

capture confirm variable vc_7113
if !_rc {
 label var vc_7113 "Incremento (decremento) delle disponibilità liquide"
}

capture confirm variable vc_7114
if !_rc {
 label var vc_7114 "Effetto netto sulle disponibilità liquide"
}

capture confirm variable vc_7116
if !_rc {
 label var vc_7116 "Depositi bancari e postali"
}

capture confirm variable vc_7117
if !_rc {
 label var vc_7117 "Assegni"
}

capture confirm variable vc_7118
if !_rc {
 label var vc_7118 "Danaro e valori in cassa"
}

capture confirm variable vc_7119
if !_rc {
 label var vc_7119 "Totale disponibilita liquide a inizio esercizio"
}

capture confirm variable vc_7120
if !_rc {
 label var vc_7120 "Totale disponibilità liquide a inizio esercizio: di cui non liberamente utilizzabili"
}

capture confirm variable vc_7122
if !_rc {
 label var vc_7122 "Depositi bancari e postali"
}

capture confirm variable vc_7123
if !_rc {
 label var vc_7123 "Assegni"
}

capture confirm variable vc_7124
if !_rc {
 label var vc_7124 "Danaro e valori in cassa"
}

capture confirm variable vc_7125
if !_rc {
 label var vc_7125 "Totale disponibilita liquide a fine esercizio"
}

capture confirm variable vc_7126
if !_rc {
 label var vc_7126 "Totale disponibilità liquide a fine esercizio: di cui non liberamente utilizzabili"
}

capture confirm variable vc_7127
if !_rc {
 label var vc_7127 "Acquisizione o cessione di societa controllate"
 note vc_7127:  BIL. CONS.
}

capture confirm variable vc_7128
if !_rc {
 label var vc_7128 "Corrispettivi totali pagati o ricevuti"
 note vc_7128:  BIL. CONS.
}

capture confirm variable vc_7129
if !_rc {
 label var vc_7129 "Parte dei corrispettivi consistente in disponibilità liquide"
 note vc_7129:  BIL. CONS.
}

capture confirm variable vc_7130
if !_rc {
 label var vc_7130 "Disponibilità liquide acquisite o cedute con le operazioni di acquisizione/cessione delle società controllate"
 note vc_7130:  BIL. CONS.
}

capture confirm variable vc_7131
if !_rc {
 label var vc_7131 "Valore contabile delle attivita/passivita acquisite o cedute"
  note vc_7131:  BIL. CONS.
}




***PARTECIPAZIONI

capture confirm variable vc_m9439
if !_rc label var vc_m9439 "Partecipazioni Commenti"

capture confirm variable vc_m9354
if !_rc label var vc_m9354 "Numero di partecipazioni disponibili"

capture confirm variable vc_m9300
if !_rc label var vc_m9300 "Partecipate - Nome"

capture confirm variable vc_m9305
if !_rc label var vc_m9305 "Partecipate - BvD ID number"

capture confirm variable vc_m9387
if !_rc label var vc_m9387 "Partecipate - Ticker symbol"

capture confirm variable vc_m9302
if !_rc label var vc_m9302 "Partecipate - Country ISO code"

capture confirm variable vc_m9306
if !_rc label var vc_m9306 "Partecipazioni Città"

capture confirm variable vc_m9314
if !_rc {
  OW vc_m9314
  label var vc_m9314 "Partecipate - Tipologia"
}

capture confirm variable vc_m9393
if !_rc {
  destring vc_m9393, replace ignore("-")
  label var vc_m9393 "Partecipazioni Codice NACE"
}

capture confirm variable vc_m9381
if !_rc {
  destring vc_m9381, replace ignore("-")
  label var vc_m9381 "Partecipazioni Codice NAICS"
}

capture confirm variable vc_m9374
if !_rc label var vc_m9374 "Partecipazioni Livello"

capture confirm variable vc_m9308
if !_rc label var vc_m9308 "Partecipazioni % Diretta"

capture confirm variable vc_m9309
if !_rc label var vc_m9309 "Partecipazioni % Totale"

capture confirm variable vc_m35120
if !_rc {
  tostring vc_m35120, replace
  label var vc_m35120 "Partecipata - Informazioni su possibili variazioni nella %"
}

capture confirm variable vc_m9345
if !_rc {
  STATUS vc_m9345
  label var vc_m9345 "Partecipate - Status"
}

capture confirm variable vc_m9320
if !_rc {
  ORIGINE vc_m9320
  label var vc_m9320 "Partecipazioni Fonte dell'informazione"
}

capture confirm variable vc_m9332
if !_rc {
  replace vc_m9332="" if inlist(vc_m9332,"n.d.","-")
  tempvar temp
  gen `temp' = monthly(vc_m9332,"MY")
  format `temp' %tm
  assert `temp'!=. if vc_m9332!=""
  order `temp', after(vc_m9332)
  drop vc_m9332
  rename `temp' vc_m9332
  label var vc_m9332 "Partecipate - Data informazione"
}

capture confirm variable vc_m9303
if !_rc {
 label var vc_m9303 "Partecipazioni Ricavi delle vendite"
 note vc_m9303: (Fatt.) mil EUR
}

capture confirm variable vc_m9337
if !_rc {
 label var vc_m9337 "Partecipazioni Totale Attività"
 note vc_m9337: mil EUR
}

capture confirm variable vc_m9365
if !_rc label var vc_m9365 "N° di dipendenti"

capture confirm variable vc_m9323
if !_rc {
  label var vc_m9323 "Partecipata - Codice fiscale"
  capture confirm string variable vc_m9323
  if _rc {
    format vc_m9323 %011.0f
    tostring vc_m9323, replace force u
  }
}

capture confirm variable vc_m9324
if !_rc {
  label var vc_m9324 "Partecipata - Partita IVA"
  format vc_m9324 %011.0f
}

capture confirm variable vc_m9325
if !_rc label var vc_m9325 "Partecipata - Indirizzo"

capture confirm variable vc_m9326
if !_rc label var vc_m9326 "Partecipata - Codice postale"

capture confirm variable vc_m9327
if !_rc  label var vc_m9327 "Partecipata - Località"

capture confirm variable vc_m9328
if !_rc {
  label var vc_m9328 "Partecipata - Provincia"
  prov_num vc_m9328
}

capture confirm variable vc_m9329
if !_rc {
  label var vc_m9329 "Partecipata - Regione"
  regio_num vc_m9329
}

capture confirm variable vc_m9330
if !_rc label var vc_m9330 "Partecipata - Numero di telefono"

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
  replace proc_cess_open_date="" if strlen(proc_cess_open_date)<=5
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
  replace proc_cess_close_date="" if strlen(proc_cess_close_date)<=5
  gen prova = date(proc_cess_close_date,"DMY")
  format prova %td
  assert prova!=. if proc_cess_close_date!=""
  order prova, after(proc_cess_close_date)
  drop proc_cess_close_date
  rename prova vc_200089
  label var vc_200089 "Data di chiusura procedura"
}

capture confirm variable vc_203010
if !_rc label var vc_203010 "Area commerciale"

capture confirm variable vc_203100
if !_rc label var vc_203100 "Natura giuridica"

capture confirm variable vc_203102
if !_rc label var vc_203102 "Camera di Commercio"

capture confirm variable vc_206007
if !_rc label var vc_206007 "Attività esercitata"

capture confirm variable vc_207000
if !_rc label var vc_207000 "Oggetto sociale"

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

capture confirm variable s_innod_overview
if !_rc label var s_innod_overview "Overview completa"

capture confirm variable s_innod_history
if !_rc label var s_innod_history "Storico"

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

capture confirm variable s_innod_size_estimate
if !_rc {
  label var s_innod_size_estimate "Stima dimensione"
}

capture confirm variable s_innod_strategy_organization_an
if !_rc {
  rename s_innod_strategy_organization_an s_innod_strat_org_pol
  label var s_innod_strat_org_pol "Strategia, organizzazione e policy"
}

capture confirm variable s_innod_strategic_alliances
if !_rc {
  rename s_innod_strategic_alliances s_innod_strat_all
  label var s_innod_strat_all "Alleanze strategiche"
}

capture confirm variable s_innod_membership_of_a_network
if !_rc {
  rename s_innod_membership_of_a_network s_innod_memb_network
  label var s_innod_memb_network "Socio di un network"
}

capture confirm variable s_innod_main_brand_names
if !_rc {
  label var s_innod_main_brand_names "Principali marchi"
}

capture confirm variable s_innod_country_name
if !_rc {
  label var s_innod_country_name "Principale Stato"
}

capture confirm variable s_innod_main_foreign_countries_o
if !_rc {
  rename s_innod_main_foreign_countries_o s_innod_main_foreign_countries
  label var s_innod_main_foreign_countries "Principali Stati o regioni straniere"
}

capture confirm variable s_innod_main_production_sites
if !_rc {
  rename s_innod_main_production_sites s_innod_main_prod_sites
  label var s_innod_main_prod_sites "Principali siti di produzione"
}

capture confirm variable s_innod_main_distribution_sites
if !_rc {
  rename s_innod_main_distribution_sites s_innod_main_distrib_sites
  label var s_innod_main_distrib_sites "Principali siti di distribuzione"
}

capture confirm variable s_innod_main_sales_representatio
if !_rc {
  rename s_innod_main_sales_representatio s_innod_main_sales_rep_site
  label var s_innod_main_sales_rep_site "Principali siti di rappresentanza"
}

capture confirm variable s_innod_main_customers
if !_rc {
  label var s_innod_main_customers "Clienti principali"
}

capture confirm variable s_innod_overview_limited_info
if !_rc {
  rename s_innod_overview_limited_info s_innod_overview_lim_info
  label var s_innod_overview_lim_info "Indicatore informazioni concise"
}

capture confirm variable artisanat_str
if !_rc {
  rename artisanat_str artisanat
  replace artisanat=trim(artisanat)
  count if artisanat==""
  local pre = r(N)
  strrec artisanat ("si" "yes"=1 "sì") ("no"=0 "no"), replace
  count if artisanat==.
  assert r(N) == `pre'
  label var artisanat "Società artigiana"
}

capture confirm variable isastartup_str
if !_rc {
  rename isastartup_str startup_innov
  replace startup_innov=trim(startup_innov)
  count if startup_innov==""
  local pre = r(N)
  strrec startup_innov ("si" "yes"=1 "sì") ("no"=0 "no"), replace
  count if startup_innov==.
  assert r(N) == `pre'
  label var startup_innov "Start-up innovativa"
}

capture confirm variable isapmi_str
if !_rc {
  rename isapmi_str pmi_innov
  replace pmi_innov=trim(pmi_innov)
  count if pmi_innov==""
  local pre = r(N)
  strrec pmi_innov ("si" "yes"=1 "sì") ("no"=0 "no"), replace
  count if pmi_innov==.
  assert r(N) == `pre'
  label var pmi_innov "pmi innovativa"
}

capture confirm variable impexp
if !_rc {
  replace impexp=trim(impexp)
  count if impexp==""
  local pre = r(N)
  strrec impexp ("si" "yes"=1 "sì") ("no"=0 "no"), replace
  count if impexp==.
  assert r(N) == `pre'
  label var impexp "Operatore estero"
}

capture confirm variable corporate_purpose
if !_rc {
  label var corporate_purpose "Oggetto sociale"
}

capture confirm variable cciaapr
if !_rc {
  label var cciaapr "CCIAA precedente"
}

capture confirm variable cciaapr_date
if !_rc {
  gen temp = date(cciaapr_date,"DMY")
  format temp %td
  assert temp!=. if cciaapr_date!=""
  order temp, after(cciaapr_date)
  drop cciaapr_date
  rename temp cciaapr_date
  label var cciaapr_date "Data modifica CCIAA"
}


capture confirm variable vc_9427
if !_rc {
  replace vc_9427=trim(vc_9427)
  count if vc_9427=="-" | vc_9427==""
  local pre = r(N)
  strrec vc_9427 ("-"=.) ("A+"=1 "A+") ("A"=2 "A") ("A-"=3 "A-") ///
                         ("B+"=4 "B+") ("B"=5 "B") ("B-"=6 "B-") ///
                         ("C+"=7 "C+") ("C"=8 "C") ("D"=9 "D") ("U"=10 "U"), replace
  count if vc_9427==.
  assert r(N)==`pre'
  label var vc_9427 "Indicatore d'Indipendenza BvD"
}



capture confirm variable vc_9499
if !_rc {
  label var vc_9499 "No of companies in corporate group"
}


capture confirm variable vc_9055
if !_rc {
  label var vc_9055 "N° azionisti registrati"
}


capture confirm variable vc_9700_uofiltered
if !_rc {
  label var vc_9700_uofiltered "N° partecipate registrate"
}


capture confirm variable nace2cod
if !_rc {
  label var nace2cod     "NACE Rev. 2 codice"
}

capture confirm variable nace2des
if !_rc {
  label var nace2des "NACE Rev. 2 descrizione"
}

capture confirm variable naicscod
if !_rc {
  label var naicscod     "NAICS 2007 codice"
}

capture confirm variable naicsdes
if !_rc {
  label var naicsdes "NAICS 2007 descrizione"
}

capture confirm variable naicscod2012
if !_rc {
  label var naicscod2012 "NAICS 2012 codice"
}

capture confirm variable naicsdes2012
if !_rc {
  label var naicsdes2012 "NAICS 2012 descrizione"
}

capture confirm variable naics2017_core_code
if !_rc {
  label var naics2017_core_code "NAICS 2017, core code"
}

capture confirm variable naics2017_primary_code
if !_rc {
  label var naics2017_primary_code "NAICS 2017, primary code"
}

capture confirm variable naics2017_secondary_code
if !_rc {
  label var naics2017_secondary_code "NAICS 2017, primary code"
}

capture confirm variable sae_core_code
if !_rc {
  label var sae_core_code "SAE codice"
}

capture confirm variable rae_core_code
if !_rc {
  label var rae_core_code "RAE codice"
}

capture confirm variable opgname
if !_rc {
  label var opgname "Nome gruppo dei pari"
}

capture confirm variable opgdesc
if !_rc {
  label var opgdesc "Descrizione gruppo dei pari"
}

capture confirm variable opgsize
if !_rc {
  label var opgsize "Dimensione gruppo dei pari"
}


capture confirm variable ussiccod
if !_rc {
  label var ussiccod  "US SIC codice"
}

capture confirm variable ussicdes
if !_rc {
  label var ussicdes  "US SIC descrizione"
}

capture confirm variable uksic2007cod
if !_rc {
  label var uksic2007cod "UK SIC (2007) codice"
}

capture confirm variable uksic2007des
if !_rc {
  label var uksic2007des "UK SIC (2007) descrizione"
}


capture confirm variable cpycontacts_membership_different
if !_rc {
  rename cpycontacts_membership_different cpycontacts_membership_persons
  destring cpycontacts_membership_persons, replace
  label var cpycontacts_membership_persons "Numero di esponenti/manager/contatti"
}

capture confirm variable prev_cpyname
if !_rc {
  label var prev_cpyname "Ragione sociale precedente"
}

capture confirm variable prev_cpyname_date
if !_rc {
  gen temp = date(prev_cpyname_date,"DMY")
  format temp %td
  assert temp!=. if prev_cpyname_date!=""
  order temp, after(prev_cpyname_date)
  drop prev_cpyname_date
  rename temp prev_cpyname_date
  label var prev_cpyname_date "Data cambiamento ragione sociale"
}


capture confirm variable insegna
if !_rc {
  label var insegna "Insegna"
}


exit




refaccou                                                                                Bilanci ridepositato

202000                                                                                  Dati repereti il
202001                                                                                  Score negatività
202002                                                                                  Dati repereti il
202003                                                                                  Pregiudizievoli di conservatoria rilevati
202004                                                                                  Protesti rilevati
202005                                                                                  Procedure concorsuali rilevati
202099                                                                                  Dati repereti il
202199                                                                                  Numero di protesti
202100                                                                                  Denominazione del debitore
202101                                                                                  Codice fiscale del debitore
202102                                                                                  Indirizzo del debitore
202103                                                                                  Comune del debitore
202104                                                                                  Provincia del debitore
202110                                                                                  Data iscrizione
202111                                                                                  Natura titolo di credito
202112                                                                                  Motivo rifiuto pagamento
202113                                                                                  Data
202114                                                                                  Importo effetto levata
202115                                                                                  Valuta
202116                                                                                  Camera di Commercio
202299                                                                                  Numero di protesti
202200                                                                                  Denominazione del debitore
202201                                                                                  Codice fiscale del debitore
202202                                                                                  Indirizzo del debitore
202203                                                                                  Comune del debitore
202204                                                                                  Provincia del debitore
202221                                                                                  Data di nascita del debitore
202222                                                                                  Comune di nascita del debitore
202223                                                                                  Provincia di nascita del debitore
202210                                                                                  Data iscrizione
202211                                                                                  Natura titolo di credito
202212                                                                                  Motivo rifiuto pagamento
202213                                                                                  Data
202214                                                                                  Importo effetto levata
202215                                                                                  Valuta
202216                                                                                  Camera di Commercio
202399                                                                                  Numero di protesti
202300                                                                                  Denominazione del debitore
202301                                                                                  Codice fiscale del debitore
202302                                                                                  Indirizzo del debitore
202303                                                                                  Comune del debitore
202304                                                                                  Provincia del debitore
202321                                                                                  Data di nascita del debitore
202322                                                                                  Comune di nascita del debitore
202323                                                                                  Provincia di nascita del debitore
202310                                                                                  Data iscrizione
202311                                                                                  Natura titolo di credito
202312                                                                                  Motivo rifiuto pagamento
202313                                                                                  Data
202314                                                                                  Importo effetto levata
202315                                                                                  Valuta
202316                                                                                  Camera di Commercio
202408                                                                                  Categoria dell'atto
202400                                                                                  Nome debitore
202420                                                                                  Codice fiscale del debitore
202421                                                                                  Data di nascita del debitore
202422                                                                                  Comune di nascita del debitore
202402                                                                                  Atto
202404                                                                                  Fonti dell'atto
202405                                                                                  Tipo atto
202403                                                                                  Data dell'atto
202415                                                                                  Importo iscritto
202417                                                                                  Importo capitale
202416                                                                                  Valuta
202418                                                                                  Nome del creditore
202411                                                                                  Data registrazione
202414                                                                                  Conservatoria
202412                                                                                  Numero generale
202413                                                                                  Numero particulare
202508                                                                                  Categoria dell'atto
202500                                                                                  Nome debitore
202520                                                                                  Codice fiscale del debitore
202521                                                                                  Data di nascita del debitore
202522                                                                                  Comune di nascita del debitore
202502                                                                                  Atto
202504                                                                                  Fonti dell'atto
202505                                                                                  Tipo atto
202503                                                                                  Data dell'atto
202515                                                                                  Importo iscritto
202517                                                                                  Importo capitale
202516                                                                                  Valuta
202518                                                                                  Nome del creditore
202511                                                                                  Data registrazione
202514                                                                                  Conservatoria
202512                                                                                  Numero generale
202513                                                                                  Numero particulare
202608                                                                                  Categoria dell'atto
202619                                                                                  Nome debitore
202620                                                                                  Codice fiscale del debitore
202621                                                                                  Data di nascita del debitore
202622                                                                                  Comune di nascita del debitore
202602                                                                                  Atto
202604                                                                                  Fonti dell'atto
202605                                                                                  Tipo atto
202603                                                                                  Data dell'atto
202615                                                                                  Importo iscritto
202617                                                                                  Importo capitale
202616                                                                                  Valuta
202618                                                                                  Nome del creditore
202611                                                                                  Data registrazione
202614                                                                                  Conservatoria
202612                                                                                  Numero generale
202613                                                                                  Numero particulare
202700                                                                                  Tipo procedura
202701                                                                                  Data apertura
202702                                                                                  Data di chiusura
202703                                                                                  Data recova
202900                                                                                  Tipo procedura
202901                                                                                  Data apertura
202902                                                                                  Data di chiusura
202903                                                                                  Data recova
202009                                                                                  Ultima data di monitoraggio
208000                                                                                  Dati reperiti il
203000                                                                                  Ragione sociale
203001                                                                                  Indirizzo
203002                                                                                  Indirizzo PEC
203003                                                                                  Telefono
203004                                                                                  Fax
203005                                                                                  Codice fiscale
203006                                                                                  Partita IVA
203007                                                                                  SAE/RAE
203008                                                                                  Ateco 2007 codice
203009                                                                                  Ateco 2007 descrizione


203101                                                                                  Forma ammistrativa

203103                                                                                  N° iscrizione REA
203104                                                                                  Data iscrizione REA
203105                                                                                  Data di costituzione
203106                                                                                  Data termine
203107                                                                                  Scadenza primo esercizio
203108                                                                                  Scadenza esercizio successivi
203109                                                                                  Tipo atto
203110                                                                                  Notaio
203111                                                                                  Repertorio n°
203112                                                                                  Locazione notaio
203113                                                                                  Provincia notaio
203201                                                                                  Forma amministrativa
203202                                                                                  Numero minimo amministratori
203203                                                                                  Numero massimo amministratori
203204                                                                                  n° amministratori in carica
203301                                                                                  Altre forme amministrative previste
203302                                                                                  Numero min. amministratori
203303                                                                                  Numero mass. amministratori
204200                                                                                  Ragione sociale
204201                                                                                  Cognome
204203                                                                                  Nato a
204202                                                                                  Nato il
204204                                                                                  Residenza
204205                                                                                  Codice fiscale
204206                                                                                  Carica
204207                                                                                  Data nomina
204208                                                                                  Durata
204209                                                                                  Poteri
204300                                                                                  Poteri da statuto
204301                                                                                  Repartizione utile e perditi tra i soci
204302                                                                                  Poteri associati
204303                                                                                  Poteri
204304                                                                                  Altre informazioni
205000                                                                                  Data di deposito
205001                                                                                  Data dell'atto
205002                                                                                  Ragione sociale
205003                                                                                  Codice fiscale
205004                                                                                  Capitale detenuto (EUR)
205005                                                                                  % cap
205006                                                                                  Type of rights
205007                                                                                  Capitale sociale
205008                                                                                  Capitale deliberato
205009                                                                                  Capitale sottoscritto
205010                                                                                  Capitale versato
206000                                                                                  Unita locale n°
206001                                                                                  Tipo unita locale
206002                                                                                  Indirizzo
206003                                                                                  Telefono
206004                                                                                  Data apertura
206005                                                                                  Località
206006                                                                                  N° iscrizione REA


207001                                                                                  Attività svolta nella sede legale
207002                                                                                  Dato inizio attivita
207003                                                                                  Status
208101                                                                                  Data
208102                                                                                  Variazione
208111                                                                                  Data
208112                                                                                  Variazione
208121                                                                                  Data
208123                                                                                  Tipo di atto
208122                                                                                  Atto
208131                                                                                  Data
208133                                                                                  Tipo di atto
208132                                                                                  Atto
208141                                                                                  Data
208142                                                                                  Variazione







marketcap                                                                               Capitalizzazione corrente







opgname                                                                                 Nome gruppo dei pari
opgdesc                                                                                 Descrizione gruppo dei pari
opgsize                                                                                 Dimensione gruppo dei pari
s_innod_overview                                                                        Overview completa
s_innod_history                                                                         Storico


s_innod_size_estimate                                                                   Stima dimensione
s_innod_strategy_organization_and_policy                                                Strategia, organizzazione e policy
s_innod_strategic_alliances                                                             Alleanze strategiche
s_innod_membership_of_a_network                                                         Socio di un network
s_innod_main_brand_names                                                                Principali marchi
s_innod_country_name                                                                    Principale Stato
s_innod_main_foreign_countries_or_regions                                               Principali Stati o regioni straniere
s_innod_main_production_sites                                                           Principali siti di produzione
s_innod_main_distribution_sites                                                         Principali siti di distribuzione
s_innod_main_sales_representation_sites                                                 Principali siti di rappresentanza
s_innod_main_customers                                                                  Clienti principali
artisanat_str                                                                           Società artigiana
isastartup_str                                                                          Start-up innovativa





outshares                                                                               Numero di azioni in emissione
dateshares                                                                              Data di emissione delle azioni
sd_currency                                                                             Valuta
marketcp                                                                                Attuale capitalizzazione di mercato

type_share                                                                              Tipo di azione
sd_isin                                                                                 ISIN number
sd_sedol                                                                                Numero SEDOL
sd_ticker                                                                               Ticker symbol
sdparvl                                                                                 Valore nominale
mainexchange                                                                            Mercato principale
sd_stkexch                                                                              Mercati su cui è quotata l'azione
sd_stkidx                                                                               Stock Index
sd_stkidxwght                                                                           Valore Stock Index
ipo_date                                                                                Data IPO
sd_year                                                                                 Anni per stock data
sd_listed                                                                               Quotata
sd_delisted_date                                                                        Data delisting
sd_delisted_note                                                                        Nota delisting
mpricdate                                                                               Prezzo di mercato - anno
mpricjan                                                                                Prezzo di mercato - Gennaio
mpricfeb                                                                                Prezzo di mercato - Febbraio
mpricmar                                                                                Prezzo di mercato Marzo
mpricapr                                                                                Prezzo di mercato - Aprile
mpricmay                                                                                Prezzo di mercato - Maggio
mpricjun                                                                                Prezzo di mercato - Giugno
mpricjul                                                                                Prezzo di mercato - Luglio
mpricaug                                                                                Prezzo di mercato - Agosto
mpricsep                                                                                Prezzo di mercato - Settembre
mpricoct                                                                                Prezzo di mercato - Ottobre
mpricnov                                                                                Prezzo di mercato - Novembre
mpricdec                                                                                Prezzo di mercato - Dicembre
mricdat                                                                                 Data di riferimento del prezzo di mercato corrente
mpriccur                                                                                Prezzo di mercato - corrente
mprichig                                                                                Prezzo più elevato dall'izio dell'anno
mpriclow                                                                                Prezzo più basso dall'inizio dell'anno
mpri_high_52week                                                                        Prezzo di mercato - 52 settimane - alto
mpri_low_52week                                                                         Prezzo di mercato - 52 settimane - basso
mricdat                                                                                 Data di riferimento del prezzo di mercato corrente
prtr_last                                                                               Andamento del prezzo - ultima settimana
prtr_4week                                                                              Andamento del prezzo - ultimo mese
prtr_13week                                                                             Andamento del prezzo - ultimi 13 mesi
prtr_quart                                                                              Andamento del prezzo - ultimi quattro mesi
prtr_prvq                                                                               Andamento del prezzo
prtr_yr2da                                                                              Andamento del prezzo - dall'inizio dell'anno
prtr_52week                                                                             Andamento del prezzo
weekly_last_date                                                                        Date of current beta calculation
brefind1                                                                                Reference indice 1
bind1b1m                                                                                Reference indice 1 - Beta - 1 mese
bind1b3m                                                                                Reference indice 1 - Beta - 3 mesi
bind1b1y                                                                                Reference indice 1 - Beta - 1 anno
bind1b3y                                                                                Ref. index 1 - Beta - 3 years
bind1b5y                                                                                Ref. index 1 - Beta - 5 years
bind1c1m                                                                                Reference indice 1 - Coefficiente di Correlazione - 1 mese
bind1c3m                                                                                Reference indice 1 - Coefficiente di Correlazione - 3 mesi
bind1c1y                                                                                Reference indice 1 - Coefficiente di Correlazione - 1 anno
bind1c3y                                                                                Ref. index 1 - Correlation coefficient - 3 years
bind1c5y                                                                                Ref. index 1 - Correlation coefficient - 5 years
brefind2                                                                                Reference indice 2
bind2b1m                                                                                Reference indice 2 - Beta - 1 mese
bind2b3m                                                                                Reference indice 2 - Beta - 3 mesi
bind2b1y                                                                                Reference indice 2 - Beta - 1 anno
bind2b3y                                                                                Ref. index 2 - Beta - 3 years
bind2b5y                                                                                Ref. index 2 - Beta - 5 years
bind2c1m                                                                                Reference indice 2 - Coefficiente di Correlazione - 1 mese
bind2c3m                                                                                Reference indice 2 - Coefficiente di Correlazione - 3 mesi
bind2c1y                                                                                Reference indice 2 - Coefficiente di Correlazione - 1 anno
bind2c3y                                                                                Ref. index 2 - Correlation coefficient - 3 years
bind2c5y                                                                                Ref. index 2 - Correlation coefficient - 5 years
brefind3                                                                                Reference indice 3
bind3b1m                                                                                Reference indice 3 - Beta - 1 mese
bind3b3m                                                                                Reference indice 3 - Beta - 3 mesi
bind3b1y                                                                                Reference indice 3 - Beta - 1 anno
bind3b3y                                                                                Ref. index 3 - Beta - 3 years
bind3b5y                                                                                Ref. index 3 - Beta - 5 years
bind3c1m                                                                                Reference indice 3 - Coefficiente di Correlazione - 1 mese
bind3c3m                                                                                Reference indice 3 - Coefficiente di Correlazione - 3 mesi
bind3c1y                                                                                Reference indice 3 - Coefficiente di Correlazione - 1 anno
bind3c3y                                                                                Ref. index 3 - Correlation coefficient - 3 years
bind3c5y                                                                                Ref. index 3 - Correlation coefficient - 5 years
brefind4                                                                                Reference indice 4
bind4b1m                                                                                Reference indice 4 - Beta - 1 mese
bind4b3m                                                                                Reference indice 4 - Beta - 3 mesi
bind4b1y                                                                                Reference indice 4 - Beta - 1 anno
bind4b3y                                                                                Ref. index 4 - Beta - 3 years
bind4b5y                                                                                Ref. index 4 - Beta - 5 years
bind4c1m                                                                                Reference indice 4 - Coefficiente di Correlazione - 1 mese
bind4c3m                                                                                Reference indice 4 - Coefficiente di Correlazione - 3 mesi
bind4c1y                                                                                Reference indice 4 - Coefficiente di Correlazione - 1 anno
bind4c3y                                                                                Ref. index 4 - Correlation coefficient - 3 years
bind4c5y                                                                                Ref. index 4 - Correlation coefficient - 5 years
brefind5                                                                                Reference indice 5
bind5b1m                                                                                Reference indice 5 - Beta - 1 mese
bind5b3m                                                                                Reference indice 5 - Beta - 3 mesi
bind5b1y                                                                                Reference indice 5 - Beta - 1 anno
bind5b3y                                                                                Ref. index 5 - Beta - 3 years
bind5b5y                                                                                Ref. index 5 - Beta - 5 years
bind5c1m                                                                                Reference indice 5 - Coefficiente di Correlazione - 1 mese
bind5c3m                                                                                Reference indice 5 - Coefficiente di Correlazione - 3 mesi
bind5c1y                                                                                Reference indice 5 - Coefficiente di Correlazione - 1 anno
bind5c3y                                                                                Ref. index 5 - Correlation coefficient - 3 years
bind5c5y                                                                                Ref. index 5 - Correlation coefficient - 5 years
weekly_last_date                                                                        Date of Equity price volatilty
epv360dc                                                                                Equity Price Volatility - 360 giorni
epv100dc                                                                                Equity Price Volatility - 100 giorni
epv50dc                                                                                 Equity Price Volatility - 50 giorni
epv30dc                                                                                 Equity Price Volatility - 30 giorni
epv10dc                                                                                 Equity Price Volatility - 10 giorni
marpricdat                                                                              Data di emissione delle azioni
outshares                                                                               Numero di azioni in emissione


marketusd                                                                               Capitalizzazione di mercato corrente
date_last12mths                                                                         Dati EPS sugli ultimi 12 mesi
cstk_eps                                                                                Earnings per share
cstk_book_value                                                                         Valore contabile per azione
astk_stock_split                                                                        Stock split / Ratio dividendo
astk_price_year                                                                         Prezzo di mercato - fine anno
astk_price_high                                                                         Prezzo di mercato - più basso
astk_price_low                                                                          Prezzo di mercato - più alto
astk_shares_out                                                                         Azioni in emissione (migl)
astk_par_value                                                                          Valore nominale
astk_market_cap                                                                         Capitalizzazione di mercato (mil)
share_common                                                                            Azionista -Comune
astk_eps                                                                                Earnings per share
astk_cashflowshare                                                                      Cash flow per share
astk_capital_exp                                                                        Capital expenditure per share
astk_sales                                                                              Reddito Operativo/ Fatturato per azione
astk_op_profit                                                                          Utileoperativo per azione
astk_div_share                                                                          Dividendi per azioni
astk_book_value                                                                         Valore d'acquisto dell'azione
astk_tang_book_value                                                                    Tangible Book Value per share
astk_lg_term_lia                                                                        Long Term Liabilities per share
astk_working_cap                                                                        Working Capital per share
marpricdat                                                                              Valutazione  corrente
cstk_pe_ratio_curr                                                                      Prezzo dell'azione/ Ricavi - corrente
cstk_pe_ratio_high                                                                      Prezzo dell'azione/ Ricavi - più alto
cstk_pe_ratio_low                                                                       Prezzo dell'azione/ Ricavi - più basso
cstk_ey_ratio_curr                                                                      Earnings yield (%) - current
cstk_ey_ratio_high                                                                      Earnings yield (%) - current high
cstk_ey_ratio_low                                                                       Earnings yield (%) - current low
cstk_price_cash_flow_curr                                                               Prezzo/flussi di cassa - corrente
cstk_div_current                                                                        Redditività del dividendo - corrente
cstk_div_payout                                                                         Dividendo pagato per azione - corrente
cstk_price_book_value                                                                   Prezzo/valore d'acquisto - corrente
astk_pe_ratio_close                                                                     Prezzo dell'azione/ Ricavi - chiusura
astk_pe_ratio_high                                                                      Prezzo dell'azione/ Ricavi - più alto
astk_pe_ratio_low                                                                       Prezzo dell'azione/ Ricavi - più basso
astk_pe_ratio_avg                                                                       Prezzo dell'azione/ Ricavi - media
astk_ey_close                                                                           Earnings yield (%) - close
astk_ey_high                                                                            Earnings yield (%) - high
astk_ey_low                                                                             Earnings yield (%) - low
astk_ey_avg                                                                             Earnings yield (%) - average high-low
astk_price_cash_flow                                                                    Prezzo/flussi di cassa - chiusura
astk_div_close                                                                          Redditività del dividendo - chiusura
astk_div_high                                                                           Redditività del dividendo - più alta
astk_div_low                                                                            Redditività del dividendo - più bassa
astk_div_avg                                                                            Redditività del dividendo - media
astk_div_payout                                                                         Dividendo pagato per azione
astk_pbv_close                                                                          Prezzo/Book Value ratio - chiusura
astk_pbv_high                                                                           Prezzo/Book Value ratio - più alto
astk_pbv_low                                                                            Prezzo/Book Value ratio - più basso
astk_pbv_avg                                                                            Prezzo/Book Value ratio - media
astk_mark_cap                                                                           Capitalizzazione di mercato/Fondo azionisti
mphijan                                                                                 Prezzo più alto - Gennaio
mphifeb                                                                                 Prezzo più alto - Febbraio
mphimar                                                                                 Prezzo più alto - Marzo
mphiapr                                                                                 Prezzo più alto - Aprile
mphimay                                                                                 Prezzo più alto - Maggio
mphijun                                                                                 Prezzo più alto - Giugno
mphijul                                                                                 Prezzo più alto - Luglio
mphiaug                                                                                 Prezzo più alto - Agosto
mphisep                                                                                 Prezzo più alto - Settembre
mphioct                                                                                 Prezzo più alto - Ottobre
mphinov                                                                                 Prezzo più alto - Novembre
mphidec                                                                                 Prezzo più alto - Dicembre
mplojan                                                                                 Prezzo più basso - Gennaio
mplofeb                                                                                 Prezzo più basso - Febbraio
mplomar                                                                                 Prezzo più basso - Marzo
mploapr                                                                                 Prezzo più basso - Aprile
mplomay                                                                                 Prezzo più basso - Maggio
mplojun                                                                                 Prezzo più basso - Giugno
mplojul                                                                                 Prezzo più basso - Luglio
mploaug                                                                                 Prezzo più basso - Agosto
mplosep                                                                                 Prezzo più basso - Settembre
mplooct                                                                                 Prezzo più basso - Ottobre
mplonov                                                                                 Prezzo più basso - Novembre
mplodec                                                                                 Prezzo più basso - Dicembre
mpcljan                                                                                 Prezzo di chiusura mensile - Gennaio
mpclfeb                                                                                 Prezzo di chiusura mensile - Febbraio
mpclmar                                                                                 Prezzo di chiusura mensile - Marzo
mpclapr                                                                                 Prezzo di chiusura mensile - Aprile
mpclmay                                                                                 Prezzo di chiusura mensile - Maggio
mpcljun                                                                                 Prezzo di chiusura mensile - Giugno
mpcljul                                                                                 Prezzo di chiusura mensile - Luglio
mpclaug                                                                                 Prezzo di chiusura mensile - Agosto
mpclsep                                                                                 Prezzo di chiusura mensile - Settembre
mpcloct                                                                                 Prezzo di chiusura mensile - Ottobre
mpclnov                                                                                 Prezzo di chiusura mensile - Novembre
mpcldec                                                                                 Prezzo di chiusura mensile - Dicembre
mptrjan                                                                                 Volume di negoziazioni per mese (azioni) - Gennaio
mptrfeb                                                                                 Volume di negoziazioni per mese (azioni) - Febbraio
mptrmar                                                                                 Volume di negoziazioni per mese (azioni) - Marzo
mptrapr                                                                                 Volume di negoziazioni per mese (azioni) - Aprile
mptrmay                                                                                 Volume di negoziazioni per mese (azioni) - Maggio
mptrjun                                                                                 Volume di negoziazioni per mese (azioni) - Giugno
mptrjul                                                                                 Volume di negoziazioni per mese (azioni) - Luglio
mptraug                                                                                 Volume di negoziazioni per mese (azioni) - Agosto
mptrsep                                                                                 Volume di negoziazioni per mese (azioni) - Settembre
mptroct                                                                                 Volume di negoziazioni per mese (azioni) - Ottobre
mptrnov                                                                                 Volume di negoziazioni per mese (azioni) - Novembre
mptrdec                                                                                 Volume di negoziazioni per mese (azioni) - Dicembre
mpdvjan                                                                                 Volume medio giornaliero (azioni) - Gennaio
mpdvfeb                                                                                 Volume medio giornaliero (azioni) - Febbraio
mpdvmar                                                                                 Volume medio giornaliero (azioni) - Marzo
mpdvapr                                                                                 Volume medio giornaliero (azioni) - Aprile
mpdvmay                                                                                 Volume medio giornaliero (azioni) - Maggio
mpdvjun                                                                                 Volume medio giornaliero (azioni) - Giugno
mpdvjul                                                                                 Volume medio giornaliero (azioni) - Luglio
mpdvaug                                                                                 Volume medio giornaliero (azioni) - Agosto
mpdvsep                                                                                 Volume medio giornaliero (azioni) - Settembre
mpdvoct                                                                                 Mensile - mediamente volume giornaliero - Ottobre
mpdvnov                                                                                 Volume medio giornaliero (azioni) - Novembre
mpdvdec                                                                                 Volume medio giornaliero (azioni) - Dicembre
mpndjan                                                                                 Numero di giorni di negoziazione - Gennaio
mpndfeb                                                                                 Numero di giorni di negoziazione - Febbraio
mpndmar                                                                                 Numero di giorni di negoziazione - Marzo
mpndapr                                                                                 Numero di giorni di negoziazione - Aprile
mpndmay                                                                                 Numero di giorni di negoziazione - Maggio
mpndjun                                                                                 Numero di giorni di negoziazione - Giugno
mpndjul                                                                                 Mensile - Numero di giorni - Luglio
mpndaug                                                                                 Numero di giorni di negoziazione - Agosto
mpndsep                                                                                 Numero di giorni di negoziazione - Settembre
mpndoct                                                                                 Numero di giorni di negoziazione - Ottobre
mpndnov                                                                                 Numero di giorni di negoziazione - Novembre
mpnddec                                                                                 Numero di giorni di negoziazione - Dicembre
mposjan                                                                                 Azioni in emissione - Gennaio
mposfeb                                                                                 Azioni in emissione - Febbraio
mposmar                                                                                 Azioni in emissione - Marzo
mposapr                                                                                 Azioni in emissione - Aprile
mposmay                                                                                 Azioni in emissione - Maggio
mposjun                                                                                 Azioni in emissione - Giugno
mposjul                                                                                 Mensile - Azioni in circolazione - Luglio
mposaug                                                                                 Azioni in emissione - Agosto
mpossep                                                                                 Azioni in emissione - Settembre
mposoct                                                                                 Azioni in emissione - Ottobre
mposnov                                                                                 Azioni in emissione - Novembre
mposdec                                                                                 Azioni in emissione - Dicembre
mpmcjan                                                                                 Capitalizzazione di mercato - Gennaio
mpmcfeb                                                                                 Capitalizzazione di mercato - Febbraio
mpmcmar                                                                                 Capitalizzazione di mercato - Marzo
mpmcapr                                                                                 Capitalizzazione di mercato - Aprile
mpmcmay                                                                                 Capitalizzazione di mercato - Maggio
mpmcjun                                                                                 Capitalizzazione di mercato - Giugno
mpmcjul                                                                                 Capitalizzazione di mercato - Luglio
mpmcaug                                                                                 Capitalizzazione di mercato - Agosto
mpmcsep                                                                                 Capitalizzazione di mercato - Settembre
mpmcoct                                                                                 Capitalizzazione di mercato - Ottobre
mpmcnov                                                                                 Capitalizzazione di mercato - Novembre
mpmcdec                                                                                 Capitalizzazione di mercato - Dicembre
weekly_date                                                                             Settimanale - Data
week_high_price                                                                         Prezzo più alto settimanae
week_low_price                                                                          Prezzo più basso settimanale
week_closing_price                                                                      Prezzo di chusura settimanale
week_210_movavrg                                                                        Settimanale - Media ultimi 210 giorni
week_trading_vol                                                                        Volume di negoziazione settimanale
week_avg_day_vol                                                                        Media giornaliera di negoziazione per settimana
week_no_days_traded                                                                     Settimanale - Numero di giorni
week_shar_outst                                                                         Azioni in emissione (migl.) - per settimana
week_markt_cap                                                                          Capitalizzazione di mercato (migl.) settimanale
brefind1                                                                                Reference indice 1
wbind1b1m                                                                               Reference indice 1 - Beta - 1 mese
wbind1b3m                                                                               Reference indice 1 - Beta - 3 mesi
wbind1b1y                                                                               Reference indice 1 - Beta - 1 anno
wbind1b3y                                                                               Reference indice 1 - Beta - 3 anni
wbind1b5y                                                                               Reference indice 1 - Beta - 5 anni
wbind1c1m                                                                               Reference indice 1 - Coefficiente di Correlazione - 1 mese
wbind1c3m                                                                               Reference indice 1 - Coefficiente di Correlazione - 3 mesi
wbind1c1y                                                                               Reference indice 1 - Coefficiente di Correlazione - 1 anno
wbind1c3y                                                                               Reference indice 1 - Coefficiente di Correlazione - 3 anni
wbind1c5y                                                                               Reference indice 1 - Coefficiente di Correlazione - 5 anni
brefind2                                                                                Reference indice 2
wbind2b1m                                                                               Reference indice 2 - Beta - 1 mese
wbind2b3m                                                                               Reference indice 2 - Beta - 3 mesi
wbind2b1y                                                                               Reference indice 2 - Beta - 1 anno
wbind2b3y                                                                               Reference indice 2 - Beta - 3 anni
wbind2b5y                                                                               Reference indice 2 - Beta - 5 anni
wbind2c1m                                                                               Reference indice 2 - Coefficiente di Correlazione - 1 mese
wbind2c3m                                                                               Reference indice 2 - Coefficiente di Correlazione - 3 mesi
wbind2c1y                                                                               Reference indice 2 - Coefficiente di Correlazione - 1 anno
wbind2c3y                                                                               Reference indice 2 - Coefficiente di Correlazione - 3 anni
wbind2c5y                                                                               Reference indice 2 - Coefficiente di Correlazione - 5 anni
brefind3                                                                                Reference indice 3
wbind3b1m                                                                               Reference indice 3 - Beta - 1 mese
wbind3b3m                                                                               Reference indice 3 - Beta - 3 mesi
wbind3b1y                                                                               Reference indice 3 - Beta - 1 anno
wbind3b3y                                                                               Reference indice 3 - Beta - 3 anni
wbind3b5y                                                                               Reference indice 3 - Beta - 5 anni
wbind3c1m                                                                               Reference indice 3 - Coefficiente di Correlazione - 1 mese
wbind3c3m                                                                               Reference indice 3 - Coefficiente di Correlazione - 3 mesi
wbind3c1y                                                                               Reference indice 3 - Coefficiente di Correlazione - 1 anno
wbind3c3y                                                                               Reference indice 3 - Coefficiente di Correlazione - 3 anni
wbind3c5y                                                                               Reference indice 3 - Coefficiente di Correlazione - 5 anni
brefind4                                                                                Reference indice 4
wbind4b1m                                                                               Reference indice 4 - Beta - 1 mese
wbind4b3m                                                                               Reference indice 4 - Beta - 3 mesi
wbind4b1y                                                                               Reference indice 4 - Beta - 1 anno
wbind4b3y                                                                               Reference indice 4 - Beta - 3 anni
wbind4b5y                                                                               Reference indice 4 - Beta - 5 anni
wbind4c1m                                                                               Reference indice 4 - Coefficiente di Correlazione - 1 mese
wbind4c3m                                                                               Reference indice 4 - Coefficiente di Correlazione - 3 mesi
wbind4c1y                                                                               Reference indice 4 - Coefficiente di Correlazione - 1 anno
wbind4c3y                                                                               Reference indice 4 - Coefficiente di Correlazione - 3 anni
wbind4c5y                                                                               Reference indice 4 - Coefficiente di Correlazione - 5 anni
brefind5                                                                                Reference indice 5
wbind5b1m                                                                               Reference indice 5 - Beta - 1 mese
wbind5b3m                                                                               Reference indice 5 - Beta - 3 mesi
wbind5b1y                                                                               Reference indice 5 - Beta - 1 anno
wbind5b3y                                                                               Reference indice 5 - Beta - 3 anni
wbind5b5y                                                                               Reference indice 5 - Beta - 5 anni
wbind5c1m                                                                               Reference indice 5 - Coefficiente di Correlazione - 1 mese
wbind5c3m                                                                               Reference indice 5 - Coefficiente di Correlazione - 3 mesi
wbind5c1y                                                                               Reference indice 5 - Coefficiente di Correlazione - 1 anno
wbind5c3y                                                                               Reference indice 5 - Coefficiente di Correlazione - 3 anni
wbind5c5y                                                                               Reference indice 5 - Coefficiente di Correlazione - 5 anni
daily1                                                                                  1
daily2                                                                                  2
daily3                                                                                  3
daily4                                                                                  4
daily5                                                                                  5
daily6                                                                                  6
daily7                                                                                  7
daily8                                                                                  8
daily9                                                                                  9
daily10                                                                                 10
daily11                                                                                 11
daily12                                                                                 12
daily13                                                                                 13
daily14                                                                                 14
daily15                                                                                 15
daily16                                                                                 16
daily17                                                                                 17
daily18                                                                                 18
daily19                                                                                 19
daily20                                                                                 20
daily21                                                                                 21
daily22                                                                                 22
daily23                                                                                 23
daily24                                                                                 24
daily25                                                                                 25
daily26                                                                                 26
daily27                                                                                 27
daily28                                                                                 28
daily29                                                                                 29
daily30                                                                                 30
daily31                                                                                 31

cpycontacts_header_fullnameoriginallanguagepreferred                                    Nome completo
cpycontacts_membership_functionoriginaloriginallanguagepreferred                        Carica originale
cpycontacts_header_baretitle                                                            Titolo (Dott., Dott.ssa, Ing.)
cpycontacts_header_prefixsalutation_translated                                          Formula iniziale
cpycontacts_header_firstnameoriginallanguagepreferred                                   Nome
cpycontacts_header_middlenameoriginallanguagepreferred                                  Secondo nome
cpycontacts_header_lastnameoriginallanguagepreferred                                    Cognome
cpycontacts_header_suffix                                                               Suffisso
cpycontacts_header_type                                                                 Persona fisica o società
cpycontacts_membership_boardmnemonic                                                    Tipologia di posizione
cpycontacts_membership_departmentfromhiercodefall2009                                   Board, commissioni o dipartimenti
cpycontacts_membership_levelfromhiercodefall2009                                        Livello di responsabilità
cpycontacts_membership_isashareholderformatted                                          Anche un azionista
membership_rawsourcedatefuntionformatted                                                Confirmation date(s)
cpycontacts_membership_lastseendate                                                     Date(s) last received from IP(s)
cpycontacts_membership_rawsourcefunctionformatted                                       Information source(s)
cpycontacts_membership_source2lettersabbrev                                             Information Provider(s)
adtitle                                                                                 Revisori/Sindaci Funzione
adname                                                                                  Revisori/Sindaci Cognome
adsur                                                                                   Revisori/Sindaci Nome
adcit                                                                                   Revisori/Sindaci Località
adprov                                                                                  Revisori/Sindaci Provincia
adreg                                                                                   Revisori/Sindaci Regione
adbdate                                                                                 Revisori/Sindaci Data di Nascita
adbcit                                                                                  Revisori/Sindaci Luogo di Nascita
adbprov                                                                                 Revisori/Sindaci Provincia di Nascita
adbreg                                                                                  Revisori/Sindaci Regione di Nascita
adbfrom                                                                                 Revisori/Sindaci Data della nomina
adbdura                                                                                 Revisori/Sindaci Durata
adfiscal                                                                                Revisori/Sindaci Codice Fiscale
