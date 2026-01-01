module happynewyear::message;

use std::string::{String, Self};
use sui::url::{Self, Url};
use happynewyear::project_meta::Self;


public struct HappyNewYearMessage has key, store {
    id: UID,
    name: String,
    description: String,
    image_url: String,
    steven_hert: Url,
}




public(package) fun create(ctx: &mut TxContext): HappyNewYearMessage {
    HappyNewYearMessage {
        id: object::new(ctx),
        name: project_meta::name().to_string(),
        description: project_meta::full_description().to_string(),
        image_url: project_meta::image_url().to_string(),
        steven_hert:  url::new_unsafe_from_bytes(project_meta::steven_hert_x()),
    }
}

public fun get_message_info(message: &HappyNewYearMessage): (String, String, String, String) {
    (
        message.name,
        message.description,
        message.image_url,
        string::from_ascii(
            message.steven_hert
                .inner_url()),
    )
}


public fun burn(message: HappyNewYearMessage) {
    let HappyNewYearMessage { id, name:_, description: _, image_url:_, steven_hert: _ } = message;
    id.delete();
}