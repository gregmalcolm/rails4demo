namespace('db') do
  task('before_create') do
    if adapter == "postgresql"
      system("psql -c \"create role rails4 with createdb login;\" template1")
    end
    true
  end
end
