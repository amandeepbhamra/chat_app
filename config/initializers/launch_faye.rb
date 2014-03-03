Thread.new do
    if defined?(Rails::Server)
        system('bundle exec rackup private_pub.ru -s thin -E production')  
    end
end
