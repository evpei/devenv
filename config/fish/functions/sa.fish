function sa --wraps='sh vendor/bin/sail artisan' --description 'alias sa=sh vendor/bin/sail artisan'
  sh vendor/bin/sail artisan $argv
        
end
