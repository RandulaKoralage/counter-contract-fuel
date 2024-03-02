contract;

storage {
    counter : u64 = 0
}


abi Counter{
    #[storage(read,write)]
    fn increment();

    #[storage(read)]
    fn count() -> u64;
}

impl Counter for Contract {

     #[storage(read)]
    fn count()-> u64 {
        return storage.counter.read();
    }

    #[storage(read,write)]
    fn increment(){
        let cur_value : u64 = storage.counter.read();
        let increment : u64 = cur_value+1;
        storage.counter.write(increment);
    }
   
}