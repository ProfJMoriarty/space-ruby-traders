# SpaceRubyTraderClient::MarketTradeGood

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**TradeSymbol**](TradeSymbol.md) |  |  |
| **type** | **String** | The type of trade good (export, import, or exchange). |  |
| **trade_volume** | **Integer** | This is the maximum number of units that can be purchased or sold at this market in a single trade for this good. Trade volume also gives an indication of price volatility. A market with a low trade volume will have large price swings, while high trade volume will be more resilient to price changes. |  |
| **supply** | [**SupplyLevel**](SupplyLevel.md) |  |  |
| **activity** | [**ActivityLevel**](ActivityLevel.md) |  | [optional] |
| **purchase_price** | **Integer** | The price at which this good can be purchased from the market. |  |
| **sell_price** | **Integer** | The price at which this good can be sold to the market. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::MarketTradeGood.new(
  symbol: null,
  type: null,
  trade_volume: null,
  supply: null,
  activity: null,
  purchase_price: null,
  sell_price: null
)
```

