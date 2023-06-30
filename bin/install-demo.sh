#!/usr/bin/env bash

#
# Redirect all traffic to the demo is resyncing
#
mv "public/.htaccess" "public/.htaccess-backup"
cp "public/.htaccess-updating" "public/.htaccess"

function restore_htaccess () {
	rm "public/.htaccess"
	mv "public/.htaccess-backup" "public/.htaccess"
}

#
# Check out the latest build of the recipe.
#
git pull origin production
composer update --no-interaction --no-dev --prefer-dist

if [ $? -eq 0 ]; then
	# Drop the current database, run dev/build to repopulate the database.
	TABLES=$(mysql demo -e 'show tables' | awk '{ print $1}' | grep -v '^Tables' )

	for t in $TABLES
	do
		echo "Deleting $t table from database..."
		mysql demo -e "DROP TABLE $t"
	done
        rm public/assets/* -rf
        rm public/assets/.* -rf
	# php sspak.sspak load demo.sspak .

        vendor/bin/sake dev/build flush=all

	restore_htaccess
else
	# restore htaccess
	restore_htaccess
fi
