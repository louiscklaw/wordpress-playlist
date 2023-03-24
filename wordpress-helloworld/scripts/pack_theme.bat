

set DIST=dist


mkdir %DIST%
rmdir %DIST%/ddmseoul_theme.zip

pushd src\wp-content\themes\twentytwentyone-ddmseoul
  rmdir node_modules

  @REM zip -r %DIST%/ddmseoul_theme.zip .
  powershell Compress-Archive . D:\_workspace\carousell-comission-playlist\amicho\ddmseoul\demo\wordpress-clone\dist\publish.zip
popd
