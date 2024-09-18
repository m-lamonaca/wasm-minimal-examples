#[expect(warnings)]
mod bindings;

use bindings::exports::example::add::add::Guest;

struct Component;

impl Guest for Component {
    fn add(x: u32, y: u32) -> u32 {
        x + y
    }
}

bindings::export!(Component with_types_in bindings);
