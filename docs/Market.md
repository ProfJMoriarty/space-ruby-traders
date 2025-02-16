# SpaceRubyTraderClient::Market

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the market. The symbol is the same as the waypoint where the market is located. |  |
| **exports** | [**Array&lt;TradeGood&gt;**](TradeGood.md) | The list of goods that are exported from this market. |  |
| **imports** | [**Array&lt;TradeGood&gt;**](TradeGood.md) | The list of goods that are sought as imports in this market. |  |
| **exchange** | [**Array&lt;TradeGood&gt;**](TradeGood.md) | The list of goods that are bought and sold between agents at this market. |  |
| **transactions** | [**Array&lt;MarketTransaction&gt;**](MarketTransaction.md) | The list of recent transactions at this market. Visible only when a ship is present at the market. | [optional] |
| **trade_goods** | [**Array&lt;MarketTradeGood&gt;**](MarketTradeGood.md) | The list of goods that are traded at this market. Visible only when a ship is present at the market. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Market.new(
  symbol: null,
  exports: null,
  imports: null,
  exchange: null,
  transactions: null,
  trade_goods: null
)
```

