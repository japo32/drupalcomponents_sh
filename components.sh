#!/bin/bash

# make sure that the sites/all/modules folder exists
if [ -d "sites/all/modules" ]; then
    echo "download and enable modules"

    #disable some annoying modules
    drush dis toolbar overlay

    #download some goodies. remove the -y to avoid overwrites
    drush dl admin_menu ctools link date imce libraries mollom nice_menus nivo_slider pathauto sitemap token transliteration globalredirect page_title googleanalytics ckeditor jquery_update lightbox2 views webform xmlsitemap zen -y

    #enable the modules
    drush en admin_menu admin_menu_toolbar ctools link date date_popup date_api imce libraries mollom nice_menus pathauto site_map token transliteration globalredirect page_title google_analytics ckeditor jquery_update lightbox2 views views_ui webform xmlsitemap xmlsitemap_menu zen -y


    echo "make sure to configure the libraries and folder settings"

    exit
fi
