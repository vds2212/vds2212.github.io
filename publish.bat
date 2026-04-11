@pushd %~dp0
for /F %%a in ('date /T') do set date=%%a
git add .
git commit -m "Update of the %date%"
git push
@popd

