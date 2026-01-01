module happynewyear::admin_cap;


public struct AdminCap has key, store {
    id: UID,
}



public(package) fun create_admin_cap(ctx: &mut TxContext): AdminCap {
    AdminCap {id: object::new(ctx) }
}

public fun destroy_admin_cap(_cap: AdminCap) {
   let AdminCap { id } = _cap;
    id.delete();
}
