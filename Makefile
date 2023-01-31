PORT ?= 8080
install:
		composer install
start:
	  php -S localhost:$(PORT) -t public
lint:
		composer exec --verbose phpcs -- --standard=PSR12 src public
dump:
		composer dump-autoload
test:
		composer exec --verbose phpunit tests

