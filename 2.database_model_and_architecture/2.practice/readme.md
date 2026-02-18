## Online Food Ordering System — Database Design

### 1. Conceptual Model Design (Business View)

Main Entities
- Customer
- Restaurant
- Order

Relationships
- Customer places Order
- Restaurant receives Order
- Order has Total Price and Order Date
```mermaid
flowchart LR
    Customer[Customer]
    Restaurant[Restaurant]
    Order[Order]

    Customer --- Order
    Restaurant --- Order
```

### 2. Conceptual Model Design (Business View)

**Tables Structure**

Customer
- PK CustomerID
- Name
- Phone

Address
- Restaurant
- PK RestaurantID
- Name

Location
- Rating
- Order
- PK OrderID
- FK CustomerID → Customer
- FK RestaurantID → Restaurant
- TotalPrice
- OrderDate

```mermaid
flowchart LR

    Customer["Customer
    -------------------
    PK CustomerID
    Name
    Phone
    Address"]

    Restaurant["Restaurant
    -------------------
    PK RestaurantID
    Name
    Location
    Rating"]

    Order["Order
    -------------------
    PK OrderID
    FK CustomerID
    FK RestaurantID
    TotalPrice
    OrderDate"]

    Customer --> Order
    Restaurant --> Order
```


### 3. Physical Model Design (Real Database — Data Types)

Now we add:
- Data types
- Constraints
- Real structure like DB implementation


```mermaid
erDiagram
    CUSTOMER {
        int CustomerID PK
        string Name
        string Phone
        string Address
    }

    RESTAURANT {
        int RestaurantID PK
        string Name
        string Location
        float Rating
    }

    ORDERS {
        int OrderID PK
        int CustomerID FK
        int RestaurantID FK
        float TotalPrice
        date OrderDate
    }

    CUSTOMER ||--o{ ORDERS : places
    RESTAURANT ||--o{ ORDERS : receives
```