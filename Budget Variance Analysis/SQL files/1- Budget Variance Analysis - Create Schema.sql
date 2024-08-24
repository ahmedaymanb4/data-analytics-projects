-- Initiate schema
CREATE DATABASE IF NOT EXISTS budget_variance_depi;
use budget_variance_depi;

CREATE TABLE IF NOT EXISTS budget (
    EOMonth DATE,
    Aspen FLOAT(2),
    Carlota FLOAT(2),
    Quad FLOAT(2)
);
CREATE TABLE IF NOT EXISTS actual (
    date DATE,
    product VARCHAR(7),
    Sales FLOAT(2)
);
