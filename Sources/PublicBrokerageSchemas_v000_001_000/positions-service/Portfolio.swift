import Foundation

public struct Portfolio: Codable, Equatable, Sendable {
  public struct BuyingPower: Codable, Equatable, Sendable {
    public let cashOnlyBuyingPower: String
    public let buyingPower: String
    public let optionsBuyingPower: String

    public init(
      cashOnlyBuyingPower: String,
      buyingPower: String,
      optionsBuyingPower: String,
    ) {
      self.cashOnlyBuyingPower = cashOnlyBuyingPower
      self.buyingPower = buyingPower
      self.optionsBuyingPower = optionsBuyingPower
    }
  }

  public struct EquitySummary: Codable, Equatable, Sendable {
    public enum AssetType: String, Codable, Sendable {
      case cash = "CASH"
      case stock = "STOCK"
      case optionsLong = "OPTIONS_LONG"
      case optionsShort = "OPTIONS_SHORT"
      case bonds = "BONDS"
      case crypto = "CRYPTO"
    }

    public let type: AssetType
    public let value: String
    public let percentageOfPortfolio: String

    public init(
      type: AssetType,
      value: String,
      percentageOfPortfolio: String,
    ) {
      self.type = type
      self.value = value
      self.percentageOfPortfolio = percentageOfPortfolio
    }
  }

  public struct Position: Codable, Equatable, Sendable {
    public struct Instrument: Codable, Equatable, Sendable {
      public enum InstrumentType: String, Codable, Sendable {
        case crypto = "CRYPTO"
        case equity = "EQUITY"
      }

      public let symbol: String
      public let name: String
      public let type: InstrumentType

      public init(symbol: String, name: String, type: InstrumentType) {
        self.symbol = symbol
        self.name = name
        self.type = type
      }
    }

    public struct LastPrice: Codable, Equatable, Sendable {
      public let lastPrice: String
      public let timestamp: Date

      public init(lastPrice: String, timestamp: Date) {
        self.lastPrice = lastPrice
        self.timestamp = timestamp
      }
    }

    public struct Gain: Codable, Equatable, Sendable {
      public let gainValue: String
      public let gainPercentage: String
      public let timestamp: Date

      public init(gainValue: String, gainPercentage: String, timestamp: Date) {
        self.gainValue = gainValue
        self.gainPercentage = gainPercentage
        self.timestamp = timestamp
      }
    }

    public struct CostBasis: Codable, Equatable, Sendable {
      public let totalCost: String
      public let unitCost: String
      public let gainValue: String
      public let gainPercentage: String
      public let lastUpdate: Date

      public init(
        totalCost: String,
        unitCost: String,
        gainValue: String,
        gainPercentage: String,
        lastUpdate: Date,
      ) {
        self.totalCost = totalCost
        self.unitCost = unitCost
        self.gainValue = gainValue
        self.gainPercentage = gainPercentage
        self.lastUpdate = lastUpdate
      }
    }

    public let instrument: Instrument
    public let quantity: String
    public let openedAt: Date
    public let currentValue: String
    public let percentOfPortfolio: String
    public let lastPrice: LastPrice
    public let instrumentGain: Gain
    public let positionDailyGain: Gain
    public let costBasis: CostBasis

    public init(
      instrument: Instrument,
      quantity: String,
      openedAt: Date,
      currentValue: String,
      percentOfPortfolio: String,
      lastPrice: LastPrice,
      instrumentGain: Gain,
      positionDailyGain: Gain,
      costBasis: CostBasis,
    ) {
      self.instrument = instrument
      self.quantity = quantity
      self.openedAt = openedAt
      self.currentValue = currentValue
      self.percentOfPortfolio = percentOfPortfolio
      self.lastPrice = lastPrice
      self.instrumentGain = instrumentGain
      self.positionDailyGain = positionDailyGain
      self.costBasis = costBasis
    }
  }

  public struct Order: Codable, Equatable, Sendable {
    public init() {}
  }

  public let accountId: String
  public let accountType: Account.AccountType
  public let buyingPower: BuyingPower
  public let equity: [EquitySummary]
  public let positions: [Position]
  public let orders: [Order]

  public init(
    accountId: String,
    accountType: Account.AccountType,
    buyingPower: BuyingPower,
    equity: [EquitySummary],
    positions: [Position],
    orders: [Order],
  ) {
    self.accountId = accountId
    self.accountType = accountType
    self.buyingPower = buyingPower
    self.equity = equity
    self.positions = positions
    self.orders = orders
  }
}
