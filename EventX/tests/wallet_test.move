// wallet_test.move

module WalletTest {
    use 0xcb9a2f1a244b18a666b882a095dbfb492b287b952282ec136ccdbed9d3cef62f::Wallet;

    public fun test_create_wallet() {
        let wallet = Wallet.create_wallet(1, 1000);
        assert!(Wallet.get_wallet(wallet.id).balance == 1000, 1);
    }
}