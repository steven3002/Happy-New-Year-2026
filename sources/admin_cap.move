module happynewyear::admin_cap;


public struct AdminCap has key, store {
    id: UID,
}



public(package) fun create(ctx: &mut TxContext): AdminCap {
    AdminCap {id: object::new(ctx) }
}

public fun destroy(_cap: AdminCap) {
   let AdminCap { id } = _cap;
    id.delete();
}
