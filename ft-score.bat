SET COMP="Australia Forbes 2012"

fs-filter --file=%COMP%
fs-route --file=%COMP%
fs-arrival --file=%COMP%
fs-effort --file=%COMP%
fs-score --file=%COMP%

extract-input --file=%COMP% --give-fraction=0.005 --haversines
task-length --file=%COMP%
cross-zone --file=%COMP%
tag-zone --file=%COMP%
unpack-track --file=%COMP%
peg-frame --file=%COMP%
align-time --file=%COMP%
discard-further --file=%COMP%
mask-track --file=%COMP%
land-out --file=%COMP%
gap-point --file=%COMP%

#comp-serve %COMP%
