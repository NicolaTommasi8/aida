*** ESEMPIO DI CODICE DA INSERIRE NEL DO-FILE
**PER IMPORTARE DATI SCARICATI DA AIDA BLU-RAY

** le parti comprese tra <...> sono quelle che dovete modificare


import delimited using "<percorso><nomefile.ext>", delimiter("<delimitatore>") encoding(UTF-8) bindquote(nobind) clear
carryforward v1, replace
rename v1 rag_soc

rename v2 anno
replace anno=substr(anno,1,4)
destring anno, replace

foreach V of varlist v* {
  local varlab = `V' in 1
  local varlab = lower(strtoname("`varlab'"))
  di "`V' --> `varlab'"
  capture rename `V' `varlab'
  if _rc!=0 {
    inspect `V'
    local u1 = r(N_unique)
    inspect `varlab'
    local u2 = r(N_unique)
    if `u1' <= `u2' drop `V'
    else {
      drop `varlab'
      rename `V' `varlab'
    }
  }
}

rename _* vc_*
drop if anno ==.
compress

qui include labs_aneo.do


