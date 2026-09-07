CREATE USER IF NOT EXISTS 'ecommerceapp'@'%' IDENTIFIED WITH mysql_native_password BY 'ecommerceapp';

GRANT ALL PRIVILEGES ON `full-stack-ecommerce`.* TO 'ecommerceapp'@'%';

FLUSH PRIVILEGES;