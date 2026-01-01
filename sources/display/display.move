module happynewyear::display;


use std::string::String;

use sui::{
    display::{Self, Display},
    package::Publisher,
    };

use happynewyear::{
    admin_cap::AdminCap,
    message::HappyNewYearMessage,
    project_meta::Self,
    };



// ==================== create Display  ======================//

public(package) fun create(ctx: &mut TxContext, pub: &Publisher): Display<HappyNewYearMessage> {
   
    let keys = vector[
            b"name".to_string(), 
            b"description".to_string(), 
            b"media_url".to_string(), 
            b"thumbnail_url".to_string(), 
            b"image_url".to_string(),
            b"project_url".to_string(),
            b"creator".to_string(),
            ];

    let values = vector[
            project_meta::name().to_string(), 
            project_meta::full_description().to_string(), 
            project_meta::image_url().to_string(), 
            project_meta::thumbnail_url().to_string(), 
            project_meta::image_url().to_string(),
            project_meta::steven_hert_x().to_string(),
            project_meta::creator().to_string(),
            ];
    
    let mut display = display::new_with_fields<HappyNewYearMessage>(
        pub,
        keys, 
        values, 
        ctx
    );

    display.update_version();

    display


}




// ===================== modify display ========================//
public fun add(
    _: &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>, 
    name: String, 
    value: String
){
    display::add(display_ob, name, value);
}

public  fun add_multiple(
    _ : &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>,
    names: vector<String>,
    values: vector<String>,
) {
    display::add_multiple(display_ob, names, values);
}

public fun  edit(
    _: &mut AdminCap,
    display_ob:  &mut Display<HappyNewYearMessage>, 
    name: String, 
    value: String
) {
    display::edit(display_ob, name, value);
}

public fun remove(
    _: &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>, 
    name: String
) {
    display::remove(display_ob, name);
}

