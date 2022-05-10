整体架构信息
文件层级
nft-contract
├── Cargo.lock
├── Cargo.toml
├── README.md
├── build.sh
└── src
    ├── approval.rs
    ├── enumeration.rs
    ├── lib.rs
    ├── metadata.rs
    ├── mint.rs
    ├── nft_core.rs
    └── royalty.rs

enumeration.rs
1.提供当前合约存储NFT总量信息
2.返回存储在合同中的NFT的分页列表(无关账户信息)
3.根据用户id查询其拥有NFT的总数
4.返回任何给定用户拥有的NFT的分页列表

lib.rs
1.new_default_meta 无需输入任何信息创建一个默认的合约
2.new 根据用户传入的元数据 创建合约的初始化信息

metadata.rs
1.TokenMetadata
    该结构定义了可以为每个令牌存储的元数据。（标题、描述、媒体等）
2.Token
    该结构概述了每个令牌将在合同上存储的信息。
3.JsonToken
    当通过视图调用查询有关NFT的信息时，返回信息存储在这个JSON令牌中
4.nft_metadata
    用户查询合约内的元数据信息

mint.rs
1.nft_mint 铸币方法

nft_core.rs
1.nft_transfer	
    将一个NFT转账给一个用户
2.nft_transfer_call	
    将NFT传输给接收方，并调用接收方ID合同上的函数。如果令牌是从发送者的帐户转移的，则函数返回true
3.nft_token	
    用户查询制定nft信息
4.nft_on_transfer	
    当NFT通过NFT_transfer_call方法转移到您的合同账户时，由其他合同调用。如果令牌应返回给发送方，则返回true
5.nft_resolve_transfer	
   当您启动nft_transfer_调用并转移nft时，标准还会调用接收方合同上的方法。如果接收方需要您将NFT返回给发送方（根据NFT_on_传输方法的返回值），此函数允许您执行该逻辑。