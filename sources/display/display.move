module happynewyear::display;


use std::string::String;

use sui::{
    display::{Self, Display},
    package::Publisher,
    };

use happynewyear::{
    admin_cap::AdminCap,
    message::HappyNewYearMessage
    };


// ===================== Nft meta ======================//
const NAME: vector<u8> = b"";
const FULL_DESCRIPTION: vector<u8> = b""; 
const IMAGE_URL: vector<u8> = b"";
const THUMBNAIL_URL: vector<u8> = b"";
const CREATOR: vector<u8> = b"Steven Hert";
const STEVEN_HERT_X: vector<u8> = b"Steven Hert";


// ==================== create Display  ======================//

public(package) fun create_display(ctx: &mut TxContext, pub: &Publisher): Display<HappyNewYearMessage> {
   
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
            NAME.to_string(), 
            FULL_DESCRIPTION.to_string(), 
            IMAGE_URL.to_string(), 
            THUMBNAIL_URL.to_string(), 
            IMAGE_URL.to_string(),
            STEVEN_HERT_X.to_string(),
            CREATOR.to_string(),
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
public fun add_display(
    _: &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>, 
    name: String, 
    value: String
){
    display::add(display_ob, name, value);
}

public  fun add_multiple_display(
    _ : &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>,
    names: vector<String>,
    values: vector<String>,
) {
    display::add_multiple(display_ob, names, values);
}

public fun  edit_display(
    _: &mut AdminCap,
    display_ob:  &mut Display<HappyNewYearMessage>, 
    name: String, 
    value: String
) {
    display::edit(display_ob, name, value);
}

public fun remove_display(
    _: &mut AdminCap,
    display_ob: &mut Display<HappyNewYearMessage>, 
    name: String
) {
    display::remove(display_ob, name);
}

