import Foundation
import Testing

@testable import PublicBrokerageSchemas_v000_001_000

@Test("Public brokerage quote round-trips through the extracted schema package")
func quoteRoundTrip() throws {
  let quote = Quote(
    instrument: Instrument(symbol: "AAPL", type: .equity),
    outcome: .success,
    last: "212.34",
    bid: "212.30",
    ask: "212.36",
    volume: 1200
  )

  let data = try JSONEncoder().encode(quote)
  let decoded = try JSONDecoder().decode(Quote.self, from: data)

  #expect(decoded.instrument.symbol == "AAPL")
  #expect(decoded.outcome == .success)
  #expect(decoded.volume == 1200)
}

@Test("Public brokerage account preserves trading permissions")
func accountDefaults() {
  let account = Account(
    accountId: "acct-123",
    accountType: .brokerage,
    optionsLevel: .level2,
    brokerageAccountType: .margin,
    tradePermissions: .buyAndSell
  )

  #expect(account.accountId == "acct-123")
  #expect(account.accountType == .brokerage)
  #expect(account.tradePermissions == .buyAndSell)
}
