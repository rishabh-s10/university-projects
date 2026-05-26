import tkinter as tk
import random
import yfinance as yf


def get_live_price(symbol, fallback_price):
    try:
        data = yf.Ticker(symbol).history(period="1d")
        if not data.empty:
            return round(float(data["Close"].iloc[-1]), 2)
    except Exception:
        pass
    return fallback_price


class Stock:
    def __init__(self, name, symbol, price):
        self.name = name
        self.symbol = symbol
        self.price = price
        self.sector = "General"

    def get_price(self):
        return round(self.price, 2)

    def update_price(self):
        change = random.randint(-2, 2)
        self.price += self.price * change / 100


class TechStock(Stock):
    def __init__(self, name, symbol, price):
        super().__init__(name, symbol, price)
        self.sector = "Technology"

    def update_price(self):
        change = random.randint(-5, 5)
        self.price += self.price * change / 100


class EnergyStock(Stock):
    def __init__(self, name, symbol, price):
        super().__init__(name, symbol, price)
        self.sector = "Energy"

    def update_price(self):
        change = random.randint(-1, 1)
        self.price += self.price * change / 100


class Investor:
    def __init__(self):
        self.balance = 10000.0
        self.portfolio = {}

    def buy(self, stock, quantity):
        cost = stock.get_price() * quantity
        if cost > self.balance:
            return "Not enough balance."

        self.balance -= cost
        self.portfolio[stock.name] = self.portfolio.get(stock.name, 0) + quantity
        return f"Bought {quantity} shares of {stock.name}."

    def sell(self, stock, quantity):
        if stock.name not in self.portfolio:
            return "You don't own this stock."

        if self.portfolio[stock.name] < quantity:
            return "Not enough shares to sell."

        self.balance += stock.get_price() * quantity
        self.portfolio[stock.name] -= quantity

        if self.portfolio[stock.name] == 0:
            del self.portfolio[stock.name]

        return f"Sold {quantity} shares of {stock.name}."


class Market:
    def __init__(self):
        self.stocks = []

    def add_stock(self, stock):
        self.stocks.append(stock)

    def find_stock(self, name):
        name = name.lower()
        for stock in self.stocks:
            if stock.name.lower() == name or stock.symbol.lower() == name:
                return stock
        return None

    def next_day(self):
        for stock in self.stocks:
            stock.update_price()


market = Market()
investor = Investor()

apple = TechStock("Apple", "AAPL", get_live_price("AAPL", 213.0))
nvidia = TechStock("Nvidia", "NVDA", get_live_price("NVDA", 875.0))
exxon = EnergyStock("ExxonMobil", "XOM", get_live_price("XOM", 118.0))
chevron = EnergyStock("Chevron", "CVX", get_live_price("CVX", 158.0))

for stock in [apple, nvidia, exxon, chevron]:
    market.add_stock(stock)


BG = "#1e3a5f"

window = tk.Tk()
window.title("MarketSim")
window.geometry("500x750")
window.configure(bg=BG)

tk.Label(window, text="MarketSim", font=("Arial", 26, "bold"), bg=BG, fg="#1a56db").pack(pady=12)
tk.Label(window, text="── Live Market Prices ──", font=("Arial", 16, "bold"), bg=BG, fg="white").pack()

market_display_vars = {}


def update_market_display():
    for stock in market.stocks:
        text = f"{stock.name:<14} ({stock.sector:<12})   ${stock.get_price():.2f}"
        market_display_vars[stock.name].set(text)


for stock in market.stocks:
    var = tk.StringVar()
    market_display_vars[stock.name] = var
    tk.Label(window, textvariable=var, font=("Courier", 14), bg=BG, fg="#22c55e").pack(anchor="w", padx=40)

update_market_display()

tk.Label(window, text="", bg=BG).pack()

tk.Label(window, text="Company Name or Symbol:", font=("Arial", 14), bg=BG, fg="white").pack()
company_box = tk.Entry(window, font=("Arial", 14), width=22)
company_box.pack(pady=4)

tk.Label(window, text="Quantity:", font=("Arial", 14), bg=BG, fg="white").pack()
quantity_box = tk.Entry(window, font=("Arial", 14), width=22)
quantity_box.pack(pady=4)

message = tk.StringVar()
tk.Label(window, textvariable=message, fg="red", font=("Arial", 13), bg=BG).pack(pady=6)

portfolio_info = tk.StringVar()


def show_portfolio():
    info = f"Balance:  ${investor.balance:.2f}\n\n"

    if not investor.portfolio:
        info += "  Portfolio is empty."
    else:
        for name, qty in investor.portfolio.items():
            info += f"  {name:<14}  {qty} shares\n"

    portfolio_info.set(info)


def get_valid_quantity():
    try:
        qty = int(quantity_box.get())
        if qty <= 0:
            message.set("Quantity must be greater than 0.")
            return None
        return qty
    except ValueError:
        message.set("Please enter a valid whole number.")
        return None


def buy_stock():
    qty = get_valid_quantity()
    if not qty:
        return

    stock = market.find_stock(company_box.get())
    if not stock:
        message.set("Company not found.")
        return

    message.set(investor.buy(stock, qty))
    show_portfolio()


def sell_stock():
    qty = get_valid_quantity()
    if not qty:
        return

    stock = market.find_stock(company_box.get())
    if not stock:
        message.set("Company not found.")
        return

    message.set(investor.sell(stock, qty))
    show_portfolio()


def next_day():
    market.next_day()
    update_market_display()
    message.set("A new day begins! Prices updated.")
    show_portfolio()


tk.Button(window, text="Buy", command=buy_stock, font=("Arial", 14), width=10, bg="#22c55e", fg="white").pack(pady=3)
tk.Button(window, text="Sell", command=sell_stock, font=("Arial", 14), width=10, bg="#ef4444", fg="white").pack(pady=3)
tk.Button(window, text="Next Day", command=next_day, font=("Arial", 14, "bold"), bg="lightgrey", width=10).pack(pady=10)

tk.Label(window, text="── Your Portfolio ──", font=("Arial", 16, "bold"), bg=BG, fg="white").pack(pady=(8, 0))
tk.Label(window, textvariable=portfolio_info, font=("Courier", 14), justify="left", bg=BG, fg="#facc15").pack()

show_portfolio()

window.mainloop()