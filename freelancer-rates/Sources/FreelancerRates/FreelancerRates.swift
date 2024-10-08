func dailyRateFrom(hourlyRate: Int) -> Double {
  let dHoulyRate = Double(hourlyRate)
  return dHoulyRate * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
  let dHourlyRate: Double = Double(hourlyRate) * 8.0 
  let monthRate: Double = dHourlyRate * 22.0
  let discountApplied: Double = monthRate * (withDiscount / 100)
  let totalDiscount = monthRate - discountApplied
  let roundedRate: Double = Double(totalDiscount.rounded())
  return roundedRate
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
  let dayRate: Double = dailyRateFrom(hourlyRate: hourlyRate) 
  let discountApplied: Double = dayRate * (withDiscount / 100)
  let dayRateWithDiscount = dayRate - discountApplied
  let daysWithBudgetDiscountedApplied: Double = budget / dayRateWithDiscount
  let daysRounded = daysWithBudgetDiscountedApplied.rounded(.down)
  return daysRounded
}
