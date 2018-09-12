ARG PHP_IMAGE_TAG

FROM wodby/drupal-php:${PHP_IMAGE_TAG}

# Add composer dependencies
RUN composer global require drupal/console acquia/blt

# Add blt as global
RUN export PATH=$COMPOSER_HOME/.composer/vendor/bin:$PATH
RUN ln -s $COMPOSER_HOME/vendor/bin/blt /usr/local/bin/blt
