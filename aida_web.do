*** ESEMPIO DI CODICE DA INSERIRE NEL DO-FILE
**PER IMPORTARE DATI SCARICATI DA AIDA WEB

** le parti comprese tra <...> sono quelle che dovete modificare

** se avete esportato assieme bilanci consolidati e non consolidati dovete
** ricordarvi d iesportare ANCHE la variabile codicons_str

clear all
set more off
capture log close

import excel using "<percorso><nomefile.ext>", sheet("Risultati") cellrange(B1) clear
qui ds

foreach V of varlist `r(varlist)' {
  local namevar ""
  local descvar = `V' in 1
  local YY = substr("`descvar'",-4,.)
  local YY = real("`YY'")
  if "`YY'" == "." local YY = ""
  else local YY = "__`YY'"

  local namevar = `V' in 2
  local namevar = lower("`namevar'")
  if "`YY'"==""  local namevar: permname `namevar', length(32)

  if "`YY'"!=""  rename `V' vc_`namevar'`YY'
  else rename `V' `namevar'
  local YY = ""

}

qui ds *__????
local reslonglist = " "
foreach V of varlist `r(varlist)' {
  local tok = substr("`V'",-4,.)
  local tok : subinstr local V "__`tok'" "__@"

   local flag : list tok in reslonglist
   if `flag' == 0  local reslonglist = "`reslonglist' `tok'"
}

drop in 1/2
rename ragsoc rag_soc
duplicates report numcciaa [codicons_str] /*codicons_str (senza parentesi quadre) va indicato solo se avete esportato
                                          bilanci consolidati e non consolidati */

reshape long `reslonglist', i(numcciaa [codicons_str]) j(anno) /*codicons_str (senza parentesi quadre) va indicato solo se avete esportato
                                                                 bilanci consolidati e non consolidati */
destring *__, replace
rename *__ *
sort rag_soc anno

qui include labs_aneo.do
