## Problem Narrative
The problem that I have seen is that property managment dashboards often show the financial health of a property or portfolio over time and can show pain points currently like if a unit or tenant is causing trouble right now but they do not often show the health of specific units over time or highlight units that are causing more loss than gain. For example. I have worked with a company with 32 doors, they are doing great but have a very hard time knowing if a capital improvment will be worth it or if investing more into a unit will be worth it. I often talk through decision with them. We discuss the potential value add of a capital improvment or value saved, we talk about pay back period, we talk about how much other cost has already gone into a certian product. I want to be able to track the cashflow by unit as well as by building and I want a tool that can help us make decisions on which capital improvments to do based on what we know about the building and what benefits we think we will gain.

## Candidate Classes
Building, Unit, Tenant, Vendor, CashflowEvent, Asset(eg. stairs,roof etc..),bid

## Candidate Attributes
#### Building:
ID, Address, Owner, DateAcquired, EstimateValue, AssessedValue, Expenses, Income, Current Net, Projected Net, Units
#### Unit:
ID, Address, Tenants, Date Moved in, Status, Rent, Estimated Rent, LateFees, Maint Requests(include costs?), Net, Projected Net, Floor
#### Tenant:
Name, Age(this class may be unneded)
#### Vendor:
Name, Type, Jobs completed, Costs, current jobs, bids, estimableprice, minor strikes, major strikes
#### IncomeEvent
Type, date, ammount, status
#### ExpenseEvent
Type, date, amount, status, expected payback period, expected ROI
#### Asset
Name, Value, age, cashflowEvents, Net
#### bid
Vendor, Type, amount.