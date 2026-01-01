module happynewyear::project_meta;



// ===================== Nft meta ======================//
const NAME: vector<u8> = b"";
const FULL_DESCRIPTION: vector<u8> = b""; 
const IMAGE_URL: vector<u8> = b"";
const THUMBNAIL_URL: vector<u8> = b"";
const CREATOR: vector<u8> = b"Steven Hert";
const STEVEN_HERT_X: vector<u8> = b"Steven Hert";



// ===================== get meta ========================//
public(package) fun name(): vector<u8> {
    NAME
}
public(package) fun full_description(): vector<u8> {
    FULL_DESCRIPTION
}
public(package) fun image_url(): vector<u8> {
    IMAGE_URL
}
public(package) fun thumbnail_url(): vector<u8> {
    THUMBNAIL_URL
}
public(package) fun creator(): vector<u8> {
    CREATOR
}
public(package) fun steven_hert_x(): vector<u8> {
    STEVEN_HERT_X
}
