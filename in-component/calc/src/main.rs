mod bindings;

fn main() {
    let result = bindings::example::add::add::add(1, 1);
    print!("{}", result);
}
