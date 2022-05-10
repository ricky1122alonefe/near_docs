使用预先部署的合约创建自己的第一个nft信息

需要准备环境
near账号(测试环境)
near-cli (详情见env.sh)

1. 将你的账号信息加入环境变量
export NEARID=zradelaide1122.testnet

2. 调用 near cli的 铸币函数 创建你的 nft信息
near call example-nft.testnet nft_mint '{"token_id": "为的第一个呆逼", "receiver_id": "'$NEARID'", "token_metadata": { "title": "GO TEAM", "description": "The Team Goes", "media": "https://bafkreig4fp42vdu6jeeanqu6b5nughmxfwgfoljtzltv2lxzzoz6qzhgji.ipfs.nftstorage.link/", "copies": 1}}' --accountId $NEARID --deposit 0.1


near call  调用
example-nft.testnet near 预先在example-nft.testnet 账号已经部署好一个合约 让用户可以免费创建自己的铸币

json 字段信息 具体nft meta_data 会在后续进行说明
{
	"token_id": "为的第一个NFT", // tokenID 其为一个唯一字符串
	"receiver_id": "'$NEARID'", // 接受者id 第一步 你加入的环境变量
	"token_metadata": { // 铸币元数据信息
		"title": "hola mondo", // 标题
		"description": "this is desc",
		"media": "https://bafkreig4fp42vdu6jeeanqu6b5nughmxfwgfoljtzltv2lxzzoz6qzhgji.ipfs.nftstorage.link/", // NFT 存储媒体信息 https://nft.storage/new-file/ 
		"copies": 1 // 发行量
	}
}

--accountId $NEARID --deposit 0.1 todo 补齐这边信息