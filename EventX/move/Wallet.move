// Wallet.move

module Wallet {
    struct Wallet has key {
        id: u64,
        balance: u64,
    }

    public fun create_wallet(wallet_id: u64, initial_balance: u64): Wallet.Wallet {
        let wallet = Wallet {
            id: wallet_id,
            balance: initial_balance,
        };
        Wallet.add_wallet(wallet);
        wallet
    }

    public fun get_wallet(wallet_id: u64): Wallet.Wallet {
        Wallet.get_wallet(wallet_id)
    }
}