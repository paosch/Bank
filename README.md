# Bank tech-test
This is a simple bank program in the Ruby language, written in order to:
- practise doing a tech-test
- practise Object Oriented design and Test Driven Development skills

## Specification requirements
- You should be able to interact with your code via a REPL like IRB. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).
- The user should be able to see a statement that shows transaction date, amount involved and remaining balance


## Approach
- I started by drawing a flow diagram

![alt text](https://raw.githubusercontent.com/paosch/Bank/45421b13d5e1b6c1b5aeccad4b92ef8b180fbd19/Untitled%20Diagram.png)

- I created the following user stories:
```
As a bank customer,
I want to be able to see my remaining balance.

```
```
As a bank customer,
I want to be able to deposit money into my account.

```
```
As a bank customer,
I want to be able to withdraw money from my account.

```
```
As a bank customer,
I want to be able to see my bank account statement.

```
- I used a TDD approach


## Program structure
I created three classes:
- Account, which handles deposit and withdrawal transactions
- Printer, which does the printing of the bank account statement
- Transactions, which pushes a transaction into a transactions array


## Technical details
Ruby version 2.5.0

Tests can be run by writing *rspec* in the command line.

Gems installed:
- rspec
- rubocop
- simplecov


## Test coverage

![screen shot 2018-05-15 at 16 36 59](https://user-images.githubusercontent.com/33669463/40067589-644f7c0c-585e-11e8-8363-5030ed992a88.png)


## IRB 

<img width="922" alt="screen shot 2018-04-26 at 13 26 39" src="https://user-images.githubusercontent.com/33669463/39305654-c0f48104-4955-11e8-8f62-8b10e0acffa3.png">




