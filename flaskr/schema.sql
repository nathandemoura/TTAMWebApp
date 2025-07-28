DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS units;
DROP TABLE IF EXISTS expenses;

Create Table buildings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    building_name TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE units (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    building_id INTEGER,
    unit_number INTEGER NOT NULL,
    tenant_names TEXT,
    move_in_date TIMESTAMP NOT NULL,
    recent_rent_increase DATE,
    rent_amount INTEGER NOT NULL,
    FOREIGN KEY (building_id) REFERENCES buildings (id)
);

CREATE TABLE expenses (
    id Integer Primary Key AUTOINCREMENT,
    unit_id INTEGER,

    contractor Text NOT NULL,
    expense_name TEXT NOT NULL,
    expense_amount INTEGER NOT NULL,
    expected_monthly_return INTEGER NOT NULL,
    FOREIGN KEY (unit_id) REFERENCES units (id)
);
