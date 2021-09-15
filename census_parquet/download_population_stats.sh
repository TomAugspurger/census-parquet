lftp -c 'mirror --parallel=100 https://www2.census.gov/programs-surveys/decennial/2020/data/01-Redistricting_File--PL_94-171/ ;exit'
mkdir -p population_stats
find 01-Redistricting_File--PL_94-171 -name '*.pl.zip' -exec mv {} ./population_stats \;
find ./population_stats -name '*.pl.zip' -execdir unzip {} \;

cd population_stats
wget https://www2.census.gov/programs-surveys/decennial/rdo/about/2020-census-program/Phase3/SupportMaterials/2020_PLSummaryFile_FieldNames.xlsx
cd -