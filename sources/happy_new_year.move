module happynewyear::message;

use std::string::{String, Self};
use sui::url::{Self, Url};


public struct HappyNewYearMessage has key, store {
    id: UID,
    name: String,
    description: String,
    image_url: String,
    steven_hert: Url,
}

// ==================== Happy New Year Message ======================//
const HAPPY_NEW_YEAR_NAME: vector<u8> = b"";
const HAPPY_NEW_YEAR_DESCRIPTION: vector<u8> = b"";
const HAPPY_NEW_YEAR_IMAGE_URL: vector<u8> = b"";
const STEVEN_HERT_URL: vector<u8> = b"";


public(package) fun create(ctx: &mut TxContext): HappyNewYearMessage {
    HappyNewYearMessage {
        id: object::new(ctx),
        name: HAPPY_NEW_YEAR_NAME.to_string(),
        description: HAPPY_NEW_YEAR_DESCRIPTION.to_string(),
        image_url: HAPPY_NEW_YEAR_IMAGE_URL.to_string(),
        steven_hert:  url::new_unsafe_from_bytes(STEVEN_HERT_URL),
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