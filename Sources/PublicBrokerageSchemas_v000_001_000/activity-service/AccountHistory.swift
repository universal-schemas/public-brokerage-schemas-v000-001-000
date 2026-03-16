import Foundation

public struct AccountHistory: Codable, Equatable, Sendable {
  public struct Transaction: Codable, Equatable, Sendable {
    public let timestamp: Date
    public let id: String
    public let type: String
    public let subType: String
    public let accountNumber: String
    public let symbol: String?
    public let securityType: String?
    public let side: String?
    public let description: String?
    public let netAmount: String
    public let principalAmount: String?
    public let quantity: String?
    public let direction: String?
    public let fees: String?

    public init(
      timestamp: Date,
      id: String,
      type: String,
      subType: String,
      accountNumber: String,
      symbol: String?,
      securityType: String?,
      side: String?,
      description: String?,
      netAmount: String,
      principalAmount: String?,
      quantity: String?,
      direction: String?,
      fees: String?,
    ) {
      self.timestamp = timestamp
      self.id = id
      self.type = type
      self.subType = subType
      self.accountNumber = accountNumber
      self.symbol = symbol
      self.securityType = securityType
      self.side = side
      self.description = description
      self.netAmount = netAmount
      self.principalAmount = principalAmount
      self.quantity = quantity
      self.direction = direction
      self.fees = fees
    }
  }

  public let transactions: [Transaction]
  public let nextToken: String?
  public let start: Date?
  public let end: Date?
  public let pageSize: Int?

  public init(
    transactions: [Transaction],
    nextToken: String?,
    start: Date?,
    end: Date?,
    pageSize: Int?,
  ) {
    self.transactions = transactions
    self.nextToken = nextToken
    self.start = start
    self.end = end
    self.pageSize = pageSize
  }
}
