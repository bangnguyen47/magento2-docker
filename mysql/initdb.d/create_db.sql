# Create Databases
CREATE DATABASE IF NOT EXISTS `magento2`;

# Create user and grant rights
FLUSH PRIVILEGES;
CREATE USER 'magento2'@'%' IDENTIFIED BY 'magento2';
GRANT ALL ON magento2.* TO 'magento2'@'%';