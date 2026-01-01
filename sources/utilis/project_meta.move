module happynewyear::project_meta;



// ===================== Nft meta ======================//

const NAME: vector<u8> = b"Happy New Year 2026";
const FULL_DESCRIPTION: vector<u8> = b"Celebrating the dawn of 2026! This exclusive digital collectible marks the beginning of a fresh chapter filled with new opportunities. Wishing you prosperity, innovation, and success in the year ahead. Created by Steven Hert.";
const IMAGE_URL: vector<u8> = b"https://walrus-mainnet-aggregator.rpc101.org/v1/blobs/DFBxFKxkkJ23oNMgn_baUcs5HVce_FEGrqJqlruEpRo";
const THUMBNAIL_URL: vector<u8> = b"https://walrus-mainnet-aggregator.rpc101.org/v1/blobs/DFBxFKxkkJ23oNMgn_baUcs5HVce_FEGrqJqlruEpRo";
const CREATOR: vector<u8> = b"Steven Hert";
const STEVEN_HERT_X: vector<u8> = b"https://x.com/Steven_Hert";



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
