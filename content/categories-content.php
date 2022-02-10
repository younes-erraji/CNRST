<?php
/**
 *  Theme Name: Add Categories
**/

//retrieve list of categories
$categories = get_categories(array(
    'parent'=>1
));

foreach($categories as $category){
    printf('<div id="%1$s"><h3><strong>%1$s</strong></h3><article><h4><a>%2$s</a><h4><p>%2$s</p></article></div>',
    esc_url(get_category_link($category->term_id)),
    esc_html($category->name));
    }
?>