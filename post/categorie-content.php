
<?php
/**
 *  Theme Name: Add Categories
 * 
 */

 //retrieve list of categories
 $categories = get_categories(array(
     'orderby'=>'name',
     'parent'=>0
 ));

foreach($categories as $category){
    printf('<div id="%1$s"> </div>',
    esc_url(get_category_link($category->term_id)),
    esc_html($category->name));
    }
?>


<?php if($wp_query->have_posts()):?>

            
            <div id="<?php the_ID(); ?>" <?php post_class(); ?>>

            <?php while ($wp_query->have_posts()) : $wp_query->the_post(); ?>


            <article>
              <h4><a href="<?php the_permalink();?>"><?php echo the_title();?></a></h4>
              <p><?php echo the_title();?></p>
            </article>
            
        
            <?php endwhile; ?>

            </div>
            <?php endif; ?>