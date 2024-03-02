contract;

storage {
    counter : u64 =0
}


abi Counter{
    #[storage(read,write)]
    fn increment();

    #[storage(read)]
    fn count() -> u64;
}

impl Counter for Contact{
    fn increment(){
        let cur_value = storage.counter.read()
        let increment = cur_value+1
        storage.counter.write(increment)

    }

    fn count()->u64{
        storage.count.read()
    }
}