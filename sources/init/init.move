/*
init the project and destroys the upgrade cap to make the contract permanent
*/

module happynewyear::init;

use sui::{
        package::{Publisher, Self},
        display::Display,

};

use happynewyear::{
    admin_cap::{Self, AdminCap},
    message::{Self, HappyNewYearMessage},
    display::Self,

    };


public struct INIT has  drop {}

// max amount of tokens to mint while initializing
const  MAX_AMOUNT: u8 = 20;

const STEVEN_HERT: address = @0xbffd2a1e8aae0e2bd8817e721bc3f4eb5128e54babfc441c9f5646736f4c6bbe;


fun init(otw: INIT, ctx: &mut TxContext) {
    //claim publisher and admin cap 
    let pub: Publisher = package::claim(otw, ctx);

    //create admin cap
    let admin_cap: AdminCap = admin_cap::create(ctx);

    //create display
    let display: Display<HappyNewYearMessage> = display::create(ctx, &pub);

    let mut control: u8 = 0;
    while (MAX_AMOUNT > control) {
        let message = message::create(ctx);
        transfer::public_transfer(message, STEVEN_HERT);
        control = control + 1;
        
    };

    transfer::public_transfer(admin_cap, STEVEN_HERT);
    transfer::public_transfer(display, STEVEN_HERT);
    transfer::public_transfer(pub, STEVEN_HERT);
}