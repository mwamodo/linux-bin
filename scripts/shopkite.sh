# clean created tenant database and files
shopkite:clean ()
{
    mysql -u root -e "DROP DATABASE kitebebold"
    mysql -u root -e "DROP DATABASE kitedenri"

    rm -rf $HOME/Sites/shopkite/storage/kite*
}

# clean and migrate to repopulate things
shopkite:restart ()
{
    shopkite:clean
    mfs
}
